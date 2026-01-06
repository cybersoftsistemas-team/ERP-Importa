object ModalidadePgto_Parcelas: TModalidadePgto_Parcelas
  Left = 503
  Top = 64
  BorderStyle = bsToolWindow
  Caption = 'Duplicatas...'
  ClientHeight = 600
  ClientWidth = 435
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bPesqCla: TSpeedButton
    Left = 404
    Top = 22
    Width = 23
    Height = 23
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
      B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
      1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
      BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
      BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
    OnClick = bPesqClaClick
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 509
    Width = 194
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Total das Duplicatas'
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
  object cValor: TCurrencyEdit
    Left = 203
    Top = 509
    Width = 116
    Height = 21
    TabStop = False
    AutoSize = False
    DecimalPlaces = 6
    DisplayFormat = ',##0.00'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object Grade: TRxDBGrid
    Left = 8
    Top = 176
    Width = 331
    Height = 327
    DataSource = Dados.dsTabParcelas
    Enabled = False
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = GradeCellClick
    OnExit = GradeExit
    RowColor2 = 16776176
    Columns = <
      item
        Alignment = taRightJustify
        Color = 16766935
        Expanded = False
        FieldName = 'Parcela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 61
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Vencimento'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 122
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Adiantamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Webdings'
        Font.Style = []
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Adiant'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 42
        Visible = True
      end>
  end
  object lFormaPgto: TStaticText
    Left = 7
    Top = 46
    Width = 115
    Height = 16
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    Caption = 'Forma de Pagamento'
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
    OnClick = lFormaPgtoClick
  end
  object cFormaPgto: TDBLookupComboBox
    Left = 7
    Top = 63
    Width = 419
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
    ListSource = Dados.dsModalidadesPgto
    ParentFont = False
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 569
    Width = 435
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 6
    DesignSize = (
      435
      31)
    object bGerar: TButton
      Left = 254
      Top = 2
      Width = 106
      Height = 28
      Anchors = [akTop, akRight]
      Caption = '&Gerar Financeiro'
      TabOrder = 0
      OnClick = bGerarClick
    end
    object bCancelar: TButton
      Left = 360
      Top = 2
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = bCancelarClick
    end
  end
  object StaticText2: TStaticText
    Left = 8
    Top = 532
    Width = 194
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Total da Nota Fiscal'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 7
    Transparent = False
    StyleElements = []
  end
  object cTotalNota: TCurrencyEdit
    Left = 203
    Top = 532
    Width = 116
    Height = 21
    TabStop = False
    AutoSize = False
    DecimalPlaces = 6
    DisplayFormat = ',##0.00'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object StaticText3: TStaticText
    Left = 7
    Top = 6
    Width = 123
    Height = 16
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    Caption = 'Classifica'#231#227'o Financeira'
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
    OnClick = StaticText3Click
  end
  object cClassificacao: TDBLookupComboBox
    Left = 7
    Top = 23
    Width = 397
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
    ListSource = Dados.dsClassificacaoFinanceira
    ParentFont = False
    TabOrder = 0
  end
  object bParcelas: TButton
    Left = 341
    Top = 179
    Width = 88
    Height = 58
    Caption = '&Criar Parcelas'
    TabOrder = 10
    OnClick = bParcelasClick
  end
  object StaticText4: TStaticText
    Left = 7
    Top = 86
    Width = 32
    Height = 17
    Cursor = crHandPoint
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    Caption = 'Banco'
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
    OnClick = lFormaPgtoClick
  end
  object cBanco: TDBLookupComboBox
    Left = 7
    Top = 103
    Width = 420
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
    TabOrder = 12
  end
  object cTipo: TRadioGroup
    Left = 8
    Top = 126
    Width = 421
    Height = 43
    Caption = 'Tipo de Parcelamento'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Parcelar pelo total da nota'
      'Parcelar pelos servi'#231'os')
    TabOrder = 13
  end
  object tProvisao: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Numero) AS Numero FROM PagarReceber')
    Left = 82
    Top = 301
    object tProvisaoNumero: TLargeintField
      FieldName = 'Numero'
      Origin = '.'
      ReadOnly = True
    end
  end
  object tLancamentos: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT MAX(Numero) AS Numero FROM Lancamentos')
    FetchRows = 1
    Left = 168
    Top = 301
  end
  object tClass: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 232
    Top = 301
  end
  object tRegistroBaixa: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 168
    Top = 365
  end
  object tRegistro: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 168
    Top = 429
  end
  object tlancamento: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 232
    Top = 429
  end
  object tBaixas: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 240
    Top = 364
  end
end
