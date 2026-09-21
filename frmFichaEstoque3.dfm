object FichaEstoque3: TFichaEstoque3
  Left = 596
  Top = 271
  BorderStyle = bsDialog
  Caption = 'FichaEstoque3'
  ClientHeight = 238
  ClientWidth = 370
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
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 370
    Height = 44
    Align = alTop
    Stretch = True
    ExplicitWidth = 482
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 49
    Height = 21
    Caption = 'FISCAL'
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
  object lTitulo: TRxLabel
    Left = 8
    Top = 20
    Width = 294
    Height = 19
    Caption = 'Processamento da ficha de Estoque/Inventario.'
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
    Top = 207
    Width = 370
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitTop = 310
    ExplicitWidth = 512
    object bSair: TButton
      Left = 301
      Top = 1
      Width = 68
      Height = 29
      Align = alRight
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = bSairClick
      ExplicitLeft = 443
    end
    object bExecutar: TButton
      Left = 224
      Top = 1
      Width = 77
      Height = 29
      Align = alRight
      Caption = 'Executar'
      TabOrder = 1
      OnClick = bExecutarClick
      ExplicitLeft = 366
    end
  end
  object cDescricao: TRadioGroup
    Left = 42
    Top = 76
    Width = 285
    Height = 93
    Caption = 'Descri'#231#227'o do Produto na ficha'
    ItemIndex = 0
    Items.Strings = (
      'Utilizar das Notas Fiscais'
      'Utilizar do Cadastro de Produtos')
    TabOrder = 1
  end
end
