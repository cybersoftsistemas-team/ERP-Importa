object Impressao_Cadastros_Produtos: TImpressao_Cadastros_Produtos
  Left = 413
  Top = 211
  BorderStyle = bsDialog
  Caption = 'Impressao_Cadastros_Produtos'
  ClientHeight = 614
  ClientWidth = 681
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
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 681
    Height = 45
    Align = alTop
    Stretch = True
    ExplicitWidth = 674
  end
  object bDesTodos: TSpeedButton
    Left = 573
    Top = 504
    Width = 75
    Height = 30
    Caption = '&Nenhum'
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
    OnClick = bDesTodosClick
  end
  object bSelTodos: TSpeedButton
    Left = 497
    Top = 504
    Width = 75
    Height = 30
    Caption = '&Todos'
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000C40E0000C40E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00007720077000
      00000076660770000000006EE6267700000007AEEE62770000000AEEEE627770
      00007EEEEEE607700000EEEEEEE6267700008EEE08EE607770000EE0008EE607
      700000000088E627770000000008EE607700000000008EE607000000000008EE
      6070000000000088E6080000000000088E6600000000000088EA}
    OnClick = bSelTodosClick
  end
  object SpeedButton1: TSpeedButton
    Left = 650
    Top = 476
    Width = 25
    Height = 22
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000C40E0000C40E00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF999900000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF999999333300000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF9999FF666699333300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF9999FF6666FF666699333300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF9999FF6666FF6666FF666699333300000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF9999FF6666FF6666FF6666FF666699333300000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF9999FF6666FF6666FF6666FF6666FF666699333300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF9999FF6666FF6666FF6666FF6666FF666600000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF9999FF6666FF6666FF6666FF666600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF9999FF6666FF6666FF666600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF9999FF6666FF666600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF9999FF666600000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00FF999900000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    OnClick = SpeedButton1Click
  end
  object bFiltrar: TSpeedButton
    Left = 421
    Top = 504
    Width = 75
    Height = 30
    Caption = '&Filtrar'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000303030404040
      4040404040404040404040404040404040404040404040404040404040404040
      404040404040402020207F7F7FBFBFBFA0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0
      A0A0A0A0A0A0A0A0A0A0A09090904040406060608080804040407F7F7FDFDFDF
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0B0B0B0404040AFAF
      AF5050509090904040407F7F7FDFDFDFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0B0B0B0404040BFBFBFBFBFBF6F6F6FA0A0A04040407F7F7FDFDFDF
      C0C0C0C0C0C0B0B0B0A0A0A0A0A0A0B0B0B0B0B0B0404040BFBFBFBFBFBF6F6F
      6FC0C0C0A0A0A04040407F7F7FDFDFDFC0C0C090909040404040404040404080
      8080404040BFBFBFBFBFBF6F6F6FC0C0C0C0C0C0A0A0A04040407F7F7FDFDFDF
      707070606060909090606060909090606060707070CFCFCF6F6F6FC0C0C0C0C0
      C0C0C0C0A0A0A04040407F7F7F9F9F9F9090906F6F6F9F9F9FDFDFDFAFAFAF60
      6060B0B0B0202020B0B0B0C0C0C0C0C0C0C0C0C0A0A0A04040407F7F7F6F6F6F
      606060DFDFDFDFDFDFDFDFDFDFDFDFDFDFDF606060505050A0A0A0C0C0C0C0C0
      C0C0C0C0A0A0A04040407F7F7F6060606F6F6FDFDFDFDFDFDFDFDFDFDFDFDFDF
      DFDF6F6F6F606060A0A0A0C0C0C0C0C0C0C0C0C0A0A0A04040407F7F7F606060
      6F6F6FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEF7F7F7F606060A0A0A0C0C0C0C0C0
      C0C0C0C0A0A0A04040407F7F7F6060606F6F6FFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF6F6F6F606060C0C0C0C0C0C0C0C0C0C0C0C0A0A0A04040407F7F7F7F7F7F
      909090404040404040404040404040404040909090606060C0C0C0C0C0C0C0C0
      C0C0C0C0A0A0A04040403F3F3F7F7F7F30303090909030303000000030303090
      90903030307F7F7FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF505050FFFFFFFFFFFF
      FFFFFF000000606060606060606060000000FFFFFF000000FF0000FF0000FF00
      00FF00007F0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF000000000000000000000000000000FFFFFF}
    OnClick = bFiltrarClick
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 184
    Height = 21
    Caption = 'IMPRESS'#195'O - CADASTROS'
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
    Width = 146
    Height = 18
    Caption = 'Cadastro dos Produtos.'
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
    Top = 584
    Width = 681
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 7
    DesignSize = (
      681
      30)
    object bSair: TButton
      Left = 614
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
    object bImprimir: TButton
      Left = 548
      Top = 1
      Width = 66
      Height = 28
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      OnClick = bImprimirClick
    end
  end
  object StaticText2: TStaticText
    Left = 8
    Top = 76
    Width = 165
    Height = 21
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Tipo de produto'
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
  object cTipo: TDBLookupComboBox
    Left = 175
    Top = 76
    Width = 497
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyField = 'Codigo'
    ListField = 'Descricao;Codigo'
    ListSource = Dados.dsTipoProduto
    ParentFont = False
    TabOrder = 1
    OnKeyDown = cTipoKeyDown
  end
  object StaticText4: TStaticText
    Left = 8
    Top = 122
    Width = 165
    Height = 21
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Unidade de medida'
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
  object cUnidade: TDBLookupComboBox
    Left = 175
    Top = 122
    Width = 497
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyField = 'Codigo'
    ListField = 'Codigo;Descricao'
    ListFieldIndex = 1
    ListSource = Dados.dsUnidades
    ParentFont = False
    TabOrder = 3
    OnKeyDown = cUnidadeKeyDown
  end
  object StaticText20: TStaticText
    Left = 8
    Top = 145
    Width = 165
    Height = 22
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Classe de enquadramento do IPI'
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
  object cClasseIPI: TDBLookupComboBox
    Left = 175
    Top = 145
    Width = 76
    Height = 21
    DropDownRows = 25
    DropDownWidth = 80
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyField = 'Classe'
    ListField = 'Classe;Valor_IPI'
    ListSource = dmFiscal.dsClasseIPI
    ParentFont = False
    TabOrder = 4
    OnKeyDown = cClasseIPIKeyDown
  end
  object StaticText17: TStaticText
    Left = 8
    Top = 99
    Width = 165
    Height = 21
    Cursor = crArrow
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Tipo de item (SPED)'
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
  object cTipoSPED: TDBLookupComboBox
    Left = 175
    Top = 99
    Width = 497
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyField = 'Codigo'
    ListField = 'Descricao;Codigo'
    ListSource = Dados.dsTipoItem
    ParentFont = False
    TabOrder = 2
    OnKeyDown = cTipoSPEDKeyDown
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 169
    Width = 165
    Height = 22
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
    TabOrder = 12
    Transparent = False
    StyleElements = []
  end
  object cNCM: TMaskEdit
    Left = 175
    Top = 169
    Width = 76
    Height = 21
    EditMask = '9999.99.99;0; '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    TabOrder = 5
    Text = ''
  end
  object StaticText3: TStaticText
    Left = 8
    Top = 217
    Width = 165
    Height = 22
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Que contenham na descri'#231#227'o'
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
  object cDescricao: TMaskEdit
    Left = 175
    Top = 217
    Width = 497
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    Text = ''
  end
  object cExcel: TCheckBox
    Left = 8
    Top = 524
    Width = 157
    Height = 17
    Caption = 'Enviar dados para o EXCEL.'
    Checked = True
    State = cbChecked
    TabOrder = 14
  end
  object StaticText5: TStaticText
    Left = 8
    Top = 249
    Width = 664
    Height = 19
    Alignment = taCenter
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
    TabOrder = 15
    Transparent = False
    StyleElements = []
  end
  object cNumeros: TEdit
    Left = 113
    Top = 477
    Width = 535
    Height = 21
    Hint = 
      '  Informe os numero separados por v'#237'rgula para selecionar na gra' +
      'de...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 16
  end
  object StaticText6: TStaticText
    Left = 8
    Top = 477
    Width = 103
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Selecionar N'#250'meros'
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
  object Grade: TRxDBGrid
    Left = 8
    Top = 268
    Width = 664
    Height = 184
    DataSource = Dados.dsProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
    ParentFont = False
    ReadOnly = True
    TabOrder = 18
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = GradeCellClick
    OnDrawColumnCell = GradeDrawColumnCell
    RowColor2 = 16776176
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Selecionado'
        Title.Alignment = taCenter
        Title.Caption = 'Sel'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 18
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Codigo'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 482
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NCM'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Calibri'
        Title.Font.Style = []
        Width = 63
        Visible = True
      end>
  end
  object StaticText7: TStaticText
    Left = 8
    Top = 454
    Width = 103
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Descri'#231#227'o'
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
  object cPesquisa: TEdit
    Left = 113
    Top = 454
    Width = 561
    Height = 21
    Hint = 
      '  Informe os numero separados por v'#237'rgula para selecionar na gra' +
      'de...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 20
    OnChange = cPesquisaChange
  end
  object cSelecionados: TCheckBox
    Left = 8
    Top = 504
    Width = 211
    Height = 17
    Caption = 'Imprimir apenas produtos selecionados.'
    Checked = True
    State = cbChecked
    TabOrder = 21
  end
  object StaticText8: TStaticText
    Left = 8
    Top = 193
    Width = 165
    Height = 22
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Fornecedor / Fabricante'
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
  object StaticText9: TStaticText
    Left = 8
    Top = 52
    Width = 165
    Height = 22
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
    TabOrder = 23
    Transparent = False
    StyleElements = []
  end
  object cCliente: TDBLookupComboBox
    Left = 175
    Top = 53
    Width = 497
    Height = 21
    DropDownRows = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyField = 'Codigo'
    ListField = 'Nome;Codigo'
    ListSource = Dados.dsClientes
    ParentFont = False
    TabOrder = 0
    OnKeyDown = cClienteKeyDown
  end
  object cExcelSimp: TCheckBox
    Left = 8
    Top = 544
    Width = 140
    Height = 17
    Caption = 'Impress'#227'o Simplificada'
    Checked = True
    State = cbChecked
    TabOrder = 24
  end
  object cFornecedor: TDBLookupComboBox
    Left = 175
    Top = 193
    Width = 497
    Height = 21
    DropDownRows = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyField = 'Codigo'
    ListField = 'Nome;Codigo'
    ListSource = Dados.dsFornecedores
    ParentFont = False
    TabOrder = 25
    OnKeyDown = cFornecedorKeyDown
  end
  object cSit: TRadioGroup
    Left = 224
    Top = 499
    Width = 153
    Height = 81
    Caption = 'Situa'#231#227'o Cadastral'
    Items.Strings = (
      'Todos'
      'Somente Ativos'
      'Somente Desativados')
    TabOrder = 26
  end
  object rProdutos: TppReport
    AutoStop = False
    DataPipeline = pProdutos
    NoDataBehaviors = [ndMessageDialog, ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Cybersoft - Cadastro de Produtos'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Sistemas\Faturamento\Codigo Fonte\Relatorios\CadastroProdutos' +
      '.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    CachePages = True
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
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
    PreviewFormSettings.ZoomSetting = zs100Percent
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
    Left = 512
    Top = 7
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pProdutos'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 20902
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 4995
        mmLeft = 28047
        mmTop = 0
        mmWidth = 256383
        BandType = 0
        LayerName = Foreground
      end
      object lTitulo: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTitulo'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Cadastro de produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 28047
        mmTop = 7673
        mmWidth = 256383
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTitulo1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'C'#211'DIGO'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 2921
        mmLeft = 0
        mmTop = 17463
        mmWidth = 14288
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DESCRI'#199#195'O'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 2921
        mmLeft = 34661
        mmTop = 17463
        mmWidth = 98161
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'C'#211'DIGO FAB.'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 2921
        mmLeft = 14816
        mmTop = 17463
        mmWidth = 19314
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'UM'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 2921
        mmLeft = 157957
        mmTop = 17463
        mmWidth = 5292
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NCM'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 2921
        mmLeft = 163513
        mmTop = 17463
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PESO LIQ.'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 2921
        mmLeft = 178330
        mmTop = 17463
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'IPI'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 2921
        mmLeft = 193940
        mmTop = 17463
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'II'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 2921
        mmLeft = 221192
        mmTop = 17463
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PIS/COFINS'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 2921
        mmLeft = 229394
        mmTop = 17463
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'QTDE UN.'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 2921
        mmLeft = 248973
        mmTop = 17463
        mmWidth = 13758
        BandType = 0
        LayerName = Foreground
      end
      object lTitulo2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTitulo2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Todos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 28047
        mmTop = 12700
        mmWidth = 256383
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ESTOQUE MIN'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 2921
        mmLeft = 133086
        mmTop = 17463
        mmWidth = 24606
        BandType = 0
        LayerName = Foreground
      end
      object iLogo: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'iLogo'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 16933
        mmLeft = 0
        mmTop = 0
        mmWidth = 27781
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label102'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'VALOR'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 2921
        mmLeft = 263261
        mmTop = 17463
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      Background1.Brush.Color = 16772332
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 9789
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Codigo'
        DataPipeline = pProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pProdutos'
        mmHeight = 3006
        mmLeft = 0
        mmTop = 0
        mmWidth = 14288
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'Codigo_Fabricante'
        DataPipeline = pProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pProdutos'
        mmHeight = 3006
        mmLeft = 14816
        mmTop = 0
        mmWidth = 19314
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        DataField = 'NCM'
        DataPipeline = pProdutos
        DisplayFormat = '9999.99.99;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pProdutos'
        mmHeight = 3006
        mmLeft = 163513
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Anchors = [atLeft, atBottom]
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Peso_Liquido'
        DataPipeline = pProdutos
        DisplayFormat = '#,##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProdutos'
        mmHeight = 3006
        mmLeft = 178330
        mmTop = 0
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Anchors = [atLeft, atBottom]
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Aliquota_IPI'
        DataPipeline = pProdutos
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProdutos'
        mmHeight = 3006
        mmLeft = 193940
        mmTop = 0
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Anchors = [atLeft, atBottom]
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Valor_IPI'
        DataPipeline = pProdutos
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProdutos'
        mmHeight = 3006
        mmLeft = 202407
        mmTop = 0
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Anchors = [atLeft, atBottom]
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Aliquota_II'
        DataPipeline = pProdutos
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProdutos'
        mmHeight = 3006
        mmLeft = 221192
        mmTop = 0
        mmWidth = 7673
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Anchors = [atLeft, atBottom]
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Aliquota_PIS'
        DataPipeline = pProdutos
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProdutos'
        mmHeight = 3006
        mmLeft = 229394
        mmTop = 0
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        Anchors = [atLeft, atBottom]
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Aliquota_COFINS'
        DataPipeline = pProdutos
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProdutos'
        mmHeight = 3006
        mmLeft = 239184
        mmTop = 0
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Anchors = [atLeft, atBottom]
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'ClasseEnquadra_IPI'
        DataPipeline = pProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pProdutos'
        mmHeight = 3006
        mmLeft = 214578
        mmTop = 0
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Anchors = [atLeft, atBottom]
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Quantidade_Unidade'
        DataPipeline = pProdutos
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProdutos'
        mmHeight = 3006
        mmLeft = 248973
        mmTop = 0
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground
      end
      object lDescricao: TppMemo
        DesignLayer = ppDesignLayer1
        UserName = 'lDescricao'
        Border.mmPadding = 0
        Caption = 'lDescricao'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        mmHeight = 3440
        mmLeft = 34661
        mmTop = 0
        mmWidth = 98161
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Anchors = [atLeft, atBottom]
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Estoque_MinimoPerc'
        DataPipeline = pProdutos
        DisplayFormat = '#0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProdutos'
        mmHeight = 3006
        mmLeft = 133086
        mmTop = 0
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        Anchors = [atLeft, atBottom]
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Estoque_Minimo'
        DataPipeline = pProdutos
        DisplayFormat = '#0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProdutos'
        mmHeight = 2910
        mmLeft = 141023
        mmTop = 0
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Anchors = [atLeft, atBottom]
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Unidade'
        DataPipeline = pProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pProdutos'
        mmHeight = 3006
        mmLeft = 157957
        mmTop = 0
        mmWidth = 5292
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Anchors = [atLeft, atBottom]
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Valor_Venda'
        DataPipeline = pProdutos
        DisplayFormat = '#0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProdutos'
        mmHeight = 3006
        mmLeft = 263261
        mmTop = 0
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer1
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
        Transparent = True
        mmHeight = 2910
        mmLeft = 0
        mmTop = 529
        mmWidth = 45773
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
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
        mmLeft = 116417
        mmTop = 529
        mmWidth = 65088
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable3'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 181769
        mmTop = 529
        mmWidth = 24077
        BandType = 8
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 48154
        mmTop = 265
        mmWidth = 5821
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 276490
        mmTop = 265
        mmWidth = 7673
        BandType = 8
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 284428
        BandType = 8
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 266171
        mmTop = 265
        mmWidth = 1852
        BandType = 8
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
    object ppParameterList1: TppParameterList
    end
  end
  object pProdutos: TppDBPipeline
    DataSource = dstProdutos
    UserName = 'pProdutos'
    Left = 392
    Top = 7
    object pProdutosppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object pProdutosppField2: TppField
      FieldAlias = 'Codigo_Fabricante'
      FieldName = 'Codigo_Fabricante'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object pProdutosppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo'
      FieldName = 'Tipo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object pProdutosppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Item'
      FieldName = 'Tipo_Item'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object pProdutosppField5: TppField
      FieldAlias = 'Unidade'
      FieldName = 'Unidade'
      FieldLength = 3
      DisplayWidth = 3
      Position = 4
    end
    object pProdutosppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade_Unidade'
      FieldName = 'Quantidade_Unidade'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object pProdutosppField7: TppField
      FieldAlias = 'NCM'
      FieldName = 'NCM'
      FieldLength = 10
      DisplayWidth = 10
      Position = 6
    end
    object pProdutosppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Estoque_Disponivel'
      FieldName = 'Estoque_Disponivel'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object pProdutosppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Peso_Liquido'
      FieldName = 'Peso_Liquido'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object pProdutosppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Peso_Bruto'
      FieldName = 'Peso_Bruto'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object pProdutosppField11: TppField
      FieldAlias = 'Descricao_Reduzida'
      FieldName = 'Descricao_Reduzida'
      FieldLength = 60
      DisplayWidth = 60
      Position = 10
    end
    object pProdutosppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_IPI'
      FieldName = 'Aliquota_IPI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object pProdutosppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_II'
      FieldName = 'Aliquota_II'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object pProdutosppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_PIS'
      FieldName = 'Aliquota_PIS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object pProdutosppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_COFINS'
      FieldName = 'Aliquota_COFINS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object pProdutosppField16: TppField
      FieldAlias = 'Valor_IPI'
      FieldName = 'Valor_IPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 15
    end
    object pProdutosppField17: TppField
      FieldAlias = 'ClasseEnquadra_IPI'
      FieldName = 'ClasseEnquadra_IPI'
      FieldLength = 1
      DisplayWidth = 1
      Position = 16
    end
    object pProdutosppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'Lancado_Pedidos'
      FieldName = 'Lancado_Pedidos'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object pProdutosppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'Dumping_Valor'
      FieldName = 'Dumping_Valor'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object pProdutosppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fornecedor'
      FieldName = 'Fornecedor'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object pProdutosppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fabricante'
      FieldName = 'Fabricante'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object pProdutosppField22: TppField
      FieldAlias = 'Valor_Entrada'
      FieldName = 'Valor_Entrada'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 21
    end
    object pProdutosppField23: TppField
      FieldAlias = 'Valor_CustoMedio'
      FieldName = 'Valor_CustoMedio'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 22
    end
    object pProdutosppField24: TppField
      FieldAlias = 'Valor_Venda'
      FieldName = 'Valor_Venda'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 23
    end
    object pProdutosppField25: TppField
      FieldAlias = 'Promocao'
      FieldName = 'Promocao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 24
    end
    object pProdutosppField26: TppField
      FieldAlias = 'Promocao_Valor'
      FieldName = 'Promocao_Valor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 25
    end
    object pProdutosppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'Comissao_Venda'
      FieldName = 'Comissao_Venda'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 26
    end
    object pProdutosppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tabela'
      FieldName = 'Tabela'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object pProdutosppField29: TppField
      FieldAlias = 'Tipo_Conversao'
      FieldName = 'Tipo_Conversao'
      FieldLength = 1
      DisplayWidth = 1
      Position = 28
    end
    object pProdutosppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'Reducao_PIS'
      FieldName = 'Reducao_PIS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
    object pProdutosppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'Reducao_COFINS'
      FieldName = 'Reducao_COFINS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 30
    end
    object pProdutosppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'Linha'
      FieldName = 'Linha'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 31
    end
    object pProdutosppField33: TppField
      FieldAlias = 'GTIN'
      FieldName = 'GTIN'
      FieldLength = 14
      DisplayWidth = 14
      Position = 32
    end
    object pProdutosppField34: TppField
      FieldAlias = 'Unidade_Origem'
      FieldName = 'Unidade_Origem'
      FieldLength = 3
      DisplayWidth = 3
      Position = 33
    end
    object pProdutosppField35: TppField
      FieldAlias = 'GTIN_Unidade'
      FieldName = 'GTIN_Unidade'
      FieldLength = 14
      DisplayWidth = 14
      Position = 34
    end
    object pProdutosppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'Largura'
      FieldName = 'Largura'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 35
    end
    object pProdutosppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'Comprimento'
      FieldName = 'Comprimento'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 36
    end
    object pProdutosppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'Altura'
      FieldName = 'Altura'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 37
    end
    object pProdutosppField39: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 5000
      DisplayWidth = 5000
      Position = 38
    end
    object pProdutosppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'ICMS_Reducao'
      FieldName = 'ICMS_Reducao'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 39
    end
    object pProdutosppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade_Volumes'
      FieldName = 'Quantidade_Volumes'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 40
    end
    object pProdutosppField42: TppField
      FieldAlias = 'Selecionado'
      FieldName = 'Selecionado'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 41
    end
    object pProdutosppField43: TppField
      FieldAlias = 'CSTPIS_AliquotaUM'
      FieldName = 'CSTPIS_AliquotaUM'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 42
    end
    object pProdutosppField44: TppField
      FieldAlias = 'CSTPIS_Monofasica'
      FieldName = 'CSTPIS_Monofasica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 43
    end
    object pProdutosppField45: TppField
      FieldAlias = 'CSTPIS_AliquotaZero'
      FieldName = 'CSTPIS_AliquotaZero'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 44
    end
    object pProdutosppField46: TppField
      FieldAlias = 'CSTPIS_Isenta'
      FieldName = 'CSTPIS_Isenta'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 45
    end
    object pProdutosppField47: TppField
      FieldAlias = 'CSTPIS_Suspensao'
      FieldName = 'CSTPIS_Suspensao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 46
    end
    object pProdutosppField48: TppField
      FieldAlias = 'CSTPIS_SemIncidencia'
      FieldName = 'CSTPIS_SemIncidencia'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 47
    end
    object pProdutosppField49: TppField
      FieldAlias = 'CSTCOFINS_AliquotaUM'
      FieldName = 'CSTCOFINS_AliquotaUM'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 48
    end
    object pProdutosppField50: TppField
      FieldAlias = 'CSTCOFINS_Monofasica'
      FieldName = 'CSTCOFINS_Monofasica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 49
    end
    object pProdutosppField51: TppField
      FieldAlias = 'CSTCOFINS_AliquotaZero'
      FieldName = 'CSTCOFINS_AliquotaZero'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 50
    end
    object pProdutosppField52: TppField
      FieldAlias = 'CSTCOFINS_Isenta'
      FieldName = 'CSTCOFINS_Isenta'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 51
    end
    object pProdutosppField53: TppField
      FieldAlias = 'CSTCOFINS_Suspensao'
      FieldName = 'CSTCOFINS_Suspensao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 52
    end
    object pProdutosppField54: TppField
      FieldAlias = 'CSTCOFINS_SemIncidencia'
      FieldName = 'CSTCOFINS_SemIncidencia'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 53
    end
    object pProdutosppField55: TppField
      FieldAlias = 'CSTPIS_Entrada'
      FieldName = 'CSTPIS_Entrada'
      FieldLength = 2
      DisplayWidth = 2
      Position = 54
    end
    object pProdutosppField56: TppField
      FieldAlias = 'CSTCOFINS_Entrada'
      FieldName = 'CSTCOFINS_Entrada'
      FieldLength = 2
      DisplayWidth = 2
      Position = 55
    end
    object pProdutosppField57: TppField
      FieldAlias = 'CSTPIS_Outras'
      FieldName = 'CSTPIS_Outras'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 56
    end
    object pProdutosppField58: TppField
      FieldAlias = 'CSTCOFINS_Outras'
      FieldName = 'CSTCOFINS_Outras'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 57
    end
    object pProdutosppField59: TppField
      FieldAlias = 'Dumping'
      FieldName = 'Dumping'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 58
    end
    object pProdutosppField60: TppField
      FieldAlias = 'Reciclavel'
      FieldName = 'Reciclavel'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 59
    end
    object pProdutosppField61: TppField
      FieldAlias = 'Codigo_ANP'
      FieldName = 'Codigo_ANP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 60
    end
    object pProdutosppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo_Provisorio'
      FieldName = 'Codigo_Provisorio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 61
    end
    object pProdutosppField63: TppField
      Alignment = taRightJustify
      FieldAlias = 'Reducao_IPI'
      FieldName = 'Reducao_IPI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 62
    end
    object pProdutosppField64: TppField
      Alignment = taRightJustify
      FieldAlias = 'Reducao_II'
      FieldName = 'Reducao_II'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 63
    end
    object pProdutosppField65: TppField
      Alignment = taRightJustify
      FieldAlias = 'Acordo_TarifarioII'
      FieldName = 'Acordo_TarifarioII'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 64
    end
    object pProdutosppField66: TppField
      Alignment = taRightJustify
      FieldAlias = 'Acordo_TarifarioIPI'
      FieldName = 'Acordo_TarifarioIPI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 65
    end
    object pProdutosppField67: TppField
      FieldAlias = 'Entrada_ST'
      FieldName = 'Entrada_ST'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 66
    end
    object pProdutosppField68: TppField
      FieldAlias = 'Desativado'
      FieldName = 'Desativado'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 67
    end
    object pProdutosppField69: TppField
      FieldAlias = 'Custo_Seletivo'
      FieldName = 'Custo_Seletivo'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 68
    end
    object pProdutosppField70: TppField
      Alignment = taRightJustify
      FieldAlias = 'PIS_Nota'
      FieldName = 'PIS_Nota'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 69
    end
    object pProdutosppField71: TppField
      Alignment = taRightJustify
      FieldAlias = 'COFINS_Nota'
      FieldName = 'COFINS_Nota'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 70
    end
    object pProdutosppField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'Estoque_Minimo'
      FieldName = 'Estoque_Minimo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 71
    end
    object pProdutosppField73: TppField
      Alignment = taRightJustify
      FieldAlias = 'Estoque_Terceiros'
      FieldName = 'Estoque_Terceiros'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 72
    end
    object pProdutosppField74: TppField
      FieldAlias = 'Detalhe_Especifico'
      FieldName = 'Detalhe_Especifico'
      FieldLength = 1
      DisplayWidth = 1
      Position = 73
    end
    object pProdutosppField75: TppField
      Alignment = taRightJustify
      FieldAlias = 'ICMS_DentroEstado'
      FieldName = 'ICMS_DentroEstado'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 74
    end
    object pProdutosppField76: TppField
      Alignment = taRightJustify
      FieldAlias = 'ICMS_ForaEstado'
      FieldName = 'ICMS_ForaEstado'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 75
    end
    object pProdutosppField77: TppField
      FieldAlias = 'CSTPIS_AliquotaUMEnt'
      FieldName = 'CSTPIS_AliquotaUMEnt'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 76
    end
    object pProdutosppField78: TppField
      FieldAlias = 'CSTPIS_MonofasicaEnt'
      FieldName = 'CSTPIS_MonofasicaEnt'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 77
    end
    object pProdutosppField79: TppField
      FieldAlias = 'CSTPIS_AliquotaZeroEnt'
      FieldName = 'CSTPIS_AliquotaZeroEnt'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 78
    end
    object pProdutosppField80: TppField
      FieldAlias = 'CSTPIS_IsentaEnt'
      FieldName = 'CSTPIS_IsentaEnt'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 79
    end
    object pProdutosppField81: TppField
      FieldAlias = 'CSTPIS_SuspensaoEnt'
      FieldName = 'CSTPIS_SuspensaoEnt'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 80
    end
    object pProdutosppField82: TppField
      FieldAlias = 'CSTPIS_SemIncidenciaEnt'
      FieldName = 'CSTPIS_SemIncidenciaEnt'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 81
    end
    object pProdutosppField83: TppField
      FieldAlias = 'CSTPIS_OutrasEnt'
      FieldName = 'CSTPIS_OutrasEnt'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 82
    end
    object pProdutosppField84: TppField
      FieldAlias = 'CSTCOFINS_AliquotaUMEnt'
      FieldName = 'CSTCOFINS_AliquotaUMEnt'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 83
    end
    object pProdutosppField85: TppField
      FieldAlias = 'CSTCOFINS_MonofasicaEnt'
      FieldName = 'CSTCOFINS_MonofasicaEnt'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 84
    end
    object pProdutosppField86: TppField
      FieldAlias = 'CSTCOFINS_AliquotaZeroEnt'
      FieldName = 'CSTCOFINS_AliquotaZeroEnt'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 85
    end
    object pProdutosppField87: TppField
      FieldAlias = 'CSTCOFINS_IsentaEnt'
      FieldName = 'CSTCOFINS_IsentaEnt'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 86
    end
    object pProdutosppField88: TppField
      FieldAlias = 'CSTCOFINS_SuspensaoEnt'
      FieldName = 'CSTCOFINS_SuspensaoEnt'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 87
    end
    object pProdutosppField89: TppField
      FieldAlias = 'CSTCOFINS_SemIncidenciaEnt'
      FieldName = 'CSTCOFINS_SemIncidenciaEnt'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 88
    end
    object pProdutosppField90: TppField
      FieldAlias = 'CSTCOFINS_OutrasEnt'
      FieldName = 'CSTCOFINS_OutrasEnt'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 89
    end
    object pProdutosppField91: TppField
      FieldAlias = 'Armazem_Nome'
      FieldName = 'Armazem_Nome'
      FieldLength = 15
      DisplayWidth = 15
      Position = 90
    end
    object pProdutosppField92: TppField
      FieldAlias = 'Armazem_Rua'
      FieldName = 'Armazem_Rua'
      FieldLength = 5
      DisplayWidth = 5
      Position = 91
    end
    object pProdutosppField93: TppField
      FieldAlias = 'Armazem_Prateleira'
      FieldName = 'Armazem_Prateleira'
      FieldLength = 5
      DisplayWidth = 5
      Position = 92
    end
    object pProdutosppField94: TppField
      FieldAlias = 'Armazem_Posicao'
      FieldName = 'Armazem_Posicao'
      FieldLength = 5
      DisplayWidth = 5
      Position = 93
    end
    object pProdutosppField95: TppField
      Alignment = taRightJustify
      FieldAlias = 'PIS_NotaSaida'
      FieldName = 'PIS_NotaSaida'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 94
    end
    object pProdutosppField96: TppField
      Alignment = taRightJustify
      FieldAlias = 'COFINS_NotaSaida'
      FieldName = 'COFINS_NotaSaida'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 95
    end
    object pProdutosppField97: TppField
      FieldAlias = 'CAMEX'
      FieldName = 'CAMEX'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 96
    end
    object pProdutosppField98: TppField
      FieldAlias = 'Tabela_CAMEX'
      FieldName = 'Tabela_CAMEX'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 97
    end
    object pProdutosppField99: TppField
      Alignment = taRightJustify
      FieldAlias = 'Comissao'
      FieldName = 'Comissao'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 98
    end
    object pProdutosppField100: TppField
      Alignment = taRightJustify
      FieldAlias = 'Reducao_Comissao'
      FieldName = 'Reducao_Comissao'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 99
    end
    object pProdutosppField101: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desconto_A'
      FieldName = 'Desconto_A'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 100
    end
    object pProdutosppField102: TppField
      Alignment = taRightJustify
      FieldAlias = 'Comissao_A'
      FieldName = 'Comissao_A'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 101
    end
    object pProdutosppField103: TppField
      FieldAlias = 'Bloqueio_A'
      FieldName = 'Bloqueio_A'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 102
    end
    object pProdutosppField104: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desconto_B'
      FieldName = 'Desconto_B'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 103
    end
    object pProdutosppField105: TppField
      Alignment = taRightJustify
      FieldAlias = 'Comissao_B'
      FieldName = 'Comissao_B'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 104
    end
    object pProdutosppField106: TppField
      FieldAlias = 'Bloqueio_B'
      FieldName = 'Bloqueio_B'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 105
    end
    object pProdutosppField107: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desconto_C'
      FieldName = 'Desconto_C'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 106
    end
    object pProdutosppField108: TppField
      Alignment = taRightJustify
      FieldAlias = 'Comissao_C'
      FieldName = 'Comissao_C'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 107
    end
    object pProdutosppField109: TppField
      FieldAlias = 'Bloqueio_C'
      FieldName = 'Bloqueio_C'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 108
    end
    object pProdutosppField110: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desconto_D'
      FieldName = 'Desconto_D'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 109
    end
    object pProdutosppField111: TppField
      Alignment = taRightJustify
      FieldAlias = 'Comissao_D'
      FieldName = 'Comissao_D'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 110
    end
    object pProdutosppField112: TppField
      FieldAlias = 'Bloqueio_D'
      FieldName = 'Bloqueio_D'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 111
    end
    object pProdutosppField113: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desconto_E'
      FieldName = 'Desconto_E'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 112
    end
    object pProdutosppField114: TppField
      Alignment = taRightJustify
      FieldAlias = 'Comissao_E'
      FieldName = 'Comissao_E'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 113
    end
    object pProdutosppField115: TppField
      FieldAlias = 'Bloqueio_E'
      FieldName = 'Bloqueio_E'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 114
    end
    object pProdutosppField116: TppField
      Alignment = taRightJustify
      FieldAlias = 'Estoque_MinimoPerc'
      FieldName = 'Estoque_MinimoPerc'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 115
    end
    object pProdutosppField117: TppField
      FieldAlias = 'Potencia_Motor'
      FieldName = 'Potencia_Motor'
      FieldLength = 4
      DisplayWidth = 4
      Position = 116
    end
    object pProdutosppField118: TppField
      FieldAlias = 'Cilindradas'
      FieldName = 'Cilindradas'
      FieldLength = 4
      DisplayWidth = 4
      Position = 117
    end
    object pProdutosppField119: TppField
      FieldAlias = 'Tipo_Combustivel'
      FieldName = 'Tipo_Combustivel'
      FieldLength = 2
      DisplayWidth = 2
      Position = 118
    end
    object pProdutosppField120: TppField
      Alignment = taRightJustify
      FieldAlias = 'Capacidade_Tracao'
      FieldName = 'Capacidade_Tracao'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 119
    end
    object pProdutosppField121: TppField
      FieldAlias = 'Distancia_Eixos'
      FieldName = 'Distancia_Eixos'
      FieldLength = 4
      DisplayWidth = 4
      Position = 120
    end
    object pProdutosppField122: TppField
      FieldAlias = 'Tipo_Pintura'
      FieldName = 'Tipo_Pintura'
      FieldLength = 1
      DisplayWidth = 1
      Position = 121
    end
    object pProdutosppField123: TppField
      FieldAlias = 'Tipo_Veiculo'
      FieldName = 'Tipo_Veiculo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 122
    end
    object pProdutosppField124: TppField
      FieldAlias = 'Especie_Veiculo'
      FieldName = 'Especie_Veiculo'
      FieldLength = 1
      DisplayWidth = 1
      Position = 123
    end
    object pProdutosppField125: TppField
      FieldAlias = 'Condicao_VIN'
      FieldName = 'Condicao_VIN'
      FieldLength = 1
      DisplayWidth = 1
      Position = 124
    end
    object pProdutosppField126: TppField
      FieldAlias = 'Condicao_Veiculo'
      FieldName = 'Condicao_Veiculo'
      FieldLength = 1
      DisplayWidth = 1
      Position = 125
    end
    object pProdutosppField127: TppField
      FieldAlias = 'Codigo_MarcaModelo'
      FieldName = 'Codigo_MarcaModelo'
      FieldLength = 6
      DisplayWidth = 6
      Position = 126
    end
    object pProdutosppField128: TppField
      Alignment = taRightJustify
      FieldAlias = 'Passageiros'
      FieldName = 'Passageiros'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 127
    end
    object pProdutosppField129: TppField
      FieldAlias = 'Visivel_Representa'
      FieldName = 'Visivel_Representa'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 128
    end
    object pProdutosppField130: TppField
      FieldAlias = 'Valor_VendaA'
      FieldName = 'Valor_VendaA'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 129
    end
    object pProdutosppField131: TppField
      FieldAlias = 'Valor_VendaB'
      FieldName = 'Valor_VendaB'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 130
    end
    object pProdutosppField132: TppField
      FieldAlias = 'Valor_VendaC'
      FieldName = 'Valor_VendaC'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 131
    end
    object pProdutosppField133: TppField
      FieldAlias = 'Valor_VendaD'
      FieldName = 'Valor_VendaD'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 132
    end
    object pProdutosppField134: TppField
      FieldAlias = 'Valor_VendaE'
      FieldName = 'Valor_VendaE'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 133
    end
    object pProdutosppField135: TppField
      Alignment = taRightJustify
      FieldAlias = 'Modalidade'
      FieldName = 'Modalidade'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 134
    end
    object pProdutosppField136: TppField
      FieldAlias = 'FCP'
      FieldName = 'FCP'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 135
    end
    object pProdutosppField137: TppField
      FieldAlias = 'Lote_Obrigatorio'
      FieldName = 'Lote_Obrigatorio'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 136
    end
    object pProdutosppField138: TppField
      FieldAlias = 'Producao_Nacional'
      FieldName = 'Producao_Nacional'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 137
    end
    object pProdutosppField139: TppField
      FieldAlias = 'Descricao_Ingles'
      FieldName = 'Descricao_Ingles'
      FieldLength = 5000
      DisplayWidth = 5000
      Position = 138
    end
    object pProdutosppField140: TppField
      FieldAlias = 'Registro_ANVISA'
      FieldName = 'Registro_ANVISA'
      FieldLength = 12
      DisplayWidth = 12
      Position = 139
    end
    object pProdutosppField141: TppField
      FieldAlias = 'Vencimento_ANVISA'
      FieldName = 'Vencimento_ANVISA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 140
    end
    object pProdutosppField142: TppField
      FieldAlias = 'Processo_ANVISA'
      FieldName = 'Processo_ANVISA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 141
    end
    object pProdutosppField143: TppField
      FieldAlias = 'Serial_Obrigatorio'
      FieldName = 'Serial_Obrigatorio'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 142
    end
    object pProdutosppField144: TppField
      FieldAlias = 'Valor_ConsumidorFinal'
      FieldName = 'Valor_ConsumidorFinal'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 143
    end
    object pProdutosppField145: TppField
      FieldAlias = 'Origem'
      FieldName = 'Origem'
      FieldLength = 1
      DisplayWidth = 1
      Position = 144
    end
    object pProdutosppField146: TppField
      FieldAlias = 'Escala_Relevante'
      FieldName = 'Escala_Relevante'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 145
    end
    object pProdutosppField147: TppField
      FieldAlias = 'CNPJ_Fabricante'
      FieldName = 'CNPJ_Fabricante'
      FieldLength = 14
      DisplayWidth = 14
      Position = 146
    end
    object pProdutosppField148: TppField
      FieldAlias = 'Descricao_ANP'
      FieldName = 'Descricao_ANP'
      FieldLength = 100
      DisplayWidth = 100
      Position = 147
    end
    object pProdutosppField149: TppField
      Alignment = taRightJustify
      FieldAlias = 'Percentual_GLP'
      FieldName = 'Percentual_GLP'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 148
    end
    object pProdutosppField150: TppField
      Alignment = taRightJustify
      FieldAlias = 'Percentual_GLGNN'
      FieldName = 'Percentual_GLGNN'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 149
    end
    object pProdutosppField151: TppField
      Alignment = taRightJustify
      FieldAlias = 'Percentual_GLGNI'
      FieldName = 'Percentual_GLGNI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 150
    end
    object pProdutosppField152: TppField
      FieldAlias = 'Valor_Partida'
      FieldName = 'Valor_Partida'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 151
    end
    object pProdutosppField153: TppField
      FieldAlias = 'Preco_MaxConsumidor'
      FieldName = 'Preco_MaxConsumidor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 152
    end
    object pProdutosppField154: TppField
      FieldAlias = 'Valor_ME'
      FieldName = 'Valor_ME'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 153
    end
    object pProdutosppField155: TppField
      FieldAlias = 'Beneficio_FiscalEnt'
      FieldName = 'Beneficio_FiscalEnt'
      FieldLength = 8
      DisplayWidth = 8
      Position = 154
    end
    object pProdutosppField156: TppField
      Alignment = taRightJustify
      FieldAlias = 'ICMS_DentroEstadoSimples'
      FieldName = 'ICMS_DentroEstadoSimples'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 155
    end
    object pProdutosppField157: TppField
      FieldAlias = 'Materia_Prima'
      FieldName = 'Materia_Prima'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 156
    end
    object pProdutosppField158: TppField
      Alignment = taRightJustify
      FieldAlias = 'ICMS_EstadoEntrada'
      FieldName = 'ICMS_EstadoEntrada'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 157
    end
    object pProdutosppField159: TppField
      Alignment = taRightJustify
      FieldAlias = 'ICMS_ForaEstadoEntrada'
      FieldName = 'ICMS_ForaEstadoEntrada'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 158
    end
    object pProdutosppField160: TppField
      FieldAlias = 'Servico'
      FieldName = 'Servico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 159
    end
    object pProdutosppField161: TppField
      FieldAlias = 'Classificacao'
      FieldName = 'Classificacao'
      FieldLength = 15
      DisplayWidth = 15
      Position = 160
    end
    object pProdutosppField162: TppField
      FieldAlias = 'Requer_LI'
      FieldName = 'Requer_LI'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 161
    end
    object pProdutosppField163: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 162
    end
    object pProdutosppField164: TppField
      Alignment = taRightJustify
      FieldAlias = 'Orgao_AnuenteImp'
      FieldName = 'Orgao_AnuenteImp'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 163
    end
    object pProdutosppField165: TppField
      Alignment = taRightJustify
      FieldAlias = 'Orgao_AnuenteExp'
      FieldName = 'Orgao_AnuenteExp'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 164
    end
    object pProdutosppField166: TppField
      FieldAlias = 'Codigo_SKU'
      FieldName = 'Codigo_SKU'
      FieldLength = 20
      DisplayWidth = 20
      Position = 165
    end
    object pProdutosppField167: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade_CaixaMaster'
      FieldName = 'Quantidade_CaixaMaster'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 166
    end
    object pProdutosppField168: TppField
      FieldAlias = 'Beneficio_FiscalSai'
      FieldName = 'Beneficio_FiscalSai'
      FieldLength = 8
      DisplayWidth = 8
      Position = 167
    end
  end
  object pEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    UserName = 'pEmpresas'
    Left = 336
    Top = 7
    object pEmpresasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 2
      Position = 0
    end
    object pEmpresasppField2: TppField
      FieldAlias = 'Razao_Social'
      FieldName = 'Razao_Social'
      FieldLength = 50
      DisplayWidth = 28
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
      FieldLength = 60
      DisplayWidth = 60
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
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 12
      Position = 9
    end
    object pEmpresasppField11: TppField
      FieldAlias = 'IE'
      FieldName = 'IE'
      FieldLength = 14
      DisplayWidth = 14
      Position = 10
    end
    object pEmpresasppField12: TppField
      FieldAlias = 'IM'
      FieldName = 'IM'
      FieldLength = 14
      DisplayWidth = 14
      Position = 11
    end
    object pEmpresasppField13: TppField
      FieldAlias = 'Junta_Codigo'
      FieldName = 'Junta_Codigo'
      FieldLength = 12
      DisplayWidth = 12
      Position = 12
    end
    object pEmpresasppField14: TppField
      FieldAlias = 'Junta_Data'
      FieldName = 'Junta_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
    object pEmpresasppField15: TppField
      FieldAlias = 'Ramo_Atividade'
      FieldName = 'Ramo_Atividade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object pEmpresasppField16: TppField
      FieldAlias = 'Codigo_Atividade'
      FieldName = 'Codigo_Atividade'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
    object pEmpresasppField17: TppField
      FieldAlias = 'Responsavel'
      FieldName = 'Responsavel'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object pEmpresasppField18: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 17
    end
    object pEmpresasppField19: TppField
      FieldAlias = 'Site'
      FieldName = 'Site'
      FieldLength = 60
      DisplayWidth = 60
      Position = 18
    end
    object pEmpresasppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'Duplicata'
      FieldName = 'Duplicata'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object pEmpresasppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Saida'
      FieldName = 'Nota_Saida'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object pEmpresasppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Entrada'
      FieldName = 'Nota_Entrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object pEmpresasppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Servico'
      FieldName = 'Nota_Servico'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object pEmpresasppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Eletronica'
      FieldName = 'Nota_Eletronica'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object pEmpresasppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'Memorando_Exportacao'
      FieldName = 'Memorando_Exportacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object pEmpresasppField26: TppField
      FieldAlias = 'Sincronizar_NumeroNF'
      FieldName = 'Sincronizar_NumeroNF'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 25
    end
    object pEmpresasppField27: TppField
      FieldAlias = 'Mascara_PlanoContas'
      FieldName = 'Mascara_PlanoContas'
      FieldLength = 20
      DisplayWidth = 20
      Position = 26
    end
    object pEmpresasppField28: TppField
      FieldAlias = 'Codigo_Reduzido'
      FieldName = 'Codigo_Reduzido'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 27
    end
    object pEmpresasppField29: TppField
      FieldAlias = 'Diretor'
      FieldName = 'Diretor'
      FieldLength = 50
      DisplayWidth = 50
      Position = 28
    end
    object pEmpresasppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Numero'
      FieldName = 'Diario_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object pEmpresasppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Pagina'
      FieldName = 'Diario_Pagina'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object pEmpresasppField32: TppField
      FieldAlias = 'Ultimo_Encerramento'
      FieldName = 'Ultimo_Encerramento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 31
    end
    object pEmpresasppField33: TppField
      FieldAlias = 'NFServico_Modelo'
      FieldName = 'NFServico_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 32
    end
    object pEmpresasppField34: TppField
      FieldAlias = 'NFServico_Serie'
      FieldName = 'NFServico_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 33
    end
    object pEmpresasppField35: TppField
      FieldAlias = 'NFEntrada_Modelo'
      FieldName = 'NFEntrada_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 34
    end
    object pEmpresasppField36: TppField
      FieldAlias = 'NFEntrada_Serie'
      FieldName = 'NFEntrada_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 35
    end
    object pEmpresasppField37: TppField
      FieldAlias = 'NFSaida_Modelo'
      FieldName = 'NFSaida_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 36
    end
    object pEmpresasppField38: TppField
      FieldAlias = 'NFSaida_Serie'
      FieldName = 'NFSaida_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 37
    end
    object pEmpresasppField39: TppField
      FieldAlias = 'Matriz_Filial'
      FieldName = 'Matriz_Filial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 38
    end
    object pEmpresasppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Filial'
      FieldName = 'Numero_Filial'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 2
      Position = 39
    end
    object pEmpresasppField41: TppField
      FieldAlias = 'NFEletronica_Modelo'
      FieldName = 'NFEletronica_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 40
    end
    object pEmpresasppField42: TppField
      FieldAlias = 'NFEletronica_Serie'
      FieldName = 'NFEletronica_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 41
    end
    object pEmpresasppField43: TppField
      FieldAlias = 'NFEletronica_Layout'
      FieldName = 'NFEletronica_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 42
    end
    object pEmpresasppField44: TppField
      FieldAlias = 'Certificado_Digital'
      FieldName = 'Certificado_Digital'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 43
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Lote'
      FieldName = 'Numero_Lote'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 44
    end
    object pEmpresasppField46: TppField
      FieldAlias = 'Inscricao_SUFRAMA'
      FieldName = 'Inscricao_SUFRAMA'
      FieldLength = 9
      DisplayWidth = 9
      Position = 45
    end
    object pEmpresasppField47: TppField
      FieldAlias = 'Contador_Nome'
      FieldName = 'Contador_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 46
    end
    object pEmpresasppField48: TppField
      FieldAlias = 'Contador_CNPJ'
      FieldName = 'Contador_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 47
    end
    object pEmpresasppField49: TppField
      FieldAlias = 'Contador_CPF'
      FieldName = 'Contador_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 48
    end
    object pEmpresasppField50: TppField
      FieldAlias = 'Contador_CRC'
      FieldName = 'Contador_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 49
    end
    object pEmpresasppField51: TppField
      FieldAlias = 'Contador_CEP'
      FieldName = 'Contador_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 50
    end
    object pEmpresasppField52: TppField
      FieldAlias = 'Contador_Rua'
      FieldName = 'Contador_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 51
    end
    object pEmpresasppField53: TppField
      FieldAlias = 'Contador_Numero'
      FieldName = 'Contador_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 52
    end
    object pEmpresasppField54: TppField
      FieldAlias = 'Contador_Complemento'
      FieldName = 'Contador_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 53
    end
    object pEmpresasppField55: TppField
      FieldAlias = 'Contador_Bairro'
      FieldName = 'Contador_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 54
    end
    object pEmpresasppField56: TppField
      FieldAlias = 'Contador_Telefone'
      FieldName = 'Contador_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 55
    end
    object pEmpresasppField57: TppField
      FieldAlias = 'Contador_FAX'
      FieldName = 'Contador_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 56
    end
    object pEmpresasppField58: TppField
      FieldAlias = 'Contador_Email'
      FieldName = 'Contador_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 57
    end
    object pEmpresasppField59: TppField
      FieldAlias = 'Contador_Estado'
      FieldName = 'Contador_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 58
    end
    object pEmpresasppField60: TppField
      FieldAlias = 'Data_Constituicao'
      FieldName = 'Data_Constituicao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 59
    end
    object pEmpresasppField61: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tributacao'
      FieldName = 'Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 60
    end
    object pEmpresasppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'Municipio_Codigo'
      FieldName = 'Municipio_Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 61
    end
    object pEmpresasppField63: TppField
      FieldAlias = 'Diretor_CPF'
      FieldName = 'Diretor_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 62
    end
    object pEmpresasppField64: TppField
      FieldAlias = 'Responsavel_CPF'
      FieldName = 'Responsavel_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 63
    end
    object pEmpresasppField65: TppField
      FieldAlias = 'Responsavel_Funcao'
      FieldName = 'Responsavel_Funcao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 64
    end
    object pEmpresasppField66: TppField
      FieldAlias = 'Banco_Dados'
      FieldName = 'Banco_Dados'
      FieldLength = 50
      DisplayWidth = 50
      Position = 65
    end
    object pEmpresasppField67: TppField
      FieldAlias = 'Banco_Contabilidade'
      FieldName = 'Banco_Contabilidade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 66
    end
    object pEmpresasppField68: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente'
      FieldName = 'Ambiente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 67
    end
    object pEmpresasppField69: TppField
      FieldAlias = 'Licensa_NFE_Util'
      FieldName = 'Licensa_NFE_Util'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 68
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField70: TppField
      FieldAlias = 'Processo_Automatico'
      FieldName = 'Processo_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 69
    end
    object pEmpresasppField71: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 70
    end
    object pEmpresasppField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'Apuracao_IPI'
      FieldName = 'Apuracao_IPI'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 71
    end
    object pEmpresasppField73: TppField
      FieldAlias = 'Perfil_SPED'
      FieldName = 'Perfil_SPED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 72
    end
    object pEmpresasppField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Atividade'
      FieldName = 'Tipo_Atividade'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 73
    end
    object pEmpresasppField75: TppField
      FieldAlias = 'Vencimento_Certificado'
      FieldName = 'Vencimento_Certificado'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 74
    end
    object pEmpresasppField76: TppField
      FieldAlias = 'UF_WebService'
      FieldName = 'UF_WebService'
      FieldLength = 10
      DisplayWidth = 10
      Position = 75
    end
    object pEmpresasppField77: TppField
      Alignment = taRightJustify
      FieldAlias = 'Regime_Apuracao'
      FieldName = 'Regime_Apuracao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 76
    end
    object pEmpresasppField78: TppField
      FieldAlias = 'Mascara_Processo'
      FieldName = 'Mascara_Processo'
      FieldLength = 7
      DisplayWidth = 7
      Position = 77
    end
    object pEmpresasppField79: TppField
      FieldAlias = 'Incentivo_Fiscal'
      FieldName = 'Incentivo_Fiscal'
      FieldLength = 20
      DisplayWidth = 20
      Position = 78
    end
    object pEmpresasppField80: TppField
      FieldAlias = 'Email_SMTP'
      FieldName = 'Email_SMTP'
      FieldLength = 80
      DisplayWidth = 80
      Position = 79
    end
    object pEmpresasppField81: TppField
      FieldAlias = 'Email_Senha'
      FieldName = 'Email_Senha'
      FieldLength = 30
      DisplayWidth = 30
      Position = 80
    end
    object pEmpresasppField82: TppField
      FieldAlias = 'Email_MsgEnvioNFE'
      FieldName = 'Email_MsgEnvioNFE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 81
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField83: TppField
      FieldAlias = 'Email_MsgCancelamento'
      FieldName = 'Email_MsgCancelamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 82
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField84: TppField
      Alignment = taRightJustify
      FieldAlias = 'Email_Porta'
      FieldName = 'Email_Porta'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 83
    end
    object pEmpresasppField85: TppField
      FieldAlias = 'Email_ID'
      FieldName = 'Email_ID'
      FieldLength = 80
      DisplayWidth = 80
      Position = 84
    end
    object pEmpresasppField86: TppField
      FieldAlias = 'Distribuidora'
      FieldName = 'Distribuidora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 85
    end
    object pEmpresasppField87: TppField
      FieldAlias = 'Fechamento_Financeiro'
      FieldName = 'Fechamento_Financeiro'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 86
    end
    object pEmpresasppField88: TppField
      FieldAlias = 'Modulo_Comercial'
      FieldName = 'Modulo_Comercial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 87
    end
    object pEmpresasppField89: TppField
      FieldAlias = 'Consolidar'
      FieldName = 'Consolidar'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 88
    end
    object pEmpresasppField90: TppField
      FieldAlias = 'Email_Copia'
      FieldName = 'Email_Copia'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 89
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField91: TppField
      FieldAlias = 'Email_SSL'
      FieldName = 'Email_SSL'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 90
    end
    object pEmpresasppField92: TppField
      FieldAlias = 'Email_Autenticacao'
      FieldName = 'Email_Autenticacao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 91
    end
    object pEmpresasppField93: TppField
      FieldAlias = 'Email_Metodo'
      FieldName = 'Email_Metodo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 92
    end
    object pEmpresasppField94: TppField
      FieldAlias = 'CartaCorrecao_Layout'
      FieldName = 'CartaCorrecao_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 93
    end
    object pEmpresasppField95: TppField
      FieldAlias = 'CNAE'
      FieldName = 'CNAE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 94
    end
    object pEmpresasppField96: TppField
      FieldAlias = 'Email_MsgEnvioCCE'
      FieldName = 'Email_MsgEnvioCCE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 95
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField97: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_EletronicaEntrada'
      FieldName = 'Nota_EletronicaEntrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 96
    end
    object pEmpresasppField98: TppField
      FieldAlias = 'NFEletronica_ModeloEntrada'
      FieldName = 'NFEletronica_ModeloEntrada'
      FieldLength = 2
      DisplayWidth = 2
      Position = 97
    end
    object pEmpresasppField99: TppField
      FieldAlias = 'NFEletronica_SerieEntrada'
      FieldName = 'NFEletronica_SerieEntrada'
      FieldLength = 3
      DisplayWidth = 3
      Position = 98
    end
    object pEmpresasppField100: TppField
      FieldAlias = 'NFEletronica_Numeracao'
      FieldName = 'NFEletronica_Numeracao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 99
    end
    object pEmpresasppField101: TppField
      Alignment = taRightJustify
      FieldAlias = 'Logomarca_Largura'
      FieldName = 'Logomarca_Largura'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 100
    end
    object pEmpresasppField102: TppField
      FieldAlias = 'Pagamento'
      FieldName = 'Pagamento'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 101
    end
    object pEmpresasppField103: TppField
      FieldAlias = 'Modulo_Emprestimos'
      FieldName = 'Modulo_Emprestimos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 102
    end
    object pEmpresasppField104: TppField
      FieldAlias = 'Modulo_XMLCTe'
      FieldName = 'Modulo_XMLCTe'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 103
    end
    object pEmpresasppField105: TppField
      FieldAlias = 'Regime'
      FieldName = 'Regime'
      FieldLength = 1
      DisplayWidth = 1
      Position = 104
    end
    object pEmpresasppField106: TppField
      FieldAlias = 'Modulo_Vendas'
      FieldName = 'Modulo_Vendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 105
    end
    object pEmpresasppField107: TppField
      Alignment = taRightJustify
      FieldAlias = 'CTE_Numero'
      FieldName = 'CTE_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 106
    end
    object pEmpresasppField108: TppField
      FieldAlias = 'CTE_Modelo'
      FieldName = 'CTE_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 107
    end
    object pEmpresasppField109: TppField
      FieldAlias = 'CTE_Serie'
      FieldName = 'CTE_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 108
    end
    object pEmpresasppField110: TppField
      FieldAlias = 'CTE_Layout'
      FieldName = 'CTE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 109
    end
    object pEmpresasppField111: TppField
      FieldAlias = 'Modulo_Logistica'
      FieldName = 'Modulo_Logistica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 110
    end
    object pEmpresasppField112: TppField
      FieldAlias = 'Modulo_Boleto'
      FieldName = 'Modulo_Boleto'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 111
    end
    object pEmpresasppField113: TppField
      FieldAlias = 'Telefone1'
      FieldName = 'Telefone1'
      FieldLength = 11
      DisplayWidth = 11
      Position = 112
    end
    object pEmpresasppField114: TppField
      FieldAlias = 'Telefone2'
      FieldName = 'Telefone2'
      FieldLength = 11
      DisplayWidth = 11
      Position = 113
    end
    object pEmpresasppField115: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 11
      DisplayWidth = 11
      Position = 114
    end
    object pEmpresasppField116: TppField
      FieldAlias = 'Modulo_SISCOMEXWEB'
      FieldName = 'Modulo_SISCOMEXWEB'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 115
    end
    object pEmpresasppField117: TppField
      FieldAlias = 'Modulo_ECommerce'
      FieldName = 'Modulo_ECommerce'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 116
    end
    object pEmpresasppField118: TppField
      FieldAlias = 'Modulo_ManifestoDest'
      FieldName = 'Modulo_ManifestoDest'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 117
    end
    object pEmpresasppField119: TppField
      FieldAlias = 'Manifesto_LayOut'
      FieldName = 'Manifesto_LayOut'
      FieldLength = 10
      DisplayWidth = 10
      Position = 118
    end
    object pEmpresasppField120: TppField
      FieldAlias = 'UF_WebServiceManifesto'
      FieldName = 'UF_WebServiceManifesto'
      FieldLength = 10
      DisplayWidth = 10
      Position = 119
    end
    object pEmpresasppField121: TppField
      FieldAlias = 'Modulo_Televendas'
      FieldName = 'Modulo_Televendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 120
    end
    object pEmpresasppField122: TppField
      FieldAlias = 'Email_MsgOrcamento'
      FieldName = 'Email_MsgOrcamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 121
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField123: TppField
      FieldAlias = 'Email_MsgBoleto'
      FieldName = 'Email_MsgBoleto'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 122
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField124: TppField
      FieldAlias = 'PISCOFINS_F100'
      FieldName = 'PISCOFINS_F100'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 123
    end
    object pEmpresasppField125: TppField
      FieldAlias = 'Logo'
      FieldName = 'Logo'
      FieldLength = 120
      DisplayWidth = 120
      Position = 124
    end
    object pEmpresasppField126: TppField
      FieldAlias = 'Modulo_ConsultaProdutos'
      FieldName = 'Modulo_ConsultaProdutos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 125
    end
    object pEmpresasppField127: TppField
      FieldAlias = 'Modulo_Contabil'
      FieldName = 'Modulo_Contabil'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 126
    end
    object pEmpresasppField128: TppField
      FieldAlias = 'Modulo_EnviarArmazem'
      FieldName = 'Modulo_EnviarArmazem'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 127
    end
    object pEmpresasppField129: TppField
      FieldAlias = 'Versao_DLL'
      FieldName = 'Versao_DLL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 128
    end
    object pEmpresasppField130: TppField
      FieldAlias = 'Desativada'
      FieldName = 'Desativada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 129
    end
    object pEmpresasppField131: TppField
      FieldAlias = 'Menu_Inventario'
      FieldName = 'Menu_Inventario'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 130
    end
    object pEmpresasppField132: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_GNRE'
      FieldName = 'Ambiente_GNRE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 131
    end
    object pEmpresasppField133: TppField
      FieldAlias = 'GNRE_Layout'
      FieldName = 'GNRE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 132
    end
    object pEmpresasppField134: TppField
      FieldAlias = 'Modulo_GNRE'
      FieldName = 'Modulo_GNRE'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 133
    end
    object pEmpresasppField135: TppField
      FieldAlias = 'Modulo_DadosDI'
      FieldName = 'Modulo_DadosDI'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 134
    end
    object pEmpresasppField136: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Qualificacao'
      FieldName = 'Contador_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 135
    end
    object pEmpresasppField137: TppField
      FieldAlias = 'Contador_CRCUF'
      FieldName = 'Contador_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 136
    end
    object pEmpresasppField138: TppField
      FieldAlias = 'Contador_CRCData'
      FieldName = 'Contador_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 137
    end
    object pEmpresasppField139: TppField
      FieldAlias = 'NIRE'
      FieldName = 'NIRE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 138
    end
    object pEmpresasppField140: TppField
      FieldAlias = 'Fechamento_FinanceiroFinal'
      FieldName = 'Fechamento_FinanceiroFinal'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 139
    end
    object pEmpresasppField141: TppField
      Alignment = taRightJustify
      FieldAlias = 'SPED_CTAPlanoRef'
      FieldName = 'SPED_CTAPlanoRef'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 140
    end
    object pEmpresasppField142: TppField
      FieldAlias = 'Contador_CRCSequencial'
      FieldName = 'Contador_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 141
    end
    object pEmpresasppField143: TppField
      FieldAlias = 'Refis'
      FieldName = 'Refis'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 142
    end
    object pEmpresasppField144: TppField
      FieldAlias = 'Paes'
      FieldName = 'Paes'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 143
    end
    object pEmpresasppField145: TppField
      Alignment = taRightJustify
      FieldAlias = 'Forma_Tributacao'
      FieldName = 'Forma_Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 144
    end
    object pEmpresasppField146: TppField
      FieldAlias = 'Extincao_RTT'
      FieldName = 'Extincao_RTT'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 145
    end
    object pEmpresasppField147: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtde_SCP'
      FieldName = 'Qtde_SCP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 146
    end
    object pEmpresasppField148: TppField
      FieldAlias = 'Natureza_Juridica'
      FieldName = 'Natureza_Juridica'
      FieldLength = 10
      DisplayWidth = 10
      Position = 147
    end
    object pEmpresasppField149: TppField
      FieldAlias = 'NIRE_Data'
      FieldName = 'NIRE_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 148
    end
    object pEmpresasppField150: TppField
      FieldAlias = 'Representante_Bairro'
      FieldName = 'Representante_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 149
    end
    object pEmpresasppField151: TppField
      FieldAlias = 'Representante_CEP'
      FieldName = 'Representante_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 150
    end
    object pEmpresasppField152: TppField
      FieldAlias = 'Representante_CNPJ'
      FieldName = 'Representante_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 151
    end
    object pEmpresasppField153: TppField
      FieldAlias = 'Representante_Complemento'
      FieldName = 'Representante_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 152
    end
    object pEmpresasppField154: TppField
      FieldAlias = 'Representante_CPF'
      FieldName = 'Representante_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 153
    end
    object pEmpresasppField155: TppField
      FieldAlias = 'Representante_CRC'
      FieldName = 'Representante_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 154
    end
    object pEmpresasppField156: TppField
      FieldAlias = 'Representante_CRCData'
      FieldName = 'Representante_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 155
    end
    object pEmpresasppField157: TppField
      FieldAlias = 'Representante_CRCSequencial'
      FieldName = 'Representante_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 156
    end
    object pEmpresasppField158: TppField
      FieldAlias = 'Representante_CRCUF'
      FieldName = 'Representante_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 157
    end
    object pEmpresasppField159: TppField
      FieldAlias = 'Representante_Email'
      FieldName = 'Representante_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 158
    end
    object pEmpresasppField160: TppField
      FieldAlias = 'Representante_Estado'
      FieldName = 'Representante_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 159
    end
    object pEmpresasppField161: TppField
      FieldAlias = 'Representante_FAX'
      FieldName = 'Representante_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 160
    end
    object pEmpresasppField162: TppField
      FieldAlias = 'Representante_Nome'
      FieldName = 'Representante_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 161
    end
    object pEmpresasppField163: TppField
      FieldAlias = 'Representante_Numero'
      FieldName = 'Representante_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 162
    end
    object pEmpresasppField164: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Qualificacao'
      FieldName = 'Representante_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 163
    end
    object pEmpresasppField165: TppField
      FieldAlias = 'Representante_Rua'
      FieldName = 'Representante_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 164
    end
    object pEmpresasppField166: TppField
      FieldAlias = 'Representante_Telefone'
      FieldName = 'Representante_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 165
    end
    object pEmpresasppField167: TppField
      FieldAlias = 'Contador_SignatarioResp'
      FieldName = 'Contador_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 166
    end
    object pEmpresasppField168: TppField
      FieldAlias = 'Representante_SignatarioResp'
      FieldName = 'Representante_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 167
    end
    object pEmpresasppField169: TppField
      FieldAlias = 'Autorizacao_NFECNPJ'
      FieldName = 'Autorizacao_NFECNPJ'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 168
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField170: TppField
      FieldAlias = 'Autorizacao_NFECPF'
      FieldName = 'Autorizacao_NFECPF'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 169
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField171: TppField
      Alignment = taRightJustify
      FieldAlias = 'Encerramento_Contabil'
      FieldName = 'Encerramento_Contabil'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 170
    end
    object pEmpresasppField172: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Municipio'
      FieldName = 'Contador_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 171
    end
    object pEmpresasppField173: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Municipio'
      FieldName = 'Representante_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 172
    end
    object pEmpresasppField174: TppField
      FieldAlias = 'Classificacao_Tributaria'
      FieldName = 'Classificacao_Tributaria'
      FieldLength = 2
      DisplayWidth = 2
      Position = 173
    end
    object pEmpresasppField175: TppField
      Alignment = taRightJustify
      FieldAlias = 'Obrigada_ECD'
      FieldName = 'Obrigada_ECD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 174
    end
    object pEmpresasppField176: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desoneracao_Folha'
      FieldName = 'Desoneracao_Folha'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 175
    end
    object pEmpresasppField177: TppField
      Alignment = taRightJustify
      FieldAlias = 'Isencao_Multa'
      FieldName = 'Isencao_Multa'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 176
    end
    object pEmpresasppField178: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_REINF'
      FieldName = 'Ambiente_REINF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 177
    end
    object pEmpresasppField179: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_Sequencia'
      FieldName = 'REINF_Sequencia'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 178
    end
    object pEmpresasppField180: TppField
      FieldAlias = 'REINF_ModoLancamento'
      FieldName = 'REINF_ModoLancamento'
      FieldLength = 10
      DisplayWidth = 10
      Position = 179
    end
    object pEmpresasppField181: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_ProcEmi'
      FieldName = 'REINF_ProcEmi'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 180
    end
    object pEmpresasppField182: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_tpInsc'
      FieldName = 'REINF_tpInsc'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 181
    end
    object pEmpresasppField183: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_indSitPJ'
      FieldName = 'REINF_indSitPJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 182
    end
    object pEmpresasppField184: TppField
      FieldAlias = 'REINF_ideEFR'
      FieldName = 'REINF_ideEFR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 183
    end
    object pEmpresasppField185: TppField
      FieldAlias = 'REINF_VerProc'
      FieldName = 'REINF_VerProc'
      FieldLength = 5
      DisplayWidth = 5
      Position = 184
    end
    object pEmpresasppField186: TppField
      FieldAlias = 'REINF_iniValid'
      FieldName = 'REINF_iniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 185
    end
    object pEmpresasppField187: TppField
      FieldAlias = 'REINF_fimValid'
      FieldName = 'REINF_fimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 186
    end
    object pEmpresasppField188: TppField
      FieldAlias = 'REINF_AltiniValid'
      FieldName = 'REINF_AltiniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 187
    end
    object pEmpresasppField189: TppField
      FieldAlias = 'REINF_AltfimValid'
      FieldName = 'REINF_AltfimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 188
    end
    object pEmpresasppField190: TppField
      FieldAlias = 'Versao_REINF'
      FieldName = 'Versao_REINF'
      FieldLength = 10
      DisplayWidth = 10
      Position = 189
    end
    object pEmpresasppField191: TppField
      FieldAlias = 'EmissaoNFE_Bloqueada'
      FieldName = 'EmissaoNFE_Bloqueada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 190
    end
    object pEmpresasppField192: TppField
      FieldAlias = 'EmissaoNFE_BloqueadaUsuario'
      FieldName = 'EmissaoNFE_BloqueadaUsuario'
      FieldLength = 80
      DisplayWidth = 80
      Position = 191
    end
    object pEmpresasppField193: TppField
      FieldAlias = 'MOdulo_Despacho'
      FieldName = 'MOdulo_Despacho'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 192
    end
    object pEmpresasppField194: TppField
      Alignment = taRightJustify
      FieldAlias = 'Processo_Exp'
      FieldName = 'Processo_Exp'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 193
    end
    object pEmpresasppField195: TppField
      Alignment = taRightJustify
      FieldAlias = 'PO'
      FieldName = 'PO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 194
    end
    object pEmpresasppField196: TppField
      FieldAlias = 'PO_Automatico'
      FieldName = 'PO_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 195
    end
    object pEmpresasppField197: TppField
      FieldAlias = 'Mascara_ProcessoExp'
      FieldName = 'Mascara_ProcessoExp'
      FieldLength = 7
      DisplayWidth = 7
      Position = 196
    end
    object pEmpresasppField198: TppField
      FieldAlias = 'Mascara_PO'
      FieldName = 'Mascara_PO'
      FieldLength = 7
      DisplayWidth = 7
      Position = 197
    end
    object pEmpresasppField199: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_CTe'
      FieldName = 'Ambiente_CTe'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 198
    end
    object pEmpresasppField200: TppField
      FieldAlias = 'Transportadora'
      FieldName = 'Transportadora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 199
    end
    object pEmpresasppField201: TppField
      FieldAlias = 'RNTRC'
      FieldName = 'RNTRC'
      FieldLength = 8
      DisplayWidth = 8
      Position = 200
    end
    object pEmpresasppField202: TppField
      FieldAlias = 'Assinatura'
      FieldName = 'Assinatura'
      FieldLength = 120
      DisplayWidth = 120
      Position = 201
    end
    object pEmpresasppField203: TppField
      FieldAlias = 'Classificacao_ContribIPI'
      FieldName = 'Classificacao_ContribIPI'
      FieldLength = 2
      DisplayWidth = 2
      Position = 202
    end
    object pEmpresasppField204: TppField
      FieldAlias = 'Envio_Backup'
      FieldName = 'Envio_Backup'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 203
    end
    object pEmpresasppField205: TppField
      FieldAlias = 'ECommerce_Data'
      FieldName = 'ECommerce_Data'
      FieldLength = 10
      DisplayWidth = 10
      Position = 204
    end
    object pEmpresasppField206: TppField
      FieldAlias = 'Processo_AutomaticoExp'
      FieldName = 'Processo_AutomaticoExp'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 205
    end
    object pEmpresasppField207: TppField
      FieldAlias = 'ECommerce_Hora'
      FieldName = 'ECommerce_Hora'
      FieldLength = 10
      DisplayWidth = 10
      Position = 206
    end
    object pEmpresasppField208: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_Armazem'
      FieldName = 'Ambiente_Armazem'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 207
    end
    object pEmpresasppField209: TppField
      FieldAlias = 'Lancamento_Contabil'
      FieldName = 'Lancamento_Contabil'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 208
    end
    object pEmpresasppField210: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pedido_Nota'
      FieldName = 'Pedido_Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 209
    end
    object pEmpresasppField211: TppField
      Alignment = taRightJustify
      FieldAlias = 'Layout_Estoque'
      FieldName = 'Layout_Estoque'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 210
    end
  end
  object pTipoItem: TppDBPipeline
    DataSource = Dados.dsTipoItem
    UserName = 'pTipoItem'
    Left = 448
    Top = 7
    object pTipoItemppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object pTipoItemppField2: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
  end
  object tPesquisa: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 568
    Top = 7
  end
  object tProdutos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM Produtos ')
    Active = True
    Left = 200
    Top = 7
  end
  object dstProdutos: TDataSource
    DataSet = tProdutos
    Left = 264
    Top = 8
  end
end
