object NotaFiscal_TerceirosItens: TNotaFiscal_TerceirosItens
  Left = 534
  Top = 247
  ActiveControl = Navega
  BorderStyle = bsDialog
  Caption = 'NotaFiscal_TerceirosItens'
  ClientHeight = 687
  ClientWidth = 841
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 1
    Width = 832
    Height = 507
    Caption = '[ Itens da Nota Fiscal de Terceiros ]'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object bPesqNav: TSpeedButton
      Left = 381
      Top = 83
      Width = 23
      Height = 24
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
        B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
        1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
        BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
        BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
      OnClick = bPesqNavClick
    end
    object StaticText2: TStaticText
      Left = 5
      Top = 39
      Width = 100
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Produto'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 24
      Transparent = False
      StyleElements = []
    end
    object StaticText4: TStaticText
      Left = 5
      Top = 109
      Width = 100
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Quantidade'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 25
      Transparent = False
      StyleElements = []
    end
    object StaticText5: TStaticText
      Left = 5
      Top = 155
      Width = 100
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Unitario'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 26
      Transparent = False
      StyleElements = []
    end
    object cQuantidade: TDBEdit
      Left = 107
      Top = 109
      Width = 130
      Height = 21
      DataField = 'Quantidade'
      DataSource = dmFiscal.dsNotasTerceirosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnExit = cQuantidadeExit
    end
    object cValorUnitario: TDBEdit
      Left = 107
      Top = 155
      Width = 130
      Height = 21
      DataField = 'Valor_Unitario'
      DataSource = dmFiscal.dsNotasTerceirosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      OnExit = cValorUnitarioExit
    end
    object StaticText8: TStaticText
      Left = 239
      Top = 155
      Width = 82
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Desconto'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 27
      Transparent = False
      StyleElements = []
    end
    object cDesconto: TDBEdit
      Left = 323
      Top = 155
      Width = 104
      Height = 21
      DataField = 'Valor_Desconto'
      DataSource = dmFiscal.dsNotasTerceirosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      OnExit = cDescontoExit
    end
    object StaticText1: TStaticText
      Left = 462
      Top = 155
      Width = 93
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor l'#237'quido'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 28
      Transparent = False
      StyleElements = []
    end
    object cLiquido: TDBEdit
      Left = 557
      Top = 155
      Width = 106
      Height = 21
      DataField = 'Valor_Liquido'
      DataSource = dmFiscal.dsNotasTerceirosItens
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
      OnChange = cLiquidoChange
    end
    object GroupBox2: TGroupBox
      Left = 5
      Top = 178
      Width = 201
      Height = 206
      Caption = 'ICMS Operacional'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
      object StaticText14: TStaticText
        Left = 7
        Top = 38
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Base de C'#225'lculo'
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
      object DBEdit6: TDBEdit
        Left = 98
        Top = 38
        Width = 96
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_BCICMSOper'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnExit = cAliquotaICMSExit
      end
      object StaticText15: TStaticText
        Left = 7
        Top = 84
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Valor Entrada'
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
      object cValorICMS: TDBEdit
        Left = 98
        Top = 84
        Width = 96
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_ICMSOper'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnExit = cValorICMSExit
      end
      object StaticText9: TStaticText
        Left = 7
        Top = 15
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Aliquota'
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
      object cAliquotaICMS: TDBEdit
        Left = 98
        Top = 15
        Width = 96
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Aliquota_ICMSOper'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnExit = cAliquotaICMSExit
      end
      object StaticText3: TStaticText
        Left = 7
        Top = 130
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Outras'
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
      object DBEdit2: TDBEdit
        Left = 98
        Top = 130
        Width = 96
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_OutrasICMS'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object StaticText6: TStaticText
        Left = 7
        Top = 107
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Isentas'
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
      object DBEdit3: TDBEdit
        Left = 98
        Top = 107
        Width = 96
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_IsentasICMS'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object StaticText29: TStaticText
        Left = 7
        Top = 153
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CST Origem'
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
      object StaticText33: TStaticText
        Left = 7
        Top = 176
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CST Tributa'#231#227'o'
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
      object cCSTTabB: TDBLookupComboBox
        Left = 98
        Top = 176
        Width = 96
        Height = 21
        DataField = 'CodigoTrib_TabB'
        DataSource = dmFiscal.dsNotasTerceirosItens
        DropDownWidth = 350
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListSource = Dados.dsCSTTabelaB
        NullValueKey = 46
        ParentFont = False
        TabOrder = 7
        OnExit = cProdutoExit
      end
      object cCSTTabA: TDBLookupComboBox
        Left = 98
        Top = 153
        Width = 96
        Height = 21
        DataField = 'CodigoTrib_TabA'
        DataSource = dmFiscal.dsNotasTerceirosItens
        DropDownWidth = 350
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListSource = Dados.dsCSTTabelaA
        NullValueKey = 46
        ParentFont = False
        TabOrder = 6
        OnExit = cProdutoExit
      end
      object StaticText40: TStaticText
        Left = 7
        Top = 61
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Valor (NF)'
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
      object DBEdit24: TDBEdit
        Left = 98
        Top = 61
        Width = 96
        Height = 21
        CharCase = ecUpperCase
        Color = 12713983
        DataField = 'Valor_ICMSOperOrig'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnExit = cValorICMSExit
      end
    end
    object GroupBox3: TGroupBox
      Left = 209
      Top = 178
      Width = 200
      Height = 206
      Caption = 'ICMS Substitutivo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
      object StaticText10: TStaticText
        Left = 7
        Top = 60
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Base de C'#225'lculo'
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
      object DBEdit7: TDBEdit
        Left = 98
        Top = 60
        Width = 95
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_BCICMSSub'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object StaticText11: TStaticText
        Left = 7
        Top = 106
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Valor (NF)'
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
      object DBEdit9: TDBEdit
        Left = 98
        Top = 106
        Width = 95
        Height = 21
        CharCase = ecUpperCase
        Color = 12713983
        DataField = 'Valor_ICMSSubOrig'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnExit = DBEdit9Exit
      end
      object StaticText12: TStaticText
        Left = 7
        Top = 37
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Al'#237'quota ICMS'
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
      object DBEdit10: TDBEdit
        Left = 98
        Top = 37
        Width = 95
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Aliquota_ICMSSub'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object StaticText38: TStaticText
        Left = 7
        Top = 14
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Al'#237'quota MVA'
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
      object DBEdit23: TDBEdit
        Left = 98
        Top = 14
        Width = 95
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Aliquota_MVA'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object StaticText41: TStaticText
        Left = 7
        Top = 129
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Valor Entrada'
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
      object DBEdit25: TDBEdit
        Left = 98
        Top = 129
        Width = 95
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_ICMSSub'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnExit = DBEdit9Exit
      end
      object StaticText50: TStaticText
        Left = 7
        Top = 83
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Base Calculo (NF)'
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
      object DBEdit31: TDBEdit
        Left = 98
        Top = 83
        Width = 95
        Height = 21
        CharCase = ecUpperCase
        Color = 12713983
        DataField = 'Valor_BCICMSSubOrig'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        OnExit = DBEdit9Exit
      end
    end
    object GroupBox4: TGroupBox
      Left = 412
      Top = 178
      Width = 197
      Height = 206
      Caption = 'IPI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
      object StaticText17: TStaticText
        Left = 5
        Top = 37
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Base de C'#225'lculo'
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
      object DBEdit13: TDBEdit
        Left = 96
        Top = 37
        Width = 95
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_BCIPI'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnExit = DBEdit15Exit
      end
      object StaticText18: TStaticText
        Left = 5
        Top = 60
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Valor (NF)'
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
      object DBEdit14: TDBEdit
        Left = 96
        Top = 60
        Width = 95
        Height = 21
        CharCase = ecUpperCase
        Color = 12713983
        DataField = 'Valor_IPIOrig'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnExit = DBEdit14Exit
      end
      object StaticText19: TStaticText
        Left = 5
        Top = 14
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Aliquota'
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
      object DBEdit15: TDBEdit
        Left = 96
        Top = 14
        Width = 95
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Aliquota_IPI'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnExit = DBEdit15Exit
      end
      object StaticText20: TStaticText
        Left = 5
        Top = 129
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Outras '
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
      object DBEdit16: TDBEdit
        Left = 96
        Top = 129
        Width = 95
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_OutrasIPI'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object StaticText21: TStaticText
        Left = 5
        Top = 106
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Isentas'
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
      object DBEdit17: TDBEdit
        Left = 96
        Top = 106
        Width = 95
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_IsentasIPI'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object StaticText31: TStaticText
        Left = 5
        Top = 152
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CST IPI'
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
      object cCSTIPI: TDBLookupComboBox
        Left = 96
        Top = 152
        Width = 95
        Height = 21
        DataField = 'CST_IPI'
        DataSource = dmFiscal.dsNotasTerceirosItens
        DropDownWidth = 250
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo; Descricao'
        ListFieldIndex = 2
        ListSource = Dados.dsCSTIPI
        NullValueKey = 46
        ParentFont = False
        TabOrder = 6
        OnExit = cProdutoExit
      end
      object StaticText42: TStaticText
        Left = 5
        Top = 83
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Valor Entrada'
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
      object cValorIPI: TDBEdit
        Left = 96
        Top = 83
        Width = 95
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_IPI'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnExit = DBEdit14Exit
      end
    end
    object cProduto: TDBLookupComboBox
      Left = 240
      Top = 39
      Width = 585
      Height = 21
      DataField = 'Codigo_Mercadoria'
      DataSource = dmFiscal.dsNotasTerceirosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo; Codigo_Fabricante; Descricao_Reduzida'
      ListFieldIndex = 2
      ListSource = Dados.dsProdutos
      ParentFont = False
      TabOrder = 3
      OnExit = cProdutoExit
    end
    object cCodigo: TDBEdit
      Left = 107
      Top = 39
      Width = 131
      Height = 21
      DataField = 'Codigo_Mercadoria'
      DataSource = dmFiscal.dsNotasTerceirosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnChange = cCodigoChange
      OnExit = cProdutoExit
    end
    object DBEdit1: TDBEdit
      Left = 324
      Top = 61
      Width = 104
      Height = 21
      DataField = 'Peso_Liquido'
      DataSource = dmFiscal.dsNotasTerceirosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object StaticText7: TStaticText
      Left = 240
      Top = 61
      Width = 82
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Peso L'#237'quido'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 29
      Transparent = False
      StyleElements = []
    end
    object StaticText13: TStaticText
      Left = 430
      Top = 61
      Width = 93
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Peso Bruto'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 30
      Transparent = False
      StyleElements = []
    end
    object DBEdit4: TDBEdit
      Left = 525
      Top = 61
      Width = 115
      Height = 21
      DataField = 'Peso_Bruto'
      DataSource = dmFiscal.dsNotasTerceirosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object StaticText16: TStaticText
      Left = 462
      Top = 132
      Width = 93
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Consumo Energia'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 31
      Transparent = False
      StyleElements = []
    end
    object cEnergia: TDBEdit
      Left = 557
      Top = 132
      Width = 106
      Height = 21
      DataField = 'Consumo_Energia'
      DataSource = dmFiscal.dsNotasTerceirosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      OnExit = cValorUnitarioExit
    end
    object cNatureza: TDBLookupComboBox
      Left = 179
      Top = 16
      Width = 646
      Height = 21
      DataField = 'Natureza_Codigo'
      DataSource = dmFiscal.dsNotasTerceirosItens
      DropDownRows = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao_NF'
      ListFieldIndex = 1
      ListSource = Dados.dsNatureza
      ParentFont = False
      TabOrder = 1
    end
    object cCodigoNatureza: TDBEdit
      Left = 107
      Top = 16
      Width = 70
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Natureza_Codigo'
      DataSource = dmFiscal.dsNotasTerceirosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      MaxLength = 5
      ParentFont = False
      TabOrder = 0
      OnChange = cCodigoNaturezaChange
    end
    object lNatureza: TStaticText
      Left = 5
      Top = 16
      Width = 100
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Natureza Opera'#231#227'o'
      Color = 7293440
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 32
      Transparent = False
      StyleElements = []
      OnClick = lNaturezaClick
    end
    object GroupBox5: TGroupBox
      Left = 612
      Top = 178
      Width = 214
      Height = 324
      Caption = 'PIS/COFINS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 23
      object StaticText22: TStaticText
        Left = 7
        Top = 106
        Width = 104
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Vlr.PIS Entrada'
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
      object DBEdit11: TDBEdit
        Left = 113
        Top = 106
        Width = 96
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_PIS'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object StaticText25: TStaticText
        Left = 7
        Top = 175
        Width = 104
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Aliq.COFINS (NF)'
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
      object DBEdit19: TDBEdit
        Left = 113
        Top = 175
        Width = 96
        Height = 21
        CharCase = ecUpperCase
        Color = 12713983
        DataField = 'Aliquota_COFINSOrig'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnExit = cValorUnitarioExit
      end
      object StaticText26: TStaticText
        Left = 7
        Top = 37
        Width = 104
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Aliq.PIS (NF)'
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
      object DBEdit20: TDBEdit
        Left = 113
        Top = 37
        Width = 96
        Height = 21
        CharCase = ecUpperCase
        Color = 12713983
        DataField = 'Aliquota_PISOrig'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnExit = cValorUnitarioExit
      end
      object StaticText28: TStaticText
        Left = 7
        Top = 244
        Width = 104
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Vlr.COFINS (Entrada)'
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
      object DBEdit21: TDBEdit
        Left = 113
        Top = 244
        Width = 96
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_COFINS'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object StaticText30: TStaticText
        Left = 7
        Top = 129
        Width = 104
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CST PIS'
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
      object cCSTPIS: TDBLookupComboBox
        Left = 113
        Top = 129
        Width = 96
        Height = 21
        BiDiMode = bdLeftToRight
        DataField = 'CST_PIS'
        DataSource = dmFiscal.dsNotasTerceirosItens
        DropDownAlign = daRight
        DropDownWidth = 450
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo; Descricao'
        ListFieldIndex = 2
        ListSource = Dados.dsCSTPIS
        NullValueKey = 46
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 5
      end
      object StaticText32: TStaticText
        Left = 7
        Top = 267
        Width = 104
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CST COFINS'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 17
        Transparent = False
        StyleElements = []
      end
      object cCSTCOFINS: TDBLookupComboBox
        Left = 113
        Top = 267
        Width = 96
        Height = 21
        DataField = 'CST_COFINS'
        DataSource = dmFiscal.dsNotasTerceirosItens
        DropDownAlign = daRight
        DropDownWidth = 450
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo; Descricao'
        ListFieldIndex = 2
        ListSource = Dados.dsCSTCONFINS
        NullValueKey = 46
        ParentFont = False
        TabOrder = 11
      end
      object StaticText35: TStaticText
        Left = 7
        Top = 14
        Width = 104
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'B.C'#225'lculo PIS (NF)'
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
      object StaticText43: TStaticText
        Left = 7
        Top = 83
        Width = 104
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Vlr.PIS (NF)'
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
      object DBEdit27: TDBEdit
        Left = 113
        Top = 83
        Width = 96
        Height = 21
        CharCase = ecUpperCase
        Color = 12713983
        DataField = 'Valor_PISOrig'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object StaticText44: TStaticText
        Left = 7
        Top = 221
        Width = 104
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Vlr.COFINS (NF)'
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
      object DBEdit28: TDBEdit
        Left = 113
        Top = 221
        Width = 96
        Height = 21
        CharCase = ecUpperCase
        Color = 12713983
        DataField = 'Valor_COFINSOrig'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object StaticText46: TStaticText
        Left = 7
        Top = 152
        Width = 104
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'B.C.COFINS (NF)'
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
      object cBCPIS: TDBEdit
        Left = 113
        Top = 14
        Width = 96
        Height = 21
        CharCase = ecUpperCase
        Color = 12713983
        DataField = 'Valor_BCPIS'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnExit = cBCPISExit
      end
      object cBCCOFINS: TDBEdit
        Left = 113
        Top = 152
        Width = 96
        Height = 21
        CharCase = ecUpperCase
        Color = 12713983
        DataField = 'Valor_BCCOFINS'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object StaticText47: TStaticText
        Left = 7
        Top = 60
        Width = 104
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Aliq.PIS (Entrada)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 22
        Transparent = False
        StyleElements = []
      end
      object DBEdit8: TDBEdit
        Left = 113
        Top = 60
        Width = 96
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Aliquota_PIS'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnExit = cValorUnitarioExit
      end
      object StaticText48: TStaticText
        Left = 7
        Top = 198
        Width = 104
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Aliq.COFINS'
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
      object DBEdit26: TDBEdit
        Left = 113
        Top = 198
        Width = 96
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Aliquota_COFINS'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnExit = cValorUnitarioExit
      end
    end
    object cCIAP: TGroupBox
      Left = 5
      Top = 389
      Width = 201
      Height = 113
      Caption = '(CIAP) ICMS'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
      object StaticText23: TStaticText
        Left = 6
        Top = 38
        Width = 83
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Base de C'#225'lculo'
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
      object cBaseCIAP: TDBEdit
        Left = 91
        Top = 38
        Width = 103
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CIAP_BCICMS'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnExit = cBaseCIAPExit
      end
      object StaticText24: TStaticText
        Left = 6
        Top = 61
        Width = 83
        Height = 21
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
        TabOrder = 5
        Transparent = False
        StyleElements = []
      end
      object DBEdit12: TDBEdit
        Left = 91
        Top = 61
        Width = 103
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CIAP_ValorICMS'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object StaticText27: TStaticText
        Left = 6
        Top = 15
        Width = 83
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Al'#237'quota'
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
      object DBEdit18: TDBEdit
        Left = 91
        Top = 15
        Width = 103
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CIAP_AliquotaICMS'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnChange = DBEdit18Change
        OnExit = DBEdit18Exit
      end
      object StaticText34: TStaticText
        Left = 6
        Top = 84
        Width = 83
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Tipo Mercadoria'
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
      object cTipo: TRxDBComboBox
        Left = 91
        Top = 84
        Width = 103
        Height = 21
        DataField = 'CIAP_TipoItem'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'Bem'
          'Componente')
        ParentFont = False
        TabOrder = 3
        Values.Strings = (
          '1'
          '2')
      end
    end
    object StaticText36: TStaticText
      Left = 642
      Top = 61
      Width = 49
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'NCM'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 33
      Transparent = False
      StyleElements = []
    end
    object DBEdit5: TDBEdit
      Left = 693
      Top = 61
      Width = 131
      Height = 21
      DataField = 'NCM'
      DataSource = dmFiscal.dsNotasTerceirosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      TabOrder = 7
    end
    object StaticText37: TStaticText
      Left = 5
      Top = 132
      Width = 100
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor (NF)'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 34
      Transparent = False
      StyleElements = []
    end
    object DBEdit22: TDBEdit
      Left = 107
      Top = 132
      Width = 130
      Height = 21
      Color = 12713983
      DataField = 'Valor_UnitarioOrig'
      DataSource = dmFiscal.dsNotasTerceirosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      OnExit = DBEdit22Exit
    end
    object StaticText39: TStaticText
      Left = 5
      Top = 62
      Width = 100
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Processo N'#186
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 35
      Transparent = False
      StyleElements = []
    end
    object cProcesso: TDBComboBox
      Left = 107
      Top = 62
      Width = 131
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Processo'
      DataSource = dmFiscal.dsNotasTerceirosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object StaticText45: TStaticText
      Left = 239
      Top = 132
      Width = 82
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Invent'#225'rio'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 36
      Transparent = False
      StyleElements = []
    end
    object DBEdit29: TDBEdit
      Left = 323
      Top = 132
      Width = 104
      Height = 21
      Color = 12713983
      DataField = 'Valor_Inventario'
      DataSource = dmFiscal.dsNotasTerceirosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      OnExit = DBEdit22Exit
    end
    object StaticText49: TStaticText
      Left = 665
      Top = 155
      Width = 67
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Vlr. Frete'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 37
      Transparent = False
      StyleElements = []
    end
    object DBEdit30: TDBEdit
      Left = 734
      Top = 155
      Width = 91
      Height = 21
      DataField = 'Valor_Frete'
      DataSource = dmFiscal.dsNotasTerceirosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 18
      OnChange = cLiquidoChange
    end
    object bDetalhe: TButton
      Left = 239
      Top = 107
      Width = 92
      Height = 25
      Caption = '&Lote/Detalhe'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnClick = bDetalheClick
    end
    object bSeriais: TButton
      Left = 333
      Top = 107
      Width = 95
      Height = 25
      Caption = 'Serial/Chassi'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
    object TravaInv: TRxSwitch
      Left = 428
      Top = 132
      Width = 18
      Height = 21
      Hint = 'Trava o valor do invent'#225'rio.'
      Caption = 'Trava2'
      GlyphOff.Data = {
        16030000424D1603000000000000160200002800000010000000100000000100
        08000000000000010000120B0000120B0000780000007800000000000000FFFF
        FF00FF00FF008AF5FB0087F0F8007AECF8007BE0EC00CFF8FD00CAF5FB0055D7
        EC005CCCDF0077DEEE00B6F4FF00B3ECF50047C2DC0058CDE4006BD1E60094DF
        EF00B1EEFA00ECFAFD0024B6DA003ABFE0003CB6D10045C2DF0046BEDB004AB5
        CD006ECFE700B1E5F1000C9BC4000EA5D100119DC4001DAFD8001CA9D00020AF
        D80020A7CD0025ABD20028B1D7002BB1D8002EB7DE002FAECF0037B7D90040B8
        D70044C1E2003DAAC8004AC2E20052C0E00060C7E2005EC0DB0062C8E2006BCF
        EA006CC8E00083D8EE0086D8EE000091BF00049DCA00069DCC0008A1CE000994
        BF000A95C0000B99C6000B96C0000C9DC8000C94C1000D96C20013A8D400199B
        C3001FA7D20025AAD4002DB5DD002EB3DB0033B0D90034B1DA0039BBE3003FBE
        E4003BA6C60048C1E8004ABCE0004FC3E60063A9BF0083C9DE009AE1F800A2E7
        FD000C8AB500148AB6001898C3002A9DC6003DB2DC00369BC00048B7E00049B7
        E0004DB9E10054BCE3007FD2F1008BCFE8009DE2F900A0E3FB00C5E8F400287F
        A10059BBE00060C1E8006FC7EB0069BDE00064B2D10073CAEE007CCDEF0086D4
        F40076CBF00082D0F2008FD7F70094DBFC0093DAF90095DAFA0099DFFE009ADC
        FB00A2E1FE0093D9FA0095DAFB0094D8FA0097DAFB00A0DFFE00020202020202
        020202020202020202020202023759635B565A020202020202020202381D5C77
        767368675802020202020202401F335F6E6B626C716A02020202020221261112
        51665764747147020202020244491B070C4F61656D6F460202020202484B6013
        080D4E5D7075460202020202452A2F32302E1A345E72470202020202250F2918
        17282C315069430202020202240A1C1603091436232D420202020202023E3527
        04050E3C1E2002020202020202023B410215223A3F0202020202020202024D55
        02020239520202020202020202024A0B2B02533D020202020202020202020219
        06104C5402020202020202020202020202020202020202020202}
      GlyphOn.Data = {
        12030000424D1203000000000000120200002800000010000000100000000100
        08000000000000010000120B0000120B0000770000007700000000000000FFFF
        FF00FF00FF0080FCFF0066EDF800C1F6FC004ED8EB005AD1E0005DD5E50059CB
        DA00BBF2FA009FE6F20036C1DE009DE9F800A3F0FF002CBDE00031BBDC003AC1
        E00035A9C4003BAFCA003BADC70041B4CE007BD5EA009DDDED00E6F8FC002DB0
        D30035A6C70047B8D9004DC2E30053C1E00011A1CE00169FCC002CB0D9002382
        9F0035A7CC0045B7D90043AFD00051B8D70069CCE9006CCCE90069BAD4008BE0
        FC00078FC200078AB8000995C6000E9ACC00109ACC0019A1D300189ACA001AA4
        D4001A9FD0001C9ECA0023A9DA0028ACDC001D728F0033A1C9005EC2E7004893
        AD0086D9F700B5E1F000017FB2000286BD00038AC0000384B8000382B6000381
        B500058FC4000684B5000680B100078BC1000892C700088EC1000782B2000B8F
        C2000E90C4000F88BB001A9CCF001E9CCE001F9DCF00219FCF002799C5002FB0
        E10065C5ED0072C1E10089DAFA00016D9F000273A500037BAF000379AC000479
        AB000478AA0016658A00269ED1002083AF002FA4D70030A4D70034A6D8003AAA
        DA003FA9D70045B0E10054B7E500499EC40058BBE90062BFEA007ACFF7004EAB
        D7005BBCEB0068C2EE0076CBF4007BD0FB007ACEF8007DCFF80081D5FE0082D1
        FA008BD8FE007BCCF8007DCFFA007FCFFA0089D5FE000202023D5F63615C6002
        02020202020202023E425276756E67665E02020202020202462D2654686B626C
        716A0202020202022E31160D29655D6474714E02020202022F3517050E285B69
        6D6F4D020202020234513B180A0B395370734D0202020202322024251B231D27
        3A724E02020202021F073621060F1E2C30384F02020202020233120903040C2B
        3C474902020202020202020211101948442A4502020202020202020202020243
        570202020202020202025655020202405A0202020202020202024C4B0202023F
        59020202020202020202371C02020241580202020202020202020215081A504A
        02020202020202020202020214132202020202020202}
      ParentShowHint = False
      ShowHint = True
      StateOn = True
      TabOrder = 38
      OnClick = TravaInvClick
      Data = {03}
    end
    object StaticText51: TStaticText
      Left = 665
      Top = 132
      Width = 67
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Vlr.Despesa'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 39
      Transparent = False
      StyleElements = []
    end
    object DBEdit32: TDBEdit
      Left = 734
      Top = 132
      Width = 91
      Height = 21
      DataField = 'Valor_Despesa'
      DataSource = dmFiscal.dsNotasTerceirosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 40
      OnExit = cValorUnitarioExit
    end
    object StaticText52: TStaticText
      Left = 5
      Top = 85
      Width = 100
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Navio'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 41
      Transparent = False
      StyleElements = []
    end
    object cNavio: TDBLookupComboBox
      Left = 107
      Top = 85
      Width = 273
      Height = 21
      Color = clWhite
      DataField = 'Navio'
      DataSource = dmFiscal.dsNotasTerceirosItens
      DropDownRows = 30
      DropDownWidth = 320
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      KeyField = 'Ordem'
      ListField = 'Navio;Ordem'
      ListSource = Dados.dsControleNavios
      NullValueKey = 16430
      ParentFont = False
      TabOrder = 8
    end
    object GroupBox6: TGroupBox
      Left = 209
      Top = 389
      Width = 200
      Height = 113
      Caption = 'IBS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 42
      object StaticText53: TStaticText
        Left = 6
        Top = 39
        Width = 83
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Base de C'#225'lculo'
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
      object DBEdit33: TDBEdit
        Left = 91
        Top = 39
        Width = 103
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_BCIBS'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnExit = cBaseCIAPExit
      end
      object StaticText54: TStaticText
        Left = 6
        Top = 85
        Width = 83
        Height = 21
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
        TabOrder = 5
        Transparent = False
        StyleElements = []
      end
      object DBEdit34: TDBEdit
        Left = 91
        Top = 85
        Width = 103
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_IBSUF'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object StaticText55: TStaticText
        Left = 6
        Top = 62
        Width = 83
        Height = 21
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
        TabOrder = 6
        Transparent = False
        StyleElements = []
      end
      object DBEdit35: TDBEdit
        Left = 91
        Top = 62
        Width = 103
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Percentual_IBSUF'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnChange = DBEdit18Change
        OnExit = DBEdit18Exit
      end
      object StaticText56: TStaticText
        Left = 7
        Top = 16
        Width = 82
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CST'
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
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 91
        Top = 16
        Width = 103
        Height = 21
        BiDiMode = bdLeftToRight
        DataField = 'CSTIBS'
        DataSource = dmFiscal.dsNotasTerceirosItens
        DropDownAlign = daRight
        DropDownWidth = 450
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo; Descricao'
        ListFieldIndex = 2
        ListSource = Dados.dsCSTIBS
        NullValueKey = 46
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
      end
    end
    object GroupBox7: TGroupBox
      Left = 412
      Top = 389
      Width = 197
      Height = 113
      Caption = 'CBS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 43
      object StaticText57: TStaticText
        Left = 6
        Top = 39
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Base de C'#225'lculo'
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
      object DBEdit36: TDBEdit
        Left = 96
        Top = 39
        Width = 95
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_BCCBS'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnExit = cBaseCIAPExit
      end
      object StaticText58: TStaticText
        Left = 6
        Top = 85
        Width = 89
        Height = 21
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
        TabOrder = 5
        Transparent = False
        StyleElements = []
      end
      object DBEdit37: TDBEdit
        Left = 96
        Top = 85
        Width = 95
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_CBS'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object StaticText59: TStaticText
        Left = 6
        Top = 62
        Width = 89
        Height = 21
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
        TabOrder = 6
        Transparent = False
        StyleElements = []
      end
      object DBEdit38: TDBEdit
        Left = 96
        Top = 62
        Width = 95
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Percentual_CBS'
        DataSource = dmFiscal.dsNotasTerceirosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnChange = DBEdit18Change
        OnExit = DBEdit18Exit
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 93
        Top = 16
        Width = 98
        Height = 21
        BiDiMode = bdLeftToRight
        DataField = 'CSTCBS'
        DataSource = dmFiscal.dsNotasTerceirosItens
        DropDownAlign = daRight
        DropDownWidth = 450
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo; Descricao'
        ListFieldIndex = 2
        ListSource = Dados.dsCSTCBS
        NullValueKey = 46
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
      end
      object StaticText60: TStaticText
        Left = 6
        Top = 16
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CST'
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
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 656
    Width = 841
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 343
      Height = 29
      Cursor = crHandPoint
      DataSource = dmFiscal.dsNotasTerceirosItens
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alLeft
      Ctl3D = True
      Hints.Strings = (
        'Vai para o primeiro registro.'
        'Volta para o registro anterior.'
        'Vai para o pr'#243'ximo registro.'
        'Vai para o '#250'ltimo registro.'
        'Inlcuir um novo registro.'
        'Deletar o registro atual.'
        'Altera o reistro atual.'
        'Salvar o registro no banco de dados.'
        'Cancelar as modifica'#231#245'es feitas no registro atual.'
        'Atualizar inform'#231#245'es do banco de dados.')
      ParentCtl3D = False
      ParentShowHint = False
      ConfirmDelete = False
      ShowHint = True
      TabOrder = 1
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
    object bSair: TButton
      Left = 770
      Top = 1
      Width = 70
      Height = 29
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bItens: TButton
      Left = 344
      Top = 1
      Width = 172
      Height = 29
      Align = alLeft
      Caption = '&Importar Itens da NF Refer'#234'ncia'
      TabOrder = 2
      OnClick = bItensClick
    end
  end
  object GradeItens: TDBGrid
    Left = 4
    Top = 514
    Width = 832
    Height = 136
    DataSource = dmFiscal.dsNotasTerceirosItens
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo_Mercadoria'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao_Mercadoria'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 485
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unidade_Medida'
        Title.Alignment = taCenter
        Title.Caption = 'UM'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Desconto'
        Title.Alignment = taCenter
        Title.Caption = 'Desconto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Liquido'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 82
        Visible = True
      end>
  end
  object lBaixada: TPanel
    Left = 132
    Top = 547
    Width = 577
    Height = 73
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Shape1: TShape
      Left = 1
      Top = 1
      Width = 575
      Height = 71
      Align = alClient
      Brush.Color = clRed
      ExplicitTop = -7
    end
    object Label1: TLabel
      Left = 29
      Top = 29
      Width = 519
      Height = 18
      Alignment = taCenter
      AutoSize = False
      Caption = 'NOTA FISCAL BAIXADA NO FINANCEIRO, N'#195'O PODE SER ALTERADA.'
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object tItem: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Item) AS Item FROM NotasTerceirosItens')
    FetchRows = 1
    Left = 240
    Top = 553
  end
  object tCIAP: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Registro) AS Registro FROM CIAP')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 276
    Top = 505
    object tCIAPRegistro: TIntegerField
      FieldName = 'Registro'
      Origin = '.'
      ReadOnly = True
    end
  end
  object tFaturamento: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 320
    Top = 553
  end
  object tCustoMedio: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 366
    Top = 505
  end
  object tTotaliza: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 404
    Top = 553
  end
  object tExiste: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 443
    Top = 505
  end
  object tSaldo: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT ISNULL(Unitario_Saida, 0) AS Unitario_Saida'
      'FROM   FichaEstoque'
      'WHERE  Nota = 71 AND Data = '#39'12/10/2014'#39' AND Codigo = 2020')
    Left = 465
    Top = 553
  end
  object tMateriaPrima: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT ISNULL(Unitario_Saida, 0) AS Unitario_Saida'
      'FROM   FichaEstoque'
      'WHERE  Nota = 71 AND Data = '#39'12/10/2014'#39' AND Codigo = 2020')
    Left = 513
    Top = 505
  end
  object tValor: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 529
    Top = 553
  end
  object tLancamento: TMSQuery
    Connection = Dados.Banco_Contabilidade
    Left = 593
    Top = 505
  end
  object ttmp: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 596
    Top = 563
  end
end
