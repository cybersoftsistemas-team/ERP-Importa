object Cadastro_AjustarPrecos: TCadastro_AjustarPrecos
  Left = 521
  Top = 175
  BorderStyle = bsDialog
  Caption = 'Cadastro_AjustarPrecos'
  ClientHeight = 301
  ClientWidth = 510
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 510
    Height = 45
    Align = alTop
    Stretch = True
    ExplicitWidth = 505
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 136
    Height = 21
    Caption = 'TABELA DE PRE'#199'OS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -17
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ShadowColor = 4194304
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel4: TRxLabel
    Left = 8
    Top = 22
    Width = 245
    Height = 18
    Caption = 'Ajuste de pre'#231'os da tabela de produtos.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    Layout = tlCenter
    ParentFont = False
    ShadowColor = 4194304
    ShadowPos = spRightBottom
    Transparent = True
  end
  object Panel2: TPanel
    Left = 0
    Top = 271
    Width = 510
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 6
    DesignSize = (
      510
      30)
    object bSair: TButton
      Left = 453
      Top = 1
      Width = 57
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bExecutar: TButton
      Left = 385
      Top = 1
      Width = 67
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Executar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bExecutarClick
    end
  end
  object cCampo: TRadioGroup
    Left = 24
    Top = 72
    Width = 136
    Height = 89
    Caption = 'Campo para ajustar'
    Items.Strings = (
      'Valor Entrada'
      'Valor Venda'
      'Valor Promo'#231#227'o')
    TabOrder = 0
  end
  object StaticText32: TStaticText
    Left = 26
    Top = 177
    Width = 63
    Height = 21
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Linha'
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
  object cLinha: TDBLookupComboBox
    Left = 91
    Top = 177
    Width = 334
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyField = 'Codigo'
    ListField = 'Codigo; Descricao'
    ListFieldIndex = 1
    ListSource = Dados.dsProdutosLinhas
    NullValueKey = 46
    ParentFont = False
    TabOrder = 2
  end
  object cTodas: TCheckBox
    Left = 428
    Top = 178
    Width = 59
    Height = 17
    Caption = 'Todas'
    TabOrder = 3
    OnClick = cTodasClick
  end
  object StaticText1: TStaticText
    Left = 26
    Top = 200
    Width = 63
    Height = 21
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Percentual'
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
  object cPercentual: TCurrencyEdit
    Left = 91
    Top = 199
    Width = 102
    Height = 21
    AutoSize = False
    DisplayFormat = '0.00%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object cTipo: TRadioGroup
    Left = 182
    Top = 72
    Width = 107
    Height = 89
    Caption = 'Opera'#231#227'o'
    Items.Strings = (
      'Aumentar'
      'Diminuir')
    TabOrder = 1
  end
  object StaticText2: TStaticText
    Left = 26
    Top = 223
    Width = 63
    Height = 21
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Valor'
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
  object cValor: TCurrencyEdit
    Left = 91
    Top = 222
    Width = 102
    Height = 21
    AutoSize = False
    DisplayFormat = '0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object cAjuste: TRadioGroup
    Left = 310
    Top = 72
    Width = 177
    Height = 89
    Caption = 'Tipo de Ajuste'
    Items.Strings = (
      'Ajustar Valor'
      'Voltar Valor Antes do Ajuste')
    TabOrder = 10
  end
end
