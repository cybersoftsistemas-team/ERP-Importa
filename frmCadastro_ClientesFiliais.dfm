object Cadastro_ClientesFiliais: TCadastro_ClientesFiliais
  Left = 500
  Top = 304
  BorderStyle = bsToolWindow
  Caption = 'Cadastro_ClientesFiliais'
  ClientHeight = 275
  ClientWidth = 717
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Grade: TDBGrid
    Left = 5
    Top = 4
    Width = 707
    Height = 237
    DataSource = dstEmpresas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Razao_Social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Raz'#227'o Social'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 431
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Numero_Filial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Filial'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 38
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 33
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 245
    Width = 717
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      717
      30)
    object bSair: TButton
      Left = 646
      Top = 1
      Width = 70
      Height = 28
      Hint = '   Fecha a janela atual e cancela os processos pendentes.   '
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bExportar: TButton
      Left = 346
      Top = 1
      Width = 119
      Height = 28
      Hint = '  Exporta o cadastro do cliente para outra empresa ou filial.  '
      Anchors = [akTop, akRight]
      Caption = '&Exportar Cadastro'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bExportarClick
    end
    object bContab: TButton
      Left = 465
      Top = 1
      Width = 181
      Height = 28
      Hint = 
        'Exporta apenas as contas contabeis par'#226'metrizadas de todos os cl' +
        'ientes.'
      Anchors = [akTop, akRight]
      Caption = '&Exportar Par'#226'metriza'#231#227'o Contabil'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bContabClick
    end
  end
  object tCodigo: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM Clientes')
    Left = 56
    Top = 64
    object tCodigoCodigo: TIntegerField
      FieldName = 'Codigo'
      ReadOnly = True
    end
  end
  object tFiliais: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO Clientes'
      
        '  (Codigo, Nome, Rua, Rua_Numero, Complemento, Bairro, Municipio' +
        '_Codigo, Municipio, Estado, Pais, CEP, Telefone1, Telefone2, FAX' +
        ', CNPJ, CPF, RG, Inscricao_Estadual, Isento, Inscricao_Municipal' +
        ', Rua_Entrega, Rua_EntregaNumero, Bairro_Entrega, Municipio_Entr' +
        'ega, Estado_Entrega, CEP_Entrega, CNPJ_Entrega, IE_Entrega, Emai' +
        'l, Site, Contato, Transportador, Data_Cadastro, Ativo, Praca_Pag' +
        'amento, Trader, Trader_Comissao, Tipo_Comissao, Conta_Ativo, Con' +
        'ta_Adiantamento, Matriz, Alterado, SUFRAMA, Desconto_Dupl_Tipo, ' +
        'Desconto_Dupl_Valor, Desconto_Dupl_Dias, Conta_Devolucao, Simple' +
        's_Nacional, Modalidade_Importacao, Desconto_Dupl_Campo, Mascara_' +
        'Processo, Enviar_Email, Desoneracao, Ramo_Atividade, Observacao,' +
        ' Margem_Lucro, Desconto_Operacional, Desconto_Adicional, Data_Na' +
        'scimento, Naturalidade, Sexo, Estado_Civil, Nome_Mae, Nome_Pai, ' +
        'Profissao, Renda_Mensal, Tempo_Servico, Trabalho_Local, Trabalho' +
        '_Endereco, Trabalho_Bairro, Trabalho_Cidade, Trabalho_CEP, Traba' +
        'lho_Estado, Trabalho_Telefone, Representante, Referencias_Banco1' +
        ', Referencias_Banco1Agencia, Referencias_Banco1Conta, Referencia' +
        's_Banco1Data, Referencias_Banco2, Referencias_Banco2Agencia, Ref' +
        'erencias_Banco2Conta, Referencias_Banco2Data, Referencias_Cartoe' +
        's, Referencias_Comercial1, Referencias_Comercial2, Referencias_C' +
        'omercial3, Avalista_Nome, Avalista_CNPJ, Avalista_CPF, Avalista_' +
        'RG, Avalista_Endereco, Avalista_Bairro, Avalista_Cidade, Avalist' +
        'a_Estado, Avalista_CEP, Cobranca_Endereco, Cobranca_Bairro, Cobr' +
        'anca_Cidade, Cobranca_Estado, Cobranca_CEP, Cobranca_TipoFrete, ' +
        'Capital_Social, Referencias_ComercialContato1, Referencias_Comer' +
        'cialContato2, Referencias_ComercialContato3, Referencias_Comerci' +
        'alData1, Referencias_ComercialData2, Referencias_ComercialData3,' +
        ' Referencias_ComercialCompra1, Referencias_ComercialCompra2, Ref' +
        'erencias_ComercialCompra3, Referencias_ComercialPontual1, Refere' +
        'ncias_ComercialPontual2, Referencias_ComercialPontual3, Fator_Fa' +
        'turamento, Fator_SISCOMEX, Margem_LucroValor, Desconto_Adicional' +
        'Valor, Desconto_OperacionalValor, Limite_Credito, Limite_Utiliza' +
        'do, Email_Copia, Vencimento_Contrato, Zona_Franca, Cobranca_Bole' +
        'to, CNAE, Municipio_EntregaNome, Desconto_Comercial, Desconto_Co' +
        'mercialValor, Representante_Comissao, Consumidor_Final, Vencimen' +
        'to_Radar, Vencimento_Vinculacao, Condicao_Pagamento, Mensalidade' +
        ', Mensalidade_Dia, Atraso_Maximo, Atendente, Atendente_Comissao,' +
        ' Cliente_Diferenciado, Horario_Entrega, Passaporte, Indicador_IE' +
        ', Nome_Fantasia, MEI)'
      'VALUES'
      
        '  (:Codigo, :Nome, :Rua, :Rua_Numero, :Complemento, :Bairro, :Mu' +
        'nicipio_Codigo, :Municipio, :Estado, :Pais, :CEP, :Telefone1, :T' +
        'elefone2, :FAX, :CNPJ, :CPF, :RG, :Inscricao_Estadual, :Isento, ' +
        ':Inscricao_Municipal, :Rua_Entrega, :Rua_EntregaNumero, :Bairro_' +
        'Entrega, :Municipio_Entrega, :Estado_Entrega, :CEP_Entrega, :CNP' +
        'J_Entrega, :IE_Entrega, :Email, :Site, :Contato, :Transportador,' +
        ' :Data_Cadastro, :Ativo, :Praca_Pagamento, :Trader, :Trader_Comi' +
        'ssao, :Tipo_Comissao, :Conta_Ativo, :Conta_Adiantamento, :Matriz' +
        ', :Alterado, :SUFRAMA, :Desconto_Dupl_Tipo, :Desconto_Dupl_Valor' +
        ', :Desconto_Dupl_Dias, :Conta_Devolucao, :Simples_Nacional, :Mod' +
        'alidade_Importacao, :Desconto_Dupl_Campo, :Mascara_Processo, :En' +
        'viar_Email, :Desoneracao, :Ramo_Atividade, :Observacao, :Margem_' +
        'Lucro, :Desconto_Operacional, :Desconto_Adicional, :Data_Nascime' +
        'nto, :Naturalidade, :Sexo, :Estado_Civil, :Nome_Mae, :Nome_Pai, ' +
        ':Profissao, :Renda_Mensal, :Tempo_Servico, :Trabalho_Local, :Tra' +
        'balho_Endereco, :Trabalho_Bairro, :Trabalho_Cidade, :Trabalho_CE' +
        'P, :Trabalho_Estado, :Trabalho_Telefone, :Representante, :Refere' +
        'ncias_Banco1, :Referencias_Banco1Agencia, :Referencias_Banco1Con' +
        'ta, :Referencias_Banco1Data, :Referencias_Banco2, :Referencias_B' +
        'anco2Agencia, :Referencias_Banco2Conta, :Referencias_Banco2Data,' +
        ' :Referencias_Cartoes, :Referencias_Comercial1, :Referencias_Com' +
        'ercial2, :Referencias_Comercial3, :Avalista_Nome, :Avalista_CNPJ' +
        ', :Avalista_CPF, :Avalista_RG, :Avalista_Endereco, :Avalista_Bai' +
        'rro, :Avalista_Cidade, :Avalista_Estado, :Avalista_CEP, :Cobranc' +
        'a_Endereco, :Cobranca_Bairro, :Cobranca_Cidade, :Cobranca_Estado' +
        ', :Cobranca_CEP, :Cobranca_TipoFrete, :Capital_Social, :Referenc' +
        'ias_ComercialContato1, :Referencias_ComercialContato2, :Referenc' +
        'ias_ComercialContato3, :Referencias_ComercialData1, :Referencias' +
        '_ComercialData2, :Referencias_ComercialData3, :Referencias_Comer' +
        'cialCompra1, :Referencias_ComercialCompra2, :Referencias_Comerci' +
        'alCompra3, :Referencias_ComercialPontual1, :Referencias_Comercia' +
        'lPontual2, :Referencias_ComercialPontual3, :Fator_Faturamento, :' +
        'Fator_SISCOMEX, :Margem_LucroValor, :Desconto_AdicionalValor, :D' +
        'esconto_OperacionalValor, :Limite_Credito, :Limite_Utilizado, :E' +
        'mail_Copia, :Vencimento_Contrato, :Zona_Franca, :Cobranca_Boleto' +
        ', :CNAE, :Municipio_EntregaNome, :Desconto_Comercial, :Desconto_' +
        'ComercialValor, :Representante_Comissao, :Consumidor_Final, :Ven' +
        'cimento_Radar, :Vencimento_Vinculacao, :Condicao_Pagamento, :Men' +
        'salidade, :Mensalidade_Dia, :Atraso_Maximo, :Atendente, :Atenden' +
        'te_Comissao, :Cliente_Diferenciado, :Horario_Entrega, :Passaport' +
        'e, :Indicador_IE, :Nome_Fantasia, :MEI)')
    SQLDelete.Strings = (
      'DELETE FROM Clientes'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE Clientes'
      'SET'
      
        '  Codigo = :Codigo, Nome = :Nome, Rua = :Rua, Rua_Numero = :Rua_' +
        'Numero, Complemento = :Complemento, Bairro = :Bairro, Municipio_' +
        'Codigo = :Municipio_Codigo, Municipio = :Municipio, Estado = :Es' +
        'tado, Pais = :Pais, CEP = :CEP, Telefone1 = :Telefone1, Telefone' +
        '2 = :Telefone2, FAX = :FAX, CNPJ = :CNPJ, CPF = :CPF, RG = :RG, ' +
        'Inscricao_Estadual = :Inscricao_Estadual, Isento = :Isento, Insc' +
        'ricao_Municipal = :Inscricao_Municipal, Rua_Entrega = :Rua_Entre' +
        'ga, Rua_EntregaNumero = :Rua_EntregaNumero, Bairro_Entrega = :Ba' +
        'irro_Entrega, Municipio_Entrega = :Municipio_Entrega, Estado_Ent' +
        'rega = :Estado_Entrega, CEP_Entrega = :CEP_Entrega, CNPJ_Entrega' +
        ' = :CNPJ_Entrega, IE_Entrega = :IE_Entrega, Email = :Email, Site' +
        ' = :Site, Contato = :Contato, Transportador = :Transportador, Da' +
        'ta_Cadastro = :Data_Cadastro, Ativo = :Ativo, Praca_Pagamento = ' +
        ':Praca_Pagamento, Trader = :Trader, Trader_Comissao = :Trader_Co' +
        'missao, Tipo_Comissao = :Tipo_Comissao, Conta_Ativo = :Conta_Ati' +
        'vo, Conta_Adiantamento = :Conta_Adiantamento, Matriz = :Matriz, ' +
        'Alterado = :Alterado, SUFRAMA = :SUFRAMA, Desconto_Dupl_Tipo = :' +
        'Desconto_Dupl_Tipo, Desconto_Dupl_Valor = :Desconto_Dupl_Valor, ' +
        'Desconto_Dupl_Dias = :Desconto_Dupl_Dias, Conta_Devolucao = :Con' +
        'ta_Devolucao, Simples_Nacional = :Simples_Nacional, Modalidade_I' +
        'mportacao = :Modalidade_Importacao, Desconto_Dupl_Campo = :Desco' +
        'nto_Dupl_Campo, Mascara_Processo = :Mascara_Processo, Enviar_Ema' +
        'il = :Enviar_Email, Desoneracao = :Desoneracao, Ramo_Atividade =' +
        ' :Ramo_Atividade, Observacao = :Observacao, Margem_Lucro = :Marg' +
        'em_Lucro, Desconto_Operacional = :Desconto_Operacional, Desconto' +
        '_Adicional = :Desconto_Adicional, Data_Nascimento = :Data_Nascim' +
        'ento, Naturalidade = :Naturalidade, Sexo = :Sexo, Estado_Civil =' +
        ' :Estado_Civil, Nome_Mae = :Nome_Mae, Nome_Pai = :Nome_Pai, Prof' +
        'issao = :Profissao, Renda_Mensal = :Renda_Mensal, Tempo_Servico ' +
        '= :Tempo_Servico, Trabalho_Local = :Trabalho_Local, Trabalho_End' +
        'ereco = :Trabalho_Endereco, Trabalho_Bairro = :Trabalho_Bairro, ' +
        'Trabalho_Cidade = :Trabalho_Cidade, Trabalho_CEP = :Trabalho_CEP' +
        ', Trabalho_Estado = :Trabalho_Estado, Trabalho_Telefone = :Traba' +
        'lho_Telefone, Representante = :Representante, Referencias_Banco1' +
        ' = :Referencias_Banco1, Referencias_Banco1Agencia = :Referencias' +
        '_Banco1Agencia, Referencias_Banco1Conta = :Referencias_Banco1Con' +
        'ta, Referencias_Banco1Data = :Referencias_Banco1Data, Referencia' +
        's_Banco2 = :Referencias_Banco2, Referencias_Banco2Agencia = :Ref' +
        'erencias_Banco2Agencia, Referencias_Banco2Conta = :Referencias_B' +
        'anco2Conta, Referencias_Banco2Data = :Referencias_Banco2Data, Re' +
        'ferencias_Cartoes = :Referencias_Cartoes, Referencias_Comercial1' +
        ' = :Referencias_Comercial1, Referencias_Comercial2 = :Referencia' +
        's_Comercial2, Referencias_Comercial3 = :Referencias_Comercial3, ' +
        'Avalista_Nome = :Avalista_Nome, Avalista_CNPJ = :Avalista_CNPJ, ' +
        'Avalista_CPF = :Avalista_CPF, Avalista_RG = :Avalista_RG, Avalis' +
        'ta_Endereco = :Avalista_Endereco, Avalista_Bairro = :Avalista_Ba' +
        'irro, Avalista_Cidade = :Avalista_Cidade, Avalista_Estado = :Ava' +
        'lista_Estado, Avalista_CEP = :Avalista_CEP, Cobranca_Endereco = ' +
        ':Cobranca_Endereco, Cobranca_Bairro = :Cobranca_Bairro, Cobranca' +
        '_Cidade = :Cobranca_Cidade, Cobranca_Estado = :Cobranca_Estado, ' +
        'Cobranca_CEP = :Cobranca_CEP, Cobranca_TipoFrete = :Cobranca_Tip' +
        'oFrete, Capital_Social = :Capital_Social, Referencias_ComercialC' +
        'ontato1 = :Referencias_ComercialContato1, Referencias_ComercialC' +
        'ontato2 = :Referencias_ComercialContato2, Referencias_ComercialC' +
        'ontato3 = :Referencias_ComercialContato3, Referencias_ComercialD' +
        'ata1 = :Referencias_ComercialData1, Referencias_ComercialData2 =' +
        ' :Referencias_ComercialData2, Referencias_ComercialData3 = :Refe' +
        'rencias_ComercialData3, Referencias_ComercialCompra1 = :Referenc' +
        'ias_ComercialCompra1, Referencias_ComercialCompra2 = :Referencia' +
        's_ComercialCompra2, Referencias_ComercialCompra3 = :Referencias_' +
        'ComercialCompra3, Referencias_ComercialPontual1 = :Referencias_C' +
        'omercialPontual1, Referencias_ComercialPontual2 = :Referencias_C' +
        'omercialPontual2, Referencias_ComercialPontual3 = :Referencias_C' +
        'omercialPontual3, Fator_Faturamento = :Fator_Faturamento, Fator_' +
        'SISCOMEX = :Fator_SISCOMEX, Margem_LucroValor = :Margem_LucroVal' +
        'or, Desconto_AdicionalValor = :Desconto_AdicionalValor, Desconto' +
        '_OperacionalValor = :Desconto_OperacionalValor, Limite_Credito =' +
        ' :Limite_Credito, Limite_Utilizado = :Limite_Utilizado, Email_Co' +
        'pia = :Email_Copia, Vencimento_Contrato = :Vencimento_Contrato, ' +
        'Zona_Franca = :Zona_Franca, Cobranca_Boleto = :Cobranca_Boleto, ' +
        'CNAE = :CNAE, Municipio_EntregaNome = :Municipio_EntregaNome, De' +
        'sconto_Comercial = :Desconto_Comercial, Desconto_ComercialValor ' +
        '= :Desconto_ComercialValor, Representante_Comissao = :Representa' +
        'nte_Comissao, Consumidor_Final = :Consumidor_Final, Vencimento_R' +
        'adar = :Vencimento_Radar, Vencimento_Vinculacao = :Vencimento_Vi' +
        'nculacao, Condicao_Pagamento = :Condicao_Pagamento, Mensalidade ' +
        '= :Mensalidade, Mensalidade_Dia = :Mensalidade_Dia, Atraso_Maxim' +
        'o = :Atraso_Maximo, Atendente = :Atendente, Atendente_Comissao =' +
        ' :Atendente_Comissao, Cliente_Diferenciado = :Cliente_Diferencia' +
        'do, Horario_Entrega = :Horario_Entrega, Passaporte = :Passaporte' +
        ', Indicador_IE = :Indicador_IE, Nome_Fantasia = :Nome_Fantasia, ' +
        'MEI = :MEI'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT Clientes.Codigo, Clientes.Nome, Clientes.Rua, Clientes.Ru' +
        'a_Numero, Clientes.Complemento, Clientes.Bairro, Clientes.Munici' +
        'pio_Codigo, Clientes.Municipio, Clientes.Estado, Clientes.Pais, ' +
        'Clientes.CEP, Clientes.Telefone1, Clientes.Telefone2, Clientes.F' +
        'AX, Clientes.CNPJ, Clientes.CPF, Clientes.RG, Clientes.Inscricao' +
        '_Estadual, Clientes.Isento, Clientes.Inscricao_Municipal, Client' +
        'es.Rua_Entrega, Clientes.Rua_EntregaNumero, Clientes.Bairro_Entr' +
        'ega, Clientes.Municipio_Entrega, Clientes.Estado_Entrega, Client' +
        'es.CEP_Entrega, Clientes.CNPJ_Entrega, Clientes.IE_Entrega, Clie' +
        'ntes.Email, Clientes.Site, Clientes.Contato, Clientes.Transporta' +
        'dor, Clientes.Data_Cadastro, Clientes.Ativo, Clientes.Praca_Paga' +
        'mento, Clientes.Trader, Clientes.Trader_Comissao, Clientes.Tipo_' +
        'Comissao, Clientes.Conta_Ativo, Clientes.Conta_Adiantamento, Cli' +
        'entes.Matriz, Clientes.Alterado, Clientes.SUFRAMA, Clientes.Desc' +
        'onto_Dupl_Tipo, Clientes.Desconto_Dupl_Valor, Clientes.Desconto_' +
        'Dupl_Dias, Clientes.Conta_Devolucao, Clientes.Simples_Nacional, ' +
        'Clientes.Modalidade_Importacao, Clientes.Desconto_Dupl_Campo, Cl' +
        'ientes.Mascara_Processo, Clientes.Enviar_Email, Clientes.Desoner' +
        'acao, Clientes.Ramo_Atividade, Clientes.Observacao, Clientes.Mar' +
        'gem_Lucro, Clientes.Desconto_Operacional, Clientes.Desconto_Adic' +
        'ional, Clientes.Data_Nascimento, Clientes.Naturalidade, Clientes' +
        '.Sexo, Clientes.Estado_Civil, Clientes.Nome_Mae, Clientes.Nome_P' +
        'ai, Clientes.Profissao, Clientes.Renda_Mensal, Clientes.Tempo_Se' +
        'rvico, Clientes.Trabalho_Local, Clientes.Trabalho_Endereco, Clie' +
        'ntes.Trabalho_Bairro, Clientes.Trabalho_Cidade, Clientes.Trabalh' +
        'o_CEP, Clientes.Trabalho_Estado, Clientes.Trabalho_Telefone, Cli' +
        'entes.Representante, Clientes.Referencias_Banco1, Clientes.Refer' +
        'encias_Banco1Agencia, Clientes.Referencias_Banco1Conta, Clientes' +
        '.Referencias_Banco1Data, Clientes.Referencias_Banco2, Clientes.R' +
        'eferencias_Banco2Agencia, Clientes.Referencias_Banco2Conta, Clie' +
        'ntes.Referencias_Banco2Data, Clientes.Referencias_Cartoes, Clien' +
        'tes.Referencias_Comercial1, Clientes.Referencias_Comercial2, Cli' +
        'entes.Referencias_Comercial3, Clientes.Avalista_Nome, Clientes.A' +
        'valista_CNPJ, Clientes.Avalista_CPF, Clientes.Avalista_RG, Clien' +
        'tes.Avalista_Endereco, Clientes.Avalista_Bairro, Clientes.Avalis' +
        'ta_Cidade, Clientes.Avalista_Estado, Clientes.Avalista_CEP, Clie' +
        'ntes.Cobranca_Endereco, Clientes.Cobranca_Bairro, Clientes.Cobra' +
        'nca_Cidade, Clientes.Cobranca_Estado, Clientes.Cobranca_CEP, Cli' +
        'entes.Cobranca_TipoFrete, Clientes.Capital_Social, Clientes.Refe' +
        'rencias_ComercialContato1, Clientes.Referencias_ComercialContato' +
        '2, Clientes.Referencias_ComercialContato3, Clientes.Referencias_' +
        'ComercialData1, Clientes.Referencias_ComercialData2, Clientes.Re' +
        'ferencias_ComercialData3, Clientes.Referencias_ComercialCompra1,' +
        ' Clientes.Referencias_ComercialCompra2, Clientes.Referencias_Com' +
        'ercialCompra3, Clientes.Referencias_ComercialPontual1, Clientes.' +
        'Referencias_ComercialPontual2, Clientes.Referencias_ComercialPon' +
        'tual3, Clientes.Fator_Faturamento, Clientes.Fator_SISCOMEX, Clie' +
        'ntes.Margem_LucroValor, Clientes.Desconto_AdicionalValor, Client' +
        'es.Desconto_OperacionalValor, Clientes.Limite_Credito, Clientes.' +
        'Limite_Utilizado, Clientes.Email_Copia, Clientes.Vencimento_Cont' +
        'rato, Clientes.Zona_Franca, Clientes.Cobranca_Boleto, Clientes.C' +
        'NAE, Clientes.Municipio_EntregaNome, Clientes.Desconto_Comercial' +
        ', Clientes.Desconto_ComercialValor, Clientes.Representante_Comis' +
        'sao, Clientes.Consumidor_Final, Clientes.Vencimento_Radar, Clien' +
        'tes.Vencimento_Vinculacao, Clientes.Condicao_Pagamento, Clientes' +
        '.Mensalidade, Clientes.Mensalidade_Dia, Clientes.Atraso_Maximo, ' +
        'Clientes.Atendente, Clientes.Atendente_Comissao, Clientes.Client' +
        'e_Diferenciado, Clientes.Horario_Entrega, Clientes.Passaporte, C' +
        'lientes.Indicador_IE, Clientes.Nome_Fantasia, Clientes.MEI FROM ' +
        'Clientes'
      'WHERE Clientes.Codigo = :Codigo ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM Clientes')
    FetchRows = 1
    Left = 56
    Top = 112
  end
  object tEmpresas: TMSQuery
    Connection = Dados.Banco
    FetchRows = 1
    Left = 120
    Top = 112
  end
  object dstEmpresas: TDataSource
    DataSet = tEmpresas
    Left = 120
    Top = 160
  end
  object dstFiliais: TDataSource
    DataSet = tFiliais
    Left = 56
    Top = 160
  end
  object tContas: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 120
    Top = 64
  end
end
