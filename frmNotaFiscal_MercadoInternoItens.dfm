object NotaFiscal_MercadoInternoItens: TNotaFiscal_MercadoInternoItens
  Left = 271
  Top = 160
  BorderStyle = bsDialog
  Caption = 'NotaFiscal_MercadoInternoItens'
  ClientHeight = 493
  ClientWidth = 614
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
  object RxDBGrid1: TRxDBGrid
    Left = 4
    Top = 258
    Width = 608
    Height = 199
    DataSource = dmFiscal.dsNotasConsumoItens
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 377
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unidade'
        Title.Alignment = taCenter
        Title.Caption = 'UM'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 28
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
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 42
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
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Total'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 75
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 4
    Width = 608
    Height = 251
    Caption = 'Itens da Nota Fiscal de compra no Mercado Interno'
    Enabled = False
    TabOrder = 0
    object StaticText2: TStaticText
      Left = 5
      Top = 16
      Width = 117
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Produto'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object StaticText4: TStaticText
      Left = 5
      Top = 62
      Width = 117
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object StaticText5: TStaticText
      Left = 5
      Top = 85
      Width = 117
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Total'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object cQuantidade: TDBEdit
      Left = 124
      Top = 62
      Width = 72
      Height = 21
      DataField = 'Quantidade'
      DataSource = dmFiscal.dsNotasConsumoItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object cValorTotal: TDBEdit
      Left = 124
      Top = 85
      Width = 100
      Height = 21
      DataField = 'Valor_Total'
      DataSource = dmFiscal.dsNotasConsumoItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnExit = cValorTotalExit
    end
    object cProduto: TDBLookupComboBox
      Left = 198
      Top = 16
      Width = 402
      Height = 21
      DataField = 'Produto'
      DataSource = dmFiscal.dsNotasConsumoItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Descricao_Reduzida; NCM'
      ListFieldIndex = 4
      ListSource = Dados.dsProdutos
      ParentFont = False
      TabOrder = 0
      OnExit = cProdutoExit
    end
    object StaticText7: TStaticText
      Left = 5
      Top = 39
      Width = 117
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'C'#243'digo Tribut'#225'rio (CST)'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object DBEdit4: TDBEdit
      Left = 124
      Top = 39
      Width = 37
      Height = 21
      DataField = 'CST'
      DataSource = dmFiscal.dsNotasConsumoItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object StaticText8: TStaticText
      Left = 226
      Top = 85
      Width = 85
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Desconto'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object cDesconto: TDBEdit
      Left = 313
      Top = 85
      Width = 100
      Height = 21
      DataField = 'Valor_Desconto'
      DataSource = dmFiscal.dsNotasConsumoItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnExit = cDescontoExit
    end
    object StaticText1: TStaticText
      Left = 415
      Top = 85
      Width = 82
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor l'#237'quido'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object cLiquido: TDBEdit
      Left = 499
      Top = 85
      Width = 101
      Height = 21
      DataField = 'Valor_Liquido'
      DataSource = dmFiscal.dsNotasConsumoItens
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
    end
    object GroupBox2: TGroupBox
      Left = 208
      Top = 112
      Width = 192
      Height = 133
      Caption = 'ICMS Operacional'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      object StaticText14: TStaticText
        Left = 5
        Top = 38
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Base de C'#225'lculo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object DBEdit6: TDBEdit
        Left = 96
        Top = 38
        Width = 91
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_BCICMS'
        DataSource = dmFiscal.dsNotasConsumoItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object StaticText15: TStaticText
        Left = 5
        Top = 61
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object DBEdit8: TDBEdit
        Left = 96
        Top = 61
        Width = 91
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_ICMS'
        DataSource = dmFiscal.dsNotasConsumoItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object StaticText9: TStaticText
        Left = 5
        Top = 15
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Aliquota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object cAliquotaICMS: TDBEdit
        Left = 96
        Top = 15
        Width = 50
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Aliquota_ICMS'
        DataSource = dmFiscal.dsNotasConsumoItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object StaticText3: TStaticText
        Left = 5
        Top = 107
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Outras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object DBEdit2: TDBEdit
        Left = 96
        Top = 107
        Width = 91
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_OutrasICMS'
        DataSource = dmFiscal.dsNotasConsumoItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object StaticText6: TStaticText
        Left = 5
        Top = 84
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Isentas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object DBEdit3: TDBEdit
        Left = 96
        Top = 84
        Width = 91
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_IsentasICMS'
        DataSource = dmFiscal.dsNotasConsumoItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
    end
    object GroupBox3: TGroupBox
      Left = 409
      Top = 112
      Width = 192
      Height = 133
      Caption = 'ICMS Substitutivo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      object StaticText10: TStaticText
        Left = 5
        Top = 38
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Base de C'#225'lculo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object DBEdit7: TDBEdit
        Left = 96
        Top = 38
        Width = 91
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_BCICMSSub'
        DataSource = dmFiscal.dsNotasConsumoItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object StaticText11: TStaticText
        Left = 5
        Top = 61
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object DBEdit9: TDBEdit
        Left = 96
        Top = 61
        Width = 91
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_ICMSSub'
        DataSource = dmFiscal.dsNotasConsumoItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object StaticText12: TStaticText
        Left = 5
        Top = 15
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Aliquota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object DBEdit10: TDBEdit
        Left = 96
        Top = 15
        Width = 50
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Aliquota_ICMSSub'
        DataSource = dmFiscal.dsNotasConsumoItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
    object GroupBox4: TGroupBox
      Left = 7
      Top = 112
      Width = 192
      Height = 133
      Caption = 'IPI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      object StaticText17: TStaticText
        Left = 5
        Top = 38
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Base de C'#225'lculo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object DBEdit13: TDBEdit
        Left = 96
        Top = 38
        Width = 91
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_BCIPI'
        DataSource = dmFiscal.dsNotasConsumoItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object StaticText18: TStaticText
        Left = 5
        Top = 61
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object DBEdit14: TDBEdit
        Left = 96
        Top = 61
        Width = 91
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_IPI'
        DataSource = dmFiscal.dsNotasConsumoItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object StaticText19: TStaticText
        Left = 5
        Top = 15
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Aliquota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object DBEdit15: TDBEdit
        Left = 96
        Top = 15
        Width = 50
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Aliquota_IPI'
        DataSource = dmFiscal.dsNotasConsumoItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object StaticText20: TStaticText
        Left = 5
        Top = 107
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Outras '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object DBEdit16: TDBEdit
        Left = 96
        Top = 107
        Width = 91
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_OutrasIPI'
        DataSource = dmFiscal.dsNotasConsumoItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object StaticText21: TStaticText
        Left = 5
        Top = 84
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Isentas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object DBEdit17: TDBEdit
        Left = 96
        Top = 84
        Width = 91
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_IsentasIPI'
        DataSource = dmFiscal.dsNotasConsumoItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
    end
    object cCodigo: TDBEdit
      Left = 124
      Top = 16
      Width = 72
      Height = 21
      DataField = 'Produto'
      DataSource = dmFiscal.dsNotasConsumoItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
    end
    object DBEdit11: TDBEdit
      Left = 198
      Top = 39
      Width = 83
      Height = 21
      DataField = 'NCM'
      DataSource = Dados.dsNCM
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
    end
    object StaticText13: TStaticText
      Left = 165
      Top = 39
      Width = 31
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'NCM'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 458
    Width = 614
    Height = 35
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object bSair: TButton
      Left = 553
      Top = 2
      Width = 62
      Height = 32
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      Left = 1
      Top = 2
      Width = 369
      Height = 32
      Cursor = crHandPoint
      DataSource = dmFiscal.dsNotasConsumoItens
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
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
      ShowHint = True
      TabOrder = 1
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
  end
  object TabEnter1: TTabEnter
    ClassNotAffected.Strings = (
      'TMemo'
      'TButton'
      'TBitBtn')
    Enabled = True
    Left = 440
    Top = 465
  end
  object tRegistro: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO NotasConsumoItens'
        '  (Nota, Data_Emissao, Fornecedor, Produto, CST, Unidade, Quanti' +
        'dade, Valor_Unitario, Valor_Total, Desconto, Aliquota_ICMS, Aliq' +
        'uota_IPI, Valor_IPI)'
      'VALUES'
        '  (:Nota, :Data_Emissao, :Fornecedor, :Produto, :CST, :Unidade, ' +
        ':Quantidade, :Valor_Unitario, :Valor_Total, :Desconto, :Aliquota' +
        '_ICMS, :Aliquota_IPI, :Valor_IPI)')
    SQLDelete.Strings = (
      'DELETE FROM NotasConsumoItens'
      'WHERE'
        '  Nota = :Old_Nota AND Data_Emissao = :Old_Data_Emissao AND Forn' +
        'ecedor = :Old_Fornecedor')
    SQLUpdate.Strings = (
      'UPDATE NotasConsumoItens'
      'SET'
        '  Nota = :Nota, Data_Emissao = :Data_Emissao, Fornecedor = :Forn' +
        'ecedor, Produto = :Produto, CST = :CST, Unidade = :Unidade, Quan' +
        'tidade = :Quantidade, Valor_Unitario = :Valor_Unitario, Valor_To' +
        'tal = :Valor_Total, Desconto = :Desconto, Aliquota_ICMS = :Aliqu' +
        'ota_ICMS, Aliquota_IPI = :Aliquota_IPI, Valor_IPI = :Valor_IPI'
      'WHERE'
        '  Nota = :Old_Nota AND Data_Emissao = :Old_Data_Emissao AND Forn' +
        'ecedor = :Old_Fornecedor')
    SQLRefresh.Strings = (
        'SELECT NotasConsumoItens.Nota, NotasConsumoItens.Data_Emissao, N' +
        'otasConsumoItens.Fornecedor, NotasConsumoItens.Produto, NotasCon' +
        'sumoItens.CST, NotasConsumoItens.Unidade, NotasConsumoItens.Quan' +
        'tidade, NotasConsumoItens.Valor_Unitario, NotasConsumoItens.Valo' +
        'r_Total, NotasConsumoItens.Desconto, NotasConsumoItens.Aliquota_' +
        'ICMS, NotasConsumoItens.Aliquota_IPI, NotasConsumoItens.Valor_IP' +
        'I FROM NotasConsumoItens'
        'WHERE NotasConsumoItens.Nota = :Nota AND NotasConsumoItens.Data_' +
        'Emissao = :Data_Emissao AND NotasConsumoItens.Fornecedor = :Forn' +
        'ecedor ')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT MAX(Registro) AS Registro FROM NotasConsumoItens')
    FetchRows = 1
    Left = 405
    Top = 464
    object tRegistroRegistro: TSmallintField
      FieldName = 'Registro'
      ReadOnly = True
    end
  end
end
