object Processo_SimulacaoDI: TProcesso_SimulacaoDI
  Left = 194
  Top = 82
  BorderStyle = bsDialog
  Caption = 'Processo_SimulacaoDI'
  ClientHeight = 585
  ClientWidth = 983
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    983
    585)
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 983
    Height = 46
    Align = alTop
    Stretch = True
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 4
    Width = 177
    Height = 21
    Caption = 'IMPORTA'#199#195'O DE DADOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -17
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ShadowColor = clBlack
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel2: TRxLabel
    Left = 8
    Top = 23
    Width = 265
    Height = 18
    Caption = 'Importa'#231#227'o dos dados da DI do SISCOMEX.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ShadowColor = clBlack
    ShadowPos = spRightBottom
    Transparent = True
  end
  object Image1: TImage
    Left = 942
    Top = 6
    Width = 34
    Height = 33
    Anchors = [akTop, akRight]
    Picture.Data = {
      055449636F6E0000010001002020100000000000E80200001600000028000000
      2000000040000000010004000000000080020000000000000000000000000000
      0000000000000000000080000080000000808000800000008000800080800000
      80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
      FFFFFF00000000000000000000000000000000000FFFFFFFFFFF00000000000B
      3B3B3B300FFFFFFFFFFF000000000003B3B3B3B00F070707070F00000000000B
      77777B300FFFFFFFFFFF000000000003B3B3B3B00F070707070F00000000000B
      3B3B3B300FFFFFFFFFFF000000000003B30000000F077077070F000000000000
      000000000FFFFFFFFFFF000000000000000000000F070707070F000000000000
      000000000FFFFFFFFFFF000000000000000000000F070707070F000000000000
      000000000FFFFFFF0000000000000000000000000F0707070FF000000000000B
      3B3B3B300FFFFFFF0F00000000000003B3B3B3B00FFFFFFF000000000000000B
      3B3B3B30000000000000000000000003B77773B000000000000000000000000B
      3B3B3B30000000000000000000000003B3000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000B3B3B3B3000B3B3B3B3000B
      3B3B3B3003B3B3B3B0003B3B3B3B0003B777B3B00B37777B3000B37777B3000B
      3B3B3B3003B3B3B3B0003B3B3B3B0003B77773B00B3B3B3B3000B3B3B3B3000B
      3B3B3B3003B3000000003B3000000003B3000000000000000000000000000000
      000000000007FC0000077C000006FC00000404000006FC0000077C000007FC00
      0007FE3F0007FFFF00073FFF0004FFFF00047FFF00059C00000EE400001FFC00
      00387C000079FC00FFFA7C00EF0BBC00C73FCE3FAB4FF7FFEF77F9FFEFFBFEFF
      FFFFFFFF00200400002004000020040000200400002004000020040000200400
      8FF1FE3F}
  end
  object Panel1: TPanel
    Left = 0
    Top = 555
    Width = 983
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      983
      30)
    object bCotacao: TBitBtn
      Left = 356
      Top = 1
      Width = 75
      Height = 28
      Hint = '   Abre a tela de cadastro de cota'#231#245'es de moedas.   '
      Caption = 'Co&ta'#231#227'o'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bCotacaoClick
    end
    object bImportar: TButton
      Left = 281
      Top = 1
      Width = 75
      Height = 28
      Hint = '   Importa as DI'#180'S selecionadas do SISCOMEX para o sistema.   '
      Caption = 'Im&portar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bImportarClick
    end
    object bVerificar: TButton
      Left = 206
      Top = 1
      Width = 75
      Height = 28
      Hint = '   Executa uma verifica'#231#227'o de dados para importa'#231#227'o.   '
      Caption = '&Verificar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bVerificarClick
    end
    object bSair: TButton
      Left = 913
      Top = 1
      Width = 69
      Height = 28
      Hint = '   Fecha a janela atual e cancela os processos pendentes.   '
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      Left = 2
      Top = 1
      Width = 204
      Height = 28
      DataSource = dsSISCOMEX_DI
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 4
      OnClick = NavegaClick
    end
    object lStatus: TStaticText
      Left = 436
      Top = 6
      Width = 469
      Height = 18
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Modalidade'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Visible = False
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
  end
  object Pasta: TPageControl
    Left = 4
    Top = 55
    Width = 975
    Height = 484
    ActivePage = TabSheet1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabHeight = 22
    TabOrder = 1
    TabWidth = 110
    OnChange = PastaChange
    object TabSheet1: TTabSheet
      Caption = '&Declara'#231#245'es'
      object Panel3: TPanel
        Left = 0
        Top = 1
        Width = 975
        Height = 194
        BevelOuter = bvLowered
        TabOrder = 0
        object StaticText5: TStaticText
          Left = 4
          Top = 4
          Width = 94
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'N'#186' do Processo'
          Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
          Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 20
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
        end
        object StaticText1: TStaticText
          Left = 4
          Top = 50
          Width = 94
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Modalidade'
          Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
          Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 21
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
        end
        object cProcesso: TComboBox
          Left = 100
          Top = 4
          Width = 140
          Height = 21
          CharCase = ecUpperCase
          DropDownCount = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ItemHeight = 13
          ParentFont = False
          TabOrder = 0
          OnChange = cProcessoChange
          OnExit = cProcessoExit
        end
        object StaticText9: TStaticText
          Left = 321
          Top = 27
          Width = 88
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tipo Mercadoria'
          Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
          Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 22
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
        end
        object cTipoMercadoria: TDBLookupComboBox
          Left = 411
          Top = 27
          Width = 268
          Height = 21
          DropDownRows = 11
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsTipoItem
          ParentFont = False
          TabOrder = 3
        end
        object StaticText10: TStaticText
          Left = 4
          Top = 73
          Width = 94
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'UF Importa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
          Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 23
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
        end
        object StaticText11: TStaticText
          Left = 321
          Top = 50
          Width = 88
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'UF Desembara'#231'o'
          Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
          Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 24
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
        end
        object cEstado: TDBLookupComboBox
          Left = 100
          Top = 73
          Width = 213
          Height = 21
          DropDownRows = 11
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Nome'
          ListFieldIndex = 1
          ListSource = Dados.dsEstados
          ParentFont = False
          TabOrder = 6
          OnKeyDown = cEstadoKeyDown
        end
        object StaticText8: TStaticText
          Left = 321
          Top = 4
          Width = 88
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Incentivo Fiscal'
          Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
          Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 25
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
        end
        object cModalidade: TDBLookupComboBox
          Left = 100
          Top = 50
          Width = 213
          Height = 21
          DropDownRows = 11
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsTiposProcesso
          ParentFont = False
          TabOrder = 4
          OnKeyDown = cEstadoKeyDown
        end
        object cUFDesembaraco: TDBLookupComboBox
          Left = 411
          Top = 50
          Width = 268
          Height = 21
          DropDownRows = 11
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Nome'
          ListFieldIndex = 1
          ListSource = dstUFDesemb
          ParentFont = False
          TabOrder = 5
          OnKeyDown = cEstadoKeyDown
        end
        object cIncentivo: TDBLookupComboBox
          Left = 411
          Top = 4
          Width = 268
          Height = 21
          DropDownRows = 11
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Nome'
          ListField = 'Estado;Nome'
          ListFieldIndex = 1
          ListSource = Dados.dsIncentivosFiscais
          ParentFont = False
          TabOrder = 2
        end
        object cValoracao: TCheckBox
          Left = 6
          Top = 168
          Width = 180
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = 'Remover valora'#231#227'o do valor FOB'
          ParentBiDiMode = False
          TabOrder = 17
        end
        object StaticText14: TStaticText
          Left = 4
          Top = 119
          Width = 94
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Redu'#231#227'o PIS'
          Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
          Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 26
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
        end
        object StaticText15: TStaticText
          Left = 4
          Top = 142
          Width = 94
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Redu'#231#227'o COFINS'
          Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
          Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 27
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
        end
        object cReducaoPIS: TCurrencyEdit
          Left = 100
          Top = 119
          Width = 62
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object cReducaoCOFINS: TCurrencyEdit
          Left = 100
          Top = 142
          Width = 62
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
        end
        object cDA: TCheckBox
          Left = 198
          Top = 168
          Width = 165
          Height = 18
          BiDiMode = bdLeftToRight
          Caption = 'Desembara'#231'o Aduaneiro (DA)'
          ParentBiDiMode = False
          TabOrder = 18
        end
        object cEntreposto: TCheckBox
          Left = 243
          Top = 5
          Width = 75
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = 'Entreposto'
          ParentBiDiMode = False
          TabOrder = 1
        end
        object StaticText17: TStaticText
          Left = 4
          Top = 96
          Width = 94
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Exportador'
          Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
          Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 28
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
        end
        object cExportador: TRxDBLookupCombo
          Left = 100
          Top = 96
          Width = 485
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo; Nome'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsFornecedores
          ParentFont = False
          TabOrder = 8
        end
        object cPeso: TRadioGroup
          Left = 682
          Top = 112
          Width = 283
          Height = 77
          Caption = 'Peso Unit'#225'rio Produto'
          Items.Strings = (
            'Ratear da Adi'#231#227'o'
            'Utilizar do cadastro de Produtos'
            'Utilizar dos itens da Fatura')
          TabOrder = 19
        end
        object GroupBox1: TGroupBox
          Left = 682
          Top = 2
          Width = 283
          Height = 105
          Caption = 'Taxas'
          TabOrder = 29
          object cTaxas: TMemo
            Left = 3
            Top = 13
            Width = 276
            Height = 88
            BorderStyle = bsNone
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clLime
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            Lines.Strings = (
              'EURO................EUR 2,48770(FOB)'
              'REAL/BRASIL......... R$ 1,00000'
              'REAL/BRASIL......... R$ 1,00000(AD.VAL)')
            ParentFont = False
            TabOrder = 0
            WordWrap = False
          end
        end
        object StaticText18: TStaticText
          Left = 165
          Top = 119
          Width = 104
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'PIS NF Entrada'
          Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
          Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 30
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
        end
        object cPISNota: TCurrencyEdit
          Left = 271
          Top = 119
          Width = 62
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnExit = cPISNotaExit
        end
        object StaticText19: TStaticText
          Left = 165
          Top = 142
          Width = 104
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'COFINS NF Entrada'
          Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
          Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 31
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
        end
        object cCOFINSNota: TCurrencyEdit
          Left = 271
          Top = 142
          Width = 62
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
          OnExit = cCOFINSNotaExit
        end
        object StaticText20: TStaticText
          Left = 321
          Top = 73
          Width = 88
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Origem Mercad.'
          Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
          Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 32
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
        end
        object cOrigem: TRxDBLookupCombo
          Left = 411
          Top = 73
          Width = 268
          Height = 21
          DropDownCount = 8
          DropDownWidth = 650
          DisplayAllFields = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo; Descricao'
          LookupSource = Dados.dsCSTTabelaA
          ParentFont = False
          TabOrder = 7
        end
        object StaticText21: TStaticText
          Left = 499
          Top = 119
          Width = 113
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Aliq.Majorada PIS'
          Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
          Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 33
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
        end
        object cPISMajorado: TCurrencyEdit
          Left = 614
          Top = 119
          Width = 62
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
        end
        object StaticText22: TStaticText
          Left = 499
          Top = 142
          Width = 113
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Aliq.Majorada COFINS'
          Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
          Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 34
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
        end
        object cCOFINSMajorado: TCurrencyEdit
          Left = 614
          Top = 142
          Width = 62
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
        end
        object StaticText23: TStaticText
          Left = 336
          Top = 119
          Width = 96
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'PIS NF Sa'#237'da'
          Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
          Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 35
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
        end
        object cPISNotaSaida: TCurrencyEdit
          Left = 434
          Top = 119
          Width = 62
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object StaticText24: TStaticText
          Left = 336
          Top = 142
          Width = 96
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'COFINS NF Sa'#237'da'
          Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
          Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 36
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
        end
        object cCOFINSNotaSaida: TCurrencyEdit
          Left = 434
          Top = 142
          Width = 62
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
        end
        object cSuspensao: TCheckBox
          Left = 510
          Top = 168
          Width = 139
          Height = 18
          BiDiMode = bdLeftToRight
          Caption = 'Suspens'#227'o de Impostos'
          ParentBiDiMode = False
          TabOrder = 37
        end
        object CheckBox1: TCheckBox
          Left = 374
          Top = 168
          Width = 126
          Height = 18
          BiDiMode = bdLeftToRight
          Caption = 'Admiss'#227'o Tempor'#225'ria'
          ParentBiDiMode = False
          TabOrder = 38
        end
      end
      object Grade: TRxDBGrid
        Left = 0
        Top = 216
        Width = 313
        Height = 233
        Ctl3D = True
        DataSource = dsSISCOMEX_DI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NR_DECLARACAO_IMP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'DI'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 88
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Data'
            Title.Alignment = taCenter
            Title.Caption = 'Registro'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QT_ADICAO_DI'
            Title.Alignment = taCenter
            Title.Caption = 'Adi'#231#245'es'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 56
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'IN_OPERACAO_FUNDAP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Oper.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      object cTexto: TDBMemo
        Left = 314
        Top = 216
        Width = 652
        Height = 233
        Ctl3D = True
        DataField = 'NM_TEXTO_IMP'
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 2
        WantTabs = True
        WordWrap = False
      end
      object StaticText6: TStaticText
        Left = 0
        Top = 198
        Width = 313
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Declara'#231#245'es dispon'#237'veis no SISCOMEX'
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
      object StaticText7: TStaticText
        Left = 314
        Top = 198
        Width = 653
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Informa'#231#245'es complementares da declara'#231#227'o'
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
    end
    object TabSheet3: TTabSheet
      Caption = '&Itens da Adi'#231#227'o'
      ImageIndex = 2
      object GradeItens: TRxDBGrid
        Left = 1
        Top = 0
        Width = 965
        Height = 449
        DataSource = dsSISCOMEX_ADICAO
        Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        PopupMenu = PopupMenu1
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        ShowGlyphs = False
        Columns = <
          item
            Expanded = False
            FieldName = 'NR_OP_IMP'
            Title.Caption = 'AD'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 25
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCM'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Dumping'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TX_DESC_DET_MERC'
            Title.Alignment = taCenter
            Title.Caption = 'Adi'#231#245'es da DI (Descri'#231#227'o do Produto no SISCOMEX)'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 787
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Anti-Dumpin&g'
      ImageIndex = 4
      object cDumping: TCheckListBox
        Left = 0
        Top = 0
        Width = 966
        Height = 451
        Color = clWhite
        Columns = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ItemHeight = 13
        Items.Strings = (
          'EFWER WEQRWEQRWQERQQEWR FWEWERQWER QEWR QWERWEQ EWR QWERQEWR W ')
        ParentFont = False
        TabOrder = 0
      end
      object BitBtn1: TBitBtn
        Left = 3
        Top = 505
        Width = 104
        Height = 28
        Hint = 'Seleciona todos os itens.  '
        Caption = 'S&elecionar Todos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 107
        Top = 505
        Width = 104
        Height = 28
        Hint = '   Desmarca todos os itens.  '
        Caption = '&Desmarcar Todos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = BitBtn2Click
      end
      object BitBtn3: TBitBtn
        Left = 211
        Top = 505
        Width = 104
        Height = 28
        Hint = '   Selecionar os itens pelo n'#250'mero de da adi'#231#227'o.  '
        Caption = 'Selecionar &Adi'#231#227'o'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = BitBtn3Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Lista de &Erros'
      ImageIndex = 1
      object cErros: TMemo
        Left = 2
        Top = 2
        Width = 963
        Height = 449
        Color = 13303807
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        WordWrap = False
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Lista de &Avisos'
      ImageIndex = 3
      object cAvisos: TMemo
        Left = 2
        Top = 2
        Width = 963
        Height = 449
        Color = 13303807
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        WantReturns = False
        WordWrap = False
      end
    end
  end
  object dsSISCOMEX_DI: TDataSource
    DataSet = SISCOMEX_DI
    Left = 263
    Top = 272
  end
  object SISCOMEX_DI: TADOTable
    Connection = SISCOMEX
    CursorType = ctStatic
    AfterScroll = SISCOMEX_DIAfterScroll
    OnCalcFields = SISCOMEX_DICalcFields
    IndexFieldNames = 'DT_REGISTRO_DI'
    TableName = 'DECLARA'#199#195'O_IMPORTA'#199#195'O'
    Left = 234
    Top = 272
    object SISCOMEX_DINR_DECLARACAO_IMP: TWideStringField
      FieldName = 'NR_DECLARACAO_IMP'
      EditMask = '##/#######-#;0; '
      Size = 10
    end
    object SISCOMEX_DIDT_REGISTRO_DI: TWideStringField
      DisplayWidth = 10
      FieldName = 'DT_REGISTRO_DI'
      EditMask = '####/##/##;0; '
      Size = 8
    end
    object SISCOMEX_DICD_VIA_TRANSP_CARG: TWideStringField
      FieldName = 'CD_VIA_TRANSP_CARG'
      Size = 2
    end
    object SISCOMEX_DIPB_CARGA: TBCDField
      FieldName = 'PB_CARGA'
      Precision = 19
    end
    object SISCOMEX_DIPL_CARGA: TBCDField
      FieldName = 'PL_CARGA'
      Precision = 19
    end
    object SISCOMEX_DINM_RECINTO_ALFAND: TWideStringField
      FieldName = 'NM_RECINTO_ALFAND'
      Size = 60
    end
    object SISCOMEX_DINR_IMPORTADOR: TWideStringField
      FieldName = 'NR_IMPORTADOR'
      EditMask = '##.###.###/####-##;0; '
      Size = 14
    end
    object SISCOMEX_DINM_VEICULO_TRANSP: TWideStringField
      FieldName = 'NM_VEICULO_TRANSP'
      Size = 30
    end
    object SISCOMEX_DINM_LOCAL_EMBARQUE: TWideStringField
      FieldName = 'NM_LOCAL_EMBARQUE'
      Size = 50
    end
    object SISCOMEX_DICD_URF_ENTR_CARGA: TWideStringField
      FieldName = 'CD_URF_ENTR_CARGA'
      Size = 7
    end
    object SISCOMEX_DINM_URF_ENTR_CARGA: TWideStringField
      FieldName = 'NM_URF_ENTR_CARGA'
      Size = 60
    end
    object SISCOMEX_DINR_DCTO_CARGA: TWideStringField
      FieldName = 'NR_DCTO_CARGA'
      Size = 18
    end
    object SISCOMEX_DINM_TRANSPORTADOR: TWideStringField
      FieldName = 'NM_TRANSPORTADOR'
      Size = 60
    end
    object SISCOMEX_DIDT_EMBARQUE: TWideStringField
      FieldName = 'DT_EMBARQUE'
      Size = 8
    end
    object SISCOMEX_DIDT_CHEGADA_CARGA: TWideStringField
      FieldName = 'DT_CHEGADA_CARGA'
      Size = 8
    end
    object SISCOMEX_DIIN_OPERACAO_FUNDAP: TBooleanField
      FieldName = 'IN_OPERACAO_FUNDAP'
      DisplayValues = 'FUNDAP; N'#195'O FUNDAP'
    end
    object SISCOMEX_DIData_Chegada: TDateField
      FieldKind = fkCalculated
      FieldName = 'Data_Chegada'
      Calculated = True
    end
    object SISCOMEX_DIED_UF_IMPORTADOR: TWideStringField
      FieldName = 'ED_UF_IMPORTADOR'
      Size = 2
    end
    object SISCOMEX_DIIN_DI_OK: TBooleanField
      FieldName = 'IN_DI_OK'
    end
    object SISCOMEX_DIQT_ADICAO_DI: TWideStringField
      FieldName = 'QT_ADICAO_DI'
      Size = 3
    end
    object SISCOMEX_DINM_TIPO_DECLARACAO: TWideStringField
      FieldName = 'NM_TIPO_DECLARACAO'
      Size = 60
    end
    object SISCOMEX_DIData: TDateField
      FieldKind = fkCalculated
      FieldName = 'Data'
      Calculated = True
    end
    object SISCOMEX_DIData_BL: TDateField
      FieldKind = fkCalculated
      FieldName = 'Data_BL'
      Calculated = True
    end
    object SISCOMEX_DINM_IMPORTADOR: TWideStringField
      FieldName = 'NM_IMPORTADOR'
      Size = 60
    end
  end
  object SISCOMEX: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\SI' +
      'SCOPRD\import.prd\CONS_IMP.MDB;Mode=ReadWrite;Persist Security I' +
      'nfo=False;Jet OLEDB:System database="";Jet OLEDB:Registry Path="' +
      '";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=3;Jet OLE' +
      'DB:Database Locking Mode=0;Jet OLEDB:Global Partial Bulk Ops=2;J' +
      'et OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Passw' +
      'ord="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt ' +
      'Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet ' +
      'OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False;'
    LoginPrompt = False
    Mode = cmReadWrite
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 176
    Top = 272
  end
  object SISCOMEX_CI: TADOTable
    Connection = SISCOMEX
    CursorType = ctStatic
    OnCalcFields = SISCOMEX_CICalcFields
    IndexFieldNames = 'NR_DECLARACAO_IMP'
    MasterFields = 'NR_DECLARACAO_IMP'
    MasterSource = dsSISCOMEX_DI
    TableName = 'DECLARA'#199#195'O_DESPACHO'
    Left = 293
    Top = 272
    object SISCOMEX_CINR_DECLARACAO_IMP: TWideStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object SISCOMEX_CIDT_RECEPCAO: TWideStringField
      FieldName = 'DT_RECEPCAO'
      Size = 8
    end
    object SISCOMEX_CIDT_DESEMBARACO: TWideStringField
      FieldName = 'DT_DESEMBARACO'
      Size = 8
    end
    object SISCOMEX_CIData: TDateField
      FieldKind = fkCalculated
      FieldName = 'Data'
      Calculated = True
    end
  end
  object dsSISCOMEX_CI: TDataSource
    DataSet = SISCOMEX_CI
    Left = 322
    Top = 272
  end
  object SISCOMEX_TEXTO: TADOTable
    Connection = SISCOMEX
    CursorType = ctStatic
    OnCalcFields = SISCOMEX_CICalcFields
    IndexFieldNames = 'NR_DECLARACAO_IMP'
    MasterFields = 'NR_DECLARACAO_IMP'
    MasterSource = dsSISCOMEX_DI
    TableName = 'DECLARA'#199#195'O_TEXTOS_COMPL'
    Left = 351
    Top = 272
    object SISCOMEX_TEXTONR_DECLARACAO_IMP: TWideStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object SISCOMEX_TEXTONR_SEQ_INF_COMPL: TWordField
      FieldName = 'NR_SEQ_INF_COMPL'
    end
    object SISCOMEX_TEXTONR_SEQ_PRODUTO: TFloatField
      FieldName = 'NR_SEQ_PRODUTO'
    end
    object SISCOMEX_TEXTONM_TEXTO_IMP: TMemoField
      FieldName = 'NM_TEXTO_IMP'
      BlobType = ftMemo
    end
  end
  object DataSource1: TDataSource
    DataSet = SISCOMEX_TEXTO
    Left = 380
    Top = 272
  end
  object SISCOMEX_ADICAO: TADOTable
    Connection = SISCOMEX
    CursorType = ctStatic
    AfterScroll = SISCOMEX_ADICAOAfterScroll
    OnCalcFields = SISCOMEX_CICalcFields
    IndexFieldNames = 'NR_DECLARACAO_IMP'
    TableName = 'OP_ADI'#199#195'O_DETALHE_MERCADORIA'
    Left = 292
    Top = 301
    object SISCOMEX_ADICAONR_DECLARACAO_IMP: TWideStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object SISCOMEX_ADICAONR_OP_IMP: TWideStringField
      FieldName = 'NR_OP_IMP'
      Size = 3
    end
    object SISCOMEX_ADICAOQT_MERC_UN_COMERC: TFloatField
      FieldName = 'QT_MERC_UN_COMERC'
    end
    object SISCOMEX_ADICAOTX_DESC_DET_MERC: TMemoField
      FieldName = 'TX_DESC_DET_MERC'
      OnGetText = SISCOMEX_ADICAOTX_DESC_DET_MERCGetText
      BlobType = ftMemo
    end
    object SISCOMEX_ADICAOVL_UNID_COND_VENDA: TFloatField
      FieldName = 'VL_UNID_COND_VENDA'
    end
    object SISCOMEX_ADICAONCM: TStringField
      FieldKind = fkLookup
      FieldName = 'NCM'
      LookupDataSet = SISCOMEX_AdicaoImp
      LookupKeyFields = 'NR_DECLARACAO_IMP; NR_OP_IMP'
      LookupResultField = 'CD_MERCADORIA_NCM'
      KeyFields = 'NR_DECLARACAO_IMP; NR_OP_IMP'
      EditMask = '9999.99.99;0; '
      Size = 8
      Lookup = True
    end
    object SISCOMEX_ADICAONM_UN_MEDID_COMERC: TWideStringField
      FieldName = 'NM_UN_MEDID_COMERC'
    end
    object SISCOMEX_ADICAONR_SEQ_DETALHE: TWordField
      FieldName = 'NR_SEQ_DETALHE'
    end
  end
  object dsSISCOMEX_ADICAO: TDataSource
    DataSet = SISCOMEX_ADICAO
    Left = 322
    Top = 301
  end
  object SISCOMEX_Valores: TADOTable
    Connection = SISCOMEX
    CursorType = ctStatic
    OnCalcFields = SISCOMEX_CICalcFields
    IndexFieldNames = 'NR_DECLARACAO_IMP'
    MasterFields = 'NR_DECLARACAO_IMP'
    MasterSource = dsSISCOMEX_DI
    TableName = 'DECLARA'#199#195'O_VALORES_TOTAIS'
    Left = 409
    Top = 272
    object SISCOMEX_ValoresNR_DECLARACAO_IMP: TWideStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object SISCOMEX_ValoresVL_TOTAL_FRETE_MN: TBCDField
      FieldName = 'VL_TOTAL_FRETE_MN'
      Precision = 19
    end
    object SISCOMEX_ValoresVL_TOTAL_MLE_MN: TBCDField
      FieldName = 'VL_TOTAL_MLE_MN'
      Precision = 19
    end
    object SISCOMEX_ValoresVL_TOT_SEGURO_MNEG: TBCDField
      FieldName = 'VL_TOT_SEGURO_MNEG'
      Precision = 19
    end
    object SISCOMEX_ValoresVL_TOTAL_SEG_MN: TBCDField
      FieldName = 'VL_TOTAL_SEG_MN'
      Precision = 19
    end
    object SISCOMEX_ValoresCD_MOEDA_FRETE: TWideStringField
      FieldName = 'CD_MOEDA_FRETE'
      Size = 3
    end
    object SISCOMEX_ValoresCD_MOEDA_SEGURO: TWideStringField
      FieldName = 'CD_MOEDA_SEGURO'
      Size = 3
    end
    object SISCOMEX_ValoresCD_MOEDA_DESPESAS: TWideStringField
      FieldName = 'CD_MOEDA_DESPESAS'
      Size = 3
    end
    object SISCOMEX_ValoresVL_FRETE_TNAC_MNEG: TBCDField
      FieldName = 'VL_FRETE_TNAC_MNEG'
      Precision = 19
    end
    object SISCOMEX_ValoresVL_TOTAL_II_A_REC: TBCDField
      FieldName = 'VL_TOTAL_II_A_REC'
      Precision = 19
    end
    object SISCOMEX_ValoresVL_TOTAL_IPI_A_REC: TBCDField
      FieldName = 'VL_TOTAL_IPI_A_REC'
      Precision = 19
    end
    object SISCOMEX_ValoresVL_TOTAL_MLE_DOLAR: TBCDField
      FieldName = 'VL_TOTAL_MLE_DOLAR'
      Precision = 19
    end
  end
  object dsSISCOMEX_Valores: TDataSource
    DataSet = SISCOMEX_Valores
    Left = 438
    Top = 272
  end
  object SISCOMEX_Tributos: TADOTable
    Connection = SISCOMEX
    CursorType = ctStatic
    OnCalcFields = SISCOMEX_CICalcFields
    IndexFieldNames = 'NR_DECLARACAO_IMP'
    MasterFields = 'NR_DECLARACAO_IMP'
    MasterSource = dsSISCOMEX_DI
    TableName = 'DECLARA'#199#195'O_PGTO_TRIBUTOS'
    Left = 467
    Top = 272
    object SISCOMEX_TributosNR_DECLARACAO_IMP: TWideStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object SISCOMEX_TributosCD_RECEITA_PGTO: TWideStringField
      FieldName = 'CD_RECEITA_PGTO'
      Size = 4
    end
    object SISCOMEX_TributosNM_RECEITA_PGTO: TWideStringField
      FieldName = 'NM_RECEITA_PGTO'
      Size = 60
    end
    object SISCOMEX_TributosCD_BANCO_PGTO_TRIB: TWideStringField
      FieldName = 'CD_BANCO_PGTO_TRIB'
      Size = 3
    end
    object SISCOMEX_TributosNR_AGENC_PGTO_TRIB: TWideStringField
      FieldName = 'NR_AGENC_PGTO_TRIB'
      Size = 5
    end
    object SISCOMEX_TributosVL_TRIBUTO_PAGO: TBCDField
      FieldName = 'VL_TRIBUTO_PAGO'
      Precision = 19
    end
    object SISCOMEX_TributosVL_SOMADO: TBCDField
      FieldName = 'VL_SOMADO'
      Precision = 19
    end
    object SISCOMEX_TributosCD_TIPO_PGTO_TRIB: TWideStringField
      FieldName = 'CD_TIPO_PGTO_TRIB'
      Size = 1
    end
    object SISCOMEX_TributosNR_CONTA_PGTO_TRIB: TWideStringField
      FieldName = 'NR_CONTA_PGTO_TRIB'
      Size = 19
    end
  end
  object dsSISCOMEX_Tributos: TDataSource
    DataSet = SISCOMEX_Tributos
    Left = 496
    Top = 272
  end
  object SISCOMEX_AdicaoImp: TADOTable
    Connection = SISCOMEX
    CursorType = ctStatic
    OnCalcFields = SISCOMEX_CICalcFields
    IndexFieldNames = 'NR_DECLARACAO_IMP;NR_OP_IMP'
    TableName = 'OP_ADI'#199#195'O_DE_IMPORTA'#199#195'O'
    Left = 351
    Top = 301
    object SISCOMEX_AdicaoImpCD_INCOTERMS_VENDA: TWideStringField
      FieldName = 'CD_INCOTERMS_VENDA'
      Size = 3
    end
    object SISCOMEX_AdicaoImpNM_MODALIDADE_PGTO: TWideStringField
      FieldName = 'NM_MODALIDADE_PGTO'
      Size = 60
    end
    object SISCOMEX_AdicaoImpVL_ALIQ_ICMS: TBCDField
      FieldName = 'VL_ALIQ_ICMS'
      Precision = 19
    end
    object SISCOMEX_AdicaoImpCD_PAIS_ORIG_MERC: TWideStringField
      FieldName = 'CD_PAIS_ORIG_MERC'
      Size = 3
    end
    object SISCOMEX_AdicaoImpNR_DECLARACAO_IMP: TWideStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object SISCOMEX_AdicaoImpVL_MERC_EMB_DOLAR: TBCDField
      FieldName = 'VL_MERC_EMB_DOLAR'
      Precision = 19
    end
    object SISCOMEX_AdicaoImpCD_MOEDA_NEGOCIADA: TWideStringField
      FieldName = 'CD_MOEDA_NEGOCIADA'
      Size = 3
    end
    object SISCOMEX_AdicaoImpVL_FRETE_MERC_MNEG: TBCDField
      FieldName = 'VL_FRETE_MERC_MNEG'
      Precision = 19
    end
    object SISCOMEX_AdicaoImpCD_MD_FRETE_MERC: TWideStringField
      FieldName = 'CD_MD_FRETE_MERC'
      Size = 3
    end
    object SISCOMEX_AdicaoImpCD_MOEDA_SEG_MERC: TWideStringField
      FieldName = 'CD_MOEDA_SEG_MERC'
      Size = 3
    end
    object SISCOMEX_AdicaoImpVL_SEG_MERC_DOLAR: TBCDField
      FieldName = 'VL_SEG_MERC_DOLAR'
      Precision = 19
    end
    object SISCOMEX_AdicaoImpNM_UN_ESTATISTICA: TWideStringField
      FieldName = 'NM_UN_ESTATISTICA'
      Size = 60
    end
    object SISCOMEX_AdicaoImpCD_MERCADORIA_NCM: TWideStringField
      FieldName = 'CD_MERCADORIA_NCM'
      Size = 8
    end
    object SISCOMEX_AdicaoImpPL_MERCADORIA: TFloatField
      FieldName = 'PL_MERCADORIA'
    end
    object SISCOMEX_AdicaoImpNM_MERCADORIA_NCM: TWideStringField
      FieldName = 'NM_MERCADORIA_NCM'
      Size = 60
    end
    object SISCOMEX_AdicaoImpNM_FORN_ESTR: TWideStringField
      FieldName = 'NM_FORN_ESTR'
      Size = 60
    end
    object SISCOMEX_AdicaoImpED_LOGR_FORN_ESTR: TWideStringField
      FieldName = 'ED_LOGR_FORN_ESTR'
      Size = 40
    end
    object SISCOMEX_AdicaoImpED_NR_FORN_ESTR: TWideStringField
      FieldName = 'ED_NR_FORN_ESTR'
      Size = 6
    end
    object SISCOMEX_AdicaoImpED_COMPL_FORN_ESTR: TWideStringField
      FieldName = 'ED_COMPL_FORN_ESTR'
      Size = 21
    end
    object SISCOMEX_AdicaoImpED_CIDAD_FORN_ESTR: TWideStringField
      FieldName = 'ED_CIDAD_FORN_ESTR'
      Size = 25
    end
    object SISCOMEX_AdicaoImpCD_PAIS_AQUIS_MERC: TWideStringField
      FieldName = 'CD_PAIS_AQUIS_MERC'
      Size = 3
    end
    object SISCOMEX_AdicaoImpNR_OP_IMP: TWideStringField
      FieldName = 'NR_OP_IMP'
      Size = 3
    end
    object SISCOMEX_AdicaoImpED_ESTAD_FORN_ESTR: TWideStringField
      FieldName = 'ED_ESTAD_FORN_ESTR'
      Size = 25
    end
    object SISCOMEX_AdicaoImpQT_PERIOD_PGTO_360: TWideStringField
      FieldName = 'QT_PERIOD_PGTO_360'
      Size = 3
    end
    object SISCOMEX_AdicaoImpVL_MERC_COND_VENDA: TBCDField
      FieldName = 'VL_MERC_COND_VENDA'
      Precision = 19
    end
    object SISCOMEX_AdicaoImpVL_MERC_VENDA_MN: TBCDField
      FieldName = 'VL_MERC_VENDA_MN'
      Precision = 19
    end
    object SISCOMEX_AdicaoImpVL_SEG_MERC_MN: TBCDField
      FieldName = 'VL_SEG_MERC_MN'
      Precision = 19
    end
    object SISCOMEX_AdicaoImpNM_FABRICANTE_MERC: TWideStringField
      FieldName = 'NM_FABRICANTE_MERC'
      Size = 60
    end
    object SISCOMEX_AdicaoImpED_LOGR_FABRIC: TWideStringField
      FieldName = 'ED_LOGR_FABRIC'
      Size = 40
    end
    object SISCOMEX_AdicaoImpED_NR_FABRIC: TWideStringField
      FieldName = 'ED_NR_FABRIC'
      Size = 6
    end
    object SISCOMEX_AdicaoImpED_COMPL_FABRIC: TWideStringField
      FieldName = 'ED_COMPL_FABRIC'
      Size = 21
    end
    object SISCOMEX_AdicaoImpED_ESTADO_FABRIC: TWideStringField
      FieldName = 'ED_ESTADO_FABRIC'
      Size = 25
    end
    object SISCOMEX_AdicaoImpED_CIDAD_FABRIC: TWideStringField
      FieldName = 'ED_CIDAD_FABRIC'
      Size = 25
    end
  end
  object dsSISCOMEX_AdicaoImp: TDataSource
    DataSet = SISCOMEX_AdicaoImp
    Left = 380
    Top = 301
  end
  object SISCOMEX_TABELAS: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\SI' +
      'SCOPRD\import.prd\tabsisco.mdb;Mode=Share Deny None;Persist Secu' +
      'rity Info=False;Jet OLEDB:System database="";Jet OLEDB:Registry ' +
      'Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=3;J' +
      'et OLEDB:Database Locking Mode=0;Jet OLEDB:Global Partial Bulk O' +
      'ps=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database' +
      ' Password="";Jet OLEDB:Create System Database=False;Jet OLEDB:En' +
      'crypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact=Fals' +
      'e;Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=F' +
      'alse'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 205
    Top = 272
  end
  object SISCOMEX_ViaTransporte: TADOTable
    Connection = SISCOMEX_TABELAS
    CursorType = ctStatic
    OnCalcFields = SISCOMEX_CICalcFields
    TableName = 'TAB_VIA_TRANSPORTE'
    Left = 525
    Top = 272
    object SISCOMEX_ViaTransporteCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 2
    end
    object SISCOMEX_ViaTransporteDESCRICAO: TWideStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
  end
  object dsSISCOMEX_ViaTransporte: TDataSource
    DataSet = SISCOMEX_ViaTransporte
    Left = 554
    Top = 272
  end
  object SISCOMEX_NCM: TADOTable
    Connection = SISCOMEX_TABELAS
    CursorType = ctStatic
    OnCalcFields = SISCOMEX_CICalcFields
    IndexFieldNames = 'CODIGO'
    MasterFields = 'CD_MERCADORIA_NCM'
    MasterSource = dsSISCOMEX_AdicaoImp
    TableName = 'TAB_NCM'
    Left = 176
    Top = 301
    object SISCOMEX_NCMCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Size = 8
    end
    object SISCOMEX_NCMALIQUOTA_II: TWideStringField
      FieldName = 'ALIQUOTA_II'
      Size = 6
    end
    object SISCOMEX_NCMALIQUOTA_PIS_ADVAL: TWideStringField
      FieldName = 'ALIQUOTA_PIS_ADVAL'
      Size = 6
    end
    object SISCOMEX_NCMALIQUOTA_COFINS_ADVAL: TWideStringField
      FieldName = 'ALIQUOTA_COFINS_ADVAL'
      Size = 6
    end
    object SISCOMEX_NCMALIQUOTA_IPI: TWideStringField
      FieldName = 'ALIQUOTA_IPI'
      Size = 6
    end
  end
  object dsSISCOMEX_NCM: TDataSource
    DataSet = SISCOMEX_NCM
    Left = 205
    Top = 301
  end
  object SISCOMEX_Cotacao: TADOTable
    Connection = SISCOMEX_TABELAS
    CursorType = ctStatic
    OnCalcFields = SISCOMEX_CICalcFields
    TableName = 'TAB_CONVERSAO_CAMBIO'
    Left = 234
    Top = 301
    object SISCOMEX_CotacaoCodigo: TWideStringField
      FieldName = 'Codigo'
      Size = 3
    end
    object SISCOMEX_CotacaoDescricao: TWideStringField
      FieldName = 'Descricao'
      Size = 120
    end
    object SISCOMEX_CotacaoTaxa_Conversao: TWideStringField
      FieldName = 'Taxa_Conversao'
      Size = 9
    end
    object SISCOMEX_CotacaoVigencia_Inicio_Taxa: TWideStringField
      FieldName = 'Vigencia_Inicio_Taxa'
      Size = 10
    end
    object SISCOMEX_CotacaoVigencia_Fim_Taxa: TWideStringField
      FieldName = 'Vigencia_Fim_Taxa'
      Size = 10
    end
  end
  object DataSource2: TDataSource
    DataSet = SISCOMEX_Cotacao
    Left = 263
    Top = 301
  end
  object SISCOMEX_AdicaoTrib: TADOTable
    Connection = SISCOMEX
    CursorType = ctStatic
    OnCalcFields = SISCOMEX_CICalcFields
    IndexFieldNames = 'NR_DECLARACAO_IMP'
    MasterFields = 'NR_DECLARACAO_IMP'
    MasterSource = dsSISCOMEX_DI
    TableName = 'OP_ADI'#199#195'O_TRIB_CALCULADO'
    Left = 409
    Top = 301
    object SISCOMEX_AdicaoTribNR_DECLARACAO_IMP: TWideStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object SISCOMEX_AdicaoTribNR_OP_IMP: TWideStringField
      FieldName = 'NR_OP_IMP'
      Size = 3
    end
    object SISCOMEX_AdicaoTribNR_SEQ_TRIB_CALC: TWordField
      FieldName = 'NR_SEQ_TRIB_CALC'
    end
    object SISCOMEX_AdicaoTribCD_RECEITA_IMPOSTO: TWideStringField
      FieldName = 'CD_RECEITA_IMPOSTO'
      Size = 4
    end
    object SISCOMEX_AdicaoTribVL_IPT_A_RECOLHER: TBCDField
      FieldName = 'VL_IPT_A_RECOLHER'
      Precision = 19
    end
    object SISCOMEX_AdicaoTribPC_ALIQ_NORM_ADVAL: TFloatField
      FieldName = 'PC_ALIQ_NORM_ADVAL'
    end
    object SISCOMEX_AdicaoTribVL_CALC_IPT_ADVAL: TBCDField
      FieldName = 'VL_CALC_IPT_ADVAL'
      Precision = 19
    end
    object SISCOMEX_AdicaoTribPC_ALIQ_ESPEC_IPT: TFloatField
      FieldName = 'PC_ALIQ_ESPEC_IPT'
    end
    object SISCOMEX_AdicaoTribPC_ALIQ_REDUZIDA: TFloatField
      FieldName = 'PC_ALIQ_REDUZIDA'
    end
    object SISCOMEX_AdicaoTribPC_ALIQ_ACOR_TARIF: TFloatField
      FieldName = 'PC_ALIQ_ACOR_TARIF'
    end
    object SISCOMEX_AdicaoTribVL_IMPOSTO_DEVIDO: TBCDField
      FieldName = 'VL_IMPOSTO_DEVIDO'
      Precision = 19
    end
    object SISCOMEX_AdicaoTribVL_BASE_CALC_ADVAL: TBCDField
      FieldName = 'VL_BASE_CALC_ADVAL'
      Precision = 19
    end
  end
  object DataSource3: TDataSource
    DataSet = SISCOMEX_AdicaoTrib
    Left = 438
    Top = 301
  end
  object SISCOMEX_EMBALAGEM: TADOTable
    Connection = SISCOMEX
    CursorType = ctStatic
    OnCalcFields = SISCOMEX_CICalcFields
    IndexFieldNames = 'NR_DECLARACAO_IMP'
    MasterFields = 'NR_DECLARACAO_IMP'
    MasterSource = dsSISCOMEX_DI
    TableName = 'DECLARA'#199#195'O_EMBALAGEM_CARGA'
    Left = 467
    Top = 301
    object SISCOMEX_EMBALAGEMNR_DECLARACAO_IMP: TWideStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object SISCOMEX_EMBALAGEMNR_SEQ_EMBALAGEM: TWordField
      FieldName = 'NR_SEQ_EMBALAGEM'
    end
    object SISCOMEX_EMBALAGEMCD_TIPO_EMBALAGEM: TWideStringField
      FieldName = 'CD_TIPO_EMBALAGEM'
      Size = 2
    end
    object SISCOMEX_EMBALAGEMNM_TIPO_EMBALAGEM: TWideStringField
      FieldName = 'NM_TIPO_EMBALAGEM'
      Size = 60
    end
    object SISCOMEX_EMBALAGEMQT_VOLUME_CARGA: TWideStringField
      FieldName = 'QT_VOLUME_CARGA'
      Size = 5
    end
  end
  object dsSISCOMEX_EMBALAGEM: TDataSource
    DataSet = SISCOMEX_EMBALAGEM
    Left = 496
    Top = 301
  end
  object SISCOMEX_DOC: TADOTable
    Connection = SISCOMEX
    CursorType = ctStatic
    OnCalcFields = SISCOMEX_CICalcFields
    IndexFieldNames = 'NR_DECLARACAO_IMP'
    TableName = 'DECLARA'#199#195'O_DOC_INSTRU'#199#195'O'
    Left = 589
    Top = 272
    object SISCOMEX_DOCNR_DECLARACAO_IMP: TWideStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object SISCOMEX_DOCNR_SEQ_DCTO_INSTR: TWordField
      FieldName = 'NR_SEQ_DCTO_INSTR'
    end
    object SISCOMEX_DOCCD_TIPO_DCTO_INSTR: TWideStringField
      FieldName = 'CD_TIPO_DCTO_INSTR'
      Size = 2
    end
    object SISCOMEX_DOCNR_DCTO_INSTRUCAO: TWideStringField
      FieldName = 'NR_DCTO_INSTRUCAO'
      Size = 25
    end
    object SISCOMEX_DOCNM_DCTO_INSTRUCAO: TWideStringField
      FieldName = 'NM_DCTO_INSTRUCAO'
      Size = 60
    end
    object SISCOMEX_DOCCD_SITU_DCTO_INSTR: TWideStringField
      FieldName = 'CD_SITU_DCTO_INSTR'
      Size = 1
    end
    object SISCOMEX_DOCNM_SITU_DCTO_INSTR: TWideStringField
      FieldName = 'NM_SITU_DCTO_INSTR'
      Size = 60
    end
  end
  object dsSISCOMEX_DOC: TDataSource
    DataSet = SISCOMEX_DOC
    Left = 618
    Top = 272
  end
  object tQtdeAdicao: TADOQuery
    Connection = SISCOMEX
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
        'SELECT SUM(QT_MERC_UN_COMERC) AS Qtde, SUM(VL_UNID_COND_VENDA) A' +
        'S Total_Adicao FROM OP_ADI'#199#195'O_DETALHE_MERCADORIA WHERE NR_OP_IMP' +
        ' = '#39'2'#39)
    Left = 768
    Top = 302
    object tQtdeAdicaoQtde: TFloatField
      FieldName = 'Qtde'
    end
    object tQtdeAdicaoTotal_Adicao: TFloatField
      FieldName = 'Total_Adicao'
    end
  end
  object DataSource4: TDataSource
    DataSet = tQtdeAdicao
    Left = 768
    Top = 273
  end
  object SISCOMEX_AcrescimoValoracao: TADOTable
    Connection = SISCOMEX
    CursorType = ctStatic
    OnCalcFields = SISCOMEX_CICalcFields
    IndexFieldNames = 'NR_DECLARACAO_IMP'
    TableName = 'OP_ADI'#199#195'O_ACR'#201'SCIMO_VALORA'#199#195'O'
    Left = 525
    Top = 301
    object SISCOMEX_AcrescimoValoracaoNR_DECLARACAO_IMP: TWideStringField
      FieldName = 'NR_DECLARACAO_IMP'
      Size = 10
    end
    object SISCOMEX_AcrescimoValoracaoNR_OP_IMP: TWideStringField
      FieldName = 'NR_OP_IMP'
      Size = 3
    end
    object SISCOMEX_AcrescimoValoracaoNR_SEQ_ACRES_VALOR: TWordField
      FieldName = 'NR_SEQ_ACRES_VALOR'
    end
    object SISCOMEX_AcrescimoValoracaoCD_MET_ACRES_VALOR: TWideStringField
      FieldName = 'CD_MET_ACRES_VALOR'
      Size = 3
    end
    object SISCOMEX_AcrescimoValoracaoNM_MET_ACRES_VALOR: TWideStringField
      FieldName = 'NM_MET_ACRES_VALOR'
      Size = 60
    end
    object SISCOMEX_AcrescimoValoracaoVL_ACRESCIMO_MNEG: TBCDField
      FieldName = 'VL_ACRESCIMO_MNEG'
      Precision = 19
    end
    object SISCOMEX_AcrescimoValoracaoCD_MD_NEGOC_ACRES: TWideStringField
      FieldName = 'CD_MD_NEGOC_ACRES'
      Size = 3
    end
    object SISCOMEX_AcrescimoValoracaoVL_ACRESCIMO_MN: TBCDField
      FieldName = 'VL_ACRESCIMO_MN'
      Precision = 19
    end
  end
  object dsValoracao: TDataSource
    DataSet = SISCOMEX_DOC
    Left = 554
    Top = 301
  end
  object tValoracao: TADOQuery
    Connection = SISCOMEX
    CursorType = ctStatic
    Parameters = <>
    Left = 739
    Top = 302
  end
  object tUFDesemb: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT * FROM Estados')
    FetchRows = 1
    Left = 828
    Top = 273
    object tUFDesembCodigo: TStringField
      FieldName = 'Codigo'
      Size = 2
    end
    object tUFDesembNome: TStringField
      FieldName = 'Nome'
      Size = 30
    end
  end
  object dstUFDesemb: TDataSource
    DataSet = tUFDesemb
    Left = 857
    Top = 273
  end
  object dstValoracao: TDataSource
    DataSet = tValoracao
    Left = 739
    Top = 273
  end
  object PopupMenu1: TPopupMenu
    Left = 504
    Top = 8
    object mnBuscar: TMenuItem
      Caption = 'Buscar C'#243'digo no Cadastro de produtos'
      OnClick = mnBuscarClick
    end
    object mnCancelar: TMenuItem
      Caption = '&Cancelar'
    end
  end
  object tNumero: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 108
    Top = 273
  end
end
