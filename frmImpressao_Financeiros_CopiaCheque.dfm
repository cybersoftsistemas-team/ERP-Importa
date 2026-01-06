object Impressao_Financeiros_CopiaCheque: TImpressao_Financeiros_CopiaCheque
  Left = 550
  Top = 181
  BorderStyle = bsDialog
  Caption = 'Impressao_Financeiros_CopiaCheque'
  ClientHeight = 462
  ClientWidth = 737
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    737
    462)
  PixelsPerInch = 96
  TextHeight = 13
  object Image3: TImage
    Left = 0
    Top = 0
    Width = 737
    Height = 46
    Align = alTop
    Stretch = True
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 90
    Height = 21
    Caption = 'FINANCEIRO'
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
  object RxLabel2: TRxLabel
    Left = 8
    Top = 22
    Width = 190
    Height = 18
    Caption = 'Impress'#227'o de c'#243'pia de cheque.'
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
  object Image1: TImage
    Left = 697
    Top = 5
    Width = 34
    Height = 34
    Anchors = [akTop, akRight]
    Picture.Data = {
      055449636F6E0000010001002020100000000000E80200001600000028000000
      2000000040000000010004000000000080020000000000000000000000000000
      0000000000000000000080000080000000808000800000008000800080800000
      80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
      FFFFFF003333333333333000777FFFFFFFFFFFFF3303333333333333007777FF
      FFFFFFFF333003333330003333000777FFFFFFFF333330033330000333333007
      77FFFFFF33333333033330000033333000777FFF333333333033333300033333
      3300777737333333333333333330033333330007337733773333333333333333
      3333333077434433773333333333333333333333374343443377333333333333
      3003333333344444333377333333333333300333333334344403337733333333
      3333300000333334308003337733333333333333300033333088803333773333
      3333333333300033308884033333773333333333033330003308440033333377
      33333333F0003333333044003333333377333333FFFF00033330000403333333
      3FF73333FFFFFFF00033004440333333FFFFF733FFFFFFFFFF00044444033344
      33FFFFF7FFFFFFFFFFFFF044444033344333FFFFFFFFFFFFFFFFFF0444103333
      443433FFFFFFFFFFFFFFFF044114000333334433FFFFFFFFFFFFFFF011440FF0
      00333433FFFFFFFFFFFFFFFF0444400FFF000333FFFFFFFFFFFFFFFFF0444480
      FFFFF000FFFFFFFFFFFFFFFFFF0444480FFFFFFFFFFFFFFFFFFFFFFFFFF04444
      80FFFFFFFFFFFFFFFFFFFFFFFFF0444480FFFFFFFFFFFFFFFFFFFFFFFFFF0444
      480FFFFFFFFFFFFFFFFFFFFFFFFFF0444480FFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000FFFF00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000}
  end
  object Panel1: TPanel
    Left = 0
    Top = 432
    Width = 737
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 4
    DesignSize = (
      737
      30)
    object bSair: TButton
      Left = 670
      Top = 1
      Width = 66
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bImprimir: TBitBtn
      Left = 417
      Top = 1
      Width = 135
      Height = 28
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = 'Imprimir &C'#243'pia de Cheque'
      Layout = blGlyphRight
      ParentBiDiMode = False
      Spacing = 8
      TabOrder = 1
      OnClick = bImprimirClick
    end
    object BitBtn1: TBitBtn
      Left = 552
      Top = 1
      Width = 118
      Height = 28
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = 'Imprimir C&heque'
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDD000DDD
        DDDDDDDD0078800DDDDDDD00778008800DDDD07788788008800DD88877788880
        080D887777788888800D8F7777F8888888808F77FF77788888808FFF77997778
        88808F77AA7778807880D88F777887F0788DDDD88F87FFFF0DDDDDDDD88FFFFF
        F0DDDDDDDDD8FFFFFF00DDDDDDDD8FFF88DDDDDDDDDDD888DDDD}
      Layout = blGlyphRight
      ParentBiDiMode = False
      Spacing = 8
      TabOrder = 2
      OnClick = BitBtn1Click
    end
  end
  object lData: TStaticText
    Left = 7
    Top = 56
    Width = 80
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'N'#186' do Cheque'
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
  object lBanco: TStaticText
    Left = 7
    Top = 79
    Width = 80
    Height = 21
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Banco'
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
  object cBanco: TRxDBLookupCombo
    Left = 89
    Top = 79
    Width = 301
    Height = 21
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo;Nome;Conta'
    LookupDisplayIndex = 1
    LookupSource = Dados.dsBancos
    ParentFont = False
    TabOrder = 1
    OnChange = cBancoChange
  end
  object GroupBox1: TGroupBox
    Left = 7
    Top = 178
    Width = 723
    Height = 246
    Caption = 'Cheque'
    Ctl3D = False
    Enabled = False
    ParentCtl3D = False
    TabOrder = 3
    object Shape7: TShape
      Left = 12
      Top = 26
      Width = 704
      Height = 213
      Brush.Color = 6250335
      Pen.Style = psClear
    end
    object Shape6: TShape
      Left = 7
      Top = 21
      Width = 705
      Height = 214
      Brush.Color = 11524312
      Pen.Color = clGray
    end
    object DBText1: TDBText
      Left = 237
      Top = 201
      Width = 427
      Height = 17
      DataField = 'Razao_Social'
      DataSource = Dados.dsEmpresas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 237
      Top = 214
      Width = 139
      Height = 17
      DataField = 'CNPJ'
      DataSource = Dados.dsEmpresas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Shape1: TShape
      Left = 101
      Top = 91
      Width = 604
      Height = 1
    end
    object Shape2: TShape
      Left = 16
      Top = 115
      Width = 689
      Height = 1
    end
    object Shape3: TShape
      Left = 26
      Top = 140
      Width = 605
      Height = 1
    end
    object Shape4: TShape
      Left = 237
      Top = 166
      Width = 467
      Height = 1
    end
    object Shape5: TShape
      Left = 237
      Top = 198
      Width = 467
      Height = 1
    end
    object LogoBanco: TImage
      Left = 54
      Top = 150
      Width = 74
      Height = 74
      Stretch = True
    end
    object Edit2: TEdit
      Left = 13
      Top = 42
      Width = 35
      Height = 24
      AutoSize = False
      Color = 11524312
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object StaticText1: TStaticText
      Left = 13
      Top = 25
      Width = 35
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSingle
      Caption = 'Comp.'
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
    object StaticText2: TStaticText
      Left = 47
      Top = 25
      Width = 39
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSingle
      Caption = 'Banco'
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
    object DBEdit1: TDBEdit
      Left = 47
      Top = 42
      Width = 39
      Height = 24
      AutoSize = False
      Color = 11524312
      Ctl3D = False
      DataField = 'Numero_Banco'
      DataSource = Dados.dsBancos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object StaticText3: TStaticText
      Left = 85
      Top = 25
      Width = 60
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSingle
      Caption = 'Ag.'
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
    object DBEdit2: TDBEdit
      Left = 85
      Top = 42
      Width = 60
      Height = 24
      AutoSize = False
      Color = 11524312
      Ctl3D = False
      DataField = 'Agencia'
      DataSource = Dados.dsBancos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit3: TDBEdit
      Left = 144
      Top = 42
      Width = 23
      Height = 24
      AutoSize = False
      Color = 11524312
      Ctl3D = False
      DataSource = Dados.dsBancos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
    end
    object StaticText4: TStaticText
      Left = 144
      Top = 25
      Width = 23
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSingle
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
    object StaticText5: TStaticText
      Left = 166
      Top = 25
      Width = 23
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSingle
      Caption = 'C1'
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
    object DBEdit4: TDBEdit
      Left = 166
      Top = 42
      Width = 23
      Height = 24
      AutoSize = False
      Color = 11524312
      Ctl3D = False
      DataSource = Dados.dsBancos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 9
    end
    object StaticText6: TStaticText
      Left = 188
      Top = 25
      Width = 60
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSingle
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
    object DBEdit5: TDBEdit
      Left = 188
      Top = 42
      Width = 60
      Height = 24
      AutoSize = False
      Color = 11524312
      Ctl3D = False
      DataSource = Dados.dsBancos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 11
    end
    object StaticText7: TStaticText
      Left = 247
      Top = 25
      Width = 81
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSingle
      Caption = 'Conta'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 12
      Transparent = False
      StyleElements = []
    end
    object DBEdit6: TDBEdit
      Left = 247
      Top = 42
      Width = 81
      Height = 24
      AutoSize = False
      Color = 11524312
      Ctl3D = False
      DataField = 'Conta'
      DataSource = Dados.dsBancos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 13
    end
    object DBEdit7: TDBEdit
      Left = 327
      Top = 42
      Width = 23
      Height = 24
      AutoSize = False
      Color = 11524312
      Ctl3D = False
      DataSource = Dados.dsBancos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 14
    end
    object StaticText8: TStaticText
      Left = 327
      Top = 25
      Width = 23
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSingle
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 15
      Transparent = False
      StyleElements = []
    end
    object StaticText9: TStaticText
      Left = 349
      Top = 25
      Width = 23
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSingle
      Caption = 'C2'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 16
      Transparent = False
      StyleElements = []
    end
    object DBEdit8: TDBEdit
      Left = 349
      Top = 42
      Width = 23
      Height = 24
      AutoSize = False
      Color = 11524312
      Ctl3D = False
      DataSource = Dados.dsBancos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 17
    end
    object StaticText10: TStaticText
      Left = 371
      Top = 25
      Width = 98
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSingle
      Caption = 'S'#233'rie'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 18
      Transparent = False
      StyleElements = []
    end
    object DBEdit9: TDBEdit
      Left = 371
      Top = 42
      Width = 98
      Height = 24
      AutoSize = False
      Color = 11524312
      Ctl3D = False
      DataSource = Dados.dsBancos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 19
    end
    object StaticText11: TStaticText
      Left = 468
      Top = 25
      Width = 76
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSingle
      Caption = 'Cheque n'#186
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 20
      Transparent = False
      StyleElements = []
    end
    object StaticText12: TStaticText
      Left = 543
      Top = 25
      Width = 23
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSingle
      Caption = 'C3'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 21
      Transparent = False
      StyleElements = []
    end
    object DBEdit11: TDBEdit
      Left = 543
      Top = 42
      Width = 23
      Height = 24
      AutoSize = False
      Color = 11524312
      Ctl3D = False
      DataSource = Dados.dsBancos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 22
    end
    object StaticText13: TStaticText
      Left = 565
      Top = 25
      Width = 142
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSingle
      Caption = 'R$'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 23
      Transparent = False
      StyleElements = []
    end
    object StaticText14: TStaticText
      Left = 13
      Top = 68
      Width = 86
      Height = 32
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BiDiMode = bdLeftToRight
      Caption = 'Pague por este cheque a quantia de'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -9
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      TabOrder = 24
      Transparent = False
      StyleElements = []
    end
    object StaticText15: TStaticText
      Left = 13
      Top = 128
      Width = 13
      Height = 17
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BiDiMode = bdLeftToRight
      Caption = 'a'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -9
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      TabOrder = 25
      Transparent = False
      StyleElements = []
    end
    object StaticText16: TStaticText
      Left = 635
      Top = 129
      Width = 69
      Height = 17
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BiDiMode = bdLeftToRight
      Caption = 'ou '#224' sua ordem'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -9
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      TabOrder = 26
      Transparent = False
      StyleElements = []
    end
    object StaticText17: TStaticText
      Left = 421
      Top = 157
      Width = 7
      Height = 17
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BiDiMode = bdLeftToRight
      Caption = ','
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -9
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      TabOrder = 27
      Transparent = False
      StyleElements = []
    end
    object StaticText18: TStaticText
      Left = 462
      Top = 154
      Width = 16
      Height = 17
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BiDiMode = bdLeftToRight
      Caption = 'de'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -9
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      TabOrder = 28
      Transparent = False
      StyleElements = []
    end
    object StaticText19: TStaticText
      Left = 619
      Top = 154
      Width = 16
      Height = 17
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BiDiMode = bdLeftToRight
      Caption = 'de'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -9
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      TabOrder = 29
      Transparent = False
      StyleElements = []
    end
    object lDia: TEdit
      Left = 434
      Top = 147
      Width = 24
      Height = 18
      BorderStyle = bsNone
      Color = 11524312
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe Print'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 30
    end
    object lMes: TEdit
      Left = 484
      Top = 147
      Width = 104
      Height = 18
      BorderStyle = bsNone
      Color = 11524312
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe Print'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 31
    end
    object lAno: TEdit
      Left = 645
      Top = 147
      Width = 50
      Height = 18
      BorderStyle = bsNone
      Color = 11524312
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe Print'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 32
    end
    object lExtenso1: TEdit
      Left = 101
      Top = 72
      Width = 603
      Height = 18
      BorderStyle = bsNone
      Color = 11524312
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe Print'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 33
    end
    object lExtenso2: TEdit
      Left = 16
      Top = 96
      Width = 690
      Height = 18
      BorderStyle = bsNone
      Color = 11524312
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe Print'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 34
    end
    object lValor: TCurrencyEdit
      Left = 565
      Top = 42
      Width = 142
      Height = 28
      AutoSize = False
      Color = 11524312
      Ctl3D = False
      DisplayFormat = ',0.00;-,0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Segoe Print'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 35
    end
    object lCheque: TEdit
      Left = 468
      Top = 42
      Width = 76
      Height = 24
      AutoSize = False
      Color = 11524312
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 36
    end
    object lCidade: TEdit
      Left = 236
      Top = 147
      Width = 181
      Height = 18
      BorderStyle = bsNone
      Color = 11524312
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe Print'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 37
    end
    object lNominal: TEdit
      Left = 27
      Top = 121
      Width = 597
      Height = 18
      AutoSize = False
      BorderStyle = bsNone
      Color = 11524312
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Segoe Print'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 38
      Text = 'Eder'
    end
  end
  object StaticText20: TStaticText
    Left = 7
    Top = 102
    Width = 80
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Local'
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
  object cCidade: TEdit
    Left = 89
    Top = 102
    Width = 301
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnChange = cCidadeChange
  end
  object cCheque: TEdit
    Left = 89
    Top = 56
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnChange = cBancoChange
  end
  object StaticText21: TStaticText
    Left = 7
    Top = 125
    Width = 80
    Height = 44
    Alignment = taCenter
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = '        Assinaturas'
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
  object cAssinatura1: TEdit
    Left = 89
    Top = 125
    Width = 400
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnChange = cCidadeChange
  end
  object cAssinatura2: TEdit
    Left = 89
    Top = 148
    Width = 400
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnChange = cCidadeChange
  end
  object tTotal: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 288
    Top = 8
  end
  object rCopiaCheque: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Cybersoft - C'#243'pia de cheque'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4 (8.2 x 11.7 in; 210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Sistemas\Faturamento\Codigo Fonte\Relatorios\Copia_Cheque.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = rCopiaChequeBeforePrint
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = False
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = []
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 536
    Top = 9
    Version = '19.04'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 18785
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'C'#211'PIA DE CHEQUE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 26988
        mmTop = 10319
        mmWidth = 170127
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 4763
        mmLeft = 26988
        mmTop = 2910
        mmWidth = 170127
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 17991
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground1
      end
      object iLogo: TppImage
        DesignLayer = ppDesignLayer2
        UserName = 'iLogo'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 16404
        mmLeft = 0
        mmTop = 0
        mmWidth = 26458
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 102659
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape3'
        Anchors = [atLeft, atBottom]
        Shape = stRoundRect
        mmHeight = 25665
        mmLeft = 107950
        mmTop = 76994
        mmWidth = 89429
        BandType = 4
        LayerName = Foreground1
      end
      object rValorCheque: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'rValorCheque'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3725
        mmLeft = 154252
        mmTop = 2910
        mmWidth = 36513
        BandType = 4
        LayerName = Foreground1
      end
      object rExtenso: TppMemo
        DesignLayer = ppDesignLayer2
        UserName = 'rExtenso'
        Border.mmPadding = 0
        Caption = 'rExtenso'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        Lines.Strings = (
          
            '****************************************************************' +
            '***********************'
          
            '****************************************************************' +
            '***********************'
          '')
        RemoveEmptyLines = False
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 8467
        mmLeft = 5555
        mmTop = 10583
        mmWidth = 185210
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object rNominal: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'rNominal'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'rNominal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3725
        mmLeft = 5555
        mmTop = 25665
        mmWidth = 185210
        BandType = 4
        LayerName = Foreground1
      end
      object rData: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lNominal1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'lNominal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3725
        mmLeft = 78846
        mmTop = 33867
        mmWidth = 111919
        BandType = 4
        LayerName = Foreground1
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape2'
        Shape = stRoundRect
        mmHeight = 13758
        mmLeft = 0
        mmTop = 42333
        mmWidth = 197115
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'C'#211'PIA DE CHEQUE N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 1223
        mmTop = 43656
        mmWidth = 37507
        BandType = 4
        LayerName = Foreground1
      end
      object rCopiaNumero: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'rCopiaNumero'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '000000'
        Color = 13041663
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Times New Roman'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 40217
        mmTop = 43127
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Visado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 94456
        mmTop = 43656
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground1
      end
      object rVisadoSim: TmyCheckBox
        DesignLayer = ppDesignLayer2
        UserName = 'rVisadoSim'
        CheckboxState = cbUnchecked
        Checked = False
        FormField = False
        Style = csXInBox
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        Color = clRed
        CheckBoxColor = clWindowText
        Transparent = True
        mmHeight = 6350
        mmLeft = 113771
        mmTop = 42598
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground1
      end
      object rVisadoNao: TmyCheckBox
        DesignLayer = ppDesignLayer2
        UserName = 'rVisadoNao'
        CheckboxState = cbUnchecked
        Checked = False
        FormField = False
        Style = csXInBox
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        CheckBoxColor = clWindowText
        Transparent = True
        mmHeight = 6350
        mmLeft = 125942
        mmTop = 42598
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'Sim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 108215
        mmTop = 43921
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'N'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 120121
        mmTop = 43921
        mmWidth = 5292
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'Cruzado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 149754
        mmTop = 43656
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'Sim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 163513
        mmTop = 43921
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground1
      end
      object rCruzadoSim: TmyCheckBox
        DesignLayer = ppDesignLayer2
        UserName = 'rCruzadoSim'
        CheckboxState = cbUnchecked
        Checked = False
        FormField = False
        Style = csXInBox
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        CheckBoxColor = clWindowText
        Transparent = True
        mmHeight = 6350
        mmLeft = 169069
        mmTop = 42598
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = 'N'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 175419
        mmTop = 43921
        mmWidth = 5292
        BandType = 4
        LayerName = Foreground1
      end
      object rCruzadoNao: TmyCheckBox
        DesignLayer = ppDesignLayer2
        UserName = 'rCruzadoNao'
        CheckboxState = cbUnchecked
        Checked = False
        FormField = False
        Style = csXInBox
        BooleanFalse = 'False'
        BooleanTrue = 'True'
        CheckBoxColor = clWindowText
        Transparent = True
        mmHeight = 6350
        mmLeft = 181240
        mmTop = 42598
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 140229
        mmTop = 42333
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 84402
        mmTop = 42333
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = 'BANCO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 1323
        mmTop = 50271
        mmWidth = 13970
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'Nome'
        DataPipeline = pBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pBancos'
        mmHeight = 3704
        mmLeft = 16404
        mmTop = 50271
        mmWidth = 85990
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'Conta'
        DataPipeline = pBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pBancos'
        mmHeight = 3704
        mmLeft = 129382
        mmTop = 50271
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = 'C.CORRENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 105040
        mmTop = 50271
        mmWidth = 23548
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 0
        mmTop = 49213
        mmWidth = 197115
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 103452
        mmTop = 49213
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'Agencia'
        DataPipeline = pBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pBancos'
        mmHeight = 3704
        mmLeft = 174096
        mmTop = 50271
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = 'AGENCIA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4191
        mmLeft = 156104
        mmTop = 50271
        mmWidth = 17145
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 152136
        mmTop = 49213
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground1
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape4'
        Anchors = [atLeft, atBottom]
        Shape = stRoundRect
        mmHeight = 25400
        mmLeft = 0
        mmTop = 76995
        mmWidth = 106627
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label102'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'VISTOS'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3969
        mmLeft = 0
        mmTop = 72496
        mmWidth = 106627
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'UTILIZADO PARA'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3969
        mmLeft = 0
        mmTop = 59267
        mmWidth = 197380
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CHEQUE ASSINADO POR'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3969
        mmLeft = 107950
        mmTop = 72496
        mmWidth = 89429
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 25400
        mmLeft = 32808
        mmTop = 76994
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line8'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 25400
        mmLeft = 71702
        mmTop = 76994
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground1
      end
      object rAssinatura1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'rAssinatura1'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'rAssinatura1'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 110861
        mmTop = 85196
        mmWidth = 84138
        BandType = 4
        LayerName = Foreground1
      end
      object gItens: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'gItens'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'pItens'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 63500
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = pItens
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Cybersoft - C'#243'pia de cheque'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'A4 (8.2 x 11.7 in; 210 x 297 mm)'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Version = '19.04'
          mmColumnWidth = 0
          DataPipelineName = 'pItens'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 3969
            mmPrintPosition = 0
            object ppLabel16: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label104'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'CLASSIFICA'#199#195'O FINANCEIRA'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 3969
              mmLeft = 0
              mmTop = 0
              mmWidth = 61648
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel17: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label17'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'PROCESSO'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 3969
              mmLeft = 61913
              mmTop = 0
              mmWidth = 20108
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel18: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label18'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'BENEFICIARIO'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 3969
              mmLeft = 82286
              mmTop = 0
              mmWidth = 60325
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel19: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label19'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'VALOR'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 3969
              mmLeft = 175419
              mmTop = 0
              mmWidth = 22225
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel14: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label14'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'N'#186' DOC'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 3969
              mmLeft = 142875
              mmTop = 0
              mmWidth = 20108
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel20: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label20'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'PARC'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 3969
              mmLeft = 163248
              mmTop = 0
              mmWidth = 11906
              BandType = 1
              LayerName = Foreground
            end
          end
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 3175
            mmPrintPosition = 0
            object ppDBText6: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText6'
              Border.mmPadding = 0
              DataField = 'Descricao'
              DataPipeline = pItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 2910
              mmLeft = 0
              mmTop = 0
              mmWidth = 61648
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText7: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText7'
              Border.mmPadding = 0
              DataField = 'Processo'
              DataPipeline = pItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 2910
              mmLeft = 61913
              mmTop = 0
              mmWidth = 20108
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText8: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText8'
              Border.mmPadding = 0
              DataField = 'Beneficiario'
              DataPipeline = pItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 2910
              mmLeft = 82286
              mmTop = 0
              mmWidth = 60325
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText5: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText5'
              Border.mmPadding = 0
              DataField = 'Valor_Operacao'
              DataPipeline = pItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 2910
              mmLeft = 175419
              mmTop = 265
              mmWidth = 22225
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText9: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText9'
              Border.mmPadding = 0
              DataField = 'Numero_Documento'
              DataPipeline = pItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 2910
              mmLeft = 142875
              mmTop = 0
              mmWidth = 20108
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText10: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText10'
              Border.mmPadding = 0
              DataField = 'Parcela'
              DataPipeline = pItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 2910
              mmLeft = 163248
              mmTop = 265
              mmWidth = 11906
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppDesignLayers1: TppDesignLayers
            object ppDesignLayer1: TppDesignLayer
              UserName = 'Foreground'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line9'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 110861
        mmTop = 84667
        mmWidth = 84138
        BandType = 4
        LayerName = Foreground1
      end
      object rAssinatura2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'rAssinatura2'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'rAssinatura2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 110861
        mmTop = 97367
        mmWidth = 84138
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line10'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 110861
        mmTop = 96838
        mmWidth = 84138
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label101'
        Border.mmPadding = 0
        Caption = 'ERP Importa (Cybersoft Sistemas Ltda.)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2911
        mmLeft = 265
        mmTop = 529
        mmWidth = 45773
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable4'
        Border.mmPadding = 0
        VarType = vtDocumentName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 79111
        mmTop = 529
        mmWidth = 38100
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable5: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable5'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 117475
        mmTop = 529
        mmWidth = 26194
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine35: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line35'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 48683
        mmTop = 0
        mmWidth = 13229
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine36: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line36'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object pEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    UserName = 'pEmpresas'
    Left = 440
    Top = 8
  end
  object pBancos: TppDBPipeline
    DataSource = Dados.dsBancos
    UserName = 'pBancos'
    Left = 472
    Top = 8
    object pBancosppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object pBancosppField2: TppField
      FieldAlias = 'Nome'
      FieldName = 'Nome'
      FieldLength = 30
      DisplayWidth = 30
      Position = 1
    end
    object pBancosppField3: TppField
      FieldAlias = 'Conta'
      FieldName = 'Conta'
      FieldLength = 15
      DisplayWidth = 8
      Position = 2
    end
    object pBancosppField4: TppField
      FieldAlias = 'Agencia'
      FieldName = 'Agencia'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object pBancosppField5: TppField
      FieldAlias = 'Saldo'
      FieldName = 'Saldo'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 4
    end
    object pBancosppField6: TppField
      FieldAlias = 'Plano_Contas'
      FieldName = 'Plano_Contas'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object pBancosppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Banco'
      FieldName = 'Numero_Banco'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 5
      Position = 6
    end
    object pBancosppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cheque'
      FieldName = 'Cheque'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object pBancosppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Conta_Fornecedor'
      FieldName = 'Conta_Fornecedor'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
  end
  object tPagarReceber: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT  '
      '       Numero,'
      '       Classificacao, '
      
        '       (SELECT Descricao FROM ClassificacaoFinanceira WHERE(Clas' +
        'sificacao = ClassificacaoFinanceira.Codigo)) AS Descricao,'
      '       CASE '
      
        '           WHEN Fornecedor <> 0  THEN (SELECT Nome FROM Forneced' +
        'ores   WHERE(Fornecedor = Fornecedores.Codigo))'
      
        '           WHEN Cliente    <> 0  THEN (SELECT Nome FROM Clientes' +
        '       WHERE(Cliente    = Clientes.Codigo))'
      
        '           WHEN Orgao      <> '#39#39' THEN (SELECT Nome FROM Cybersof' +
        't_Cadastros.dbo.OrgaosPublicos WHERE(Orgao = Cybersoft_Cadastros' +
        '.dbo.OrgaosPublicos.Codigo))'
      '       END AS Beneficiario,'
      '       Processo,'
      '       Numero_Documento,'
      '       Parcela,'
      '       Valor_Operacao,'
      
        '      (SELECT DISTINCT Cheque_Assinado FROM PagarReceberBaixas W' +
        'HERE (PagarReceberBaixas.Forma_TipoDocumento = Numero_Documento)' +
        ') AS Cheque_Assinado,'
      
        '      (SELECT DISTINCT Cheque_Nominal  FROM PagarReceberBaixas W' +
        'HERE (PagarReceberBaixas.Forma_TipoDocumento = Numero_Documento)' +
        ') AS Cheque_Nominal,'
      
        '      (SELECT DISTINCT Cheque_Visado   FROM PagarReceberBaixas W' +
        'HERE (PagarReceberBaixas.Forma_TipoDocumento = Numero_Documento)' +
        ') AS Cheque_Visado,'
      
        '      (SELECT DISTINCT Cheque_Cruzado  FROM PagarReceberBaixas W' +
        'HERE (PagarReceberBaixas.Forma_TipoDocumento = Numero_Documento)' +
        ') AS Cheque_Cruzado'
      'FROM   PagarReceber'
      'WHERE Processo = '#39'1'#39)
    Active = True
    Left = 328
    Top = 8
  end
  object tCheque: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 360
    Top = 8
  end
  object pItens: TppDBPipeline
    DataSource = dstPagarReceber
    UserName = 'pItens'
    Left = 504
    Top = 8
  end
  object dstPagarReceber: TDataSource
    DataSet = tPagarReceber
    Left = 328
    Top = 40
  end
end
