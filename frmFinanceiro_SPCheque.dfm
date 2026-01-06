object Financeiro_SPCheque: TFinanceiro_SPCheque
  Left = 431
  Top = 140
  BorderStyle = bsDialog
  Caption = 'Financeiro_SPCheque'
  ClientHeight = 479
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
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
    Width = 273
    Height = 18
    Caption = 'Solicita'#231#227'o de pagamentos (Emiss'#227'o de SP).'
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
  object Panel1: TPanel
    Left = 0
    Top = 449
    Width = 737
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 10
    DesignSize = (
      737
      30)
    object bCancelar: TButton
      Left = 604
      Top = 1
      Width = 66
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bCancelarClick
    end
    object bImprimir: TBitBtn
      Left = 502
      Top = 1
      Width = 102
      Height = 28
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = 'Somente &Imprimir'
      Layout = blGlyphRight
      ParentBiDiMode = False
      Spacing = 8
      TabOrder = 1
      OnClick = bImprimirClick
    end
    object bOK: TBitBtn
      Left = 384
      Top = 1
      Width = 118
      Height = 28
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = '&Salvar SP e Imprimir'
      Enabled = False
      Layout = blGlyphRight
      ParentBiDiMode = False
      Spacing = 8
      TabOrder = 2
      OnClick = bOKClick
    end
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
      TabOrder = 3
      OnClick = bSairClick
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
    TabOrder = 11
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
    TabOrder = 12
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
    TabOrder = 4
    OnChange = cBancoChange
  end
  object GroupBox1: TGroupBox
    Left = 7
    Top = 196
    Width = 723
    Height = 246
    Caption = 'Cheque'
    Ctl3D = False
    Enabled = False
    ParentCtl3D = False
    TabOrder = 9
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
    TabOrder = 13
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
    TabOrder = 5
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
    OnChange = cChequeChange
  end
  object StaticText21: TStaticText
    Left = 7
    Top = 148
    Width = 80
    Height = 44
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = '            Assinado por'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 14
    Transparent = False
    StyleElements = []
  end
  object cAssinatura1: TEdit
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
    TabOrder = 7
    OnChange = cCidadeChange
  end
  object cAssinatura2: TEdit
    Left = 89
    Top = 171
    Width = 400
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnChange = cCidadeChange
  end
  object StaticText22: TStaticText
    Left = 7
    Top = 125
    Width = 80
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Nominal '#225
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
  object cNominal: TEdit
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
    TabOrder = 6
    OnChange = cNominalChange
  end
  object cVisado: TCheckBox
    Left = 520
    Top = 57
    Width = 55
    Height = 17
    Caption = 'Visado'
    TabOrder = 3
  end
  object cCruzado: TCheckBox
    Left = 440
    Top = 57
    Width = 64
    Height = 17
    Caption = 'Cruzado'
    TabOrder = 2
  end
  object StaticText23: TStaticText
    Left = 491
    Top = 148
    Width = 60
    Height = 44
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = '              Vistado por'
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
  object cVisto1: TEdit
    Left = 553
    Top = 148
    Width = 178
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
    OnChange = cCidadeChange
  end
  object cVisto2: TEdit
    Left = 553
    Top = 171
    Width = 178
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
    OnChange = cCidadeChange
  end
  object lDataPrevisao: TStaticText
    Left = 212
    Top = 56
    Width = 85
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Data do Cheque'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 19
    Transparent = False
    StyleElements = []
  end
  object cDataCheque: TDateEdit
    Left = 299
    Top = 56
    Width = 110
    Height = 21
    CheckOnExit = True
    DialogTitle = 'Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    GlyphKind = gkCustom
    Glyph.Data = {
      D2080000424DD208000000000000360000002800000026000000130000000100
      1800000000009C08000000000000000000000000000000000000171717151515
      1515151515151515151515151515151515151515151515151515151515151515
      1515151515151515151515151515151516161617171715151515151515151515
      1515151515151515151515151515151515151515151515151515151515151515
      15151515151515151516161600005A5A5A555555565656555555555555565656
      5656565757575858585858585757575757575555555555555555555555555555
      555555555959595A5A5A55555556565655555555555556565656565657575758
      5858585858575757575757555555555555555555555555555555555555595959
      0000767676B9B9B9AEAEAEABABABAAAAAAA9A9A9A7A7A7A6A6A6A3A3A3A3A3A3
      A6A6A6ABABABB3B3B3B6B6B6B2B2B2AEAEAEACACACB0B0B0B7B7B7767676B9B9
      B9AEAEAEABABABAAAAAAA9A9A9A7A7A7A6A6A6A3A3A3A3A3A3A6A6A6ABABABB3
      B3B3B6B6B6B2B2B2AEAEAEACACACB0B0B0B7B7B700009E9E9EFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFBFBFBF6F6F6F2F2F2E6E6E6CFCFCFBEBEBEC5C5C5
      E1E1E1FDFDFDFEFEFEFEFEFEFCFCFC9E9E9EFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFBFBFBF6F6F6FFFFFFFFFFFFCFCFCFBEBEBEC5C5C5E1E1E1FDFDFDFE
      FEFEFEFEFEFCFCFC0000818181FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEE7E7E7BCBCBCC6C6C6EDEDEDE9E9E9B9B9B98D8D8D8D8D8DCCCCCCFEFEFE
      F0F0F0818181FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFF
      FFFFFFFFEDEDEDE9E9E9B9B9B98D8D8D8D8D8DCCCCCCFEFEFEF0F0F000006A6A
      6AFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFECFCFCF565656515151D0
      D0D0FEFEFEFEFEFEF3F3F3AFAFAF7D7D7DBCBCBCE3E3E36A6A6AFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFEFE
      FEF3F3F3AFAFAF7D7D7DBCBCBCE3E3E30000565656F8F8F8FEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFED3D3D33636362D2D2DCCCCCCFEFEFEFEFEFEFEFEFEFE
      FEFECFCFCFABABABB5B5B5565656F8F8F8FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFECFCFCFABAB
      ABB5B5B50000424242F0F0F0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDDDD
      DD2121210F0F0FC2C2C2FEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFEFEFEAEAEAE42
      4242F0F0F0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFC0C0C0C0C0C0FFFFFF
      FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFEFEFEAEAEAE0000333333E7E7E7
      FEFEFEFBFBFBFBFBFBFCFCFCF3F3F3C8C8C8D3D3D31A1A1A030303B3B3B3FEFE
      FEFDFDFDFDFDFDFDFDFDFEFEFEFEFEFEA7A7A7333333E7E7E7FEFEFEFBFBFBFB
      FBFBFFFFFFFFFFFFFFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFDFDFDFDFDFD
      FDFDFDFEFEFEFEFEFEA7A7A70000252525D6D6D6FEFEFEF6F6F6F6F6F6FCFCFC
      EEEEEE1919191010100D0D0D0D0D0DB3B3B3FEFEFEF8F8F8F8F8F8F8F8F8F9F9
      F9FEFEFE8E8E8E252525D6D6D6FEFEFEF6F6F6F6F6F6FFFFFFC0C0C0C0C0C0C0
      C0C0C0C0C0FFFFFFFFFFFFFEFEFEF8F8F8F8F8F8F8F8F8F9F9F9FEFEFE8E8E8E
      00001A1A1AC4C4C4FDFEFDF2F3F2F3F5F2F4F5F3FAFBF99B9C9A313231151614
      282928BCBDBCFEFEFEF5F6F5F6F7F5F6F7F5F7F9F6FEFEFE7C7C7B1A1A1AC4C4
      C4FDFDFDF2F2F2F3F3F3F4F4F4FAFAFAC0C0C0C0C0C0C0C0C0FFFFFFFFFFFFFE
      FEFEF5F5F5F6F6F6F6F6F6F7F7F7FEFEFE7B7B7B0000131313B3B6B2FDFEFCEE
      F0ECEFF2EDF0F5EEF4F9F1FEFEFEE6EBE4787D75686C66CED1CCFCFEFBF7FEF2
      F5FBF2F4F8F2F6FBF3FEFEFE696A69131313B4B4B4FDFDFDEEEEEEF0F0F0F2F2
      F2F6F6F6FFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFCFCFCF9F9F9F7F7F7F5F5F5F8
      F8F8FEFEFE696969000020231EAA7D7CE1C1A2E6CAB0E4C59DE7C99BE3C184E5
      C27EEACA83EFD697EED497EBCC85EBCC85E8C67CEBCE93EACB95E5C485E4C289
      4A4739212121818181BABABAC5C5C5BCBCBCBEBEBEB2B2B2B1B1B1B7B7B7C5C5
      C5C4C4C4B9B9B9B9B9B9B3B3B3BFBFBFBDBDBDB4B4B4B4B4B443434300002E35
      2A7D5545D1A475DEBB97E0BE8DDEB877CE963FC1852FC7892FD7A53DE9C876E8
      C46CE1B756CA8B2FD9A849E2BB71DEB36CC9954935321F3131315454549A9A9A
      B3B3B3B2B2B2A8A8A88181817171717474748A8A8AB2B2B2ADADAD9E9E9E7575
      75909090A8A8A8A2A2A28383832C2C2C000022271F7E5858A0693FA9703EB47D
      43BA823FBC8538BA7F2FC0832FC89236D9AA58DBAD5BD8A957C1852FCC9743D2
      A15BD2A35FBF8A532C2B222424245B5B5B616161666666717171737373737373
      6C6C6C6F6F6F7B7B7B9696969999999595957171718383839090909393937E7E
      7E28282800001318107C58617E532F85562F935E2FAB775BAE7748AE732FB075
      2FB47A2FB6782FB6782FC0873DBA8970B27833AA712FA2692F9E683F23232215
      15155E5E5E4C4C4C4F4F4F5555557373736E6E6E646464656565696969686868
      6868687676768686866969696262625D5D5D61616122222200000C10093F391D
      473A0050410045380068655D4946394F4000776300705D007360007D67004F45
      11757A72342C066754006856004C3E011C1B1B0D0D0D3131312929292F2F2F28
      28286262624242422E2E2E4747474343434545454A4A4A363636777777212121
      3C3C3C3E3E3E2D2D2D1B1B1B00000D110A3E3719463900534400292203686C64
      464B422A22007F69006E5C007A66005A4A00191710888F842926196A57006957
      00483B001B1B1B0E0E0E2E2E2E2929293131311919196969694747471818184B
      4B4B4242424949493535351515158B8B8B2222223E3E3E3E3E3E2A2A2A1B1B1B
      00000D110A3E371A493B003A310B1A1D186A6A6A3C3D3B0000004035007F6A00
      594A0003020010110F818181161A14302A0E695700493C001B1B1B0E0E0E2F2F
      2F2A2A2A2626261B1B1B6A6A6A3C3C3C0000002626264C4C4C35353501010110
      10108181811717172222223E3E3E2B2B2B1B1B1B0000}
    NumGlyphs = 2
    ParentFont = False
    PopupAlign = epaLeft
    YearDigits = dyFour
    TabOrder = 1
    OnChange = cDataChequeChange
  end
  object StaticText24: TStaticText
    Left = 628
    Top = 49
    Width = 103
    Height = 49
    Alignment = taCenter
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'SOLICITA'#199#195'O'
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
  object cSolicitacao: TCurrencyEdit
    Left = 632
    Top = 64
    Width = 94
    Height = 31
    Alignment = taCenter
    AutoSize = False
    Color = 4227327
    DisplayFormat = '000000'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 21
  end
  object rSP: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Cybersoft - C'#243'pia de cheque'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Sistemas\Faturamento\Codigo Fonte\Relatorios\Copia_ChequeSP.r' +
      'tm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = rSPBeforePrint
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
    ThumbnailSettings.Visible = True
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
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 608
    Top = 9
    Version = '19.04'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 17463
      mmPrintPosition = 0
      object ppDBImage1: TppDBImage
        DesignLayer = ppDesignLayer2
        UserName = 'DBImage1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        DataField = 'Logomarca'
        DataPipeline = pEmpresas
        GraphicType = 'Bitmap'
        ParentDataPipeline = False
        DataPipelineName = 'pEmpresas'
        mmHeight = 15610
        mmLeft = 794
        mmTop = 529
        mmWidth = 24871
        BandType = 0
        LayerName = Foreground1
      end
      object rTitulo: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'rTitulo'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Solicita'#231#227'o de Pagamentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsItalic]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3641
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
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 102659
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        mmHeight = 36777
        mmLeft = 0
        mmTop = 4233
        mmWidth = 197380
        BandType = 4
        LayerName = Foreground1
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape3'
        Anchors = [atLeft, atBottom]
        Shape = stRoundRect
        mmHeight = 25665
        mmLeft = 91811
        mmTop = 76994
        mmWidth = 105569
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
        mmHeight = 3704
        mmLeft = 154252
        mmTop = 5556
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
        mmTop = 12435
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
        mmTop = 26194
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
        mmHeight = 13494
        mmLeft = 0
        mmTop = 42333
        mmWidth = 197380
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
        mmLeft = 169598
        mmTop = 42069
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
        mmTop = 50536
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
        mmTop = 50536
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
        mmTop = 50536
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
        mmTop = 76994
        mmWidth = 91281
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
        mmWidth = 91281
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
        mmLeft = 91811
        mmTop = 72496
        mmWidth = 105569
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        Pen.Style = psDot
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 25400
        mmLeft = 45720
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
        mmLeft = 97896
        mmTop = 85196
        mmWidth = 93398
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
          PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
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
              mmWidth = 21960
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
              mmLeft = 175948
              mmTop = 0
              mmWidth = 21167
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
              mmLeft = 163777
              mmTop = 0
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
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 97896
        mmTop = 84667
        mmWidth = 93398
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
        mmLeft = 97896
        mmTop = 97367
        mmWidth = 93398
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line10'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2381
        mmLeft = 97896
        mmTop = 96838
        mmWidth = 93398
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label103'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'C'#211'PIA DE CHEQUE'
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
        mmWidth = 197380
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 2910
        mmTop = 93663
        mmWidth = 39952
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line8'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 48419
        mmTop = 93663
        mmWidth = 39952
        BandType = 4
        LayerName = Foreground1
      end
      object rVisto1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'rVisto1'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'rVisto1'
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
        mmLeft = 2910
        mmTop = 94192
        mmWidth = 39952
        BandType = 4
        LayerName = Foreground1
      end
      object rVisto2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'rVisto2'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'rVisto2'
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
        mmLeft = 48419
        mmTop = 94192
        mmWidth = 39952
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
    Left = 512
    Top = 8
    object pEmpresasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object pEmpresasppField2: TppField
      FieldAlias = 'Razao_Social'
      FieldName = 'Razao_Social'
      FieldLength = 50
      DisplayWidth = 34
      Position = 1
    end
    object pEmpresasppField3: TppField
      FieldAlias = 'Nome_Fantasia'
      FieldName = 'Nome_Fantasia'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object pEmpresasppField4: TppField
      FieldAlias = 'Rua'
      FieldName = 'Rua'
      FieldLength = 30
      DisplayWidth = 30
      Position = 3
    end
    object pEmpresasppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Rua_Numero'
      FieldName = 'Rua_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object pEmpresasppField6: TppField
      FieldAlias = 'Complemento'
      FieldName = 'Complemento'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object pEmpresasppField7: TppField
      FieldAlias = 'Bairro'
      FieldName = 'Bairro'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object pEmpresasppField8: TppField
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 7
    end
    object pEmpresasppField9: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 8
    end
    object pEmpresasppField10: TppField
      FieldAlias = 'Telefone1'
      FieldName = 'Telefone1'
      FieldLength = 10
      DisplayWidth = 10
      Position = 9
    end
    object pEmpresasppField11: TppField
      FieldAlias = 'Telefone2'
      FieldName = 'Telefone2'
      FieldLength = 10
      DisplayWidth = 10
      Position = 10
    end
    object pEmpresasppField12: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 10
      DisplayWidth = 10
      Position = 11
    end
    object pEmpresasppField13: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 12
      Position = 12
    end
    object pEmpresasppField14: TppField
      FieldAlias = 'IE'
      FieldName = 'IE'
      FieldLength = 14
      DisplayWidth = 14
      Position = 13
    end
    object pEmpresasppField15: TppField
      FieldAlias = 'IM'
      FieldName = 'IM'
      FieldLength = 14
      DisplayWidth = 14
      Position = 14
    end
    object pEmpresasppField16: TppField
      FieldAlias = 'Junta_Codigo'
      FieldName = 'Junta_Codigo'
      FieldLength = 12
      DisplayWidth = 12
      Position = 15
    end
    object pEmpresasppField17: TppField
      FieldAlias = 'Junta_Data'
      FieldName = 'Junta_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 16
    end
    object pEmpresasppField18: TppField
      FieldAlias = 'Ramo_Atividade'
      FieldName = 'Ramo_Atividade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 17
    end
    object pEmpresasppField19: TppField
      FieldAlias = 'Codigo_Atividade'
      FieldName = 'Codigo_Atividade'
      FieldLength = 10
      DisplayWidth = 10
      Position = 18
    end
    object pEmpresasppField20: TppField
      FieldAlias = 'Responsavel'
      FieldName = 'Responsavel'
      FieldLength = 50
      DisplayWidth = 50
      Position = 19
    end
    object pEmpresasppField21: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 20
    end
    object pEmpresasppField22: TppField
      FieldAlias = 'Site'
      FieldName = 'Site'
      FieldLength = 60
      DisplayWidth = 60
      Position = 21
    end
    object pEmpresasppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Duplicata'
      FieldName = 'Duplicata'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object pEmpresasppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Saida'
      FieldName = 'Nota_Saida'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object pEmpresasppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Entrada'
      FieldName = 'Nota_Entrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object pEmpresasppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Servico'
      FieldName = 'Nota_Servico'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 25
    end
    object pEmpresasppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Eletronica'
      FieldName = 'Nota_Eletronica'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object pEmpresasppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'Memorando_Exportacao'
      FieldName = 'Memorando_Exportacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object pEmpresasppField29: TppField
      FieldAlias = 'Sincronizar_NumeroNF'
      FieldName = 'Sincronizar_NumeroNF'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 28
    end
    object pEmpresasppField30: TppField
      FieldAlias = 'Mascara_PlanoContas'
      FieldName = 'Mascara_PlanoContas'
      FieldLength = 20
      DisplayWidth = 20
      Position = 29
    end
    object pEmpresasppField31: TppField
      FieldAlias = 'Codigo_Reduzido'
      FieldName = 'Codigo_Reduzido'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 30
    end
    object pEmpresasppField32: TppField
      FieldAlias = 'Logomarca'
      FieldName = 'Logomarca'
      FieldLength = 0
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 31
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField33: TppField
      FieldAlias = 'Diretor'
      FieldName = 'Diretor'
      FieldLength = 50
      DisplayWidth = 50
      Position = 32
    end
    object pEmpresasppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Numero'
      FieldName = 'Diario_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
    object pEmpresasppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Pagina'
      FieldName = 'Diario_Pagina'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 34
    end
    object pEmpresasppField36: TppField
      FieldAlias = 'Ultimo_Encerramento'
      FieldName = 'Ultimo_Encerramento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 35
    end
    object pEmpresasppField37: TppField
      FieldAlias = 'NFServico_Modelo'
      FieldName = 'NFServico_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 36
    end
    object pEmpresasppField38: TppField
      FieldAlias = 'NFServico_Serie'
      FieldName = 'NFServico_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 37
    end
    object pEmpresasppField39: TppField
      FieldAlias = 'NFEntrada_Modelo'
      FieldName = 'NFEntrada_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 38
    end
    object pEmpresasppField40: TppField
      FieldAlias = 'NFEntrada_Serie'
      FieldName = 'NFEntrada_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 39
    end
    object pEmpresasppField41: TppField
      FieldAlias = 'NFSaida_Modelo'
      FieldName = 'NFSaida_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 40
    end
    object pEmpresasppField42: TppField
      FieldAlias = 'NFSaida_Serie'
      FieldName = 'NFSaida_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 41
    end
    object pEmpresasppField43: TppField
      FieldAlias = 'Matriz_Filial'
      FieldName = 'Matriz_Filial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 42
    end
    object pEmpresasppField44: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Filial'
      FieldName = 'Numero_Filial'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 3
      Position = 43
    end
    object pEmpresasppField45: TppField
      FieldAlias = 'NFEletronica_Modelo'
      FieldName = 'NFEletronica_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 44
    end
    object pEmpresasppField46: TppField
      FieldAlias = 'NFEletronica_Serie'
      FieldName = 'NFEletronica_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 45
    end
    object pEmpresasppField47: TppField
      FieldAlias = 'NFEletronica_Layout'
      FieldName = 'NFEletronica_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 46
    end
    object pEmpresasppField48: TppField
      FieldAlias = 'Certificado_Digital'
      FieldName = 'Certificado_Digital'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 47
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField49: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Lote'
      FieldName = 'Numero_Lote'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 48
    end
    object pEmpresasppField50: TppField
      FieldAlias = 'Inscricao_SUFRAMA'
      FieldName = 'Inscricao_SUFRAMA'
      FieldLength = 9
      DisplayWidth = 9
      Position = 49
    end
    object pEmpresasppField51: TppField
      FieldAlias = 'Contador_Nome'
      FieldName = 'Contador_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 50
    end
    object pEmpresasppField52: TppField
      FieldAlias = 'Contador_CNPJ'
      FieldName = 'Contador_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 51
    end
    object pEmpresasppField53: TppField
      FieldAlias = 'Contador_CPF'
      FieldName = 'Contador_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 52
    end
    object pEmpresasppField54: TppField
      FieldAlias = 'Contador_CRC'
      FieldName = 'Contador_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 53
    end
    object pEmpresasppField55: TppField
      FieldAlias = 'Contador_CEP'
      FieldName = 'Contador_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 54
    end
    object pEmpresasppField56: TppField
      FieldAlias = 'Contador_Rua'
      FieldName = 'Contador_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 55
    end
    object pEmpresasppField57: TppField
      FieldAlias = 'Contador_Numero'
      FieldName = 'Contador_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 56
    end
    object pEmpresasppField58: TppField
      FieldAlias = 'Contador_Complemento'
      FieldName = 'Contador_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 57
    end
    object pEmpresasppField59: TppField
      FieldAlias = 'Contador_Bairro'
      FieldName = 'Contador_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 58
    end
    object pEmpresasppField60: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Municipio'
      FieldName = 'Contador_Municipio'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 59
    end
    object pEmpresasppField61: TppField
      FieldAlias = 'Contador_Telefone'
      FieldName = 'Contador_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 60
    end
    object pEmpresasppField62: TppField
      FieldAlias = 'Contador_FAX'
      FieldName = 'Contador_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 61
    end
    object pEmpresasppField63: TppField
      FieldAlias = 'Contador_Email'
      FieldName = 'Contador_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 62
    end
    object pEmpresasppField64: TppField
      FieldAlias = 'Contador_Estado'
      FieldName = 'Contador_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 63
    end
    object pEmpresasppField65: TppField
      FieldAlias = 'CNAE'
      FieldName = 'CNAE'
      FieldLength = 7
      DisplayWidth = 7
      Position = 64
    end
    object pEmpresasppField66: TppField
      FieldAlias = 'Data_Constituicao'
      FieldName = 'Data_Constituicao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 65
    end
    object pEmpresasppField67: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tributacao'
      FieldName = 'Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 66
    end
    object pEmpresasppField68: TppField
      Alignment = taRightJustify
      FieldAlias = 'Municipio_Codigo'
      FieldName = 'Municipio_Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 67
    end
    object pEmpresasppField69: TppField
      FieldAlias = 'Diretor_CPF'
      FieldName = 'Diretor_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 68
    end
    object pEmpresasppField70: TppField
      FieldAlias = 'Responsavel_CPF'
      FieldName = 'Responsavel_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 69
    end
    object pEmpresasppField71: TppField
      FieldAlias = 'Responsavel_Funcao'
      FieldName = 'Responsavel_Funcao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 70
    end
    object pEmpresasppField72: TppField
      FieldAlias = 'Banco_Dados'
      FieldName = 'Banco_Dados'
      FieldLength = 50
      DisplayWidth = 50
      Position = 71
    end
    object pEmpresasppField73: TppField
      FieldAlias = 'Banco_Contabilidade'
      FieldName = 'Banco_Contabilidade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 72
    end
    object pEmpresasppField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente'
      FieldName = 'Ambiente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 73
    end
    object pEmpresasppField75: TppField
      FieldAlias = 'Licensa_NFE_Util'
      FieldName = 'Licensa_NFE_Util'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 74
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField76: TppField
      FieldAlias = 'Processo_Automatico'
      FieldName = 'Processo_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 75
    end
    object pEmpresasppField77: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 76
    end
    object pEmpresasppField78: TppField
      Alignment = taRightJustify
      FieldAlias = 'Apuracao_IPI'
      FieldName = 'Apuracao_IPI'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 77
    end
    object pEmpresasppField79: TppField
      FieldAlias = 'Perfil_SPED'
      FieldName = 'Perfil_SPED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 78
    end
    object pEmpresasppField80: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Atividade'
      FieldName = 'Tipo_Atividade'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 79
    end
    object pEmpresasppField81: TppField
      FieldAlias = 'Vencimento_Certificado'
      FieldName = 'Vencimento_Certificado'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 80
    end
    object pEmpresasppField82: TppField
      FieldAlias = 'UF_WebService'
      FieldName = 'UF_WebService'
      FieldLength = 10
      DisplayWidth = 10
      Position = 81
    end
    object pEmpresasppField83: TppField
      Alignment = taRightJustify
      FieldAlias = 'Regime_Apuracao'
      FieldName = 'Regime_Apuracao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 82
    end
    object pEmpresasppField84: TppField
      FieldAlias = 'Mascara_Processo'
      FieldName = 'Mascara_Processo'
      FieldLength = 7
      DisplayWidth = 7
      Position = 83
    end
    object pEmpresasppField85: TppField
      FieldAlias = 'Incentivo_Fiscal'
      FieldName = 'Incentivo_Fiscal'
      FieldLength = 20
      DisplayWidth = 20
      Position = 84
    end
    object pEmpresasppField86: TppField
      FieldAlias = 'Email_SMTP'
      FieldName = 'Email_SMTP'
      FieldLength = 80
      DisplayWidth = 80
      Position = 85
    end
    object pEmpresasppField87: TppField
      FieldAlias = 'Email_Senha'
      FieldName = 'Email_Senha'
      FieldLength = 30
      DisplayWidth = 30
      Position = 86
    end
    object pEmpresasppField88: TppField
      FieldAlias = 'Email_MsgEnvioNFE'
      FieldName = 'Email_MsgEnvioNFE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 87
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField89: TppField
      FieldAlias = 'Email_MsgCancelamento'
      FieldName = 'Email_MsgCancelamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 88
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField90: TppField
      FieldAlias = 'Email_ID'
      FieldName = 'Email_ID'
      FieldLength = 30
      DisplayWidth = 30
      Position = 89
    end
    object pEmpresasppField91: TppField
      Alignment = taRightJustify
      FieldAlias = 'Email_Porta'
      FieldName = 'Email_Porta'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 90
    end
    object pEmpresasppField92: TppField
      FieldAlias = 'Distribuidora'
      FieldName = 'Distribuidora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 91
    end
    object pEmpresasppField93: TppField
      FieldAlias = 'Fechamento_Financeiro'
      FieldName = 'Fechamento_Financeiro'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 92
    end
    object pEmpresasppField94: TppField
      FieldAlias = 'Modulo_Comercial'
      FieldName = 'Modulo_Comercial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 93
    end
    object pEmpresasppField95: TppField
      FieldAlias = 'Consolidar'
      FieldName = 'Consolidar'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 94
    end
    object pEmpresasppField96: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pedido_Nota'
      FieldName = 'Pedido_Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 5
      Position = 95
    end
    object pEmpresasppField97: TppField
      FieldAlias = 'Email_Copia'
      FieldName = 'Email_Copia'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 96
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField98: TppField
      FieldAlias = 'Email_SSL'
      FieldName = 'Email_SSL'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 97
    end
    object pEmpresasppField99: TppField
      FieldAlias = 'Email_Autenticacao'
      FieldName = 'Email_Autenticacao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 98
    end
    object pEmpresasppField100: TppField
      FieldAlias = 'Email_Metodo'
      FieldName = 'Email_Metodo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 99
    end
  end
  object pBancos: TppDBPipeline
    DataSource = Dados.dsBancos
    UserName = 'pBancos'
    Left = 544
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
  object pItens: TppDBPipeline
    DataSource = dstTitulos
    UserName = 'pItens'
    Left = 576
    Top = 8
  end
  object tTitulos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'DECLARE @pSolicitacao int'
      'SET @pSolicitacao = 42'
      'SELECT'
      '      Numero,'
      '      Classificacao,'
      
        '      (SELECT Descricao FROM ClassificacaoFinanceira WHERE(Class' +
        'ificacao = ClassificacaoFinanceira.Codigo)) AS Descricao,'
      '      CASE'
      
        '          WHEN Fornecedor <> 0  THEN (SELECT Nome FROM Fornecedo' +
        'res   WHERE(Fornecedor = Fornecedores.Codigo))'
      
        '          WHEN Cliente    <> 0  THEN (SELECT Nome FROM Clientes ' +
        '      WHERE(Cliente    = Clientes.Codigo))'
      
        '          WHEN Orgao      <> '#39#39' THEN (SELECT Nome FROM Cybersoft' +
        '_Cadastros.dbo.OrgaosPublicos WHERE(Orgao = Cybersoft_Cadastros.' +
        'dbo.OrgaosPublicos.Codigo))'
      '      END AS Beneficiario,'
      '      Processo,'
      '      Numero_Documento,'
      '      Parcela,'
      '      Valor_Operacao,'
      '      Cheque_Assinado,'
      '      Cheque_Nominal,'
      '      Cheque_Visado,'
      '      Cheque_Cruzado'
      'FROM  PagarReceber'
      'WHERE (Solicitacao_Pgto = @pSolicitacao)'
      'ORDER BY Data_Vencimento')
    FetchRows = 1
    Left = 440
    Top = 8
  end
  object dstTitulos: TDataSource
    DataSet = tTitulos
    Left = 472
    Top = 8
  end
end
