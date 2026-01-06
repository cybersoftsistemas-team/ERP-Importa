object Pedido_Excluir: TPedido_Excluir
  Left = 711
  Top = 374
  BorderStyle = bsToolWindow
  Caption = 'Pedido_Excluir'
  ClientHeight = 235
  ClientWidth = 462
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = bSairClick
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 16
    Top = 16
    Width = 428
    Height = 129
    Shape = bsFrame
  end
  object Panel2: TPanel
    Left = 0
    Top = 205
    Width = 462
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      462
      30)
    object bSair: TButton
      Left = 386
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
    object bExec: TButton
      Left = 288
      Top = 2
      Width = 98
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Executar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bExecClick
    end
  end
  object cEntradas: TCheckBox
    Left = 31
    Top = 32
    Width = 165
    Height = 17
    Caption = 'Excluir os pedidos de entrada.'
    TabOrder = 1
    OnClick = cEntradasClick
  end
  object lNome: TStaticText
    Left = 31
    Top = 103
    Width = 77
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Pedido Inicial'
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
  object cIni: TCurrencyEdit
    Left = 110
    Top = 103
    Width = 88
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object StaticText1: TStaticText
    Left = 199
    Top = 103
    Width = 77
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Pedido Final'
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
  object cFim: TCurrencyEdit
    Left = 278
    Top = 103
    Width = 88
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object cSaidas: TCheckBox
    Left = 31
    Top = 56
    Width = 165
    Height = 17
    Caption = 'Excluir os pedidos de sa'#237'da.'
    TabOrder = 6
    OnClick = cSaidasClick
  end
  object cTodos: TCheckBox
    Left = 375
    Top = 104
    Width = 57
    Height = 17
    Caption = 'Todos.'
    TabOrder = 7
    OnClick = cTodosClick
  end
  object cPrim: TCurrencyEdit
    Left = 142
    Top = 183
    Width = 88
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object cUlt: TCurrencyEdit
    Left = 372
    Top = 183
    Width = 88
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object StaticText2: TStaticText
    Left = 3
    Top = 183
    Width = 137
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Primeiro'
    Color = 7293440
    Enabled = False
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
  object StaticText3: TStaticText
    Left = 233
    Top = 183
    Width = 137
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = #218'ltimo'
    Color = 7293440
    Enabled = False
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
  object tPedidos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      '')
    FetchRows = 1
    Left = 8
    Top = 9
  end
end
