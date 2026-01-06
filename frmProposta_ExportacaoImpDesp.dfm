object Proposta_ExportacaoImpDesp: TProposta_ExportacaoImpDesp
  Left = 530
  Top = 296
  BorderStyle = bsToolWindow
  Caption = 'Importa'#231#227'o de despesas de processo existente'
  ClientHeight = 545
  ClientWidth = 817
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GradeProcesso: TDBGrid
    Left = 3
    Top = 21
    Width = 366
    Height = 489
    DataSource = dstProcessos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Processo'
        Title.Alignment = taCenter
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Origem'
        Title.Alignment = taCenter
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Modalidade'
        Title.Alignment = taCenter
        Width = 93
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Incentivo_Fiscal'
        Title.Alignment = taCenter
        Title.Caption = 'Beneficio'
        Width = 47
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 514
    Width = 817
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      817
      31)
    object bSair: TButton
      Left = 741
      Top = 2
      Width = 75
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bImportar: TButton
      Left = 666
      Top = 2
      Width = 75
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Importar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bImportarClick
    end
  end
  object GradeDespesas: TRxDBGrid
    Left = 372
    Top = 21
    Width = 441
    Height = 489
    DataSource = dstDespesas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    RowColor2 = 16776176
    Columns = <
      item
        Expanded = False
        FieldName = 'Descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Despesas'
        Width = 329
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Total'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Width = 89
        Visible = True
      end>
  end
  object StaticText10: TStaticText
    Left = 3
    Top = 2
    Width = 366
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Processos'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    Transparent = False
    StyleElements = []
  end
  object StaticText1: TStaticText
    Left = 372
    Top = 2
    Width = 441
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Despesas'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    Transparent = False
    StyleElements = []
  end
  object tDespesas: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO SimulaImportacao'
      
        '  (Numero, Data, Cliente, Modalidade, Fornecedor, Produto, Orige' +
        'm, NCM, Quantidade, Peso_Bruto, FOB, Aliquota_II, Aliquota_IPI, ' +
        'Valor_II, Valor_IPI, Modalidade_Frete, Destino, Container_Qtde, ' +
        'Valor_Unitario, Frete_Internacional, Seguro_PremioPercentual, Se' +
        'guro_PremioValor, Taxa_MoedaOrigem, FOB_Real, Frete_Real, Seguro' +
        '_Real, Total_CIF, Aliquota_PIS, Aliquota_COFINS, Aliquota_ICMSEn' +
        'trada, Aliquota_ICMSSaida, Taxa_Adiministrativa)'
      'VALUES'
      
        '  (:Numero, :Data, :Cliente, :Modalidade, :Fornecedor, :Produto,' +
        ' :Origem, :NCM, :Quantidade, :Peso_Bruto, :FOB, :Aliquota_II, :A' +
        'liquota_IPI, :Valor_II, :Valor_IPI, :Modalidade_Frete, :Destino,' +
        ' :Container_Qtde, :Valor_Unitario, :Frete_Internacional, :Seguro' +
        '_PremioPercentual, :Seguro_PremioValor, :Taxa_MoedaOrigem, :FOB_' +
        'Real, :Frete_Real, :Seguro_Real, :Total_CIF, :Aliquota_PIS, :Ali' +
        'quota_COFINS, :Aliquota_ICMSEntrada, :Aliquota_ICMSSaida, :Taxa_' +
        'Adiministrativa)')
    SQLDelete.Strings = (
      'DELETE FROM SimulaImportacao'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLUpdate.Strings = (
      'UPDATE SimulaImportacao'
      'SET'
      
        '  Numero = :Numero, Data = :Data, Cliente = :Cliente, Modalidade' +
        ' = :Modalidade, Fornecedor = :Fornecedor, Produto = :Produto, Or' +
        'igem = :Origem, NCM = :NCM, Quantidade = :Quantidade, Peso_Bruto' +
        ' = :Peso_Bruto, FOB = :FOB, Aliquota_II = :Aliquota_II, Aliquota' +
        '_IPI = :Aliquota_IPI, Valor_II = :Valor_II, Valor_IPI = :Valor_I' +
        'PI, Modalidade_Frete = :Modalidade_Frete, Destino = :Destino, Co' +
        'ntainer_Qtde = :Container_Qtde, Valor_Unitario = :Valor_Unitario' +
        ', Frete_Internacional = :Frete_Internacional, Seguro_PremioPerce' +
        'ntual = :Seguro_PremioPercentual, Seguro_PremioValor = :Seguro_P' +
        'remioValor, Taxa_MoedaOrigem = :Taxa_MoedaOrigem, FOB_Real = :FO' +
        'B_Real, Frete_Real = :Frete_Real, Seguro_Real = :Seguro_Real, To' +
        'tal_CIF = :Total_CIF, Aliquota_PIS = :Aliquota_PIS, Aliquota_COF' +
        'INS = :Aliquota_COFINS, Aliquota_ICMSEntrada = :Aliquota_ICMSEnt' +
        'rada, Aliquota_ICMSSaida = :Aliquota_ICMSSaida, Taxa_Adiministra' +
        'tiva = :Taxa_Adiministrativa'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLRefresh.Strings = (
      
        'SELECT SimulaImportacao.Numero, SimulaImportacao.Data, SimulaImp' +
        'ortacao.Cliente, SimulaImportacao.Modalidade, SimulaImportacao.F' +
        'ornecedor, SimulaImportacao.Produto, SimulaImportacao.Origem, Si' +
        'mulaImportacao.NCM, SimulaImportacao.Quantidade, SimulaImportaca' +
        'o.Peso_Bruto, SimulaImportacao.FOB, SimulaImportacao.Aliquota_II' +
        ', SimulaImportacao.Aliquota_IPI, SimulaImportacao.Valor_II, Simu' +
        'laImportacao.Valor_IPI, SimulaImportacao.Modalidade_Frete, Simul' +
        'aImportacao.Destino, SimulaImportacao.Container_Qtde, SimulaImpo' +
        'rtacao.Valor_Unitario, SimulaImportacao.Frete_Internacional, Sim' +
        'ulaImportacao.Seguro_PremioPercentual, SimulaImportacao.Seguro_P' +
        'remioValor, SimulaImportacao.Taxa_MoedaOrigem, SimulaImportacao.' +
        'FOB_Real, SimulaImportacao.Frete_Real, SimulaImportacao.Seguro_R' +
        'eal, SimulaImportacao.Total_CIF, SimulaImportacao.Aliquota_PIS, ' +
        'SimulaImportacao.Aliquota_COFINS, SimulaImportacao.Aliquota_ICMS' +
        'Entrada, SimulaImportacao.Aliquota_ICMSSaida, SimulaImportacao.T' +
        'axa_Adiministrativa FROM SimulaImportacao'
      'WHERE SimulaImportacao.Numero = :Numero ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT PagarReceber.Valor_Total'
      '      ,PagarReceber.Classificacao'
      
        '      ,(SELECT Descricao FROM ClassificacaoFinanceira WHERE(Clas' +
        'sificacaoFinanceira.Codigo = PagarReceber.Classificacao)) AS Des' +
        'cricao'
      'FROM PagarReceber')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 402
    Top = 516
    object tDespesasValor_Total: TCurrencyField
      FieldName = 'Valor_Total'
      Origin = 'PagarReceber.Valor_Total'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object tDespesasDescricao: TStringField
      FieldName = 'Descricao'
      Origin = '.'
      ReadOnly = True
      Size = 60
    end
    object tDespesasClassificacao: TStringField
      FieldName = 'Classificacao'
      Size = 15
    end
  end
  object dstDespesas: TDataSource
    DataSet = tDespesas
    Left = 432
    Top = 516
  end
  object tProcessos: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO SimulaImportacao'
      
        '  (Numero, Data, Cliente, Modalidade, Fornecedor, Produto, Orige' +
        'm, NCM, Quantidade, Peso_Bruto, FOB, Aliquota_II, Aliquota_IPI, ' +
        'Valor_II, Valor_IPI, Modalidade_Frete, Destino, Container_Qtde, ' +
        'Valor_Unitario, Frete_Internacional, Seguro_PremioPercentual, Se' +
        'guro_PremioValor, Taxa_MoedaOrigem, FOB_Real, Frete_Real, Seguro' +
        '_Real, Total_CIF, Aliquota_PIS, Aliquota_COFINS, Aliquota_ICMSEn' +
        'trada, Aliquota_ICMSSaida, Taxa_Adiministrativa)'
      'VALUES'
      
        '  (:Numero, :Data, :Cliente, :Modalidade, :Fornecedor, :Produto,' +
        ' :Origem, :NCM, :Quantidade, :Peso_Bruto, :FOB, :Aliquota_II, :A' +
        'liquota_IPI, :Valor_II, :Valor_IPI, :Modalidade_Frete, :Destino,' +
        ' :Container_Qtde, :Valor_Unitario, :Frete_Internacional, :Seguro' +
        '_PremioPercentual, :Seguro_PremioValor, :Taxa_MoedaOrigem, :FOB_' +
        'Real, :Frete_Real, :Seguro_Real, :Total_CIF, :Aliquota_PIS, :Ali' +
        'quota_COFINS, :Aliquota_ICMSEntrada, :Aliquota_ICMSSaida, :Taxa_' +
        'Adiministrativa)')
    SQLDelete.Strings = (
      'DELETE FROM SimulaImportacao'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLUpdate.Strings = (
      'UPDATE SimulaImportacao'
      'SET'
      
        '  Numero = :Numero, Data = :Data, Cliente = :Cliente, Modalidade' +
        ' = :Modalidade, Fornecedor = :Fornecedor, Produto = :Produto, Or' +
        'igem = :Origem, NCM = :NCM, Quantidade = :Quantidade, Peso_Bruto' +
        ' = :Peso_Bruto, FOB = :FOB, Aliquota_II = :Aliquota_II, Aliquota' +
        '_IPI = :Aliquota_IPI, Valor_II = :Valor_II, Valor_IPI = :Valor_I' +
        'PI, Modalidade_Frete = :Modalidade_Frete, Destino = :Destino, Co' +
        'ntainer_Qtde = :Container_Qtde, Valor_Unitario = :Valor_Unitario' +
        ', Frete_Internacional = :Frete_Internacional, Seguro_PremioPerce' +
        'ntual = :Seguro_PremioPercentual, Seguro_PremioValor = :Seguro_P' +
        'remioValor, Taxa_MoedaOrigem = :Taxa_MoedaOrigem, FOB_Real = :FO' +
        'B_Real, Frete_Real = :Frete_Real, Seguro_Real = :Seguro_Real, To' +
        'tal_CIF = :Total_CIF, Aliquota_PIS = :Aliquota_PIS, Aliquota_COF' +
        'INS = :Aliquota_COFINS, Aliquota_ICMSEntrada = :Aliquota_ICMSEnt' +
        'rada, Aliquota_ICMSSaida = :Aliquota_ICMSSaida, Taxa_Adiministra' +
        'tiva = :Taxa_Adiministrativa'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLRefresh.Strings = (
      
        'SELECT SimulaImportacao.Numero, SimulaImportacao.Data, SimulaImp' +
        'ortacao.Cliente, SimulaImportacao.Modalidade, SimulaImportacao.F' +
        'ornecedor, SimulaImportacao.Produto, SimulaImportacao.Origem, Si' +
        'mulaImportacao.NCM, SimulaImportacao.Quantidade, SimulaImportaca' +
        'o.Peso_Bruto, SimulaImportacao.FOB, SimulaImportacao.Aliquota_II' +
        ', SimulaImportacao.Aliquota_IPI, SimulaImportacao.Valor_II, Simu' +
        'laImportacao.Valor_IPI, SimulaImportacao.Modalidade_Frete, Simul' +
        'aImportacao.Destino, SimulaImportacao.Container_Qtde, SimulaImpo' +
        'rtacao.Valor_Unitario, SimulaImportacao.Frete_Internacional, Sim' +
        'ulaImportacao.Seguro_PremioPercentual, SimulaImportacao.Seguro_P' +
        'remioValor, SimulaImportacao.Taxa_MoedaOrigem, SimulaImportacao.' +
        'FOB_Real, SimulaImportacao.Frete_Real, SimulaImportacao.Seguro_R' +
        'eal, SimulaImportacao.Total_CIF, SimulaImportacao.Aliquota_PIS, ' +
        'SimulaImportacao.Aliquota_COFINS, SimulaImportacao.Aliquota_ICMS' +
        'Entrada, SimulaImportacao.Aliquota_ICMSSaida, SimulaImportacao.T' +
        'axa_Adiministrativa FROM SimulaImportacao'
      'WHERE SimulaImportacao.Numero = :Numero ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Processo,'
      '       Origem,'
      
        '       (SELECT Descricao FROM TiposProcesso WHERE(Codigo = Modal' +
        'idade_Importacao)) AS Modalidade,'
      '       Incentivo_Fiscal'
      'FROM ProcessosDocumentos')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    AfterScroll = tProcessosAfterScroll
    Left = 338
    Top = 516
    object tProcessosProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'ProcessosDocumentos.Processo'
      Size = 15
    end
    object tProcessosOrigem: TStringField
      FieldName = 'Origem'
      Origin = 'ProcessosDocumentos.Origem'
      Size = 30
    end
    object tProcessosModalidade: TStringField
      FieldName = 'Modalidade'
      Origin = 'ProcessosDocumentos.Modalidade'
      Size = 30
    end
    object tProcessosIncentivo_Fiscal: TStringField
      FieldName = 'Incentivo_Fiscal'
      Origin = 'ProcessosDocumentos.Incentivo_Fiscal'
      Size = 15
    end
  end
  object dstProcessos: TDataSource
    DataSet = tProcessos
    Left = 368
    Top = 516
  end
  object tRegistro: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO SimulaImportacao'
      
        '  (Numero, Data, Cliente, Modalidade, Fornecedor, Produto, Orige' +
        'm, NCM, Quantidade, Peso_Bruto, FOB, Aliquota_II, Aliquota_IPI, ' +
        'Valor_II, Valor_IPI, Modalidade_Frete, Destino, Container_Qtde, ' +
        'Valor_Unitario, Frete_Internacional, Seguro_PremioPercentual, Se' +
        'guro_PremioValor, Taxa_MoedaOrigem, FOB_Real, Frete_Real, Seguro' +
        '_Real, Total_CIF, Aliquota_PIS, Aliquota_COFINS, Aliquota_ICMSEn' +
        'trada, Aliquota_ICMSSaida, Taxa_Adiministrativa)'
      'VALUES'
      
        '  (:Numero, :Data, :Cliente, :Modalidade, :Fornecedor, :Produto,' +
        ' :Origem, :NCM, :Quantidade, :Peso_Bruto, :FOB, :Aliquota_II, :A' +
        'liquota_IPI, :Valor_II, :Valor_IPI, :Modalidade_Frete, :Destino,' +
        ' :Container_Qtde, :Valor_Unitario, :Frete_Internacional, :Seguro' +
        '_PremioPercentual, :Seguro_PremioValor, :Taxa_MoedaOrigem, :FOB_' +
        'Real, :Frete_Real, :Seguro_Real, :Total_CIF, :Aliquota_PIS, :Ali' +
        'quota_COFINS, :Aliquota_ICMSEntrada, :Aliquota_ICMSSaida, :Taxa_' +
        'Adiministrativa)')
    SQLDelete.Strings = (
      'DELETE FROM SimulaImportacao'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLUpdate.Strings = (
      'UPDATE SimulaImportacao'
      'SET'
      
        '  Numero = :Numero, Data = :Data, Cliente = :Cliente, Modalidade' +
        ' = :Modalidade, Fornecedor = :Fornecedor, Produto = :Produto, Or' +
        'igem = :Origem, NCM = :NCM, Quantidade = :Quantidade, Peso_Bruto' +
        ' = :Peso_Bruto, FOB = :FOB, Aliquota_II = :Aliquota_II, Aliquota' +
        '_IPI = :Aliquota_IPI, Valor_II = :Valor_II, Valor_IPI = :Valor_I' +
        'PI, Modalidade_Frete = :Modalidade_Frete, Destino = :Destino, Co' +
        'ntainer_Qtde = :Container_Qtde, Valor_Unitario = :Valor_Unitario' +
        ', Frete_Internacional = :Frete_Internacional, Seguro_PremioPerce' +
        'ntual = :Seguro_PremioPercentual, Seguro_PremioValor = :Seguro_P' +
        'remioValor, Taxa_MoedaOrigem = :Taxa_MoedaOrigem, FOB_Real = :FO' +
        'B_Real, Frete_Real = :Frete_Real, Seguro_Real = :Seguro_Real, To' +
        'tal_CIF = :Total_CIF, Aliquota_PIS = :Aliquota_PIS, Aliquota_COF' +
        'INS = :Aliquota_COFINS, Aliquota_ICMSEntrada = :Aliquota_ICMSEnt' +
        'rada, Aliquota_ICMSSaida = :Aliquota_ICMSSaida, Taxa_Adiministra' +
        'tiva = :Taxa_Adiministrativa'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLRefresh.Strings = (
      
        'SELECT SimulaImportacao.Numero, SimulaImportacao.Data, SimulaImp' +
        'ortacao.Cliente, SimulaImportacao.Modalidade, SimulaImportacao.F' +
        'ornecedor, SimulaImportacao.Produto, SimulaImportacao.Origem, Si' +
        'mulaImportacao.NCM, SimulaImportacao.Quantidade, SimulaImportaca' +
        'o.Peso_Bruto, SimulaImportacao.FOB, SimulaImportacao.Aliquota_II' +
        ', SimulaImportacao.Aliquota_IPI, SimulaImportacao.Valor_II, Simu' +
        'laImportacao.Valor_IPI, SimulaImportacao.Modalidade_Frete, Simul' +
        'aImportacao.Destino, SimulaImportacao.Container_Qtde, SimulaImpo' +
        'rtacao.Valor_Unitario, SimulaImportacao.Frete_Internacional, Sim' +
        'ulaImportacao.Seguro_PremioPercentual, SimulaImportacao.Seguro_P' +
        'remioValor, SimulaImportacao.Taxa_MoedaOrigem, SimulaImportacao.' +
        'FOB_Real, SimulaImportacao.Frete_Real, SimulaImportacao.Seguro_R' +
        'eal, SimulaImportacao.Total_CIF, SimulaImportacao.Aliquota_PIS, ' +
        'SimulaImportacao.Aliquota_COFINS, SimulaImportacao.Aliquota_ICMS' +
        'Entrada, SimulaImportacao.Aliquota_ICMSSaida, SimulaImportacao.T' +
        'axa_Adiministrativa FROM SimulaImportacao'
      'WHERE SimulaImportacao.Numero = :Numero ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Registro) AS Registro FROM SimulaDespesas')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 462
    Top = 516
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 296
    Top = 514
  end
end
