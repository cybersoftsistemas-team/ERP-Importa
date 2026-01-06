object Pedido_RepresentanteVeiculo: TPedido_RepresentanteVeiculo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pedido_RepresentanteVeiculo'
  ClientHeight = 486
  ClientWidth = 517
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 456
    Width = 517
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitTop = 466
    object bSair: TButton
      Left = 441
      Top = 1
      Width = 75
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&OK'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bLimpar: TButton
      Left = 290
      Top = 1
      Width = 76
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Limpar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bLimparClick
    end
    object bCancel: TButton
      Left = 366
      Top = 1
      Width = 75
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bCancelClick
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 511
    Height = 450
    Align = alClient
    BevelOuter = bvLowered
    Color = clWindow
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 1
    ExplicitHeight = 460
    object GroupBox1: TGroupBox
      Left = 18
      Top = 16
      Width = 474
      Height = 100
      Caption = 'Dados do Motorista'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object StaticText13: TStaticText
        Left = 10
        Top = 18
        Width = 85
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Nome'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        Transparent = False
        StyleElements = []
      end
      object StaticText4: TStaticText
        Left = 10
        Top = 41
        Width = 85
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CPF'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        Transparent = False
        StyleElements = []
      end
      object StaticText8: TStaticText
        Left = 10
        Top = 64
        Width = 85
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'RG'
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
      object cRG: TEdit
        Left = 97
        Top = 41
        Width = 121
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Text = 'cRG'
      end
      object cCPF: TEdit
        Left = 97
        Top = 64
        Width = 121
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Text = 'cCPF'
      end
      object cNome: TComboBox
        Left = 97
        Top = 18
        Width = 361
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        Text = 'cNome'
      end
    end
    object GroupBox2: TGroupBox
      Left = 18
      Top = 130
      Width = 474
      Height = 142
      Caption = 'Dados do Ve'#237'culo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object StaticText1: TStaticText
        Left = 10
        Top = 18
        Width = 85
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Placa'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        Transparent = False
        StyleElements = []
      end
      object StaticText2: TStaticText
        Left = 10
        Top = 41
        Width = 85
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'digo ANTT'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        Transparent = False
        StyleElements = []
      end
      object StaticText3: TStaticText
        Left = 378
        Top = 18
        Width = 28
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'UF'
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
      object StaticText9: TStaticText
        Left = 10
        Top = 64
        Width = 85
        Height = 60
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Lacre'
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
      object cPlacaVei: TEdit
        Left = 97
        Top = 18
        Width = 275
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Text = 'cPlacaVei'
      end
      object cUFVei: TEdit
        Left = 408
        Top = 18
        Width = 50
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        Text = 'cUFVei'
      end
      object cANTTVei: TEdit
        Left = 97
        Top = 41
        Width = 275
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        Text = 'cANTTVei'
      end
      object cLacreVei: TMemo
        Left = 97
        Top = 65
        Width = 361
        Height = 59
        Lines.Strings = (
          'cLacreVei')
        TabOrder = 7
      end
    end
    object GroupBox3: TGroupBox
      Left = 18
      Top = 292
      Width = 474
      Height = 140
      Caption = 'Dados do Reboque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      object StaticText5: TStaticText
        Left = 10
        Top = 18
        Width = 85
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Placa'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        Transparent = False
        StyleElements = []
      end
      object StaticText6: TStaticText
        Left = 10
        Top = 41
        Width = 85
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'digo ANTT'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        Transparent = False
        StyleElements = []
      end
      object StaticText7: TStaticText
        Left = 202
        Top = 18
        Width = 28
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'UF'
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
      object StaticText10: TStaticText
        Left = 10
        Top = 64
        Width = 85
        Height = 60
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Lacre'
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
      object cPlacaReb: TEdit
        Left = 97
        Top = 18
        Width = 100
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Text = 'cPlacaReb'
      end
      object cUFReb: TEdit
        Left = 232
        Top = 18
        Width = 50
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        Text = 'cUFReb'
      end
      object cANTTReb: TEdit
        Left = 97
        Top = 42
        Width = 121
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        Text = 'cANTTReb'
      end
      object cLacreReb: TMemo
        Left = 97
        Top = 65
        Width = 361
        Height = 60
        Lines.Strings = (
          'cLacreVei')
        TabOrder = 7
      end
    end
  end
  object tMotoristas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select distinct'
      '       Nome     = isnull(Transporte_NomeMotorista, '#39#39')'
      '      ,RG       = isnull(Transporte_RGMotorista, '#39#39')'
      '      ,CPF      = isnull(Transporte_CPFMotorista, '#39#39')'
      '      ,PlacaVei = isnull(Transporte_Placa, '#39#39')'
      '      ,UFVei    = isnull(Transporte_PlacaUF, '#39#39')'
      '      ,ANTTVei  = isnull(Transporte_CodigoANTT, '#39#39')'
      '      ,PlacaReb = isnull(Reboque_Placa, '#39#39')'
      '      ,UFReb    = isnull(Reboque_UF, '#39#39')'
      '      ,ANTTReb  = isnull(Reboque_ANTT, '#39#39')'
      'from NotasFiscais'
      'where isnull(Transporte_NomeMotorista, '#39#39') <> '#39#39' '
      'union all'
      'select distinct'
      '       Nome     = isnull(Transporte_NomeMotorista, '#39#39')'
      '      ,RG       = isnull(Transporte_RGMotorista, '#39#39')'
      '      ,CPF      = isnull(Transporte_CPFMotorista, '#39#39')'
      '      ,PlacaVei = isnull(Transporte_Placa, '#39#39')'
      '      ,UFVei    = isnull(Transporte_PlacaUF, '#39#39')'
      '      ,ANTTVei  = isnull(Transporte_CodigoANTT, '#39#39')'
      '      ,PlacaReb = isnull(Reboque_Placa, '#39#39')'
      '      ,UFReb    = isnull(Reboque_UF, '#39#39')'
      '      ,ANTTReb  = isnull(Reboque_ANTT, '#39#39')'
      'from Pedidos'
      'where isnull(Transporte_NomeMotorista, '#39#39') <> '#39#39' ')
    Left = 390
    Top = 116
  end
end
