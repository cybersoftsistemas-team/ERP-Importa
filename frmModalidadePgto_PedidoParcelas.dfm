object ModalidadePgto_PedidoParcelas: TModalidadePgto_PedidoParcelas
  Left = 556
  Top = 144
  BorderStyle = bsToolWindow
  Caption = 'Duplicatas...'
  ClientHeight = 558
  ClientWidth = 357
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StaticText1: TStaticText
    Left = 13
    Top = 464
    Width = 118
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
    TabOrder = 3
    Transparent = False
    StyleElements = []
  end
  object cValor: TCurrencyEdit
    Left = 133
    Top = 464
    Width = 116
    Height = 21
    TabStop = False
    AutoSize = False
    DecimalPlaces = 6
    DisplayFormat = '###,###,###,##0.00;-###,###,###,##0.00'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object lFormaPgto: TStaticText
    Left = 13
    Top = 13
    Width = 101
    Height = 17
    Cursor = crHandPoint
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
    Left = 13
    Top = 31
    Width = 329
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
    TabOrder = 0
    OnClick = cFormaPgtoClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 527
    Width = 357
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 6
    DesignSize = (
      357
      31)
    object bGerar: TButton
      Left = 149
      Top = 2
      Width = 67
      Height = 28
      Anchors = [akTop, akRight]
      Caption = '&Gerar'
      Enabled = False
      TabOrder = 0
      OnClick = bGerarClick
    end
    object bCancelar: TButton
      Left = 284
      Top = 2
      Width = 73
      Height = 28
      Anchors = [akTop, akRight]
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = bCancelarClick
    end
    object mRemover: TButton
      Left = 216
      Top = 2
      Width = 68
      Height = 28
      Anchors = [akTop, akRight]
      Caption = '&Remover'
      TabOrder = 2
      OnClick = mRemoverClick
    end
    object bCalc: TButton
      Left = 82
      Top = 2
      Width = 67
      Height = 28
      Hint = 'Recalcula todas as parcelas com base no valor da primeira.'
      Anchors = [akTop, akRight]
      Caption = '&Recalcular'
      TabOrder = 3
      OnClick = bCalcClick
    end
  end
  object StaticText2: TStaticText
    Left = 13
    Top = 487
    Width = 118
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
    Left = 133
    Top = 487
    Width = 116
    Height = 21
    TabStop = False
    AutoSize = False
    DecimalPlaces = 6
    DisplayFormat = '###,###,###,##0.00;-###,###,###,##0.00'
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
    Left = 13
    Top = 53
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
    TabOrder = 9
    Transparent = False
    StyleElements = []
    OnClick = lFormaPgtoClick
  end
  object cBanco: TDBLookupComboBox
    Left = 13
    Top = 69
    Width = 329
    Height = 21
    DropDownRows = 15
    DropDownWidth = 350
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
    TabOrder = 1
  end
  object StaticText4: TStaticText
    Left = 13
    Top = 92
    Width = 78
    Height = 17
    Cursor = crHandPoint
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    Caption = 'Centro de Custo'
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
    OnClick = lFormaPgtoClick
  end
  object cCentroCusto: TDBLookupComboBox
    Left = 13
    Top = 108
    Width = 329
    Height = 21
    DropDownRows = 15
    DropDownWidth = 350
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
    TabOrder = 2
  end
  object Grade: TRxDBGrid
    Left = 13
    Top = 133
    Width = 331
    Height = 327
    DataSource = Dados.dsTabParcelas
    Enabled = False
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    StyleElements = []
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
  object tProvisao: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Numero) AS Numero FROM PagarReceber')
    Left = 87
    Top = 277
    object tProvisaoNumero: TLargeintField
      FieldName = 'Numero'
      ReadOnly = True
    end
  end
  object tLancamentos: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT MAX(Numero) AS Numero FROM Lancamentos')
    FetchRows = 1
    Left = 157
    Top = 277
  end
end
