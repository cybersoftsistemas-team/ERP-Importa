object Processo_SimulacaoMercante: TProcesso_SimulacaoMercante
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Processo_SimulacaoMercante'
  ClientHeight = 173
  ClientWidth = 522
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 142
    Width = 522
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      522
      31)
    object bSair: TButton
      Left = 446
      Top = 2
      Width = 75
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bGerar: TButton
      Left = 371
      Top = 2
      Width = 75
      Height = 28
      Hint = 'Gera o lan'#231'amento de marinha Mercante'
      Anchors = [akTop, akRight]
      Caption = '&Gerar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bGerarClick
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 8
    Width = 504
    Height = 108
    BevelOuter = bvLowered
    TabOrder = 1
    object cTHC: TDBLookupComboBox
      Left = 108
      Top = 8
      Width = 384
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao'
      ListFieldIndex = 1
      ListSource = Dados.dsClassificacaoFinanceira
      ParentFont = False
      TabOrder = 0
    end
    object StaticText33: TStaticText
      Left = 9
      Top = 8
      Width = 97
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'THC'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 8
      Transparent = False
      StyleElements = []
    end
    object cMM: TDBLookupComboBox
      Left = 108
      Top = 54
      Width = 384
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao'
      ListFieldIndex = 1
      ListSource = dstClass
      ParentFont = False
      TabOrder = 4
    end
    object StaticText1: TStaticText
      Left = 9
      Top = 54
      Width = 97
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Marinha Mercante'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 9
      Transparent = False
      StyleElements = []
    end
    object StaticText20: TStaticText
      Left = 292
      Top = 31
      Width = 21
      Height = 21
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'R$'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 10
      Transparent = False
      StyleElements = []
    end
    object cDespNacTHC: TCurrencyEdit
      Left = 315
      Top = 31
      Width = 90
      Height = 21
      AutoSize = False
      DisplayFormat = ',##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnChange = cValorMETHCChange
    end
    object StaticText59: TStaticText
      Left = 176
      Top = 31
      Width = 21
      Height = 21
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'ME'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 11
      Transparent = False
      StyleElements = []
    end
    object cValorMETHC: TCurrencyEdit
      Left = 199
      Top = 31
      Width = 90
      Height = 21
      AutoSize = False
      DisplayFormat = ',##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnChange = cValorMETHCChange
    end
    object StaticText65: TStaticText
      Left = 9
      Top = 31
      Width = 97
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Taxa'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 12
      Transparent = False
      StyleElements = []
    end
    object cTaxaTHC: TCurrencyEdit
      Left = 107
      Top = 31
      Width = 65
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = ',##0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = cValorMETHCChange
    end
    object StaticText2: TStaticText
      Left = 292
      Top = 77
      Width = 21
      Height = 21
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'R$'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 13
      Transparent = False
      StyleElements = []
    end
    object cDespNacMM: TCurrencyEdit
      Left = 315
      Top = 77
      Width = 90
      Height = 21
      AutoSize = False
      DisplayFormat = ',##0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object StaticText3: TStaticText
      Left = 176
      Top = 77
      Width = 21
      Height = 21
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'ME'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 14
      Transparent = False
      StyleElements = []
    end
    object cValorMEMM: TCurrencyEdit
      Left = 199
      Top = 77
      Width = 90
      Height = 21
      AutoSize = False
      DisplayFormat = ',##0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object StaticText4: TStaticText
      Left = 9
      Top = 77
      Width = 97
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Taxa'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 15
      Transparent = False
      StyleElements = []
    end
    object cTaxaMM: TCurrencyEdit
      Left = 107
      Top = 77
      Width = 65
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = ',##0.0000'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
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
      
        'SELECT isnull(MAX(Registro), 0)+1 AS Registro FROM SimulaDespesa' +
        's')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 31
    Top = 120
  end
  object tClass: TMSQuery
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
      
        'SELECT isnull(MAX(Registro), 0)+1 AS Registro FROM SimulaDespesa' +
        's')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 93
    Top = 121
  end
  object dstClass: TDataSource
    DataSet = tClass
    Left = 139
    Top = 122
  end
end
