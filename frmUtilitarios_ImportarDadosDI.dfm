object Utilitarios_ImportarDadosDI: TUtilitarios_ImportarDadosDI
  Left = 399
  Top = 129
  BorderStyle = bsDialog
  Caption = 'Utilitarios_ImportarDadosDI'
  ClientHeight = 642
  ClientWidth = 980
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 980
    Height = 45
    Align = alTop
    Stretch = True
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 89
    Height = 21
    Caption = 'UTILIT'#193'RIOS'
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
  object RxLabel4: TRxLabel
    Left = 8
    Top = 22
    Width = 255
    Height = 18
    Caption = 'Importar Dados da DI (Antes do Registro)'
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
  object StaticText91: TStaticText
    Left = 6
    Top = 55
    Width = 62
    Height = 20
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'XML da DI'
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
  object Panel2: TPanel
    Left = 0
    Top = 612
    Width = 980
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      980
      30)
    object bSair: TButton
      Left = 901
      Top = 1
      Width = 79
      Height = 29
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bImportar: TButton
      Left = 76
      Top = 1
      Width = 75
      Height = 29
      Hint = '   Importa as DI'#180'S selecionadas do SISCOMEX para o sistema.   '
      Caption = 'Im&portar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bImportarClick
    end
    object bVerificar: TButton
      Left = 1
      Top = 1
      Width = 75
      Height = 29
      Caption = '&Verificar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = bVerificarClick
    end
    object bCotacao: TBitBtn
      Left = 151
      Top = 1
      Width = 74
      Height = 29
      Hint = '   Abre a tela de cadastro de cota'#231#245'es de moedas.   '
      Caption = 'Co&ta'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bCotacaoClick
    end
  end
  object cPasta: TPageControl
    Left = 3
    Top = 86
    Width = 973
    Height = 520
    ActivePage = TabSheet6
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabHeight = 25
    TabOrder = 2
    object TabSheet6: TTabSheet
      Caption = '&Processo'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 963
        Height = 376
        BevelOuter = bvLowered
        ParentBackground = False
        TabOrder = 0
        object Shape1: TShape
          Left = 1
          Top = 1
          Width = 961
          Height = 374
          Align = alClient
          Brush.Color = 12582911
          Pen.Style = psClear
        end
        object StaticText9: TStaticText
          Left = 7
          Top = 7
          Width = 108
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'N'#186' do Processo'
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
        object StaticText13: TStaticText
          Left = 7
          Top = 76
          Width = 108
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Modalidade'
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
        object cProcesso: TComboBox
          Left = 117
          Top = 7
          Width = 158
          Height = 21
          CharCase = ecUpperCase
          DropDownCount = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 15
          ParentFont = False
          TabOrder = 0
          OnExit = cProcessoExit
        end
        object StaticText52: TStaticText
          Left = 7
          Top = 145
          Width = 108
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
          TabOrder = 14
          Transparent = False
          StyleElements = []
        end
        object cTipoMercadoria: TDBLookupComboBox
          Left = 117
          Top = 145
          Width = 515
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
          TabOrder = 5
        end
        object StaticText53: TStaticText
          Left = 7
          Top = 99
          Width = 108
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'UF Importa'#231#227'o'
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
        object StaticText54: TStaticText
          Left = 7
          Top = 168
          Width = 108
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'UF Desembara'#231'o'
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
        object cEstado: TDBLookupComboBox
          Left = 117
          Top = 99
          Width = 515
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
          TabOrder = 3
        end
        object StaticText55: TStaticText
          Left = 7
          Top = 122
          Width = 108
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Incentivo Fiscal'
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
        object cModalidade: TDBLookupComboBox
          Left = 117
          Top = 76
          Width = 515
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
          TabOrder = 2
        end
        object cIncentivo: TDBLookupComboBox
          Left = 117
          Top = 122
          Width = 515
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
          TabOrder = 4
        end
        object StaticText56: TStaticText
          Left = 7
          Top = 213
          Width = 108
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Cliente'
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
        object StaticText57: TStaticText
          Left = 7
          Top = 53
          Width = 108
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Processo Mestre'
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
        object cProcessoMestre: TDBLookupComboBox
          Left = 117
          Top = 53
          Width = 158
          Height = 21
          DropDownRows = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Processo'
          ListField = 'Processo'
          ListSource = dstMestre
          NullValueKey = 46
          ParentFont = False
          TabOrder = 1
        end
        object lBanco: TStaticText
          Left = 7
          Top = 236
          Width = 108
          Height = 21
          Hint = '  Informe o banco para a baixa automatica dos impostos.  '
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 20
          Transparent = False
          StyleElements = []
        end
        object StaticText60: TStaticText
          Left = 7
          Top = 190
          Width = 108
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Exportador'
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
        object cExportador: TRxDBLookupCombo
          Left = 117
          Top = 190
          Width = 515
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
          TabOrder = 6
        end
        object cCliente: TRxDBLookupCombo
          Left = 117
          Top = 213
          Width = 515
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
          LookupSource = Dados.dsClientes
          ParentFont = False
          TabOrder = 7
        end
        object cBanco: TRxDBLookupCombo
          Left = 117
          Top = 236
          Width = 515
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Nome;Conta'
          LookupSource = Dados.dsBancos
          ParentFont = False
          TabOrder = 8
        end
        object GroupBox1: TGroupBox
          Left = 647
          Top = 7
          Width = 310
          Height = 132
          Caption = 'Taxas Utilizadas'
          Color = 12582911
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 22
          object cTaxas: TMemo
            Left = 3
            Top = 14
            Width = 304
            Height = 115
            BorderStyle = bsNone
            Color = 5066061
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -11
            Font.Name = 'Courier New'
            Font.Style = []
            Lines.Strings = (
              'REAL     :REAL/BRASIL......... R$ 1,0000'
              'FRETE    :DOLAR DOS EUA.......USD 2,3983'
              'FOB      :DOLAR DOS EUA.......USD 2,3983'
              'ACR'#201'SCIMO:REAL/BRASIL......... R$ 1,0000'
              'ACR'#201'SCIMO:IUAN RENMIMBI/CHI...CNY 2,5298')
            ParentFont = False
            TabOrder = 0
            WordWrap = False
          end
        end
        object cPeso: TRadioGroup
          Left = 647
          Top = 278
          Width = 207
          Height = 89
          Caption = 'Peso Unit'#225'rio Produto'
          Color = 12582911
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            'Ratear da Adi'#231#227'o'
            'Utilizar do cadastro de Produtos'
            'Utilizar dos itens da Fatura')
          ParentColor = False
          ParentFont = False
          TabOrder = 11
        end
        object GroupBox2: TGroupBox
          Left = 647
          Top = 146
          Width = 207
          Height = 125
          Caption = 'Op'#231#245'es Diversas'
          Color = 12582911
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 10
          object cValoracao: TCheckBox
            Left = 8
            Top = 17
            Width = 179
            Height = 17
            BiDiMode = bdLeftToRight
            Caption = 'Remover valora'#231#227'o do valor FOB'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
            OnClick = cValoracaoClick
          end
          object cDA: TCheckBox
            Left = 8
            Top = 38
            Width = 163
            Height = 18
            BiDiMode = bdLeftToRight
            Caption = 'Desembara'#231'o Aduaneiro (DA)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 1
          end
          object cAdmissao: TCheckBox
            Left = 8
            Top = 59
            Width = 124
            Height = 18
            BiDiMode = bdLeftToRight
            Caption = 'Admiss'#227'o Tempor'#225'ria'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 2
          end
          object cSuspensao: TCheckBox
            Left = 8
            Top = 80
            Width = 136
            Height = 18
            BiDiMode = bdLeftToRight
            Caption = 'Suspens'#227'o de Impostos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 3
          end
          object cEntreposto: TCheckBox
            Left = 8
            Top = 101
            Width = 124
            Height = 17
            BiDiMode = bdLeftToRight
            Caption = 'Entreposto Aduaneiro'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 4
          end
        end
        object GroupBox3: TGroupBox
          Left = 7
          Top = 301
          Width = 379
          Height = 45
          Caption = 'PIS/COFINS (Redu'#231#227'o)'
          Color = 12582911
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 9
          object StaticText58: TStaticText
            Left = 4
            Top = 19
            Width = 108
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Redu'#231#227'o PIS'
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
          object StaticText59: TStaticText
            Left = 196
            Top = 19
            Width = 96
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Redu'#231#227'o COFINS'
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
          object cReducaoPIS: TCurrencyEdit
            Left = 114
            Top = 19
            Width = 80
            Height = 21
            AutoSize = False
            DisplayFormat = ',0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object cReducaoCOFINS: TCurrencyEdit
            Left = 294
            Top = 19
            Width = 80
            Height = 21
            AutoSize = False
            DisplayFormat = ',0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
        object cUFDesembaraco: TDBLookupComboBox
          Left = 117
          Top = 168
          Width = 515
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
          TabOrder = 23
        end
        object cDataReg: TDateEdit
          Left = 267
          Top = 30
          Width = 116
          Height = 21
          CheckOnExit = True
          DialogTitle = 'Selecione a Data'
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
          YearDigits = dyFour
          TabOrder = 24
        end
        object StaticText45: TStaticText
          Left = 7
          Top = 30
          Width = 108
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'DI'
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
        object cDI2: TMaskEdit
          Left = 117
          Top = 30
          Width = 147
          Height = 21
          Enabled = False
          EditMask = '99/9999999-9;0; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 12
          ParentFont = False
          TabOrder = 26
          Text = ''
        end
      end
      object StaticText70: TStaticText
        Left = 486
        Top = 379
        Width = 479
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Fornecedores encontrados no cadastro'
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
      object StaticText71: TStaticText
        Left = 0
        Top = 379
        Width = 484
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Fornecedores da declara'#231#227'o'
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
      object cFornecedoresCheck: TCheckListBox
        Left = 0
        Top = 397
        Width = 484
        Height = 87
        Color = 12582911
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object cFornecedoresAchados: TMemo
        Left = 486
        Top = 397
        Width = 479
        Height = 87
        TabStop = False
        Color = 12582911
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Lines.Strings = (
          'cFornecedoresAchados')
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        WordWrap = False
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Dados da &DI'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Shape2: TShape
        Left = 0
        Top = 0
        Width = 965
        Height = 485
        Align = alClient
        Brush.Color = 12582911
        Pen.Style = psClear
      end
      object cSituacao: TEdit
        Left = 131
        Top = 1
        Width = 385
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object cURFDespachoNome: TEdit
        Left = 201
        Top = 24
        Width = 315
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object cFUNDAP: TRadioGroup
        Left = 643
        Top = 419
        Width = 103
        Height = 64
        Caption = 'Opera'#231#227'o'
        Color = 12582911
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'FUNDAP'
          'N'#195'O FUNDAP')
        ParentColor = False
        ParentFont = False
        TabOrder = 22
      end
      object cConhecimento: TEdit
        Left = 131
        Top = 70
        Width = 385
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object cTipoDeclaracao: TEdit
        Left = 131
        Top = 93
        Width = 385
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object StaticText1: TStaticText
        Left = 1
        Top = 1
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = sbsSunken
        Caption = 'Situa'#231#227'o Entrega Carga'
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
      object StaticText2: TStaticText
        Left = 1
        Top = 24
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = sbsSunken
        Caption = 'URF de Despacho'
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
      object StaticText3: TStaticText
        Left = 1
        Top = 47
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = sbsSunken
        Caption = 'Data de Registro'
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
      object StaticText4: TStaticText
        Left = 1
        Top = 70
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = sbsSunken
        Caption = 'Conhecimento Embarque'
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
      object StaticText5: TStaticText
        Left = 1
        Top = 93
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = sbsSunken
        Caption = 'Tipo de Declara'#231#227'o'
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
      object cImportador: TEdit
        Left = 131
        Top = 116
        Width = 144
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object StaticText6: TStaticText
        Left = 1
        Top = 116
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = sbsSunken
        Caption = 'Importador (CNPJ)'
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
      object StaticText10: TStaticText
        Left = 1
        Top = 139
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = sbsSunken
        Caption = 'Caracteriza'#231#227'o Opera'#231#227'o'
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
      object cOperacao: TEdit
        Left = 131
        Top = 139
        Width = 385
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object StaticText11: TStaticText
        Left = 1
        Top = 185
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = sbsSunken
        Caption = 'Fatura Comercial'
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
      object cFatura: TEdit
        Left = 131
        Top = 185
        Width = 385
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object StaticText12: TStaticText
        Left = 288
        Top = 47
        Width = 114
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = sbsSunken
        Caption = 'Data de Desembara'#231'o'
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
      object StaticText14: TStaticText
        Left = 1
        Top = 208
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = sbsSunken
        Caption = 'Romaneio Carga'
        Color = 7293440
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
      end
      object cRomaneio: TEdit
        Left = 131
        Top = 208
        Width = 385
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object StaticText16: TStaticText
        Left = 1
        Top = 231
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = sbsSunken
        Caption = 'Conhecimento Carga'
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
      object cConhecimentoCarga: TEdit
        Left = 131
        Top = 231
        Width = 221
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object StaticText18: TStaticText
        Left = 1
        Top = 254
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = sbsSunken
        Caption = 'Proced'#234'ncia'
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
      object cProcedencia: TEdit
        Left = 131
        Top = 254
        Width = 385
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
      object StaticText19: TStaticText
        Left = 1
        Top = 277
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = sbsSunken
        Caption = 'URF de Entrada'
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
      object cURFEntrada: TEdit
        Left = 131
        Top = 277
        Width = 190
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
      end
      object StaticText21: TStaticText
        Left = 265
        Top = 300
        Width = 82
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = sbsSunken
        Caption = 'Peso Bruto (Kg)'
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
      object StaticText20: TStaticText
        Left = 324
        Top = 277
        Width = 78
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = sbsSunken
        Caption = 'Data Chegada'
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
      object StaticText22: TStaticText
        Left = 1
        Top = 300
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = sbsSunken
        Caption = 'Peso L'#237'quido (Kg)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 38
        Transparent = False
        StyleElements = []
      end
      object StaticText23: TStaticText
        Left = 1
        Top = 323
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = sbsSunken
        Caption = 'Recinto Aduaneiro'
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
      object cRecintoAduaneiro: TEdit
        Left = 131
        Top = 323
        Width = 385
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 12
      end
      object cSetor: TEdit
        Left = 131
        Top = 346
        Width = 385
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
      end
      object StaticText24: TStaticText
        Left = 1
        Top = 346
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = sbsSunken
        Caption = 'Setor'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 40
        Transparent = False
        StyleElements = []
      end
      object StaticText25: TStaticText
        Left = 1
        Top = 369
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = sbsSunken
        Caption = 'Armaz'#233'm'
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
      object cArmazem: TEdit
        Left = 131
        Top = 369
        Width = 385
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 14
      end
      object StaticText26: TStaticText
        Left = 1
        Top = 392
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = sbsSunken
        Caption = 'Quantidade Total'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 42
        Transparent = False
        StyleElements = []
      end
      object StaticText27: TStaticText
        Left = 1
        Top = 162
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
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
        TabOrder = 43
        Transparent = False
        StyleElements = []
      end
      object cClienteNome: TEdit
        Left = 131
        Top = 162
        Width = 251
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object cMultiModal: TRadioGroup
        Left = 549
        Top = 419
        Width = 79
        Height = 64
        Caption = 'Multimodal'
        Color = 12582911
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'SIM'
          'N'#195'O')
        ParentColor = False
        ParentFont = False
        TabOrder = 44
      end
      object StaticText35: TStaticText
        Left = 520
        Top = 24
        Width = 134
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Via de Transporte'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 45
        Transparent = False
        StyleElements = []
      end
      object cViaTransporte: TEdit
        Left = 707
        Top = 24
        Width = 257
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 16
      end
      object StaticText36: TStaticText
        Left = 520
        Top = 47
        Width = 134
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Transportador'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 46
        Transparent = False
        StyleElements = []
      end
      object cTransportador: TEdit
        Left = 656
        Top = 47
        Width = 308
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 17
      end
      object StaticText37: TStaticText
        Left = 520
        Top = 70
        Width = 134
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Nome da Embarca'#231#227'o'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 47
        Transparent = False
        StyleElements = []
      end
      object cNomeEmbarcacao: TEdit
        Left = 656
        Top = 70
        Width = 308
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 18
      end
      object cManifestoCarga: TEdit
        Left = 656
        Top = 93
        Width = 308
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 19
      end
      object StaticText38: TStaticText
        Left = 520
        Top = 93
        Width = 134
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Manifesto da Carga'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 48
        Transparent = False
        StyleElements = []
      end
      object cLocalEmbarque: TEdit
        Left = 131
        Top = 438
        Width = 192
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 20
      end
      object StaticText40: TStaticText
        Left = 325
        Top = 438
        Width = 79
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Data Embarque'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 49
        Transparent = False
        StyleElements = []
      end
      object StaticText41: TStaticText
        Left = 520
        Top = 116
        Width = 134
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Tipo do Conhecimento'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 50
        Transparent = False
        StyleElements = []
      end
      object cTipoConhecimento: TEdit
        Left = 656
        Top = 116
        Width = 308
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 21
      end
      object StaticText31: TStaticText
        Left = 762
        Top = 254
        Width = 96
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Frete (ME)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 51
        Transparent = False
        StyleElements = []
      end
      object StaticText33: TStaticText
        Left = 520
        Top = 254
        Width = 134
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Frete (R$)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 52
        Transparent = False
        StyleElements = []
      end
      object StaticText15: TStaticText
        Left = 249
        Top = 415
        Width = 86
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Tipo Embalagem'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 53
        Transparent = False
        StyleElements = []
      end
      object cEspecie: TEdit
        Left = 337
        Top = 415
        Width = 180
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 15
      end
      object cDataRegistro: TDateEdit
        Left = 131
        Top = 47
        Width = 112
        Height = 21
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
        ReadOnly = True
        TabOrder = 54
      end
      object cDataDesembaraco: TDateEdit
        Left = 404
        Top = 47
        Width = 112
        Height = 21
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
        ReadOnly = True
        TabOrder = 55
      end
      object cDataChegada: TDateEdit
        Left = 404
        Top = 277
        Width = 112
        Height = 21
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
        ReadOnly = True
        TabOrder = 56
      end
      object cDataEmbarque: TDateEdit
        Left = 406
        Top = 438
        Width = 112
        Height = 21
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
        ReadOnly = True
        TabOrder = 57
      end
      object cFreteME: TCurrencyEdit
        Left = 860
        Top = 254
        Width = 104
        Height = 21
        AutoSize = False
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 58
      end
      object cFreteReal: TCurrencyEdit
        Left = 656
        Top = 254
        Width = 104
        Height = 21
        AutoSize = False
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 59
      end
      object StaticText28: TStaticText
        Left = 520
        Top = 162
        Width = 134
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Frete (Moeda Negociada)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 60
        Transparent = False
        StyleElements = []
      end
      object cFreteMoedaNome: TEdit
        Left = 710
        Top = 162
        Width = 177
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 61
      end
      object cFreteMoedaCodigo: TEdit
        Left = 656
        Top = 162
        Width = 53
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 62
      end
      object StaticText29: TStaticText
        Left = 520
        Top = 185
        Width = 134
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Seguro (Moeda Negociada)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 63
        Transparent = False
        StyleElements = []
      end
      object cSeguroMoedaCodigo: TEdit
        Left = 656
        Top = 185
        Width = 53
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 64
      end
      object cPesoBruto: TCurrencyEdit
        Left = 349
        Top = 300
        Width = 132
        Height = 21
        AutoSize = False
        DisplayFormat = ',##0.00000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 65
      end
      object cPesoLiquido: TCurrencyEdit
        Left = 131
        Top = 300
        Width = 132
        Height = 21
        AutoSize = False
        DisplayFormat = ',##0.00000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 66
      end
      object StaticText46: TStaticText
        Left = 762
        Top = 277
        Width = 96
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Seguro (ME)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 67
        Transparent = False
        StyleElements = []
      end
      object cSeguroME: TCurrencyEdit
        Left = 860
        Top = 277
        Width = 104
        Height = 21
        AutoSize = False
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 68
      end
      object StaticText47: TStaticText
        Left = 520
        Top = 277
        Width = 134
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Seguro (R$)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 69
        Transparent = False
        StyleElements = []
      end
      object cSeguroReal: TCurrencyEdit
        Left = 656
        Top = 277
        Width = 104
        Height = 21
        AutoSize = False
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 70
      end
      object StaticText48: TStaticText
        Left = 762
        Top = 231
        Width = 96
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'FOB (ME)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 71
        Transparent = False
        StyleElements = []
      end
      object cFOBME: TCurrencyEdit
        Left = 860
        Top = 231
        Width = 104
        Height = 21
        AutoSize = False
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 72
      end
      object StaticText49: TStaticText
        Left = 520
        Top = 231
        Width = 134
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'FOB (R$)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 73
        Transparent = False
        StyleElements = []
      end
      object cFOBReal: TCurrencyEdit
        Left = 656
        Top = 231
        Width = 104
        Height = 21
        AutoSize = False
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 74
      end
      object cSeguroMoedaNome: TEdit
        Left = 710
        Top = 185
        Width = 177
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 75
      end
      object StaticText50: TStaticText
        Left = 1
        Top = 461
        Width = 128
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Local Desemb.'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 76
        Transparent = False
        StyleElements = []
      end
      object cLocalDesembNome: TEdit
        Left = 244
        Top = 461
        Width = 273
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 77
      end
      object cLocalDesembCod: TCurrencyEdit
        Left = 131
        Top = 461
        Width = 112
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
        ReadOnly = True
        TabOrder = 78
      end
      object cCanal: TRadioGroup
        Left = 761
        Top = 419
        Width = 177
        Height = 64
        Caption = 'Canal'
        Color = 12582911
        Columns = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'Verde'
          'Amarelo'
          'Vermelho'
          'Cinza')
        ParentColor = False
        ParentFont = False
        TabOrder = 79
      end
      object StaticText68: TStaticText
        Left = 520
        Top = 323
        Width = 134
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Total do II'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 80
        Transparent = False
        StyleElements = []
      end
      object StaticText72: TStaticText
        Left = 762
        Top = 346
        Width = 96
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'COFINS (Major.)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 81
        Transparent = False
        StyleElements = []
      end
      object cTotalCOFINSMaj: TCurrencyEdit
        Left = 860
        Top = 346
        Width = 104
        Height = 21
        AutoSize = False
        DecimalPlaces = 4
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 82
      end
      object StaticText73: TStaticText
        Left = 762
        Top = 323
        Width = 96
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Total do IPI'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 83
        Transparent = False
        StyleElements = []
      end
      object cTotalIPI: TCurrencyEdit
        Left = 860
        Top = 323
        Width = 104
        Height = 21
        AutoSize = False
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 84
      end
      object StaticText74: TStaticText
        Left = 520
        Top = 346
        Width = 134
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'PIS (Majorado)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 85
        Transparent = False
        StyleElements = []
      end
      object cTotalPISMaj: TCurrencyEdit
        Left = 656
        Top = 346
        Width = 104
        Height = 21
        AutoSize = False
        DecimalPlaces = 4
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 86
      end
      object cTotalII: TCurrencyEdit
        Left = 656
        Top = 323
        Width = 104
        Height = 21
        AutoSize = False
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 87
      end
      object cURFDespachoCod: TEdit
        Left = 131
        Top = 24
        Width = 69
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 88
      end
      object cVolumes: TCurrencyEdit
        Left = 131
        Top = 415
        Width = 116
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
        ReadOnly = True
        TabOrder = 89
      end
      object StaticText7: TStaticText
        Left = 1
        Top = 438
        Width = 128
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Local de Embarque'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 90
        Transparent = False
        StyleElements = []
      end
      object StaticText8: TStaticText
        Left = 355
        Top = 231
        Width = 47
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = sbsSunken
        Caption = 'Data BL'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 91
        Transparent = False
        StyleElements = []
      end
      object cDataBL: TDateEdit
        Left = 404
        Top = 231
        Width = 112
        Height = 21
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
        ReadOnly = True
        TabOrder = 92
      end
      object cClienteCNPJ: TEdit
        Left = 383
        Top = 162
        Width = 132
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 93
      end
      object cPaisProcedNome: TEdit
        Left = 707
        Top = 1
        Width = 257
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 94
      end
      object StaticText39: TStaticText
        Left = 520
        Top = 1
        Width = 134
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = sbsSunken
        Caption = 'Pa'#237's de Proced'#234'ncia'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 95
        Transparent = False
        StyleElements = []
      end
      object cPaisProcedCod: TEdit
        Left = 656
        Top = 1
        Width = 49
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 96
      end
      object StaticText42: TStaticText
        Left = 762
        Top = 300
        Width = 96
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Acr'#233'scimo (ME)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 97
        Transparent = False
        StyleElements = []
      end
      object cAcrescimoME: TCurrencyEdit
        Left = 860
        Top = 300
        Width = 104
        Height = 21
        AutoSize = False
        DecimalPlaces = 4
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 98
      end
      object cAcrescimoReal: TCurrencyEdit
        Left = 656
        Top = 300
        Width = 104
        Height = 21
        AutoSize = False
        DecimalPlaces = 4
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 99
      end
      object StaticText43: TStaticText
        Left = 520
        Top = 300
        Width = 134
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Acr'#233'scimo (R$)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 100
        Transparent = False
        StyleElements = []
      end
      object cFOBMoedaCodigo: TEdit
        Left = 656
        Top = 139
        Width = 53
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 101
      end
      object StaticText30: TStaticText
        Left = 520
        Top = 139
        Width = 134
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'FOB (Moeda Negociada)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 102
        Transparent = False
        StyleElements = []
      end
      object cFOBMoedaNome: TEdit
        Left = 710
        Top = 139
        Width = 177
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 103
      end
      object cFreteTaxa: TCurrencyEdit
        Left = 889
        Top = 162
        Width = 75
        Height = 21
        AutoSize = False
        DecimalPlaces = 4
        DisplayFormat = '##0.00000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 104
      end
      object cSeguroTaxa: TCurrencyEdit
        Left = 889
        Top = 185
        Width = 75
        Height = 21
        AutoSize = False
        DecimalPlaces = 4
        DisplayFormat = '##0.00000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 105
      end
      object cFOBTaxa: TCurrencyEdit
        Left = 889
        Top = 139
        Width = 75
        Height = 21
        AutoSize = False
        DecimalPlaces = 4
        DisplayFormat = '##0.00000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 106
      end
      object cQuantidade: TCurrencyEdit
        Left = 131
        Top = 392
        Width = 116
        Height = 21
        AutoSize = False
        DecimalPlaces = 3
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 107
      end
      object StaticText69: TStaticText
        Left = 1
        Top = 415
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = sbsSunken
        Caption = 'Volumes'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 108
        Transparent = False
        StyleElements = []
      end
      object StaticText75: TStaticText
        Left = 762
        Top = 369
        Width = 96
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'COFINS (NF)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 109
        Transparent = False
        StyleElements = []
      end
      object cTotalCOFINSNF: TCurrencyEdit
        Left = 860
        Top = 369
        Width = 104
        Height = 21
        AutoSize = False
        DecimalPlaces = 4
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 110
      end
      object StaticText76: TStaticText
        Left = 520
        Top = 369
        Width = 134
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'PIS (NF)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 111
        Transparent = False
        StyleElements = []
      end
      object cTotalPISNF: TCurrencyEdit
        Left = 656
        Top = 369
        Width = 104
        Height = 21
        AutoSize = False
        DecimalPlaces = 4
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 112
      end
      object StaticText64: TStaticText
        Left = 520
        Top = 392
        Width = 134
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'Total do ICMS'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 113
        Transparent = False
        StyleElements = []
      end
      object cTotalICMS: TCurrencyEdit
        Left = 656
        Top = 392
        Width = 104
        Height = 21
        AutoSize = False
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 114
      end
      object StaticText65: TStaticText
        Left = 762
        Top = 392
        Width = 96
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'AFRMM'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 115
        Transparent = False
        StyleElements = []
      end
      object cAFRMM: TCurrencyEdit
        Left = 860
        Top = 392
        Width = 104
        Height = 21
        AutoSize = False
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 116
      end
      object StaticText32: TStaticText
        Left = 762
        Top = 208
        Width = 96
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'FOB Adi'#231#245'es (ME)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 117
        Transparent = False
        StyleElements = []
      end
      object cFOBAdicoesME: TCurrencyEdit
        Left = 860
        Top = 208
        Width = 104
        Height = 21
        AutoSize = False
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 118
      end
      object StaticText34: TStaticText
        Left = 520
        Top = 208
        Width = 134
        Height = 21
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'FOB Adi'#231#245'es (R$)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 119
        Transparent = False
        StyleElements = []
      end
      object cFOBAdicoesReal: TCurrencyEdit
        Left = 656
        Top = 208
        Width = 104
        Height = 21
        AutoSize = False
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 120
      end
      object cViaCodigo: TEdit
        Left = 656
        Top = 24
        Width = 49
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 121
      end
    end
    object TabSheet7: TTabSheet
      Caption = '&Adi'#231#245'es'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gAdicoes: TStringGrid
        Left = 0
        Top = 0
        Width = 965
        Height = 485
        Align = alClient
        Color = 12582911
        ColCount = 4
        DefaultRowHeight = 15
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing]
        ParentFont = False
        TabOrder = 0
        OnDrawCell = gAdicoesDrawCell
        ColWidths = (
          33
          29
          27
          850)
      end
    end
    object TabSheet4: TTabSheet
      Caption = '&Mercadorias'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        965
        485)
      object gProdutos: TStringGrid
        Left = 0
        Top = 220
        Width = 964
        Height = 189
        Color = 12582911
        ColCount = 4
        DefaultRowHeight = 15
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing]
        ParentFont = False
        TabOrder = 0
        OnClick = gProdutosClick
        OnDragDrop = gProdutosDragDrop
        OnDragOver = gProdutosDragOver
        OnDrawCell = gProdutosDrawCell
        ColWidths = (
          33
          29
          27
          450)
      end
      object StaticText17: TStaticText
        Left = 0
        Top = 1
        Width = 964
        Height = 18
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Cadastro de Produtos do Sistema'
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
      object GradeProdutos: TRxDBGrid
        Left = 0
        Top = 20
        Width = 964
        Height = 147
        Hint = 
          'Arraste e solte um item sobre a descri'#231#227'o em amarelo para adicio' +
          'nar o c'#243'digo do produto.'
        Color = 12582911
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnMouseDown = GradeProdutosMouseDown
        RowColor2 = 16776176
        ShowGlyphs = False
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codigo_Fabricante'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Fabricante'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 93
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o Produto'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 796
            Visible = True
          end>
      end
      object StaticText44: TStaticText
        Left = 1
        Top = 173
        Width = 73
        Height = 21
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Pesquisar'
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
      object cPesquisa: TEdit
        Left = 75
        Top = 173
        Width = 762
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnChange = cPesquisaChange
      end
      object bAdCodigo: TButton
        Left = 842
        Top = 169
        Width = 123
        Height = 29
        Hint = 
          'Adicion o c'#243'digo do produtos no cadastro do SISCOMEX para a impo' +
          'rta'#231#227'o.'
        Anchors = [akTop]
        Caption = 'Adicio&nar C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = bAdCodigoClick
      end
      object cTituloAD: TStaticText
        Left = 0
        Top = 201
        Width = 964
        Height = 18
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Itens das Adi'#231#245'es'
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
      object cDescricao: TMemo
        Left = 1
        Top = 410
        Width = 964
        Height = 74
        Color = 13434879
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Lines.Strings = (
          'cDescricao')
        ParentFont = False
        PopupMenu = PopupMenu1
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 7
        WantTabs = True
        OnDragDrop = cDescricaoDragDrop
        OnDragOver = cDescricaoDragOver
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'Ac&r'#233'scimo'
      ImageIndex = 9
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gAcrescimo: TStringGrid
        Left = 0
        Top = 0
        Width = 965
        Height = 485
        Align = alClient
        Color = 12582911
        ColCount = 6
        DefaultRowHeight = 15
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing]
        ParentFont = False
        TabOrder = 0
        OnDrawCell = gAcrescimoDrawCell
        ColWidths = (
          75
          382
          92
          182
          107
          117)
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'Pa&gamentos'
      ImageIndex = 10
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gPagamentos: TStringGrid
        Left = 0
        Top = 0
        Width = 965
        Height = 485
        Align = alClient
        Color = 12582911
        ColCount = 6
        DefaultRowHeight = 15
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing, goRowSelect]
        ParentFont = False
        TabOrder = 0
        OnDrawCell = gPagamentosDrawCell
        ColWidths = (
          75
          382
          92
          182
          107
          117)
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'D&umping'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cDumping: TCheckListBox
        Left = 0
        Top = 0
        Width = 847
        Height = 484
        Color = 12582911
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ItemHeight = 14
        ParentFont = False
        TabOrder = 0
      end
      object bAdicao: TBitBtn
        Left = 853
        Top = 4
        Width = 110
        Height = 73
        Hint = '   Selecionar os itens pelo n'#250'mero de da adi'#231#227'o.  '
        Caption = 'Selecionar &Adi'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          7E120000424D7E12000000000000360000002800000027000000270000000100
          1800000000004812000000000000000000000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0D7E9E6
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A8E4DC70B9ADCDF1ECC0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0AFEAE230B49E41D1BA72C7B9DEFFFBC0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B4F0E53D
          BDA417DAB812DFBC41CEB594DDCFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B2F3E63EBFA41AD2AF06E6BC02E4BE
          26DDBC51C6B1BCF1E7C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0F4EF39C3A50ECCA506E5BA00E9BD00E8BC0EE4BE39DCBE5CC0
          AEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09DE8E023B1
          9B10D8B00BEBBD03EBBC00E4B500E7B801E2B720EBC539CFB282D4C3C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C081D6C81EB39B15E0BE02EABA03E3B40B
          E7B903D9AE01DDAF00E6B802E3B82BE9C42FB79B9BDECDC0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0ADE8DD4DC8AD20C9AA15E1BD02E3BA00E8B80AE5B620E3BA16BF9905B78F
          09EABC01E6B80CDFB535EDC751CCAFB5E9DDC0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0DAF3E773CEB52DC4A213D3AA
          12E3B904E3B900E7BA00E7B60EEBBC1FD4AC78EBCD5ACFB201CFA104E9B906E7
          BA08E2B639E5BE65C7AFD0F1E5C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C098807580554D735A545984742CAE8F0DD3A70AEDBE04E5B603E8B900E9
          BA00EAB80BE4B517B38C326C583D755F14C59D0DE7BA02E9B900E8B716E4B928
          B9974188725E685A765F517F5E4F815C50825C4F835C4F7E5D4F7E5E537C5E53
          755A4DC0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C08869538C55
          407758515B5D5558897A39B69905C19B03DDB102E7BA00E7BA02EAB815CCA532
          8870595D534F605435B1950AC8A104E7BA00E5B607E9B91EEABD13B38E2F9576
          4D5B3E7863497C5B47875F4F805B4D755B4D795C5378544A6D452DC0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C087684FFFEDD5FFFAF0F6FAF5EA
          FEF4B7F3E55BCCB81FBFA005C7A40BE1BA11E4BA33BFA2AEE1D2FDFCF7F2FFFA
          8BE9D518BA9B07DFB503E8BB02E5B70DE4B721E7BB3DDDB57FCEADD2F8DCFBFF
          F1FFFBECFFF7EEFFFFF5FFF9F3FFF8F4735138C0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C081614BFFF5DCDAECE3D8EDE9E0EAE7E5EFEDC9F1EB
          8FE5D644CDB70AB49623BEA269CAB8D2F3ECDFECE7D8F1ECAFF2E546CBB207C9
          A60CE7BE03E2B70FE6BB0BE1B51EE6BC3BD4B253C0A6A0E4D3CDF2E9D8EBE6D8
          EBE7E3EEEEFFFCFC674D3AC0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C07B5D4BFFEBD7E1EEEAE1F2F1EAF1F1E9EEF2E3F5F6CFF9F6B5FAF28FE8
          DB56AFA3AEE7E0DFF5F5DEEFF0D9F4F4CEFDF695F2E229BFA50BD8B408E9C00A
          E6BB00E4B602E9BD0FDFBB33D9BE4BC3B184D7CECBFFFCCDF4F3DCF2F5F4F6F9
          6C503FC0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C07C604EFFEF
          DFEBF2F1C2CED09EA6A9939FA48EA0A3889C9F90A2A590A4A681A3A486A4A68D
          9FA48BA1A389A1A4839EA071A39E50B3A209B89A0CE8C001E0B800EABB00E6B8
          00E8C20FDEC026D1BA1DA796379B9175B4AED3F6F5F4FCFC6C4E3EC0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0796252FFEEDCE1EBEAE1F0F5E4
          F3F6D8F0F5DAF4F8E0F3F8EBF2F9EDEDF5E4F5FCD7EFF5D9F4F9DCF0F6E3F1F5
          E5F3F6E2F9F8C0F7EE3EC2AB01C7A209ECC201E7B901E5B701E2B706E9C20EDF
          BD2CE8C843D3BA5CB3A5BDEDE4F0FFF8654E37C0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C0776450FFF0DCDDEEEBD9EEF0DDF0F2DBF2F5DBF4F7
          DDF1F5E6EFF5EBF0F6E1EFF6DCF2F8D6F2F6DFF2F8E9F1F5E9EDF2E9F1F3D6F7
          F29FF9E81FBD9E05D8AF08E9BC05E7BA03EBBD00E3B503E7BB0FE3BA34D7B863
          C1ADC1F3E9ECFDF26E583EC0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0766451FFF1DADEF1EDC6DBDCA9B8BA98AAAD93A9AB93AAAC9BADAF9CAB
          AE9CABAF97ABAF94ACB09CABAFA5A9AEABA9AEA1A7A999B0AD87B8AE3AA89108
          BB9911E2B906E5B901E8B602EBBA00E7B508E4B718C0A061BBA7CBFBF0F1FEF7
          6E523AC0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0796750FFF0
          DAE5EDEAE2EAECDDE2E4D3E5E6D2EBEBD2EAEAD7E7E8DCE4E7DAE8E9D7E7E9D6
          E7E9DCE6E9E3E5E9E2E5E9DFE9EAD7ECE9CDE5DFBCFBEC55D0B800B69208E8BA
          00E8B800E5B400E2B518EBC432CEB083CFC2D4FAF5F4FCFA76503FC0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C07B664FFFF1DBEBEEE9E8EEF0EC
          EEEFE8F4F5E3F6F7DBEEF0E2EDF0EBF2F5E8F0F2E4F1F3E1F1F3E7F0F3EBF0F3
          E7F0F3E1F0F2DFEFF0EAF9F6D2F0EAB8FDF144CBB209C9A503E2B604EBBF07E8
          BF0FDFBB2EC6AD90D6CCD0F4F2F2FDFB775143C0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C0806651FFF0DBE9F0EBD6E2E2C5CACABAC1C3BCC4C7
          BBC6CBBCC7CBB8C5C7BFC6C6B8C6C7B3C7C8B9C6C8BCC5C8B6C5C9BAC7CABAC6
          C8B7C6C7B8C9C9A9C7C67CCEC324AF9905C6A109DFB705E3BA12E8C320C1A67D
          C8BDD0F8F5EEFEFA755343C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0826552FFF0DBEAEEEDD7E5E6C6D2D3BECBCEBDCDD0BBCBCFBFCCD0C0CD
          CEC1CCCCBCCDCDB7CECFB6CDCFBBCDCFBFCCD1C0CCD2BBC9CCC1CFD5BDCBCDC0
          D0D3ACCDCEA0E5DC31BEA10DC59F11E1B912E8C11FC3A47EC6B6D4F7EFF4FFF7
          79553FC0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C085654FFFF1
          DAE9ECECDFF0F3DCEFF2DBF1F3E2F7F7E0F3F6E3F1F6E6F0F6E6F3F4E3F3F5DC
          F6F5DAF4F6DFF4F6E9F0F9E7F1F8E5F2F8E4F2F9E3EFF5E4EFF7ECEEF7E2F2F5
          A2F8E441C9AB05B59118E0B937DDBE7DC2B7DBF8F0FEFFF581573BC0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C08B6B4FFFF2D6ECEFEFD8E7F1D0
          DFE9D4E4E1D9E4DDD9E0DED6DFE8D1DDE9D4DFE6D4DFE3D3E0E3D3E0E3D2E0E3
          D4DFE3D6E0E4D5E0E4D5E0E4D6E1E4D6E1E4D7E0E4D7E1E5C7E1E4BDEFEA70C9
          B80EAE8E1FBEA967B0BDD6F6FFFBFEF08B5F37C0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C0876A51FFF2D5EBEFF0CDDCE9ABBBC5A0B0ACACB6AB
          ADB5B1A5B0B7A3B4BFA5B2B7A7B2B5A7B2B6A7B2B6A7B2B6A7B2B6A7B2B5A6B2
          B5A6B2B5A6B2B5A6B2B5A6B2B5A5B1B5A3B5BA9AB1B197BDB673CFBB54BBAE8C
          BECAD6F1F7F6FEF1816037C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0836B56FFF3D7E7EFEEDFEFF9E1F0F9E7F6F3EDF9F0E7F1EDE1F1F4E0F5
          FBE4F3F6E7F3F6E6F3F6E6F3F6E6F3F6E6F3F6E7F4F7E6F3F6E6F3F6E6F3F6E6
          F3F6E7F3F6E5F4F5DEF6F6E4F5F6E7F2F1DEFAF5CBEFEAD2E9ECDAF1F2F1FFF5
          776138C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0876D50FFF7
          D0F1F2E7E3EEF2E3EFF4EAF5F1EDFAF0EFFAF2E8FBF8DEF4F5E7F5F8E9F3FAE9
          F3FAE9F3FAE9F3FAE9F3FAE9F3FAE9F4FAE9F4FAE9F4FAE9F4FAE9F3FAE8F5F8
          E5F6F7EBFAF9ECF8F7E3F5F3EBFFFDE0F4F2DCEFF4F4FBFD795E3DC0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C08A6F4CFFF8CCF7F5E6CFD9D9A2
          ADB5909D9E93A19D929F9D8DA09D8DA4A1929EA3949DA5949DA5959DA5939DA5
          949DA5949DA5939CA4949CA4939CA4939CA4939CA4949CA4919B9F939FA190A0
          9F8A9C9E849598A8B7BAE4F0FCF7F7FF815B42C0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C08A6F4CFFFACDF5F4E5EAF2F6E8EFFBE8F1FBEEFBFF
          EBF6FBE5F7F7E5F8F7EFF8F8F1F7F8F1F8F8F2F6F8F0F8F8F1F6F8F1F7F8F1F8
          F8F2F6F8F1F8F8F1F7F8F1F7F8F2F6F9F8F8FEF1F6F9EDF8F7EAFBF8F1FCFEEF
          F1FAEDECF8FFFAFF895B44C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0947346FFFBBCFFF8D2FFF3DEFFEFE1FFEFE1FFF0DFFFF0DEFEF5DDFDF4
          D8FFF4D8FFF4D8FFF3D7FFF3D7FFF3D7FFF4D8FFF4D7FFF4D8FFF6DAFFF2D6FF
          F5D8FFF4D8FFF3D8FFF3D9FFF2D9FFF2D8FFF3D7FFF3D9FFEFDDFFF2D8FFFFE0
          90613CC0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C09E783FB681
          2FA57B37A8793FAC7643A9753FAB7741AC7742A9773DA87B3CA37A3AA57B3BA4
          7B3AA57B3CA57C3BA67B3DA67B3CA37A39A4793BA3793AA97E40A3783AA1783A
          9C763AA2773FAA7941AC763DA27541977348967A409D813B916132C0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0A77B3EA35900A46003A75800B0
          5800B25B00B25A00B05700AD5800AF5D00A85B00A75B00A75B00A65A00A55900
          A45800A75A00A65A00A75B00A85C00A35700A25500AF660FC1833B9E5910B05F
          12C37129874C1B6F5E4C7A6B4E86683A945D3EC0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C0A8793CBF6D0CCC7C19DC841CE17F12E38312E38214
          E27F15E27F15E58319E28218E38219E48219E38218E28118E17F16DD7C13D877
          0EDE7C13DF7E15DE7D14E18016F5952EFFBE5CD67E1CF59733FFC96BC47934B3
          9168BF996BB9834C8F5738C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0D8B581AD5F0CD08C37D68831D78326D68824D38526D38127D48026DB84
          29D57A1DD87C1EDA7F20DC8022DC8122DD8123DC8022D77C1DD87C1ED5791BD5
          7A1CCE7315D07412D57907D67F0FCB7910D17512CE791EC07C2ABB711DBE7120
          BA8960C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0DBC6
          9BDCCBA4DDCAA3DDC8A1DCC99FDBC9A2DBC7A4DBC7A1DEC8A1DEC79FDFC89FE0
          C99FE0C9A0E0C9A0E0C9A0E0C9A0E0C9A0E2CAA1E0C99EE2CA9FE1CA9EE2CA9F
          E4CB9AE3CD9EDDCA9EE1C9A1DDC79FE1CDA6E2CBA1DCC198C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
          0000}
        Layout = blGlyphTop
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = bAdicaoClick
      end
      object bTodos: TBitBtn
        Left = 853
        Top = 78
        Width = 110
        Height = 73
        Hint = '   Selecionar os itens pelo n'#250'mero de da adi'#231#227'o.  '
        Caption = 'Selecionar &Todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000C40E0000C40E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00007720077000
          00000076660770000000006EE6267700000007AEEE62770000000AEEEE627770
          00007EEEEEE607700000EEEEEEE6267700008EEE08EE607770000EE0008EE607
          700000000088E627770000000008EE607700000000008EE607000000000008EE
          6070000000000088E6080000000000088E6600000000000088EA}
        Layout = blGlyphTop
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = bTodosClick
      end
      object bDesmarcar: TBitBtn
        Left = 853
        Top = 152
        Width = 110
        Height = 73
        Hint = '   Selecionar os itens pelo n'#250'mero de da adi'#231#227'o.  '
        Caption = 'Desmarcar &Todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000C40E0000C40E00000000000000000000040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400000099FF0404040004040400040404000404040004040400040404000404
          04000404040004040400040404000000FFFF0404040004040400040404003333
          CCFF0000FFFF000099FF04040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404003333
          CCFF3399FFFF0000FFFF000099FF040404000404040004040400040404000404
          040004040400040404000000FFFF040404000404040004040400040404000404
          04003333CCFF0066FFFF0000CCFF040404000404040004040400040404000404
          0400040404000000FFFF04040400040404000404040004040400040404000404
          0400040404000000CCFF0000FFFF000099FF0404040004040400040404000404
          04000000FFFF000099FF04040400040404000404040004040400040404000404
          040004040400040404000000CCFF0000FFFF000099FF04040400040404000000
          FFFF000099FF0404040004040400040404000404040004040400040404000404
          04000404040004040400040404000000CCFF0000FFFF000099FF0000FFFF0000
          99FF040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000000CCFF0000FFFF000099FF0404
          0400040404000404040004040400040404000404040004040400040404000404
          04000404040004040400040404000000CCFF0000FFFF000099FF0000CCFF0000
          99FF040404000404040004040400040404000404040004040400040404000404
          040004040400040404000000CCFF0000FFFF000099FF04040400040404000000
          CCFF000099FF0404040004040400040404000404040004040400040404000404
          04000000CCFF0000FFFF0000FFFF000099FF0404040004040400040404000404
          04000000CCFF000099FF04040400040404000404040004040400040404000000
          CCFF3399FFFF0000FFFF000099FF040404000404040004040400040404000404
          0400040404000000CCFF000099FF040404000404040004040400040404006666
          99FF0000CCFF666699FF04040400040404000404040004040400040404000404
          04000404040004040400040404000000CCFF0404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400}
        Layout = blGlyphTop
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = bDesmarcarClick
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'CAME&X'
      ImageIndex = 11
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cCAMEX: TCheckListBox
        Left = 0
        Top = 0
        Width = 847
        Height = 484
        Color = 12582911
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ItemHeight = 14
        ParentFont = False
        TabOrder = 0
      end
      object bCAMEXAd: TBitBtn
        Left = 853
        Top = 4
        Width = 110
        Height = 73
        Hint = '   Selecionar os itens pelo n'#250'mero de da adi'#231#227'o.  '
        Caption = 'Selecionar &Adi'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          7E120000424D7E12000000000000360000002800000027000000270000000100
          1800000000004812000000000000000000000000000000000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0D7E9E6
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0A8E4DC70B9ADCDF1ECC0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0AFEAE230B49E41D1BA72C7B9DEFFFBC0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B4F0E53D
          BDA417DAB812DFBC41CEB594DDCFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B2F3E63EBFA41AD2AF06E6BC02E4BE
          26DDBC51C6B1BCF1E7C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0F4EF39C3A50ECCA506E5BA00E9BD00E8BC0EE4BE39DCBE5CC0
          AEC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C09DE8E023B1
          9B10D8B00BEBBD03EBBC00E4B500E7B801E2B720EBC539CFB282D4C3C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C081D6C81EB39B15E0BE02EABA03E3B40B
          E7B903D9AE01DDAF00E6B802E3B82BE9C42FB79B9BDECDC0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0ADE8DD4DC8AD20C9AA15E1BD02E3BA00E8B80AE5B620E3BA16BF9905B78F
          09EABC01E6B80CDFB535EDC751CCAFB5E9DDC0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0DAF3E773CEB52DC4A213D3AA
          12E3B904E3B900E7BA00E7B60EEBBC1FD4AC78EBCD5ACFB201CFA104E9B906E7
          BA08E2B639E5BE65C7AFD0F1E5C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C098807580554D735A545984742CAE8F0DD3A70AEDBE04E5B603E8B900E9
          BA00EAB80BE4B517B38C326C583D755F14C59D0DE7BA02E9B900E8B716E4B928
          B9974188725E685A765F517F5E4F815C50825C4F835C4F7E5D4F7E5E537C5E53
          755A4DC0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C08869538C55
          407758515B5D5558897A39B69905C19B03DDB102E7BA00E7BA02EAB815CCA532
          8870595D534F605435B1950AC8A104E7BA00E5B607E9B91EEABD13B38E2F9576
          4D5B3E7863497C5B47875F4F805B4D755B4D795C5378544A6D452DC0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C087684FFFEDD5FFFAF0F6FAF5EA
          FEF4B7F3E55BCCB81FBFA005C7A40BE1BA11E4BA33BFA2AEE1D2FDFCF7F2FFFA
          8BE9D518BA9B07DFB503E8BB02E5B70DE4B721E7BB3DDDB57FCEADD2F8DCFBFF
          F1FFFBECFFF7EEFFFFF5FFF9F3FFF8F4735138C0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C081614BFFF5DCDAECE3D8EDE9E0EAE7E5EFEDC9F1EB
          8FE5D644CDB70AB49623BEA269CAB8D2F3ECDFECE7D8F1ECAFF2E546CBB207C9
          A60CE7BE03E2B70FE6BB0BE1B51EE6BC3BD4B253C0A6A0E4D3CDF2E9D8EBE6D8
          EBE7E3EEEEFFFCFC674D3AC0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C07B5D4BFFEBD7E1EEEAE1F2F1EAF1F1E9EEF2E3F5F6CFF9F6B5FAF28FE8
          DB56AFA3AEE7E0DFF5F5DEEFF0D9F4F4CEFDF695F2E229BFA50BD8B408E9C00A
          E6BB00E4B602E9BD0FDFBB33D9BE4BC3B184D7CECBFFFCCDF4F3DCF2F5F4F6F9
          6C503FC0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C07C604EFFEF
          DFEBF2F1C2CED09EA6A9939FA48EA0A3889C9F90A2A590A4A681A3A486A4A68D
          9FA48BA1A389A1A4839EA071A39E50B3A209B89A0CE8C001E0B800EABB00E6B8
          00E8C20FDEC026D1BA1DA796379B9175B4AED3F6F5F4FCFC6C4E3EC0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0796252FFEEDCE1EBEAE1F0F5E4
          F3F6D8F0F5DAF4F8E0F3F8EBF2F9EDEDF5E4F5FCD7EFF5D9F4F9DCF0F6E3F1F5
          E5F3F6E2F9F8C0F7EE3EC2AB01C7A209ECC201E7B901E5B701E2B706E9C20EDF
          BD2CE8C843D3BA5CB3A5BDEDE4F0FFF8654E37C0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C0776450FFF0DCDDEEEBD9EEF0DDF0F2DBF2F5DBF4F7
          DDF1F5E6EFF5EBF0F6E1EFF6DCF2F8D6F2F6DFF2F8E9F1F5E9EDF2E9F1F3D6F7
          F29FF9E81FBD9E05D8AF08E9BC05E7BA03EBBD00E3B503E7BB0FE3BA34D7B863
          C1ADC1F3E9ECFDF26E583EC0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0766451FFF1DADEF1EDC6DBDCA9B8BA98AAAD93A9AB93AAAC9BADAF9CAB
          AE9CABAF97ABAF94ACB09CABAFA5A9AEABA9AEA1A7A999B0AD87B8AE3AA89108
          BB9911E2B906E5B901E8B602EBBA00E7B508E4B718C0A061BBA7CBFBF0F1FEF7
          6E523AC0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0796750FFF0
          DAE5EDEAE2EAECDDE2E4D3E5E6D2EBEBD2EAEAD7E7E8DCE4E7DAE8E9D7E7E9D6
          E7E9DCE6E9E3E5E9E2E5E9DFE9EAD7ECE9CDE5DFBCFBEC55D0B800B69208E8BA
          00E8B800E5B400E2B518EBC432CEB083CFC2D4FAF5F4FCFA76503FC0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C07B664FFFF1DBEBEEE9E8EEF0EC
          EEEFE8F4F5E3F6F7DBEEF0E2EDF0EBF2F5E8F0F2E4F1F3E1F1F3E7F0F3EBF0F3
          E7F0F3E1F0F2DFEFF0EAF9F6D2F0EAB8FDF144CBB209C9A503E2B604EBBF07E8
          BF0FDFBB2EC6AD90D6CCD0F4F2F2FDFB775143C0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C0806651FFF0DBE9F0EBD6E2E2C5CACABAC1C3BCC4C7
          BBC6CBBCC7CBB8C5C7BFC6C6B8C6C7B3C7C8B9C6C8BCC5C8B6C5C9BAC7CABAC6
          C8B7C6C7B8C9C9A9C7C67CCEC324AF9905C6A109DFB705E3BA12E8C320C1A67D
          C8BDD0F8F5EEFEFA755343C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0826552FFF0DBEAEEEDD7E5E6C6D2D3BECBCEBDCDD0BBCBCFBFCCD0C0CD
          CEC1CCCCBCCDCDB7CECFB6CDCFBBCDCFBFCCD1C0CCD2BBC9CCC1CFD5BDCBCDC0
          D0D3ACCDCEA0E5DC31BEA10DC59F11E1B912E8C11FC3A47EC6B6D4F7EFF4FFF7
          79553FC0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C085654FFFF1
          DAE9ECECDFF0F3DCEFF2DBF1F3E2F7F7E0F3F6E3F1F6E6F0F6E6F3F4E3F3F5DC
          F6F5DAF4F6DFF4F6E9F0F9E7F1F8E5F2F8E4F2F9E3EFF5E4EFF7ECEEF7E2F2F5
          A2F8E441C9AB05B59118E0B937DDBE7DC2B7DBF8F0FEFFF581573BC0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C08B6B4FFFF2D6ECEFEFD8E7F1D0
          DFE9D4E4E1D9E4DDD9E0DED6DFE8D1DDE9D4DFE6D4DFE3D3E0E3D3E0E3D2E0E3
          D4DFE3D6E0E4D5E0E4D5E0E4D6E1E4D6E1E4D7E0E4D7E1E5C7E1E4BDEFEA70C9
          B80EAE8E1FBEA967B0BDD6F6FFFBFEF08B5F37C0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C0876A51FFF2D5EBEFF0CDDCE9ABBBC5A0B0ACACB6AB
          ADB5B1A5B0B7A3B4BFA5B2B7A7B2B5A7B2B6A7B2B6A7B2B6A7B2B6A7B2B5A6B2
          B5A6B2B5A6B2B5A6B2B5A6B2B5A5B1B5A3B5BA9AB1B197BDB673CFBB54BBAE8C
          BECAD6F1F7F6FEF1816037C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0836B56FFF3D7E7EFEEDFEFF9E1F0F9E7F6F3EDF9F0E7F1EDE1F1F4E0F5
          FBE4F3F6E7F3F6E6F3F6E6F3F6E6F3F6E6F3F6E7F4F7E6F3F6E6F3F6E6F3F6E6
          F3F6E7F3F6E5F4F5DEF6F6E4F5F6E7F2F1DEFAF5CBEFEAD2E9ECDAF1F2F1FFF5
          776138C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0876D50FFF7
          D0F1F2E7E3EEF2E3EFF4EAF5F1EDFAF0EFFAF2E8FBF8DEF4F5E7F5F8E9F3FAE9
          F3FAE9F3FAE9F3FAE9F3FAE9F3FAE9F4FAE9F4FAE9F4FAE9F4FAE9F3FAE8F5F8
          E5F6F7EBFAF9ECF8F7E3F5F3EBFFFDE0F4F2DCEFF4F4FBFD795E3DC0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C08A6F4CFFF8CCF7F5E6CFD9D9A2
          ADB5909D9E93A19D929F9D8DA09D8DA4A1929EA3949DA5949DA5959DA5939DA5
          949DA5949DA5939CA4949CA4939CA4939CA4939CA4949CA4919B9F939FA190A0
          9F8A9C9E849598A8B7BAE4F0FCF7F7FF815B42C0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C08A6F4CFFFACDF5F4E5EAF2F6E8EFFBE8F1FBEEFBFF
          EBF6FBE5F7F7E5F8F7EFF8F8F1F7F8F1F8F8F2F6F8F0F8F8F1F6F8F1F7F8F1F8
          F8F2F6F8F1F8F8F1F7F8F1F7F8F2F6F9F8F8FEF1F6F9EDF8F7EAFBF8F1FCFEEF
          F1FAEDECF8FFFAFF895B44C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0947346FFFBBCFFF8D2FFF3DEFFEFE1FFEFE1FFF0DFFFF0DEFEF5DDFDF4
          D8FFF4D8FFF4D8FFF3D7FFF3D7FFF3D7FFF4D8FFF4D7FFF4D8FFF6DAFFF2D6FF
          F5D8FFF4D8FFF3D8FFF3D9FFF2D9FFF2D8FFF3D7FFF3D9FFEFDDFFF2D8FFFFE0
          90613CC0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C09E783FB681
          2FA57B37A8793FAC7643A9753FAB7741AC7742A9773DA87B3CA37A3AA57B3BA4
          7B3AA57B3CA57C3BA67B3DA67B3CA37A39A4793BA3793AA97E40A3783AA1783A
          9C763AA2773FAA7941AC763DA27541977348967A409D813B916132C0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0A77B3EA35900A46003A75800B0
          5800B25B00B25A00B05700AD5800AF5D00A85B00A75B00A75B00A65A00A55900
          A45800A75A00A65A00A75B00A85C00A35700A25500AF660FC1833B9E5910B05F
          12C37129874C1B6F5E4C7A6B4E86683A945D3EC0C0C0C0C0C0C0C0C0C0C0C000
          0000C0C0C0C0C0C0C0C0C0A8793CBF6D0CCC7C19DC841CE17F12E38312E38214
          E27F15E27F15E58319E28218E38219E48219E38218E28118E17F16DD7C13D877
          0EDE7C13DF7E15DE7D14E18016F5952EFFBE5CD67E1CF59733FFC96BC47934B3
          9168BF996BB9834C8F5738C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0
          C0C0C0D8B581AD5F0CD08C37D68831D78326D68824D38526D38127D48026DB84
          29D57A1DD87C1EDA7F20DC8022DC8122DD8123DC8022D77C1DD87C1ED5791BD5
          7A1CCE7315D07412D57907D67F0FCB7910D17512CE791EC07C2ABB711DBE7120
          BA8960C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0DBC6
          9BDCCBA4DDCAA3DDC8A1DCC99FDBC9A2DBC7A4DBC7A1DEC8A1DEC79FDFC89FE0
          C99FE0C9A0E0C9A0E0C9A0E0C9A0E0C9A0E2CAA1E0C99EE2CA9FE1CA9EE2CA9F
          E4CB9AE3CD9EDDCA9EE1C9A1DDC79FE1CDA6E2CBA1DCC198C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
          0000}
        Layout = blGlyphTop
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = bCAMEXAdClick
      end
      object bCAMEXTodos: TBitBtn
        Left = 853
        Top = 78
        Width = 110
        Height = 73
        Hint = '   Selecionar os itens pelo n'#250'mero de da adi'#231#227'o.  '
        Caption = 'Selecionar &Todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000C40E0000C40E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00007720077000
          00000076660770000000006EE6267700000007AEEE62770000000AEEEE627770
          00007EEEEEE607700000EEEEEEE6267700008EEE08EE607770000EE0008EE607
          700000000088E627770000000008EE607700000000008EE607000000000008EE
          6070000000000088E6080000000000088E6600000000000088EA}
        Layout = blGlyphTop
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = bCAMEXTodosClick
      end
      object bCAMEXDesm: TBitBtn
        Left = 853
        Top = 152
        Width = 110
        Height = 73
        Hint = '   Selecionar os itens pelo n'#250'mero de da adi'#231#227'o.  '
        Caption = 'Desmarcar &Todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000C40E0000C40E00000000000000000000040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400000099FF0404040004040400040404000404040004040400040404000404
          04000404040004040400040404000000FFFF0404040004040400040404003333
          CCFF0000FFFF000099FF04040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404003333
          CCFF3399FFFF0000FFFF000099FF040404000404040004040400040404000404
          040004040400040404000000FFFF040404000404040004040400040404000404
          04003333CCFF0066FFFF0000CCFF040404000404040004040400040404000404
          0400040404000000FFFF04040400040404000404040004040400040404000404
          0400040404000000CCFF0000FFFF000099FF0404040004040400040404000404
          04000000FFFF000099FF04040400040404000404040004040400040404000404
          040004040400040404000000CCFF0000FFFF000099FF04040400040404000000
          FFFF000099FF0404040004040400040404000404040004040400040404000404
          04000404040004040400040404000000CCFF0000FFFF000099FF0000FFFF0000
          99FF040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000000CCFF0000FFFF000099FF0404
          0400040404000404040004040400040404000404040004040400040404000404
          04000404040004040400040404000000CCFF0000FFFF000099FF0000CCFF0000
          99FF040404000404040004040400040404000404040004040400040404000404
          040004040400040404000000CCFF0000FFFF000099FF04040400040404000000
          CCFF000099FF0404040004040400040404000404040004040400040404000404
          04000000CCFF0000FFFF0000FFFF000099FF0404040004040400040404000404
          04000000CCFF000099FF04040400040404000404040004040400040404000000
          CCFF3399FFFF0000FFFF000099FF040404000404040004040400040404000404
          0400040404000000CCFF000099FF040404000404040004040400040404006666
          99FF0000CCFF666699FF04040400040404000404040004040400040404000404
          04000404040004040400040404000000CCFF0404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400}
        Layout = blGlyphTop
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = bCAMEXDesmClick
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Inf.&Complem.'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cComplemento: TMemo
        Left = 0
        Top = 0
        Width = 965
        Height = 485
        Align = alClient
        Color = 12582911
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          'cComplemento')
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        WantReturns = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&Fornec./Fabric.'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cFabricantes: TCheckListBox
        Left = 0
        Top = 312
        Width = 966
        Height = 172
        Color = 12582911
        Columns = 1
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 0
      end
      object StaticText61: TStaticText
        Left = 0
        Top = 6
        Width = 966
        Height = 18
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'FORNECEDORES'
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
      object StaticText62: TStaticText
        Left = 0
        Top = 293
        Width = 966
        Height = 18
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'FABRICANTES'
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
      object gFornecedores: TStringGrid
        Left = 0
        Top = 25
        Width = 966
        Height = 257
        Color = 12582911
        ColCount = 4
        DefaultRowHeight = 15
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing, goRowSelect]
        ParentFont = False
        TabOrder = 3
        OnDrawCell = gFornecedoresDrawCell
        ColWidths = (
          33
          29
          27
          850)
      end
    end
    object TabSheet8: TTabSheet
      Caption = '&Erros'
      ImageIndex = 7
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cErros: TMemo
        Left = 0
        Top = 0
        Width = 965
        Height = 485
        Align = alClient
        Color = 16768477
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        WordWrap = False
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'A&visos'
      ImageIndex = 8
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cAvisos: TMemo
        Left = 0
        Top = 0
        Width = 965
        Height = 485
        Align = alClient
        Color = 16768477
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        WantReturns = False
        WordWrap = False
      end
    end
  end
  object cXML: TEdit
    Left = 71
    Top = 55
    Width = 792
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    OnClick = cXMLClick
  end
  object bAbrir: TBitBtn
    Left = 865
    Top = 52
    Width = 70
    Height = 29
    Hint = '  Abre um arquivo XML de DI em pasta selecionada.  '
    Caption = '&Abrir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      4E010000424D4E01000000000000760000002800000012000000120000000100
      040000000000D800000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333330000003333333333333333330000003333333333333333330000003800
      000000000003330000003007B7B7B7B7B7B03300000030F07B7B7B7B7B703300
      000030B0B7B7B7B7B7B70300000030FB0B7B7B7B7B7B0300000030BF07B7B7B7
      B7B7B000000030FBF000007B7B7B7000000030BFBFBFBF0000000300000030FB
      FBFBFBFBFB033300000030BFBFBFBFBFBF033300000030FBFBF0000000333300
      0000330000033333333333000000333333333333333333000000333333333333
      333333000000333333333333333333000000}
    Margin = 10
    ParentFont = False
    TabOrder = 4
    OnClick = bAbrirClick
  end
  object dstXML: TDataSource
    Left = 168
    Top = 8
  end
  object tUFDesemb: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT * FROM Estados')
    FetchRows = 1
    Left = 204
    Top = 9
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
    Left = 233
    Top = 9
  end
  object tPesquisa: TMSQuery
    Connection = Dados.Banco
    FetchRows = 1
    Left = 267
    Top = 9
  end
  object tPesquisa2: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 299
    Top = 9
  end
  object tContaPlano: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT MAX(Conta) AS Conta FROM PlanoContas')
    FetchRows = 1
    Left = 331
    Top = 10
    object tContaPlanoConta: TStringField
      FieldName = 'Conta'
      ReadOnly = True
      FixedChar = True
      Size = 11
    end
  end
  object tCodigoPlano: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM PlanoContas')
    FetchRows = 1
    Left = 363
    Top = 11
  end
  object tTexto: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 394
    Top = 11
  end
  object tCodigo: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 425
    Top = 11
  end
  object tFornecedor: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM Fornecedores')
    FetchRows = 1
    Left = 456
    Top = 11
  end
  object tBaixados: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 486
    Top = 11
  end
  object tPagarReceber: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO TiposProcesso'
      
        '  (Codigo, Descricao, Conta_Cliente, Conta_ClienteAdiantamento, ' +
        'Conta_Fornecedor, Conta_FornecedorAdiantamento, Conta_Despesas, ' +
        'Conta_Impostos)'
      'VALUES'
      
        '  (:Codigo, :Descricao, :Conta_Cliente, :Conta_ClienteAdiantamen' +
        'to, :Conta_Fornecedor, :Conta_FornecedorAdiantamento, :Conta_Des' +
        'pesas, :Conta_Impostos)')
    SQLDelete.Strings = (
      'DELETE FROM TiposProcesso'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE TiposProcesso'
      'SET'
      
        '  Codigo = :Codigo, Descricao = :Descricao, Conta_Cliente = :Con' +
        'ta_Cliente, Conta_ClienteAdiantamento = :Conta_ClienteAdiantamen' +
        'to, Conta_Fornecedor = :Conta_Fornecedor, Conta_FornecedorAdiant' +
        'amento = :Conta_FornecedorAdiantamento, Conta_Despesas = :Conta_' +
        'Despesas, Conta_Impostos = :Conta_Impostos'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT TiposProcesso.Codigo, TiposProcesso.Descricao, TiposProce' +
        'sso.Conta_Cliente, TiposProcesso.Conta_ClienteAdiantamento, Tipo' +
        'sProcesso.Conta_Fornecedor, TiposProcesso.Conta_FornecedorAdiant' +
        'amento, TiposProcesso.Conta_Despesas, TiposProcesso.Conta_Impost' +
        'os FROM TiposProcesso'
      'WHERE TiposProcesso.Codigo = :Codigo ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Numero) AS Numero FROM PagarReceber')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 516
    Top = 11
  end
  object tPagarReceberBaixa: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO TiposProcesso'
      
        '  (Codigo, Descricao, Conta_Cliente, Conta_ClienteAdiantamento, ' +
        'Conta_Fornecedor, Conta_FornecedorAdiantamento, Conta_Despesas, ' +
        'Conta_Impostos)'
      'VALUES'
      
        '  (:Codigo, :Descricao, :Conta_Cliente, :Conta_ClienteAdiantamen' +
        'to, :Conta_Fornecedor, :Conta_FornecedorAdiantamento, :Conta_Des' +
        'pesas, :Conta_Impostos)')
    SQLDelete.Strings = (
      'DELETE FROM TiposProcesso'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE TiposProcesso'
      'SET'
      
        '  Codigo = :Codigo, Descricao = :Descricao, Conta_Cliente = :Con' +
        'ta_Cliente, Conta_ClienteAdiantamento = :Conta_ClienteAdiantamen' +
        'to, Conta_Fornecedor = :Conta_Fornecedor, Conta_FornecedorAdiant' +
        'amento = :Conta_FornecedorAdiantamento, Conta_Despesas = :Conta_' +
        'Despesas, Conta_Impostos = :Conta_Impostos'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT TiposProcesso.Codigo, TiposProcesso.Descricao, TiposProce' +
        'sso.Conta_Cliente, TiposProcesso.Conta_ClienteAdiantamento, Tipo' +
        'sProcesso.Conta_Fornecedor, TiposProcesso.Conta_FornecedorAdiant' +
        'amento, TiposProcesso.Conta_Despesas, TiposProcesso.Conta_Impost' +
        'os FROM TiposProcesso'
      'WHERE TiposProcesso.Codigo = :Codigo ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Registro) AS Registro FROM PagarReceberBaixas')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 546
    Top = 11
  end
  object tLancamentos: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 576
    Top = 11
  end
  object tMestre: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select * from ProcessosDocumentos')
    FetchRows = 1
    Left = 606
    Top = 11
  end
  object dstMestre: TDataSource
    DataSet = tMestre
    Left = 635
    Top = 11
  end
  object PopupMenu1: TPopupMenu
    Left = 669
    Top = 12
    object mnBuscar: TMenuItem
      Caption = 'Buscar C'#243'digo no Cadastro de produtos'
      OnClick = mnBuscarClick
    end
    object mnCancelar: TMenuItem
      Caption = '&Cancelar'
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'xml'
    Filter = 'Arquivos XML|*.xml'
    Left = 720
    Top = 8
  end
end
