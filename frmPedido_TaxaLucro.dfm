object Pedido_TaxaLucro: TPedido_TaxaLucro
  Left = 554
  Top = 307
  BorderStyle = bsToolWindow
  Caption = 'Pedido_TaxaLucro'
  ClientHeight = 189
  ClientWidth = 366
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
  DesignSize = (
    366
    189)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 2
    Width = 351
    Height = 135
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 23
      Width = 315
      Height = 16
      Caption = 'C'#225'lculo da taxa utilizada na margem de lucro.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lDI: TStaticText
      Left = 73
      Top = 56
      Width = 81
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Sugerido'
    Color = 7293440
      Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    StyleElements = []
    Transparent = False
    end
    object cSugerido: TCurrencyEdit
      Left = 156
      Top = 56
      Width = 121
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '#,##0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = cSugeridoChange
    end
    object StaticText1: TStaticText
      Left = 73
      Top = 79
      Width = 81
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Calculado'
    Color = 7293440
      Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    StyleElements = []
    Transparent = False
    end
    object cCalculado: TCurrencyEdit
      Left = 156
      Top = 79
      Width = 121
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '#,##0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnChange = cCalculadoChange
    end
    object StaticText2: TStaticText
      Left = 73
      Top = 102
      Width = 81
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Taxa Utilizada'
    Color = 7293440
      Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    StyleElements = []
    Transparent = False
    end
    object cTaxa: TCurrencyEdit
      Left = 156
      Top = 102
      Width = 121
      Height = 21
      TabStop = False
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '#,##0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
  end
  object Button1: TButton
    Left = 106
    Top = 152
    Width = 75
    Height = 25
    Caption = '&OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 186
    Top = 152
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 2
    OnClick = Button2Click
  end
end
