object Utilitarios_Importar_NFe_Terceiros: TUtilitarios_Importar_NFe_Terceiros
  Left = 488
  Top = 168
  ActiveControl = cReferencia
  BorderStyle = bsDialog
  Caption = 'Utilitarios_Importar_NFe_Terceiros'
  ClientHeight = 741
  ClientWidth = 887
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
  object Panel1: TPanel
    Left = 0
    Top = 711
    Width = 887
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      Left = 825
      Top = 1
      Width = 61
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bImportar: TButton
      Left = 763
      Top = 1
      Width = 62
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Importar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Sel
    end
    object bSeriais: TButton
      Left = 635
      Top = 1
      Width = 64
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Seriais'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bSeriaisClick
    end
    object bLotes: TButton
      Left = 699
      Top = 1
      Width = 64
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Lotes'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bLotesClick
    end
    object cUnidade: TButton
      Left = 534
      Top = 1
      Width = 101
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Unidade Medida'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = cUnidadeClick
    end
  end
  object cPasta: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 310
    Width = 881
    Height = 303
    ActivePage = TabSheet5
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabHeight = 28
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Dados da &NF-e'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 711
      ExplicitHeight = 0
      object cDadosNfe: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 867
        Height = 259
        Align = alClient
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitLeft = 1
        ExplicitTop = 1
        ExplicitWidth = 707
        ExplicitHeight = 222
        object StaticText3: TStaticText
          Left = 6
          Top = 29
          Width = 111
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'N'#250'mero'
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
        object StaticText1: TStaticText
          Left = 223
          Top = 29
          Width = 91
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Data Emiss'#227'o'
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
          Left = 6
          Top = 52
          Width = 111
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Chave'
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
        object StaticText13: TStaticText
          Left = 404
          Top = 29
          Width = 71
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Data Entrada'
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
        object cdEmi: TMaskEdit
          Left = 316
          Top = 29
          Width = 86
          Height = 21
          EditMask = '##/##/####;1; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          TabOrder = 4
          Text = '  /  /    '
        end
        object cdSaiEnt: TMaskEdit
          Left = 477
          Top = 29
          Width = 82
          Height = 21
          EditMask = '##/##/####;1; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 10
          ParentFont = False
          TabOrder = 5
          Text = '  /  /    '
        end
        object StaticText4: TStaticText
          Left = 6
          Top = 98
          Width = 111
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Natureza Opera'#231#227'o'
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
        object ccNF: TMaskEdit
          Left = 119
          Top = 52
          Width = 102
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          Text = ''
        end
        object cNatOp: TMaskEdit
          Left = 119
          Top = 98
          Width = 583
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          Text = ''
        end
        object StaticText24: TStaticText
          Left = 571
          Top = 29
          Width = 19
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
          TabOrder = 9
          Transparent = False
          StyleElements = []
        end
        object ccUF: TMaskEdit
          Left = 593
          Top = 29
          Width = 36
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          Text = ''
        end
        object cChave: TMaskEdit
          Left = 223
          Top = 52
          Width = 479
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          Text = ''
        end
        object cnNF: TMaskEdit
          Left = 119
          Top = 29
          Width = 102
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          Text = ''
        end
        object StaticText35: TStaticText
          Left = 6
          Top = 75
          Width = 111
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Modelo'
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
        object cmod: TMaskEdit
          Left = 119
          Top = 75
          Width = 41
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
          Text = ''
        end
        object StaticText27: TStaticText
          Left = 163
          Top = 75
          Width = 31
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'S'#233'rie'
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
        object cSerie: TMaskEdit
          Left = 196
          Top = 75
          Width = 41
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
          Text = ''
        end
        object StaticText32: TStaticText
          Left = 6
          Top = 6
          Width = 111
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tipo'
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
        object ctpNF: TMaskEdit
          Left = 119
          Top = 6
          Width = 102
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 18
          Text = ''
        end
        object StaticText34: TStaticText
          Left = 239
          Top = 75
          Width = 55
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Munic'#237'pio'
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
        object ccMunFG: TMaskEdit
          Left = 296
          Top = 75
          Width = 67
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 20
          Text = ''
        end
        object ccMunFGNome: TMaskEdit
          Left = 364
          Top = 75
          Width = 338
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 21
          Text = ''
        end
        object StaticText36: TStaticText
          Left = 6
          Top = 121
          Width = 111
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tipo de Emiss'#227'o'
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
        object ctpEmis: TMaskEdit
          Left = 119
          Top = 121
          Width = 25
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 23
          Text = ''
        end
        object ctpEmisDesc: TMaskEdit
          Left = 145
          Top = 121
          Width = 557
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 24
          Text = ''
        end
        object StaticText37: TStaticText
          Left = 223
          Top = 6
          Width = 91
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tipo de Ambiente'
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
        object ctpAmb: TMaskEdit
          Left = 316
          Top = 6
          Width = 86
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 26
          Text = ''
        end
        object StaticText38: TStaticText
          Left = 6
          Top = 144
          Width = 111
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Finalidade'
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
        object cfinNFe: TMaskEdit
          Left = 119
          Top = 144
          Width = 25
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 28
          Text = ''
        end
        object cfinNFeDesc: TMaskEdit
          Left = 145
          Top = 144
          Width = 557
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 29
          Text = ''
        end
        object StaticText39: TStaticText
          Left = 6
          Top = 167
          Width = 111
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Processo de Emiss'#227'o'
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
        object cprocEmi: TMaskEdit
          Left = 119
          Top = 167
          Width = 25
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 31
          Text = ''
        end
        object cprocEmiDesc: TMaskEdit
          Left = 145
          Top = 167
          Width = 557
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 32
          Text = ''
        end
        object StaticText40: TStaticText
          Left = 6
          Top = 190
          Width = 111
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Vers'#227'o do Emissor'
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
        object cverProc: TMaskEdit
          Left = 119
          Top = 190
          Width = 583
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 34
          Text = ''
        end
        object cProtocolo: TMaskEdit
          Left = 477
          Top = 6
          Width = 152
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 35
          Text = ''
        end
        object StaticText67: TStaticText
          Left = 404
          Top = 6
          Width = 71
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Protocolo'
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
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&Emitente'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 711
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 867
        Height = 166
        Align = alClient
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitLeft = 0
        ExplicitTop = 1
        ExplicitWidth = 708
        ExplicitHeight = 175
        object lFornecedor: TLabel
          Left = 186
          Top = 10
          Width = 68
          Height = 13
          Caption = 'lFornecedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object StaticText12: TStaticText
          Left = 6
          Top = 30
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'CNPJ'
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
        object StaticText9: TStaticText
          Left = 6
          Top = 53
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Raz'#227'o Social'
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
        object StaticText10: TStaticText
          Left = 6
          Top = 76
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Nome Fantasia'
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
        object StaticText11: TStaticText
          Left = 6
          Top = 99
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Rua'
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
        object StaticText14: TStaticText
          Left = 314
          Top = 99
          Width = 22
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'N'#186
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
        object StaticText15: TStaticText
          Left = 6
          Top = 122
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Complemento'
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
        object StaticText16: TStaticText
          Left = 294
          Top = 122
          Width = 38
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Bairro'
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
        object StaticText17: TStaticText
          Left = 6
          Top = 145
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Munic'#237'pio'
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
        object StaticText18: TStaticText
          Left = 362
          Top = 145
          Width = 41
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Estado'
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
        object StaticText19: TStaticText
          Left = 445
          Top = 145
          Width = 34
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Pa'#237's'
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
        object StaticText20: TStaticText
          Left = 434
          Top = 99
          Width = 30
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'CEP'
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
        object StaticText21: TStaticText
          Left = 222
          Top = 30
          Width = 99
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Inscri'#231#227'o Estadual'
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
        object cCNPJ: TMaskEdit
          Left = 93
          Top = 30
          Width = 125
          Height = 21
          EditMask = '99.999.999/9999-99;0; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 18
          ParentFont = False
          TabOrder = 12
          Text = ''
        end
        object cxNome: TMaskEdit
          Left = 93
          Top = 53
          Width = 347
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          Text = ''
        end
        object cxFant: TMaskEdit
          Left = 93
          Top = 76
          Width = 347
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
          Text = ''
        end
        object cxLgr: TMaskEdit
          Left = 93
          Top = 99
          Width = 219
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
          Text = ''
        end
        object cCpl: TMaskEdit
          Left = 93
          Top = 122
          Width = 199
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
          Text = ''
        end
        object cNro: TMaskEdit
          Left = 338
          Top = 99
          Width = 94
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
          Text = ''
        end
        object cxBairro: TMaskEdit
          Left = 334
          Top = 122
          Width = 226
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 18
          Text = ''
        end
        object cMun: TMaskEdit
          Left = 93
          Top = 145
          Width = 75
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
          Text = ''
        end
        object cxMun: TMaskEdit
          Left = 169
          Top = 145
          Width = 191
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 20
          Text = ''
        end
        object cUF: TMaskEdit
          Left = 405
          Top = 145
          Width = 38
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 21
          Text = ''
        end
        object cCEP: TMaskEdit
          Left = 467
          Top = 99
          Width = 76
          Height = 21
          EditMask = '99999-999;0; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 9
          ParentFont = False
          TabOrder = 22
          Text = ''
        end
        object cPais: TMaskEdit
          Left = 481
          Top = 145
          Width = 43
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 23
          Text = ''
        end
        object cxPais: TMaskEdit
          Left = 525
          Top = 145
          Width = 174
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 24
          Text = ''
        end
        object cFone: TMaskEdit
          Left = 602
          Top = 99
          Width = 76
          Height = 21
          EditMask = '(99) 9999-9999;0; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 14
          ParentFont = False
          TabOrder = 25
          Text = ''
        end
        object StaticText2: TStaticText
          Left = 546
          Top = 99
          Width = 54
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Telefone'
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
        object cIE: TMaskEdit
          Left = 323
          Top = 30
          Width = 117
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 27
          Text = ''
        end
        object StaticText56: TStaticText
          Left = 6
          Top = 7
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'C'#243'digo'
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
        object cCodigo: TMaskEdit
          Left = 93
          Top = 7
          Width = 91
          Height = 21
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 29
          Text = ''
        end
      end
      object GroupBox6: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 175
        Width = 867
        Height = 87
        Align = alBottom
        Caption = 'Layout de captura dos dados do lote da NF-E'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        ExplicitLeft = 1
        ExplicitTop = 177
        ExplicitWidth = 366
        object StaticText79: TStaticText
          Left = 5
          Top = 15
          Width = 102
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Numero do Lote'
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
        object StaticText80: TStaticText
          Left = 5
          Top = 38
          Width = 102
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Data de Fabrica'#231#227'o'
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
        object StaticText81: TStaticText
          Left = 5
          Top = 61
          Width = 102
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Data de Validade'
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
        object cLayLoteNum: TMaskEdit
          Left = 109
          Top = 15
          Width = 251
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Text = ''
        end
        object cLayLoteFab: TMaskEdit
          Left = 109
          Top = 38
          Width = 251
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          Text = ''
        end
        object cLayLoteVal: TMaskEdit
          Left = 109
          Top = 61
          Width = 251
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          Text = ''
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = '&Destinat'#225'rio'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 711
      ExplicitHeight = 0
      object GroupBox2: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 867
        Height = 259
        Align = alClient
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitLeft = 0
        ExplicitTop = 2
        ExplicitWidth = 709
        ExplicitHeight = 154
        object StaticText5: TStaticText
          Left = 6
          Top = 11
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'CNPJ'
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
          Left = 6
          Top = 34
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Raz'#227'o Social'
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
        object StaticText22: TStaticText
          Left = 6
          Top = 57
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Rua'
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
        object StaticText23: TStaticText
          Left = 468
          Top = 57
          Width = 22
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'N'#186
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
        object StaticText26: TStaticText
          Left = 6
          Top = 80
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Bairro'
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
        object StaticText28: TStaticText
          Left = 6
          Top = 103
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Munic'#237'pio'
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
        object StaticText29: TStaticText
          Left = 6
          Top = 126
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Estado'
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
        object StaticText30: TStaticText
          Left = 134
          Top = 126
          Width = 34
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Pa'#237's'
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
        object StaticText33: TStaticText
          Left = 222
          Top = 11
          Width = 99
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Inscri'#231#227'o Estadual'
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
        object cDestCNPJ: TMaskEdit
          Left = 93
          Top = 11
          Width = 125
          Height = 21
          EditMask = '99.999.999/9999-99;0; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 18
          ParentFont = False
          TabOrder = 9
          Text = ''
        end
        object cDestxNome: TMaskEdit
          Left = 93
          Top = 34
          Width = 610
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          Text = ''
        end
        object cDestxLgr: TMaskEdit
          Left = 93
          Top = 57
          Width = 371
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          Text = ''
        end
        object cDestNro: TMaskEdit
          Left = 492
          Top = 57
          Width = 211
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          Text = ''
        end
        object cDestxBairro: TMaskEdit
          Left = 93
          Top = 80
          Width = 258
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          Text = ''
        end
        object cDestcMun: TMaskEdit
          Left = 93
          Top = 103
          Width = 75
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
          Text = ''
        end
        object cDestxMun: TMaskEdit
          Left = 169
          Top = 103
          Width = 271
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
          Text = ''
        end
        object cDestUF: TMaskEdit
          Left = 93
          Top = 126
          Width = 38
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
          Text = ''
        end
        object cDestcPais: TMaskEdit
          Left = 170
          Top = 126
          Width = 75
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
          Text = ''
        end
        object cDestxPais: TMaskEdit
          Left = 246
          Top = 126
          Width = 457
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 18
          Text = ''
        end
        object cDestIE: TMaskEdit
          Left = 323
          Top = 11
          Width = 117
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
          Text = ''
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = '&Totais'
      ImageIndex = 4
      object GroupBox3: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 867
        Height = 259
        Align = alClient
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object StaticText7: TStaticText
          Left = 7
          Top = 6
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'B.C.ICMS'
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
        object StaticText25: TStaticText
          Left = 221
          Top = 6
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ICMS'
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
        object cBCICMS: TCurrencyEdit
          Left = 104
          Top = 6
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object cValorICMS: TCurrencyEdit
          Left = 318
          Top = 6
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object StaticText31: TStaticText
          Left = 7
          Top = 52
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'B.C.ICMS Susbt.'
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
        object StaticText41: TStaticText
          Left = 221
          Top = 52
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ICMS Subst.'
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
        object cBCICMSSub: TCurrencyEdit
          Left = 104
          Top = 52
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object cValorICMSSub: TCurrencyEdit
          Left = 318
          Top = 52
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object StaticText42: TStaticText
          Left = 7
          Top = 75
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Produtos'
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
        object cProdutos: TCurrencyEdit
          Left = 104
          Top = 75
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object StaticText43: TStaticText
          Left = 7
          Top = 98
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Frete'
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
        object cFrete: TCurrencyEdit
          Left = 104
          Top = 98
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object StaticText44: TStaticText
          Left = 221
          Top = 98
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Seguro'
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
        object cSeguro: TCurrencyEdit
          Left = 318
          Top = 98
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
        end
        object StaticText45: TStaticText
          Left = 221
          Top = 75
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Desconto'
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
        object cDesconto: TCurrencyEdit
          Left = 318
          Top = 75
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
        end
        object StaticText46: TStaticText
          Left = 7
          Top = 121
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'II'
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
        object cII: TCurrencyEdit
          Left = 104
          Top = 121
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
        end
        object StaticText47: TStaticText
          Left = 7
          Top = 144
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'B.C.IPI'
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
        object cIPI: TCurrencyEdit
          Left = 318
          Top = 144
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
        end
        object StaticText48: TStaticText
          Left = 7
          Top = 190
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'PIS'
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
        object cPIS: TCurrencyEdit
          Left = 104
          Top = 190
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 21
        end
        object StaticText49: TStaticText
          Left = 221
          Top = 190
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'COFINS'
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
        object cCOFINS: TCurrencyEdit
          Left = 318
          Top = 190
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 23
        end
        object StaticText50: TStaticText
          Left = 221
          Top = 121
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Despesas'
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
        object cDespesas: TCurrencyEdit
          Left = 318
          Top = 121
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 25
        end
        object StaticText51: TStaticText
          Left = 7
          Top = 213
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Total da Nota'
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
        object cTotalNota: TCurrencyEdit
          Left = 104
          Top = 213
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 27
        end
        object StaticText52: TStaticText
          Left = 7
          Top = 167
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Isentas IPI'
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
        object cIsentasIPI: TCurrencyEdit
          Left = 104
          Top = 167
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 29
        end
        object StaticText53: TStaticText
          Left = 221
          Top = 167
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Outras IPI'
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
        object cOutrasIPI: TCurrencyEdit
          Left = 318
          Top = 167
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 31
        end
        object StaticText54: TStaticText
          Left = 7
          Top = 29
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Isentas ICMS'
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
        object StaticText55: TStaticText
          Left = 221
          Top = 29
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Outras ICMS'
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
        object cIsentasICMS: TCurrencyEdit
          Left = 104
          Top = 29
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 34
        end
        object cOutrasICMS: TCurrencyEdit
          Left = 318
          Top = 29
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 35
        end
        object StaticText62: TStaticText
          Left = 221
          Top = 144
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'IPI'
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
        object cBCIPI: TCurrencyEdit
          Left = 104
          Top = 144
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 37
        end
        object StaticText63: TStaticText
          Left = 7
          Top = 236
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Qtde.Total'
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
        object cQtdeTotal: TCurrencyEdit
          Left = 104
          Top = 236
          Width = 114
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
          TabOrder = 39
        end
        object StaticText64: TStaticText
          Left = 221
          Top = 213
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Total L'#237'quido'
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
        object cLiquido: TCurrencyEdit
          Left = 318
          Top = 213
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 41
        end
        object StaticText65: TStaticText
          Left = 221
          Top = 236
          Width = 95
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
          TabOrder = 42
          Transparent = False
          StyleElements = []
        end
        object cPesoLiquido: TCurrencyEdit
          Left = 318
          Top = 236
          Width = 114
          Height = 21
          AutoSize = False
          DecimalPlaces = 3
          DisplayFormat = ',000.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 43
        end
        object StaticText66: TStaticText
          Left = 434
          Top = 236
          Width = 95
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
          TabOrder = 44
          Transparent = False
          StyleElements = []
        end
        object cPesoBruto: TCurrencyEdit
          Left = 531
          Top = 236
          Width = 107
          Height = 21
          AutoSize = False
          DecimalPlaces = 3
          DisplayFormat = ',000.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 45
        end
        object StaticText85: TStaticText
          Left = 436
          Top = 6
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'B.C.IBS'
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
        object StaticText89: TStaticText
          Left = 650
          Top = 6
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'IBS'
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
        object cBCIBS: TCurrencyEdit
          Left = 533
          Top = 6
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 48
        end
        object cValorIBS: TCurrencyEdit
          Left = 747
          Top = 6
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 49
        end
        object StaticText87: TStaticText
          Left = 436
          Top = 52
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'B.C.IS'
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
        object StaticText88: TStaticText
          Left = 650
          Top = 52
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'IS'
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
        object cBCIS: TCurrencyEdit
          Left = 533
          Top = 52
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 52
        end
        object cValorIS: TCurrencyEdit
          Left = 747
          Top = 52
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 53
        end
        object StaticText86: TStaticText
          Left = 436
          Top = 29
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'B.C.CBS'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 54
          Transparent = False
          StyleElements = []
        end
        object StaticText90: TStaticText
          Left = 650
          Top = 29
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'CBS'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 55
          Transparent = False
          StyleElements = []
        end
        object cBCCBS: TCurrencyEdit
          Left = 533
          Top = 29
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 56
        end
        object cValorCBS: TCurrencyEdit
          Left = 747
          Top = 29
          Width = 114
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 57
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = '&Itens'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 711
      ExplicitHeight = 0
      object GradeItens: TStringGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 867
        Height = 259
        Align = alClient
        ColCount = 2
        DefaultColWidth = 70
        DefaultRowHeight = 18
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
        ParentFont = False
        TabOrder = 0
        ExplicitLeft = 1
        ExplicitTop = 2
        ExplicitWidth = 708
        ExplicitHeight = 260
        ColWidths = (
          70
          70)
      end
    end
    object TabSheet6: TTabSheet
      Caption = '&Cadastro'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 711
      ExplicitHeight = 0
      object GradeCadastro: TStringGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 867
        Height = 259
        Align = alClient
        ColCount = 9
        DefaultColWidth = 70
        DefaultRowHeight = 18
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing]
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnClick = GradeCadastroClick
        OnDrawCell = GradeCadastroDrawCell
        ExplicitLeft = 1
        ExplicitTop = 2
        ExplicitWidth = 708
        ExplicitHeight = 260
        ColWidths = (
          70
          70
          70
          70
          70
          70
          70
          70
          70)
      end
    end
    object TabSheet7: TTabSheet
      Caption = '&Adi'#231#245'es'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 711
      ExplicitHeight = 0
      object GradeAdicoes: TStringGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 867
        Height = 259
        Align = alClient
        ColCount = 6
        DefaultColWidth = 70
        DefaultRowHeight = 18
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing]
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnClick = GradeCadastroClick
        OnDrawCell = GradeCadastroDrawCell
        ExplicitLeft = 1
        ExplicitTop = 2
        ExplicitWidth = 708
        ExplicitHeight = 260
        ColWidths = (
          70
          70
          70
          70
          70
          70)
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Pre'#231'o Venda'
      ImageIndex = 7
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 711
      ExplicitHeight = 0
      object cPrecoVenda: TListBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 867
        Height = 259
        Align = alClient
        ExtendedSelect = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        IntegralHeight = True
        ItemHeight = 15
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'NF Ref.'
      ImageIndex = 8
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 711
      ExplicitHeight = 0
      object GradeReferencia: TStringGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 867
        Height = 259
        Align = alClient
        ColCount = 9
        DefaultColWidth = 70
        DefaultRowHeight = 18
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing]
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnClick = GradeCadastroClick
        OnDrawCell = GradeCadastroDrawCell
        ExplicitLeft = 1
        ExplicitTop = 2
        ExplicitWidth = 708
        ExplicitHeight = 260
        ColWidths = (
          70
          70
          70
          70
          70
          70
          70
          70
          70)
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'Lote'
      ImageIndex = 9
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 711
      ExplicitHeight = 0
      object GradeLote: TStringGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 867
        Height = 259
        Align = alClient
        ColCount = 2
        DefaultColWidth = 70
        DefaultRowHeight = 18
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing]
        ParentFont = False
        TabOrder = 0
        OnDrawCell = GradeLoteDrawCell
        ExplicitLeft = 1
        ExplicitTop = 2
        ExplicitWidth = 708
        ExplicitHeight = 260
        ColWidths = (
          70
          70)
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'Erros'
      ImageIndex = 10
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 711
      ExplicitHeight = 0
      object cErros: TMemo
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 867
        Height = 259
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 711
        ExplicitHeight = 265
      end
    end
  end
  object cNotas: TListBox
    AlignWithMargins = True
    Left = 3
    Top = 619
    Width = 881
    Height = 82
    Margins.Bottom = 10
    Align = alBottom
    ExtendedSelect = False
    ItemHeight = 13
    TabOrder = 2
    OnClick = cNotasClick
  end
  object GroupBox4: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 881
    Height = 301
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object bPesqNav: TSpeedButton
      Left = 494
      Top = 141
      Width = 22
      Height = 23
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
    object StaticText57: TStaticText
      Left = 7
      Top = 26
      Width = 104
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Refer'#234'ncia'
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
    object cReferencia: TDBLookupComboBox
      Left = 113
      Top = 27
      Width = 381
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao'
      ListFieldIndex = 1
      ListSource = Dados.dsReferenciasFiscais
      ParentFont = False
      TabOrder = 0
      OnClick = cReferenciaClick
      OnKeyDown = cReferenciaKeyDown
    end
    object StaticText58: TStaticText
      Left = 7
      Top = 73
      Width = 104
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
      TabOrder = 7
      Transparent = False
      StyleElements = []
    end
    object cTipoProduto: TDBLookupComboBox
      Left = 113
      Top = 73
      Width = 381
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Descricao'
      ListSource = Dados.dsTipoProduto
      ParentFont = False
      TabOrder = 2
      OnKeyDown = cTipoProdutoKeyDown
    end
    object StaticText59: TStaticText
      Left = 7
      Top = 50
      Width = 104
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Ramo de Atividade'
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
    object cCentroCusto: TDBLookupComboBox
      Left = 113
      Top = 96
      Width = 381
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao'
      ListFieldIndex = 1
      ListSource = Dados.dsCentroCusto
      ParentFont = False
      TabOrder = 3
      OnKeyDown = cCentroCustoKeyDown
    end
    object StaticText60: TStaticText
      Left = 7
      Top = 96
      Width = 104
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Centro Custo'
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
    object StaticText61: TStaticText
      Left = 7
      Top = 119
      Width = 104
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Processo'
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
    object cProcesso: TComboBox
      Left = 113
      Top = 119
      Width = 186
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnExit = cProcessoExit
    end
    object StaticText68: TStaticText
      Left = 7
      Top = 165
      Width = 104
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Origem Mercadoria'
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
    object cRamoAtividade: TDBLookupComboBox
      Left = 113
      Top = 50
      Width = 381
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao'
      ListFieldIndex = 1
      ListSource = Dados.dsRamoAtividade
      ParentFont = False
      TabOrder = 1
      OnKeyDown = cReferenciaKeyDown
    end
    object cCIAP: TGroupBox
      Left = 602
      Top = 13
      Width = 200
      Height = 113
      Caption = '(CIAP) ICMS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object StaticText69: TStaticText
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
      object StaticText70: TStaticText
        Left = 6
        Top = 62
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
      object StaticText71: TStaticText
        Left = 6
        Top = 16
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
      object StaticText72: TStaticText
        Left = 6
        Top = 85
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
      object cCIAPTipo: TRxDBComboBox
        Left = 91
        Top = 85
        Width = 103
        Height = 21
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
      object cCIAPAliquota: TCurrencyEdit
        Left = 91
        Top = 16
        Width = 63
        Height = 21
        AutoSize = False
        DisplayFormat = '##0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object cCIAPBCICMS: TCurrencyEdit
        Left = 91
        Top = 39
        Width = 103
        Height = 21
        AutoSize = False
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object cCIAPValor: TCurrencyEdit
        Left = 91
        Top = 62
        Width = 103
        Height = 21
        AutoSize = False
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
    object cOrigem: TRxDBLookupCombo
      Left = 113
      Top = 165
      Width = 381
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
      TabOrder = 12
    end
    object StaticText73: TStaticText
      Left = 7
      Top = 188
      Width = 104
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
      TabOrder = 13
      Transparent = False
      StyleElements = []
    end
    object cTipoMercadoria: TDBLookupComboBox
      Left = 113
      Top = 188
      Width = 381
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
      TabOrder = 14
    end
    object GroupBox5: TGroupBox
      Left = 6
      Top = 213
      Width = 705
      Height = 41
      Caption = 'Forma'#231#227'o do Pre'#231'o de Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      object StaticText74: TStaticText
        Left = 137
        Top = 15
        Width = 53
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Comiss'#227'o'
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
      object StaticText75: TStaticText
        Left = 270
        Top = 15
        Width = 86
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Custo Financeiro'
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
      object StaticText76: TStaticText
        Left = 6
        Top = 15
        Width = 43
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Lucro'
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
      object StaticText77: TStaticText
        Left = 438
        Top = 15
        Width = 57
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Custo Fixo'
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
      object cLucro: TCurrencyEdit
        Left = 55
        Top = 15
        Width = 70
        Height = 21
        AutoSize = False
        DisplayFormat = '##0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object cComissao: TCurrencyEdit
        Left = 192
        Top = 15
        Width = 70
        Height = 21
        AutoSize = False
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object cCustoFinanceiro: TCurrencyEdit
        Left = 358
        Top = 15
        Width = 70
        Height = 21
        AutoSize = False
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object StaticText78: TStaticText
        Left = 577
        Top = 15
        Width = 43
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Margem'
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
      object cMargem: TCurrencyEdit
        Left = 622
        Top = 15
        Width = 70
        Height = 21
        AutoSize = False
        DisplayFormat = '##0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object cCustoFixo: TCurrencyEdit
        Left = 497
        Top = 15
        Width = 70
        Height = 21
        AutoSize = False
        DisplayFormat = '##0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
    end
    object GroupBox7: TGroupBox
      Left = 6
      Top = 258
      Width = 262
      Height = 36
      Caption = 'Informa'#231#245'es do Emitente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      object cSimples: TCheckBox
        Left = 9
        Top = 15
        Width = 104
        Height = 17
        Caption = 'Simples Nacional'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object cZonaFranca: TCheckBox
        Left = 121
        Top = 15
        Width = 85
        Height = 17
        Caption = 'Zona Franca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object cMEI: TCheckBox
        Left = 209
        Top = 15
        Width = 50
        Height = 17
        Caption = 'MEI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object cEscala: TCheckBox
      Left = 498
      Top = 191
      Width = 174
      Height = 17
      Caption = 'Produzido em escala relevante'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 17
    end
    object cSubst: TCheckBox
      Left = 480
      Top = 271
      Width = 191
      Height = 17
      Caption = 'Substitui Notas Fiscais Encontradas'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbChecked
      TabOrder = 18
    end
    object StaticText82: TStaticText
      Left = 7
      Top = 142
      Width = 104
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
      TabOrder = 19
      Transparent = False
      StyleElements = []
    end
    object cNavio: TDBLookupComboBox
      Left = 113
      Top = 142
      Width = 381
      Height = 21
      Color = clWhite
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
      ParentFont = False
      TabOrder = 20
    end
    object cDI: TMaskEdit
      Left = 351
      Top = 119
      Width = 143
      Height = 21
      EditMask = '##/#######-#;0; '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 12
      ParentFont = False
      TabOrder = 21
      Text = ''
    end
    object StaticText83: TStaticText
      Left = 301
      Top = 119
      Width = 48
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'DI N'#186
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
    object StaticText84: TStaticText
      Left = 7
      Top = 4
      Width = 104
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Data da Entrada'
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
    object cDataEnt: TDateEdit
      Left = 113
      Top = 4
      Width = 100
      Height = 21
      CheckOnExit = True
      Ctl3D = True
      DialogTitle = 'Selecione a data de Entrada'
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
      ButtonWidth = 20
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      PopupColor = clWhite
      YearDigits = dyFour
      TabOrder = 24
      Text = '01/07/2024'
    end
  end
  object tCodigo: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM Fornecedores')
    Left = 14
    Top = 613
    object tCodigoCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = '.'
      ReadOnly = True
    end
  end
  object tProdutos: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO Produtos'
      
        '  (Codigo, Codigo_Fabricante, Tipo, Unidade, NCM, Estoque_Dispon' +
        'ivel, Estoque_Armazem, Taxa_CoversaoPeso, Peso, PesoKg, Descrica' +
        'o)'
      'VALUES'
      
        '  (:Codigo, :Codigo_Fabricante, :Tipo, :Unidade, :NCM, :Estoque_' +
        'Disponivel, :Estoque_Armazem, :Taxa_CoversaoPeso, :Peso, :PesoKg' +
        ', :Descricao)')
    SQLDelete.Strings = (
      'DELETE FROM Produtos'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE Produtos'
      'SET'
      
        '  Codigo = :Codigo, Codigo_Fabricante = :Codigo_Fabricante, Tipo' +
        ' = :Tipo, Unidade = :Unidade, NCM = :NCM, Estoque_Disponivel = :' +
        'Estoque_Disponivel, Estoque_Armazem = :Estoque_Armazem, Taxa_Cov' +
        'ersaoPeso = :Taxa_CoversaoPeso, Peso = :Peso, PesoKg = :PesoKg, ' +
        'Descricao = :Descricao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT Produtos.Codigo, Produtos.Codigo_Fabricante, Produtos.Tip' +
        'o, Produtos.Unidade, Produtos.NCM, Produtos.Estoque_Disponivel, ' +
        'Produtos.Estoque_Armazem, Produtos.Taxa_CoversaoPeso, Produtos.P' +
        'eso, Produtos.PesoKg, Produtos.Descricao FROM Produtos'
      'WHERE Produtos.Codigo = :Codigo ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Codigo) as Codigo FROM Produtos')
    FetchRows = 1
    Left = 76
    Top = 613
  end
  object tContaPlano: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      '')
    FetchRows = 1
    Left = 138
    Top = 614
  end
  object tCodigoPlano: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 217
    Top = 616
  end
  object tFaturamento: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 358
    Top = 526
  end
  object tProcuraProdutos: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 254
    Top = 518
  end
  object dstProcuraProdutos: TDataSource
    DataSet = tProcuraProdutos
    Left = 252
    Top = 566
  end
  object PopupMenu1: TPopupMenu
    Left = 584
    Top = 540
    object mnBuscar: TMenuItem
      Caption = 'Buscar C'#243'digo no Cadastro de produtos'
      ShortCut = 16454
      OnClick = mnBuscarClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mnCancelar: TMenuItem
      Caption = '&Cancelar'
    end
  end
  object tProcuraDescricao: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 342
    Top = 614
  end
  object tCustoMedio: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 464
    Top = 613
  end
  object tExiste: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 520
    Top = 613
  end
  object tRegistro: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 62
    Top = 533
  end
  object tDetalhe: TMSQuery
    Connection = Dados.Banco
    FetchRows = 1
    Left = 118
    Top = 533
  end
  object tItem: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 560
    Top = 613
  end
  object tTotaliza: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 600
    Top = 613
  end
  object tLancamento: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 664
    Top = 613
  end
  object tTmp: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 454
    Top = 534
  end
  object tTmp2: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 502
    Top = 537
  end
end
