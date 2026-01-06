object Pedido_ItensOutrosValorRateio: TPedido_ItensOutrosValorRateio
  Left = 578
  Top = 232
  BorderStyle = bsToolWindow
  Caption = 'Pedido_ItensOutrosValorRateio'
  ClientHeight = 225
  ClientWidth = 304
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 2
    Width = 290
    Height = 170
    TabOrder = 0
    object Label1: TLabel
      Left = 34
      Top = 22
      Width = 222
      Height = 16
      Caption = 'Informe valor total para o rateio.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lFator: TLabel
      Left = 15
      Top = 149
      Width = 261
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Fator = '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Bevel1: TBevel
      Left = 15
      Top = 143
      Width = 261
      Height = 4
      Shape = bsTopLine
    end
    object StaticText1: TStaticText
      Left = 35
      Top = 76
      Width = 97
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor a Ratear'
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
    object cValorRateio: TCurrencyEdit
      Left = 134
      Top = 76
      Width = 121
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '#,##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object StaticText2: TStaticText
      Left = 35
      Top = 53
      Width = 97
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Total dos Produtos'
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
    object cTotalProdutos: TCurrencyEdit
      Left = 134
      Top = 53
      Width = 121
      Height = 21
      AutoSize = False
      DecimalPlaces = 4
      DisplayFormat = '#,##0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object cFator: TCheckBox
      Left = 16
      Top = 124
      Width = 258
      Height = 17
      Caption = 'Aplicar Fator ((100 - (ICMS + PIS + COFINS ))/100)'
      TabOrder = 4
      Visible = False
    end
  end
  object bOK: TButton
    Left = 69
    Top = 186
    Width = 75
    Height = 25
    Caption = '&OK'
    TabOrder = 1
    OnClick = bOKClick
  end
  object bCancela: TButton
    Left = 154
    Top = 186
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 2
    OnClick = bCancelaClick
  end
  object tReferencia: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 8
    Top = 182
  end
end
