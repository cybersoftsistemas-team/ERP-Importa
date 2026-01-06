object PedidosRepresentantes_Financeiro: TPedidosRepresentantes_Financeiro
  Left = 815
  Top = 402
  BorderStyle = bsToolWindow
  Caption = 'PedidosRepresentantes_Financeiro'
  ClientHeight = 190
  ClientWidth = 607
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
  object Panel1: TPanel
    Left = 0
    Top = 160
    Width = 607
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      607
      30)
    object bSair: TButton
      Left = 539
      Top = 1
      Width = 65
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight, akBottom]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bLancamentos: TButton
      Left = 422
      Top = 1
      Width = 111
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Anchors = [akTop, akRight]
      Caption = '&Gerar Lan'#231'amentos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bLancamentosClick
    end
  end
  object cClassCom: TRxDBLookupCombo
    Left = 195
    Top = 38
    Width = 398
    Height = 21
    DropDownCount = 20
    DisplayAllFields = True
    Enabled = False
    FieldsDelimiter = '|'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo; Descricao'
    LookupDisplayIndex = 1
    LookupSource = Dados.dsClassificacaoFinanceira
    ParentFont = False
    TabOrder = 1
  end
  object StaticText33: TStaticText
    Left = 15
    Top = 38
    Width = 178
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Classifica'#231#227'o Financeira (Com Boleto)'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    Transparent = False
    StyleElements = []
  end
  object cBanco: TDBLookupComboBox
    Left = 195
    Top = 84
    Width = 398
    Height = 21
    DropDownRows = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyField = 'Codigo'
    ListField = 'Codigo;Nome; Conta'
    ListFieldIndex = 1
    ListSource = Dados.dsBancos
    ParentFont = False
    TabOrder = 3
  end
  object cCentroCusto: TDBLookupComboBox
    Left = 195
    Top = 107
    Width = 398
    Height = 21
    DropDownRows = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyField = 'Codigo'
    ListField = 'Codigo;Descricao'
    ListFieldIndex = 1
    ListSource = Dados.dsCentroCusto
    ParentFont = False
    TabOrder = 4
  end
  object StaticText2: TStaticText
    Left = 15
    Top = 84
    Width = 178
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Conta Banc'#225'ria'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 5
    Transparent = False
    StyleElements = []
  end
  object StaticText3: TStaticText
    Left = 15
    Top = 107
    Width = 178
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Centro de Custos'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 6
    Transparent = False
    StyleElements = []
  end
  object RxDBLookupCombo1: TRxDBLookupCombo
    Left = 195
    Top = 15
    Width = 398
    Height = 21
    DropDownCount = 20
    DropDownWidth = 450
    DisplayAllFields = True
    EmptyValue = '420'
    FieldsDelimiter = '|'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'Razao_Social;CNPJ;Numero_Filial'
    LookupSource = Dados.dsEmpresas
    ParentFont = False
    TabOrder = 7
    OnChange = RxDBLookupCombo1Change
  end
  object StaticText4: TStaticText
    Left = 15
    Top = 15
    Width = 178
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Emissor da Nota Fiscal'
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
  object cClassSem: TRxDBLookupCombo
    Left = 195
    Top = 61
    Width = 398
    Height = 21
    DropDownCount = 20
    DisplayAllFields = True
    Enabled = False
    FieldsDelimiter = '|'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo; Descricao'
    LookupDisplayIndex = 1
    LookupSource = Dados.dsClassificacaoFinanceira
    ParentFont = False
    TabOrder = 9
  end
  object StaticText1: TStaticText
    Left = 15
    Top = 61
    Width = 178
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Classifica'#231#227'o Financeira (Sem Boleto)'
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
  object tNumero: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 228
  end
  object tComissao: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 364
    Top = 2
  end
  object tPedidos: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 300
    Top = 2
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 292
    Top = 58
  end
end
