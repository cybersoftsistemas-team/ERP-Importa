object Financeiro_EmprestimosFNLiquidar: TFinanceiro_EmprestimosFNLiquidar
  Left = 551
  Top = 338
  ActiveControl = cTaxa
  BorderStyle = bsToolWindow
  Caption = 'Financeiro_EmprestimosFNLiquidar'
  ClientHeight = 186
  ClientWidth = 396
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object bCancelar: TButton
    Left = 205
    Top = 144
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 0
    OnClick = bCancelarClick
  end
  object bLiquidar: TButton
    Left = 117
    Top = 144
    Width = 75
    Height = 25
    Caption = '&Liquidar'
    TabOrder = 1
    OnClick = bLiquidarClick
  end
  object Panel1: TPanel
    Left = 9
    Top = 8
    Width = 377
    Height = 121
    BevelInner = bvLowered
    BorderStyle = bsSingle
    TabOrder = 2
    object RxLabel2: TRxLabel
      Left = 39
      Top = 22
      Width = 295
      Height = 18
      Caption = 'Liquida'#231#227'o de empr'#233'stimos Banc'#225'rios (FINIMP).'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      Layout = tlBottom
      ParentFont = False
      ShadowColor = 4194368
      ShadowSize = 0
      ShadowPos = spRightTop
      Transparent = True
    end
    object cTaxa: TCurrencyEdit
      Left = 167
      Top = 68
      Width = 121
      Height = 21
      AutoSize = False
      Color = 16768991
      DecimalPlaces = 4
      DisplayFormat = ',0.0000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object StaticText17: TStaticText
      Left = 84
      Top = 68
      Width = 81
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Taxa Cambial'
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
  end
  object tRegistro: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 56
    Top = 136
  end
end
