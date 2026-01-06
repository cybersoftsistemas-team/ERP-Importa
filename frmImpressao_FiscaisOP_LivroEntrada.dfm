object Impressao_FiscaisOP_LivroEntrada: TImpressao_FiscaisOP_LivroEntrada
  Left = 548
  Top = 302
  BorderStyle = bsDialog
  Caption = 'Impressao_FiscaisOP_LivroEntrada'
  ClientHeight = 244
  ClientWidth = 443
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
    Width = 443
    Height = 37
    Align = alTop
    Stretch = True
  end
  object RxLabel1: TRxLabel
    Left = 2
    Top = 0
    Width = 152
    Height = 21
    Caption = 'IMPRESS'#195'O - FISCAIS'
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
    Left = 2
    Top = 16
    Width = 166
    Height = 18
    Caption = 'Livro Registro de Entradas.'
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
    Top = 215
    Width = 443
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      443
      29)
    object bSair: TButton
      Left = 376
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
      Left = 310
      Top = 1
      Width = 66
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bImprimirClick
    end
  end
  object StaticText2: TStaticText
    Left = 10
    Top = 47
    Width = 87
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Data Inicial'
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
  object StaticText1: TStaticText
    Left = 10
    Top = 70
    Width = 87
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Data Final'
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
  object cModelo: TRadioGroup
    Left = 8
    Top = 149
    Width = 129
    Height = 37
    Caption = 'Modelo'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'P1'
      'P1/A')
    TabOrder = 3
  end
  object cImpressora: TRadioGroup
    Left = 310
    Top = 47
    Width = 99
    Height = 71
    Caption = 'Impressora'
    ItemIndex = 1
    Items.Strings = (
      'Matricial'
      'Jato deTinta')
    TabOrder = 4
    Visible = False
  end
  object cOperacao: TRadioGroup
    Left = 143
    Top = 149
    Width = 282
    Height = 37
    Caption = 'Opera'#231#227'o'
    Columns = 3
    Enabled = False
    ItemIndex = 0
    Items.Strings = (
      'N'#227'o FUNDAP'
      'FUNDAP'
      'Todos')
    TabOrder = 5
  end
  object StaticText3: TStaticText
    Left = 10
    Top = 93
    Width = 87
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'N'#186' Folha'
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
  object cFolha: TRxSpinEdit
    Left = 99
    Top = 93
    Width = 67
    Height = 21
    DragCursor = crDefault
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
  end
  object cIncentivo: TComboBox
    Left = 99
    Top = 116
    Width = 190
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    Items.Strings = (
      'FUNDAP'
      'INVEST'
      'TARE'
      'OUTROS')
  end
  object StaticText4: TStaticText
    Left = 10
    Top = 116
    Width = 87
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
    TabOrder = 9
    Transparent = False
    StyleElements = []
  end
  object cDataIni: TDateEdit
    Left = 99
    Top = 47
    Width = 106
    Height = 21
    CheckOnExit = True
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
    TabOrder = 10
  end
  object cDataFim: TDateEdit
    Left = 99
    Top = 70
    Width = 106
    Height = 21
    CheckOnExit = True
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
    TabOrder = 11
  end
  object tNotas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Data_EntradaSaida,'
      '       Data_Emissao,'
      '       '#39'NF'#39' AS Tipo,'
      '       CAST(Serie AS varchar(3)) AS Serie,'
      '       '#39'   '#39' AS SubSerie,'
      '       Numero,'
      '       Natureza_Codigo,'
      '       Valor_TotalNota,'
      '       CAST(0 AS money) AS Valor_Contabil,'
      '       BCICMS,'
      '       Valor_ICMS,'
      '       Valor_IsentasICMS,'
      '       Valor_OutrasICMS,'
      '       Aliquota_ICMSOper,'
      '       Valor_TotalProdutos AS BCIPI,'
      '       Valor_TotalIPI,'
      '       Valor_IsentasIPI,'
      '       Valor_OutrasIPI,'
      '       Incentivo_Fiscal,'
      '       Cancelada,'
      '       Fornecedores.CNPJ,'
      '       Fornecedores.Estado,'
      '       CAST(0 AS money) AS Apuracao_ICMS,'
      '       CAST(0 AS money) AS Apuracao_IPI,'
      
        '       CASE WHEN BCICMS            > 0 THEN 1 ELSE 0 END AS Codi' +
        'go1,'
      
        '       CASE WHEN Valor_IsentasICMS > 0 THEN 2 ELSE 0 END AS Codi' +
        'go2,'
      
        '       CASE WHEN Valor_OutrasICMS  > 0 THEN 3 ELSE 0 END AS Codi' +
        'go3,'
      
        '       CASE WHEN Valor_TotalIPI    > 0 THEN 1 ELSE 0 END AS Codi' +
        'go4,'
      
        '       CASE WHEN Valor_IsentasIPI  > 0 THEN 2 ELSE 0 END AS Codi' +
        'go5,'
      
        '       CASE WHEN Valor_OutrasIPI   > 0 THEN 3 ELSE 0 END AS Codi' +
        'go6,'
      '       NULL AS Codigo_ICMS,'
      '       NULL AS Codigo_IPI,'
      '       CAST(0 AS money) AS Imposto_ICMS,'
      '       CAST(0 AS money) AS Imposto_IPI,'
      '       NULL AS Ordem,'
      '       Fornecedor_Codigo AS Fornecedor'
      'FROM   NotasFiscais, Fornecedores'
      
        'WHERE  (Saida_Entrada = 0) AND (Fornecedores.Codigo = Fornecedor' +
        '_Codigo) AND (Cancelada <> 1)')
    FetchRows = 1
    Active = True
    Left = 168
    Top = 3
  end
  object dstNotas: TDataSource
    DataSet = tNotas
    Left = 213
    Top = 3
  end
  object tItens: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM NotasItens')
    FetchRows = 1
    Left = 266
    Top = 3
  end
  object pNotas: TppDBPipeline
    DataSource = dstNotas
    UserName = 'pNotas'
    Left = 136
    Top = 48
    object pNotasppField1: TppField
      FieldAlias = 'Data_EntradaSaida'
      FieldName = 'Data_EntradaSaida'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 0
    end
    object pNotasppField2: TppField
      FieldAlias = 'Data_Emissao'
      FieldName = 'Data_Emissao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object pNotasppField3: TppField
      FieldAlias = 'Tipo'
      FieldName = 'Tipo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 2
    end
    object pNotasppField4: TppField
      FieldAlias = 'Serie'
      FieldName = 'Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 3
    end
    object pNotasppField5: TppField
      FieldAlias = 'SubSerie'
      FieldName = 'SubSerie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 4
    end
    object pNotasppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object pNotasppField7: TppField
      FieldAlias = 'Natureza_Codigo'
      FieldName = 'Natureza_Codigo'
      FieldLength = 4
      DisplayWidth = 4
      Position = 6
    end
    object pNotasppField8: TppField
      FieldAlias = 'Valor_TotalNota'
      FieldName = 'Valor_TotalNota'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 7
    end
    object pNotasppField9: TppField
      FieldAlias = 'Valor_Contabil'
      FieldName = 'Valor_Contabil'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 8
    end
    object pNotasppField10: TppField
      FieldAlias = 'BCICMS'
      FieldName = 'BCICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 9
    end
    object pNotasppField11: TppField
      FieldAlias = 'Valor_ICMS'
      FieldName = 'Valor_ICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 10
    end
    object pNotasppField12: TppField
      FieldAlias = 'Valor_IsentasICMS'
      FieldName = 'Valor_IsentasICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 11
    end
    object pNotasppField13: TppField
      FieldAlias = 'Valor_OutrasICMS'
      FieldName = 'Valor_OutrasICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 12
    end
    object pNotasppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_ICMSOper'
      FieldName = 'Aliquota_ICMSOper'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object pNotasppField15: TppField
      FieldAlias = 'BCIPI'
      FieldName = 'BCIPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 14
    end
    object pNotasppField16: TppField
      FieldAlias = 'Valor_TotalIPI'
      FieldName = 'Valor_TotalIPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 15
    end
    object pNotasppField17: TppField
      FieldAlias = 'Valor_IsentasIPI'
      FieldName = 'Valor_IsentasIPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 16
    end
    object pNotasppField18: TppField
      FieldAlias = 'Valor_OutrasIPI'
      FieldName = 'Valor_OutrasIPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 17
    end
    object pNotasppField19: TppField
      FieldAlias = 'Incentivo_Fiscal'
      FieldName = 'Incentivo_Fiscal'
      FieldLength = 15
      DisplayWidth = 15
      Position = 18
    end
    object pNotasppField20: TppField
      FieldAlias = 'Cancelada'
      FieldName = 'Cancelada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 19
    end
    object pNotasppField21: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 20
    end
    object pNotasppField22: TppField
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 21
    end
    object pNotasppField23: TppField
      FieldAlias = 'Apuracao_ICMS'
      FieldName = 'Apuracao_ICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 22
    end
    object pNotasppField24: TppField
      FieldAlias = 'Apuracao_IPI'
      FieldName = 'Apuracao_IPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 23
    end
    object pNotasppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo1'
      FieldName = 'Codigo1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object pNotasppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo2'
      FieldName = 'Codigo2'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 25
    end
    object pNotasppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo3'
      FieldName = 'Codigo3'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object pNotasppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo4'
      FieldName = 'Codigo4'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object pNotasppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo5'
      FieldName = 'Codigo5'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 28
    end
    object pNotasppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo6'
      FieldName = 'Codigo6'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object pNotasppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo_ICMS'
      FieldName = 'Codigo_ICMS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object pNotasppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo_IPI'
      FieldName = 'Codigo_IPI'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 31
    end
    object pNotasppField33: TppField
      FieldAlias = 'Imposto_ICMS'
      FieldName = 'Imposto_ICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 32
    end
    object pNotasppField34: TppField
      FieldAlias = 'Imposto_IPI'
      FieldName = 'Imposto_IPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 33
    end
    object pNotasppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ordem'
      FieldName = 'Ordem'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 34
    end
    object pNotasppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fornecedor'
      FieldName = 'Fornecedor'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 35
    end
  end
  object pEmpresa: TppDBPipeline
    DataSource = Dados.dsEmpresas
    UserName = 'pEmrpesa'
    Left = 205
    Top = 48
    object pEmpresappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 2
      Position = 0
    end
    object pEmpresappField2: TppField
      FieldAlias = 'Razao_Social'
      FieldName = 'Razao_Social'
      FieldLength = 50
      DisplayWidth = 28
      Position = 1
    end
    object pEmpresappField3: TppField
      FieldAlias = 'Nome_Fantasia'
      FieldName = 'Nome_Fantasia'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object pEmpresappField4: TppField
      FieldAlias = 'Rua'
      FieldName = 'Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object pEmpresappField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Rua_Numero'
      FieldName = 'Rua_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object pEmpresappField6: TppField
      FieldAlias = 'Complemento'
      FieldName = 'Complemento'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object pEmpresappField7: TppField
      FieldAlias = 'Bairro'
      FieldName = 'Bairro'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object pEmpresappField8: TppField
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 7
    end
    object pEmpresappField9: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 8
    end
    object pEmpresappField10: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 12
      Position = 9
    end
    object pEmpresappField11: TppField
      FieldAlias = 'IE'
      FieldName = 'IE'
      FieldLength = 14
      DisplayWidth = 14
      Position = 10
    end
    object pEmpresappField12: TppField
      FieldAlias = 'IM'
      FieldName = 'IM'
      FieldLength = 14
      DisplayWidth = 14
      Position = 11
    end
    object pEmpresappField13: TppField
      FieldAlias = 'Junta_Codigo'
      FieldName = 'Junta_Codigo'
      FieldLength = 12
      DisplayWidth = 12
      Position = 12
    end
    object pEmpresappField14: TppField
      FieldAlias = 'Junta_Data'
      FieldName = 'Junta_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
    object pEmpresappField15: TppField
      FieldAlias = 'Ramo_Atividade'
      FieldName = 'Ramo_Atividade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object pEmpresappField16: TppField
      FieldAlias = 'Codigo_Atividade'
      FieldName = 'Codigo_Atividade'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
    object pEmpresappField17: TppField
      FieldAlias = 'Responsavel'
      FieldName = 'Responsavel'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object pEmpresappField18: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 17
    end
    object pEmpresappField19: TppField
      FieldAlias = 'Site'
      FieldName = 'Site'
      FieldLength = 60
      DisplayWidth = 60
      Position = 18
    end
    object pEmpresappField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'Duplicata'
      FieldName = 'Duplicata'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object pEmpresappField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Saida'
      FieldName = 'Nota_Saida'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object pEmpresappField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Entrada'
      FieldName = 'Nota_Entrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object pEmpresappField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Servico'
      FieldName = 'Nota_Servico'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object pEmpresappField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Eletronica'
      FieldName = 'Nota_Eletronica'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object pEmpresappField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'Memorando_Exportacao'
      FieldName = 'Memorando_Exportacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object pEmpresappField26: TppField
      FieldAlias = 'Sincronizar_NumeroNF'
      FieldName = 'Sincronizar_NumeroNF'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 25
    end
    object pEmpresappField27: TppField
      FieldAlias = 'Mascara_PlanoContas'
      FieldName = 'Mascara_PlanoContas'
      FieldLength = 20
      DisplayWidth = 20
      Position = 26
    end
    object pEmpresappField28: TppField
      FieldAlias = 'Codigo_Reduzido'
      FieldName = 'Codigo_Reduzido'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 27
    end
    object pEmpresappField29: TppField
      FieldAlias = 'Diretor'
      FieldName = 'Diretor'
      FieldLength = 50
      DisplayWidth = 50
      Position = 28
    end
    object pEmpresappField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Numero'
      FieldName = 'Diario_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object pEmpresappField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Pagina'
      FieldName = 'Diario_Pagina'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object pEmpresappField32: TppField
      FieldAlias = 'Ultimo_Encerramento'
      FieldName = 'Ultimo_Encerramento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 31
    end
    object pEmpresappField33: TppField
      FieldAlias = 'NFServico_Modelo'
      FieldName = 'NFServico_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 32
    end
    object pEmpresappField34: TppField
      FieldAlias = 'NFServico_Serie'
      FieldName = 'NFServico_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 33
    end
    object pEmpresappField35: TppField
      FieldAlias = 'NFEntrada_Modelo'
      FieldName = 'NFEntrada_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 34
    end
    object pEmpresappField36: TppField
      FieldAlias = 'NFEntrada_Serie'
      FieldName = 'NFEntrada_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 35
    end
    object pEmpresappField37: TppField
      FieldAlias = 'NFSaida_Modelo'
      FieldName = 'NFSaida_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 36
    end
    object pEmpresappField38: TppField
      FieldAlias = 'NFSaida_Serie'
      FieldName = 'NFSaida_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 37
    end
    object pEmpresappField39: TppField
      FieldAlias = 'Matriz_Filial'
      FieldName = 'Matriz_Filial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 38
    end
    object pEmpresappField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Filial'
      FieldName = 'Numero_Filial'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 2
      Position = 39
    end
    object pEmpresappField41: TppField
      FieldAlias = 'NFEletronica_Modelo'
      FieldName = 'NFEletronica_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 40
    end
    object pEmpresappField42: TppField
      FieldAlias = 'NFEletronica_Serie'
      FieldName = 'NFEletronica_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 41
    end
    object pEmpresappField43: TppField
      FieldAlias = 'NFEletronica_Layout'
      FieldName = 'NFEletronica_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 42
    end
    object pEmpresappField44: TppField
      FieldAlias = 'Certificado_Digital'
      FieldName = 'Certificado_Digital'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 43
      Searchable = False
      Sortable = False
    end
    object pEmpresappField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Lote'
      FieldName = 'Numero_Lote'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 44
    end
    object pEmpresappField46: TppField
      FieldAlias = 'Inscricao_SUFRAMA'
      FieldName = 'Inscricao_SUFRAMA'
      FieldLength = 9
      DisplayWidth = 9
      Position = 45
    end
    object pEmpresappField47: TppField
      FieldAlias = 'Contador_Nome'
      FieldName = 'Contador_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 46
    end
    object pEmpresappField48: TppField
      FieldAlias = 'Contador_CNPJ'
      FieldName = 'Contador_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 47
    end
    object pEmpresappField49: TppField
      FieldAlias = 'Contador_CPF'
      FieldName = 'Contador_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 48
    end
    object pEmpresappField50: TppField
      FieldAlias = 'Contador_CRC'
      FieldName = 'Contador_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 49
    end
    object pEmpresappField51: TppField
      FieldAlias = 'Contador_CEP'
      FieldName = 'Contador_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 50
    end
    object pEmpresappField52: TppField
      FieldAlias = 'Contador_Rua'
      FieldName = 'Contador_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 51
    end
    object pEmpresappField53: TppField
      FieldAlias = 'Contador_Numero'
      FieldName = 'Contador_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 52
    end
    object pEmpresappField54: TppField
      FieldAlias = 'Contador_Complemento'
      FieldName = 'Contador_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 53
    end
    object pEmpresappField55: TppField
      FieldAlias = 'Contador_Bairro'
      FieldName = 'Contador_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 54
    end
    object pEmpresappField56: TppField
      FieldAlias = 'Contador_Telefone'
      FieldName = 'Contador_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 55
    end
    object pEmpresappField57: TppField
      FieldAlias = 'Contador_FAX'
      FieldName = 'Contador_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 56
    end
    object pEmpresappField58: TppField
      FieldAlias = 'Contador_Email'
      FieldName = 'Contador_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 57
    end
    object pEmpresappField59: TppField
      FieldAlias = 'Contador_Estado'
      FieldName = 'Contador_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 58
    end
    object pEmpresappField60: TppField
      FieldAlias = 'Data_Constituicao'
      FieldName = 'Data_Constituicao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 59
    end
    object pEmpresappField61: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tributacao'
      FieldName = 'Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 60
    end
    object pEmpresappField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'Municipio_Codigo'
      FieldName = 'Municipio_Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 61
    end
    object pEmpresappField63: TppField
      FieldAlias = 'Diretor_CPF'
      FieldName = 'Diretor_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 62
    end
    object pEmpresappField64: TppField
      FieldAlias = 'Responsavel_CPF'
      FieldName = 'Responsavel_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 63
    end
    object pEmpresappField65: TppField
      FieldAlias = 'Responsavel_Funcao'
      FieldName = 'Responsavel_Funcao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 64
    end
    object pEmpresappField66: TppField
      FieldAlias = 'Banco_Dados'
      FieldName = 'Banco_Dados'
      FieldLength = 50
      DisplayWidth = 50
      Position = 65
    end
    object pEmpresappField67: TppField
      FieldAlias = 'Banco_Contabilidade'
      FieldName = 'Banco_Contabilidade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 66
    end
    object pEmpresappField68: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente'
      FieldName = 'Ambiente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 67
    end
    object pEmpresappField69: TppField
      FieldAlias = 'Licensa_NFE_Util'
      FieldName = 'Licensa_NFE_Util'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 68
      Searchable = False
      Sortable = False
    end
    object pEmpresappField70: TppField
      FieldAlias = 'Processo_Automatico'
      FieldName = 'Processo_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 69
    end
    object pEmpresappField71: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 70
    end
    object pEmpresappField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'Apuracao_IPI'
      FieldName = 'Apuracao_IPI'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 71
    end
    object pEmpresappField73: TppField
      FieldAlias = 'Perfil_SPED'
      FieldName = 'Perfil_SPED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 72
    end
    object pEmpresappField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Atividade'
      FieldName = 'Tipo_Atividade'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 73
    end
    object pEmpresappField75: TppField
      FieldAlias = 'Vencimento_Certificado'
      FieldName = 'Vencimento_Certificado'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 74
    end
    object pEmpresappField76: TppField
      FieldAlias = 'UF_WebService'
      FieldName = 'UF_WebService'
      FieldLength = 10
      DisplayWidth = 10
      Position = 75
    end
    object pEmpresappField77: TppField
      Alignment = taRightJustify
      FieldAlias = 'Regime_Apuracao'
      FieldName = 'Regime_Apuracao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 76
    end
    object pEmpresappField78: TppField
      FieldAlias = 'Mascara_Processo'
      FieldName = 'Mascara_Processo'
      FieldLength = 7
      DisplayWidth = 7
      Position = 77
    end
    object pEmpresappField79: TppField
      FieldAlias = 'Incentivo_Fiscal'
      FieldName = 'Incentivo_Fiscal'
      FieldLength = 20
      DisplayWidth = 20
      Position = 78
    end
    object pEmpresappField80: TppField
      FieldAlias = 'Email_SMTP'
      FieldName = 'Email_SMTP'
      FieldLength = 80
      DisplayWidth = 80
      Position = 79
    end
    object pEmpresappField81: TppField
      FieldAlias = 'Email_Senha'
      FieldName = 'Email_Senha'
      FieldLength = 30
      DisplayWidth = 30
      Position = 80
    end
    object pEmpresappField82: TppField
      FieldAlias = 'Email_MsgEnvioNFE'
      FieldName = 'Email_MsgEnvioNFE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 81
      Searchable = False
      Sortable = False
    end
    object pEmpresappField83: TppField
      FieldAlias = 'Email_MsgCancelamento'
      FieldName = 'Email_MsgCancelamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 82
      Searchable = False
      Sortable = False
    end
    object pEmpresappField84: TppField
      Alignment = taRightJustify
      FieldAlias = 'Email_Porta'
      FieldName = 'Email_Porta'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 83
    end
    object pEmpresappField85: TppField
      FieldAlias = 'Email_ID'
      FieldName = 'Email_ID'
      FieldLength = 80
      DisplayWidth = 80
      Position = 84
    end
    object pEmpresappField86: TppField
      FieldAlias = 'Distribuidora'
      FieldName = 'Distribuidora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 85
    end
    object pEmpresappField87: TppField
      FieldAlias = 'Fechamento_Financeiro'
      FieldName = 'Fechamento_Financeiro'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 86
    end
    object pEmpresappField88: TppField
      FieldAlias = 'Modulo_Comercial'
      FieldName = 'Modulo_Comercial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 87
    end
    object pEmpresappField89: TppField
      FieldAlias = 'Consolidar'
      FieldName = 'Consolidar'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 88
    end
    object pEmpresappField90: TppField
      FieldAlias = 'Email_Copia'
      FieldName = 'Email_Copia'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 89
      Searchable = False
      Sortable = False
    end
    object pEmpresappField91: TppField
      FieldAlias = 'Email_SSL'
      FieldName = 'Email_SSL'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 90
    end
    object pEmpresappField92: TppField
      FieldAlias = 'Email_Autenticacao'
      FieldName = 'Email_Autenticacao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 91
    end
    object pEmpresappField93: TppField
      FieldAlias = 'Email_Metodo'
      FieldName = 'Email_Metodo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 92
    end
    object pEmpresappField94: TppField
      FieldAlias = 'CartaCorrecao_Layout'
      FieldName = 'CartaCorrecao_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 93
    end
    object pEmpresappField95: TppField
      FieldAlias = 'CNAE'
      FieldName = 'CNAE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 94
    end
    object pEmpresappField96: TppField
      FieldAlias = 'Email_MsgEnvioCCE'
      FieldName = 'Email_MsgEnvioCCE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 95
      Searchable = False
      Sortable = False
    end
    object pEmpresappField97: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_EletronicaEntrada'
      FieldName = 'Nota_EletronicaEntrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 96
    end
    object pEmpresappField98: TppField
      FieldAlias = 'NFEletronica_ModeloEntrada'
      FieldName = 'NFEletronica_ModeloEntrada'
      FieldLength = 2
      DisplayWidth = 2
      Position = 97
    end
    object pEmpresappField99: TppField
      FieldAlias = 'NFEletronica_SerieEntrada'
      FieldName = 'NFEletronica_SerieEntrada'
      FieldLength = 3
      DisplayWidth = 3
      Position = 98
    end
    object pEmpresappField100: TppField
      FieldAlias = 'NFEletronica_Numeracao'
      FieldName = 'NFEletronica_Numeracao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 99
    end
    object pEmpresappField101: TppField
      Alignment = taRightJustify
      FieldAlias = 'Logomarca_Largura'
      FieldName = 'Logomarca_Largura'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 100
    end
    object pEmpresappField102: TppField
      FieldAlias = 'Pagamento'
      FieldName = 'Pagamento'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 101
    end
    object pEmpresappField103: TppField
      FieldAlias = 'Modulo_Emprestimos'
      FieldName = 'Modulo_Emprestimos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 102
    end
    object pEmpresappField104: TppField
      FieldAlias = 'Modulo_XMLCTe'
      FieldName = 'Modulo_XMLCTe'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 103
    end
    object pEmpresappField105: TppField
      FieldAlias = 'Regime'
      FieldName = 'Regime'
      FieldLength = 1
      DisplayWidth = 1
      Position = 104
    end
    object pEmpresappField106: TppField
      FieldAlias = 'Modulo_Vendas'
      FieldName = 'Modulo_Vendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 105
    end
    object pEmpresappField107: TppField
      Alignment = taRightJustify
      FieldAlias = 'CTE_Numero'
      FieldName = 'CTE_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 106
    end
    object pEmpresappField108: TppField
      FieldAlias = 'CTE_Modelo'
      FieldName = 'CTE_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 107
    end
    object pEmpresappField109: TppField
      FieldAlias = 'CTE_Serie'
      FieldName = 'CTE_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 108
    end
    object pEmpresappField110: TppField
      FieldAlias = 'CTE_Layout'
      FieldName = 'CTE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 109
    end
    object pEmpresappField111: TppField
      FieldAlias = 'Modulo_Logistica'
      FieldName = 'Modulo_Logistica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 110
    end
    object pEmpresappField112: TppField
      FieldAlias = 'Modulo_Boleto'
      FieldName = 'Modulo_Boleto'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 111
    end
    object pEmpresappField113: TppField
      FieldAlias = 'Telefone1'
      FieldName = 'Telefone1'
      FieldLength = 11
      DisplayWidth = 11
      Position = 112
    end
    object pEmpresappField114: TppField
      FieldAlias = 'Telefone2'
      FieldName = 'Telefone2'
      FieldLength = 11
      DisplayWidth = 11
      Position = 113
    end
    object pEmpresappField115: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 11
      DisplayWidth = 11
      Position = 114
    end
    object pEmpresappField116: TppField
      FieldAlias = 'Modulo_SISCOMEXWEB'
      FieldName = 'Modulo_SISCOMEXWEB'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 115
    end
    object pEmpresappField117: TppField
      FieldAlias = 'Modulo_ECommerce'
      FieldName = 'Modulo_ECommerce'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 116
    end
    object pEmpresappField118: TppField
      FieldAlias = 'Modulo_ManifestoDest'
      FieldName = 'Modulo_ManifestoDest'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 117
    end
    object pEmpresappField119: TppField
      FieldAlias = 'Manifesto_LayOut'
      FieldName = 'Manifesto_LayOut'
      FieldLength = 10
      DisplayWidth = 10
      Position = 118
    end
    object pEmpresappField120: TppField
      FieldAlias = 'UF_WebServiceManifesto'
      FieldName = 'UF_WebServiceManifesto'
      FieldLength = 10
      DisplayWidth = 10
      Position = 119
    end
    object pEmpresappField121: TppField
      FieldAlias = 'Modulo_Televendas'
      FieldName = 'Modulo_Televendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 120
    end
    object pEmpresappField122: TppField
      FieldAlias = 'Email_MsgOrcamento'
      FieldName = 'Email_MsgOrcamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 121
      Searchable = False
      Sortable = False
    end
    object pEmpresappField123: TppField
      FieldAlias = 'Email_MsgBoleto'
      FieldName = 'Email_MsgBoleto'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 122
      Searchable = False
      Sortable = False
    end
    object pEmpresappField124: TppField
      FieldAlias = 'PISCOFINS_F100'
      FieldName = 'PISCOFINS_F100'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 123
    end
    object pEmpresappField125: TppField
      FieldAlias = 'Logo'
      FieldName = 'Logo'
      FieldLength = 120
      DisplayWidth = 120
      Position = 124
    end
    object pEmpresappField126: TppField
      FieldAlias = 'Modulo_ConsultaProdutos'
      FieldName = 'Modulo_ConsultaProdutos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 125
    end
    object pEmpresappField127: TppField
      FieldAlias = 'Modulo_Contabil'
      FieldName = 'Modulo_Contabil'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 126
    end
    object pEmpresappField128: TppField
      FieldAlias = 'Modulo_EnviarArmazem'
      FieldName = 'Modulo_EnviarArmazem'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 127
    end
    object pEmpresappField129: TppField
      FieldAlias = 'Versao_DLL'
      FieldName = 'Versao_DLL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 128
    end
    object pEmpresappField130: TppField
      FieldAlias = 'Desativada'
      FieldName = 'Desativada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 129
    end
    object pEmpresappField131: TppField
      FieldAlias = 'Menu_Inventario'
      FieldName = 'Menu_Inventario'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 130
    end
    object pEmpresappField132: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_GNRE'
      FieldName = 'Ambiente_GNRE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 131
    end
    object pEmpresappField133: TppField
      FieldAlias = 'GNRE_Layout'
      FieldName = 'GNRE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 132
    end
    object pEmpresappField134: TppField
      FieldAlias = 'Modulo_GNRE'
      FieldName = 'Modulo_GNRE'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 133
    end
    object pEmpresappField135: TppField
      FieldAlias = 'Modulo_DadosDI'
      FieldName = 'Modulo_DadosDI'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 134
    end
    object pEmpresappField136: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Qualificacao'
      FieldName = 'Contador_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 135
    end
    object pEmpresappField137: TppField
      FieldAlias = 'Contador_CRCUF'
      FieldName = 'Contador_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 136
    end
    object pEmpresappField138: TppField
      FieldAlias = 'Contador_CRCData'
      FieldName = 'Contador_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 137
    end
    object pEmpresappField139: TppField
      FieldAlias = 'NIRE'
      FieldName = 'NIRE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 138
    end
    object pEmpresappField140: TppField
      FieldAlias = 'Fechamento_FinanceiroFinal'
      FieldName = 'Fechamento_FinanceiroFinal'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 139
    end
    object pEmpresappField141: TppField
      Alignment = taRightJustify
      FieldAlias = 'SPED_CTAPlanoRef'
      FieldName = 'SPED_CTAPlanoRef'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 140
    end
    object pEmpresappField142: TppField
      FieldAlias = 'Contador_CRCSequencial'
      FieldName = 'Contador_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 141
    end
    object pEmpresappField143: TppField
      FieldAlias = 'Refis'
      FieldName = 'Refis'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 142
    end
    object pEmpresappField144: TppField
      FieldAlias = 'Paes'
      FieldName = 'Paes'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 143
    end
    object pEmpresappField145: TppField
      Alignment = taRightJustify
      FieldAlias = 'Forma_Tributacao'
      FieldName = 'Forma_Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 144
    end
    object pEmpresappField146: TppField
      FieldAlias = 'Extincao_RTT'
      FieldName = 'Extincao_RTT'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 145
    end
    object pEmpresappField147: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtde_SCP'
      FieldName = 'Qtde_SCP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 146
    end
    object pEmpresappField148: TppField
      FieldAlias = 'Natureza_Juridica'
      FieldName = 'Natureza_Juridica'
      FieldLength = 10
      DisplayWidth = 10
      Position = 147
    end
    object pEmpresappField149: TppField
      FieldAlias = 'NIRE_Data'
      FieldName = 'NIRE_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 148
    end
    object pEmpresappField150: TppField
      FieldAlias = 'Representante_Bairro'
      FieldName = 'Representante_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 149
    end
    object pEmpresappField151: TppField
      FieldAlias = 'Representante_CEP'
      FieldName = 'Representante_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 150
    end
    object pEmpresappField152: TppField
      FieldAlias = 'Representante_CNPJ'
      FieldName = 'Representante_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 151
    end
    object pEmpresappField153: TppField
      FieldAlias = 'Representante_Complemento'
      FieldName = 'Representante_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 152
    end
    object pEmpresappField154: TppField
      FieldAlias = 'Representante_CPF'
      FieldName = 'Representante_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 153
    end
    object pEmpresappField155: TppField
      FieldAlias = 'Representante_CRC'
      FieldName = 'Representante_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 154
    end
    object pEmpresappField156: TppField
      FieldAlias = 'Representante_CRCData'
      FieldName = 'Representante_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 155
    end
    object pEmpresappField157: TppField
      FieldAlias = 'Representante_CRCSequencial'
      FieldName = 'Representante_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 156
    end
    object pEmpresappField158: TppField
      FieldAlias = 'Representante_CRCUF'
      FieldName = 'Representante_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 157
    end
    object pEmpresappField159: TppField
      FieldAlias = 'Representante_Email'
      FieldName = 'Representante_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 158
    end
    object pEmpresappField160: TppField
      FieldAlias = 'Representante_Estado'
      FieldName = 'Representante_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 159
    end
    object pEmpresappField161: TppField
      FieldAlias = 'Representante_FAX'
      FieldName = 'Representante_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 160
    end
    object pEmpresappField162: TppField
      FieldAlias = 'Representante_Nome'
      FieldName = 'Representante_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 161
    end
    object pEmpresappField163: TppField
      FieldAlias = 'Representante_Numero'
      FieldName = 'Representante_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 162
    end
    object pEmpresappField164: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Qualificacao'
      FieldName = 'Representante_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 163
    end
    object pEmpresappField165: TppField
      FieldAlias = 'Representante_Rua'
      FieldName = 'Representante_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 164
    end
    object pEmpresappField166: TppField
      FieldAlias = 'Representante_Telefone'
      FieldName = 'Representante_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 165
    end
    object pEmpresappField167: TppField
      FieldAlias = 'Contador_SignatarioResp'
      FieldName = 'Contador_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 166
    end
    object pEmpresappField168: TppField
      FieldAlias = 'Representante_SignatarioResp'
      FieldName = 'Representante_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 167
    end
    object pEmpresappField169: TppField
      FieldAlias = 'Autorizacao_NFECNPJ'
      FieldName = 'Autorizacao_NFECNPJ'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 168
      Searchable = False
      Sortable = False
    end
    object pEmpresappField170: TppField
      FieldAlias = 'Autorizacao_NFECPF'
      FieldName = 'Autorizacao_NFECPF'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 169
      Searchable = False
      Sortable = False
    end
    object pEmpresappField171: TppField
      Alignment = taRightJustify
      FieldAlias = 'Encerramento_Contabil'
      FieldName = 'Encerramento_Contabil'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 170
    end
    object pEmpresappField172: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Municipio'
      FieldName = 'Contador_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 171
    end
    object pEmpresappField173: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Municipio'
      FieldName = 'Representante_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 172
    end
    object pEmpresappField174: TppField
      FieldAlias = 'Classificacao_Tributaria'
      FieldName = 'Classificacao_Tributaria'
      FieldLength = 2
      DisplayWidth = 2
      Position = 173
    end
    object pEmpresappField175: TppField
      Alignment = taRightJustify
      FieldAlias = 'Obrigada_ECD'
      FieldName = 'Obrigada_ECD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 174
    end
    object pEmpresappField176: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desoneracao_Folha'
      FieldName = 'Desoneracao_Folha'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 175
    end
    object pEmpresappField177: TppField
      Alignment = taRightJustify
      FieldAlias = 'Isencao_Multa'
      FieldName = 'Isencao_Multa'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 176
    end
    object pEmpresappField178: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_REINF'
      FieldName = 'Ambiente_REINF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 177
    end
    object pEmpresappField179: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_Sequencia'
      FieldName = 'REINF_Sequencia'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 178
    end
    object pEmpresappField180: TppField
      FieldAlias = 'REINF_ModoLancamento'
      FieldName = 'REINF_ModoLancamento'
      FieldLength = 10
      DisplayWidth = 10
      Position = 179
    end
    object pEmpresappField181: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_ProcEmi'
      FieldName = 'REINF_ProcEmi'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 180
    end
    object pEmpresappField182: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_tpInsc'
      FieldName = 'REINF_tpInsc'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 181
    end
    object pEmpresappField183: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_indSitPJ'
      FieldName = 'REINF_indSitPJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 182
    end
    object pEmpresappField184: TppField
      FieldAlias = 'REINF_ideEFR'
      FieldName = 'REINF_ideEFR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 183
    end
    object pEmpresappField185: TppField
      FieldAlias = 'REINF_VerProc'
      FieldName = 'REINF_VerProc'
      FieldLength = 5
      DisplayWidth = 5
      Position = 184
    end
    object pEmpresappField186: TppField
      FieldAlias = 'REINF_iniValid'
      FieldName = 'REINF_iniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 185
    end
    object pEmpresappField187: TppField
      FieldAlias = 'REINF_fimValid'
      FieldName = 'REINF_fimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 186
    end
    object pEmpresappField188: TppField
      FieldAlias = 'REINF_AltiniValid'
      FieldName = 'REINF_AltiniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 187
    end
    object pEmpresappField189: TppField
      FieldAlias = 'REINF_AltfimValid'
      FieldName = 'REINF_AltfimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 188
    end
    object pEmpresappField190: TppField
      FieldAlias = 'Versao_REINF'
      FieldName = 'Versao_REINF'
      FieldLength = 10
      DisplayWidth = 10
      Position = 189
    end
    object pEmpresappField191: TppField
      FieldAlias = 'EmissaoNFE_Bloqueada'
      FieldName = 'EmissaoNFE_Bloqueada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 190
    end
    object pEmpresappField192: TppField
      FieldAlias = 'EmissaoNFE_BloqueadaUsuario'
      FieldName = 'EmissaoNFE_BloqueadaUsuario'
      FieldLength = 80
      DisplayWidth = 80
      Position = 191
    end
    object pEmpresappField193: TppField
      FieldAlias = 'MOdulo_Despacho'
      FieldName = 'MOdulo_Despacho'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 192
    end
    object pEmpresappField194: TppField
      Alignment = taRightJustify
      FieldAlias = 'Processo_Exp'
      FieldName = 'Processo_Exp'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 193
    end
    object pEmpresappField195: TppField
      Alignment = taRightJustify
      FieldAlias = 'PO'
      FieldName = 'PO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 194
    end
    object pEmpresappField196: TppField
      FieldAlias = 'PO_Automatico'
      FieldName = 'PO_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 195
    end
    object pEmpresappField197: TppField
      FieldAlias = 'Mascara_ProcessoExp'
      FieldName = 'Mascara_ProcessoExp'
      FieldLength = 7
      DisplayWidth = 7
      Position = 196
    end
    object pEmpresappField198: TppField
      FieldAlias = 'Mascara_PO'
      FieldName = 'Mascara_PO'
      FieldLength = 7
      DisplayWidth = 7
      Position = 197
    end
    object pEmpresappField199: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_CTe'
      FieldName = 'Ambiente_CTe'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 198
    end
    object pEmpresappField200: TppField
      FieldAlias = 'Transportadora'
      FieldName = 'Transportadora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 199
    end
    object pEmpresappField201: TppField
      FieldAlias = 'RNTRC'
      FieldName = 'RNTRC'
      FieldLength = 8
      DisplayWidth = 8
      Position = 200
    end
    object pEmpresappField202: TppField
      FieldAlias = 'Assinatura'
      FieldName = 'Assinatura'
      FieldLength = 120
      DisplayWidth = 120
      Position = 201
    end
    object pEmpresappField203: TppField
      FieldAlias = 'Classificacao_ContribIPI'
      FieldName = 'Classificacao_ContribIPI'
      FieldLength = 2
      DisplayWidth = 2
      Position = 202
    end
    object pEmpresappField204: TppField
      FieldAlias = 'Envio_Backup'
      FieldName = 'Envio_Backup'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 203
    end
    object pEmpresappField205: TppField
      FieldAlias = 'ECommerce_Data'
      FieldName = 'ECommerce_Data'
      FieldLength = 10
      DisplayWidth = 10
      Position = 204
    end
    object pEmpresappField206: TppField
      FieldAlias = 'Processo_AutomaticoExp'
      FieldName = 'Processo_AutomaticoExp'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 205
    end
    object pEmpresappField207: TppField
      FieldAlias = 'ECommerce_Hora'
      FieldName = 'ECommerce_Hora'
      FieldLength = 10
      DisplayWidth = 10
      Position = 206
    end
    object pEmpresappField208: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_Armazem'
      FieldName = 'Ambiente_Armazem'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 207
    end
    object pEmpresappField209: TppField
      FieldAlias = 'Lancamento_Contabil'
      FieldName = 'Lancamento_Contabil'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 208
    end
    object pEmpresappField210: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pedido_Nota'
      FieldName = 'Pedido_Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 209
    end
    object pEmpresappField211: TppField
      Alignment = taRightJustify
      FieldAlias = 'Layout_Estoque'
      FieldName = 'Layout_Estoque'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 210
    end
  end
  object rLivroEntradaP1: TppReport
    AutoStop = False
    DataPipeline = pNotas
    NoDataBehaviors = [ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Cybersoft - Livro de Entradas (Modelo P1)'
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
      'C:\Sistemas\Faturamento\Codigo Fonte\Relatorios\Fiscais_LivroEnt' +
      'radaP1.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = rLivroEntradaP1BeforePrint
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
    PreviewFormSettings.ZoomSetting = zs100Percent
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
    Left = 208
    Top = 145
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pNotas'
    object rDetalhe: TppHeaderBand
      BeforePrint = rDetalheBeforePrint
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 38100
      mmPrintPosition = 0
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        Pen.Width = 0
        mmHeight = 20902
        mmLeft = 0
        mmTop = 17198
        mmWidth = 284428
        BandType = 0
        LayerName = Foreground
      end
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        Pen.Width = 0
        mmHeight = 16933
        mmLeft = 0
        mmTop = 0
        mmWidth = 284163
        BandType = 0
        LayerName = Foreground
      end
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        Pen.Width = 0
        mmHeight = 16933
        mmLeft = 209286
        mmTop = 0
        mmWidth = 75142
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel62: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'REGISTRO DE ENTRADAS (Modelo P1)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 1058
        mmWidth = 51858
        BandType = 0
        LayerName = Foreground
      end
      object lOperacao: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = '(Opera'#231#245'es FUNDAP e N'#195'O FUNDAP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 157427
        mmTop = 794
        mmWidth = 50800
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel64: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = '(a) C'#211'DIGOS DE VALORES FISCAIS.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 211138
        mmTop = 794
        mmWidth = 63765
        BandType = 0
        LayerName = Foreground
      end
      object ppLine82: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 265
        mmTop = 5027
        mmWidth = 283898
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel65: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = '1 - Opera'#231#245'es com cr'#233'dito do imposto.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2879
        mmLeft = 210080
        mmTop = 5821
        mmWidth = 43127
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel66: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = '2 - Opera'#231#245'es sem cr'#233'dito do imposto - Isentas ou N'#227'o tributadas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2879
        mmLeft = 210080
        mmTop = 9260
        mmWidth = 73554
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel67: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = '3 - Opera'#231#245'es sem cr'#233'dito do imposto -  Outras.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2879
        mmLeft = 210080
        mmTop = 12700
        mmWidth = 52282
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel68: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'FIRMA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 528
        mmTop = 5822
        mmWidth = 33073
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel69: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'INSCRI'#199#195'O ESTADUAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 528
        mmTop = 9261
        mmWidth = 33073
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel70: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'FOLHA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 12700
        mmWidth = 33073
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel71: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 93927
        mmTop = 9261
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel72: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PER'#205'ODO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 93927
        mmTop = 12700
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pEmpresa'
        mmHeight = 3387
        mmLeft = 34131
        mmTop = 5822
        mmWidth = 141817
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'IE'
        DataPipeline = pEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pEmpresa'
        mmHeight = 3440
        mmLeft = 34131
        mmTop = 9261
        mmWidth = 36777
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'CNPJ'
        DataPipeline = pEmpresa
        DisplayFormat = '99.999.999/9999-99;0; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pEmpresa'
        mmHeight = 3440
        mmLeft = 111125
        mmTop = 9261
        mmWidth = 33602
        BandType = 0
        LayerName = Foreground
      end
      object lFolha: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'lFolha'
        CharWrap = True
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 3440
        mmLeft = 33867
        mmTop = 12700
        mmWidth = 12435
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel73: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DATA DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2879
        mmLeft = 794
        mmTop = 24605
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel74: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ENTRADA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2879
        mmLeft = 794
        mmTop = 27780
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
      object ppLine83: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 20902
        mmLeft = 14288
        mmTop = 17198
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground
      end
      object ppLine84: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 14288
        mmTop = 22754
        mmWidth = 84138
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel75: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DOCUMENTOS FISCAIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 14817
        mmTop = 18256
        mmWidth = 82021
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel76: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ESP'#201'CIE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2879
        mmLeft = 14816
        mmTop = 28575
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground
      end
      object ppLine85: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 15081
        mmLeft = 26194
        mmTop = 23019
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel77: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'S'#201'RIE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2879
        mmLeft = 26723
        mmTop = 25400
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel78: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'SUB-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2879
        mmLeft = 26723
        mmTop = 28575
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel79: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'S'#201'RIE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2879
        mmLeft = 26723
        mmTop = 31750
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground
      end
      object ppLine86: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 14817
        mmLeft = 34925
        mmTop = 23019
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel80: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'N'#218'MERO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 35454
        mmTop = 28575
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppLine87: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 15081
        mmLeft = 50271
        mmTop = 23019
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel81: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2879
        mmLeft = 50800
        mmTop = 25400
        mmWidth = 13495
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel82: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2879
        mmLeft = 50800
        mmTop = 28575
        mmWidth = 13495
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel83: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DOCUM.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2879
        mmLeft = 50800
        mmTop = 31750
        mmWidth = 13495
        BandType = 0
        LayerName = Foreground
      end
      object ppLine88: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 15081
        mmLeft = 64557
        mmTop = 23019
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel84: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label201'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'C'#211'DIGO DO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 65088
        mmTop = 28575
        mmWidth = 24077
        BandType = 0
        LayerName = Foreground
      end
      object ppLine89: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 15081
        mmLeft = 89429
        mmTop = 23019
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel85: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label202'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 89959
        mmTop = 28575
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel86: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ORIG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 89959
        mmTop = 30691
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground
      end
      object ppLine90: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 20902
        mmLeft = 98425
        mmTop = 17198
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel87: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label26'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 98954
        mmTop = 24605
        mmWidth = 19578
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel88: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label27'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CONTABIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 98954
        mmTop = 27780
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLine91: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 20638
        mmLeft = 118798
        mmTop = 17463
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground
      end
      object ppLine92: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 119063
        mmTop = 23019
        mmWidth = 165365
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel89: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label28'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CODIFICA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 119327
        mmTop = 18256
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel90: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label29'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CONTAB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 119592
        mmTop = 28575
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel91: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label30'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'FISCAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2879
        mmLeft = 130969
        mmTop = 28575
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLine93: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 15081
        mmLeft = 130440
        mmTop = 23019
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground
      end
      object ppLine94: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line201'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 20902
        mmLeft = 141288
        mmTop = 17198
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel92: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label31'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ICMS VALORES FISCAIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 141817
        mmTop = 18521
        mmWidth = 54504
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel93: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label32'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'C'#243'd.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 141817
        mmTop = 28047
        mmWidth = 6085
        BandType = 0
        LayerName = Foreground
      end
      object ppLine95: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line202'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 15081
        mmLeft = 148167
        mmTop = 23019
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel94: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label33'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '(a)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 141816
        mmTop = 30691
        mmWidth = 6086
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel95: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label35'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'BASE DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 148696
        mmTop = 24342
        mmWidth = 19578
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel96: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label36'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'C'#193'LCULO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 148696
        mmTop = 27517
        mmWidth = 19578
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel97: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label37'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'VALOR DA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 148696
        mmTop = 30692
        mmWidth = 19578
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel98: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label38'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'OPERA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 148697
        mmTop = 33867
        mmWidth = 19578
        BandType = 0
        LayerName = Foreground
      end
      object ppLine96: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line203'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 14817
        mmLeft = 168539
        mmTop = 23019
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel99: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label301'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ALIQ.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 169069
        mmTop = 28575
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground
      end
      object ppLine97: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line29'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 14817
        mmLeft = 177536
        mmTop = 23019
        mmWidth = 4763
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel100: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label41'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'IMPOSTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 178065
        mmTop = 27252
        mmWidth = 18256
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel101: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label42'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CREDITADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 178065
        mmTop = 30692
        mmWidth = 18256
        BandType = 0
        LayerName = Foreground
      end
      object ppLine98: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line31'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 20638
        mmLeft = 196586
        mmTop = 17198
        mmWidth = 4763
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel102: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label43'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'EMITENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 65088
        mmTop = 31750
        mmWidth = 24077
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel103: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label44'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'IPI VALORES FISCAIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 197115
        mmTop = 18785
        mmWidth = 46567
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel104: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label45'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'C'#243'd.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 197115
        mmTop = 28047
        mmWidth = 6085
        BandType = 0
        LayerName = Foreground
      end
      object ppLine99: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line34'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 15081
        mmLeft = 203465
        mmTop = 23019
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel105: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label46'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '(a)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 197115
        mmTop = 30691
        mmWidth = 6086
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel106: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label47'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'C'#193'LCULO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 203994
        mmTop = 27517
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel107: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label48'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'VALOR DA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 203994
        mmTop = 30692
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel108: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label49'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'OPERA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 203993
        mmTop = 33867
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLine100: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line35'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 14817
        mmLeft = 223838
        mmTop = 23019
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel109: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label51'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'IMPOSTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 224896
        mmTop = 27252
        mmWidth = 18256
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel110: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label52'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CREDITADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 224896
        mmTop = 30692
        mmWidth = 18256
        BandType = 0
        LayerName = Foreground
      end
      object ppLine101: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line37'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 20638
        mmLeft = 243946
        mmTop = 17198
        mmWidth = 4763
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel111: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label50'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'BASE DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 203994
        mmTop = 24342
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel112: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label56'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'OBSERVA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 244475
        mmTop = 29369
        mmWidth = 39423
        BandType = 0
        LayerName = Foreground
      end
      object lPeriodo: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        Border.mmPadding = 0
        Caption = '(Opera'#231#245'es FUNDAP e N'#195'O FUNDAP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 111125
        mmTop = 12700
        mmWidth = 49742
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand4: TppDetailBand
      BeforePrint = ppDetailBand4BeforePrint
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 2910
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Apuracao_ICMS'
        DataPipeline = pNotas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2911
        mmLeft = 149225
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppLine102: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        mmHeight = 2910
        mmLeft = 0
        mmTop = 0
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground
      end
      object ppLine103: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        mmHeight = 2910
        mmLeft = 14288
        mmTop = 0
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground
      end
      object ppLine104: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        mmHeight = 2910
        mmLeft = 26194
        mmTop = 0
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground
      end
      object ppLine105: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        mmHeight = 2910
        mmLeft = 34925
        mmTop = 0
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground
      end
      object ppLine106: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        mmHeight = 2910
        mmLeft = 50271
        mmTop = 0
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground
      end
      object ppLine107: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        mmHeight = 2910
        mmLeft = 64558
        mmTop = 0
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground
      end
      object ppLine108: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        mmHeight = 2910
        mmLeft = 89429
        mmTop = 0
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground
      end
      object ppLine109: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line502'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        mmHeight = 2910
        mmLeft = 98425
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground
      end
      object ppLine110: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        mmHeight = 2910
        mmLeft = 118798
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground
      end
      object ppLine111: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        mmHeight = 2910
        mmLeft = 130440
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground
      end
      object ppLine112: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        mmHeight = 2910
        mmLeft = 141288
        mmTop = 0
        mmWidth = 1323
        BandType = 4
        LayerName = Foreground
      end
      object ppLine113: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        mmHeight = 2910
        mmLeft = 148167
        mmTop = 0
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground
      end
      object ppLine114: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line24'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        mmHeight = 2910
        mmLeft = 168540
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground
      end
      object ppLine115: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line25'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        mmHeight = 2910
        mmLeft = 177536
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground
      end
      object ppLine116: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line26'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        mmHeight = 2910
        mmLeft = 196586
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground
      end
      object ppLine117: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line27'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        mmHeight = 2910
        mmLeft = 203465
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground
      end
      object ppLine118: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line28'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        mmHeight = 2910
        mmLeft = 223838
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Imposto_IPI'
        DataPipeline = pNotas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2911
        mmLeft = 224367
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppLine119: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line602'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        mmHeight = 2910
        mmLeft = 243946
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground
      end
      object ppLine120: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line30'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpRight
        mmHeight = 2910
        mmLeft = 280459
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground
      end
      object lC9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'Natureza_Codigo'
        DataPipeline = pNotas
        DisplayFormat = '9.999;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2911
        mmLeft = 130969
        mmTop = 0
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground
      end
      object lC8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Valor_TotalNota'
        DataPipeline = pNotas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2911
        mmLeft = 98954
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object lC7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'Estado'
        DataPipeline = pNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2911
        mmLeft = 89959
        mmTop = 0
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground
      end
      object lC6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'CNPJ'
        DataPipeline = pNotas
        DisplayFormat = '99.999.999/9999-99;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2911
        mmLeft = 65088
        mmTop = 0
        mmWidth = 24077
        BandType = 4
        LayerName = Foreground
      end
      object lC5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'Data_Emissao'
        DataPipeline = pNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2911
        mmLeft = 50800
        mmTop = 0
        mmWidth = 13494
        BandType = 4
        LayerName = Foreground
      end
      object lC4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'Numero'
        DataPipeline = pNotas
        DisplayFormat = '000000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2911
        mmLeft = 35454
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground
      end
      object lC3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'Serie'
        DataPipeline = pNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2911
        mmLeft = 26723
        mmTop = 0
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground
      end
      object lC2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'Tipo'
        DataPipeline = pNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2911
        mmLeft = 14817
        mmTop = 0
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground
      end
      object lC1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'Data_EntradaSaida'
        DataPipeline = pNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2911
        mmLeft = 529
        mmTop = 0
        mmWidth = 13494
        BandType = 4
        LayerName = Foreground
      end
      object lCancelada: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label34'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '[ CANCELADA  ]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Name = 'Old Rubber Stamp'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 2911
        mmLeft = 244475
        mmTop = 0
        mmWidth = 39158
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Apuracao_IPI'
        DataPipeline = pNotas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2911
        mmLeft = 203994
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'lAliquotaICMS2'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Aliquota_ICMSOper'
        DataPipeline = pNotas
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2911
        mmLeft = 169069
        mmTop = 0
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Imposto_ICMS'
        DataPipeline = pNotas
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2911
        mmLeft = 178330
        mmTop = 0
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText21'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Codigo_ICMS'
        DataPipeline = pNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2911
        mmLeft = 141816
        mmTop = 0
        mmWidth = 6086
        BandType = 4
        LayerName = Foreground
      end
      object lCodigo: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Codigo_IPI'
        DataPipeline = pNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2911
        mmLeft = 197115
        mmTop = 0
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppLine159: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line40'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 792
        mmLeft = 0
        mmTop = 0
        mmWidth = 284428
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel122: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label57'
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
        mmTop = 0
        mmWidth = 45773
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 264584
        mmTop = 0
        mmWidth = 18785
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable5: TppSystemVariable
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
        mmLeft = 113242
        mmTop = 0
        mmWidth = 50800
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable6: TppSystemVariable
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
        mmLeft = 165100
        mmTop = 0
        mmWidth = 26194
        BandType = 8
        LayerName = Foreground
      end
      object ppLine161: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line43'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3175
        mmLeft = 263790
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 23283
      mmPrintPosition = 0
      object ppLine162: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line401'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 284428
        BandType = 7
        LayerName = Foreground
      end
      object lTotalICMS1: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'lTotalICMS1'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 118269
        mmTop = 1852
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel123: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        Border.mmPadding = 0
        Caption = 'ICMS 1:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 109273
        mmTop = 1852
        mmWidth = 8731
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel124: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label40'
        Border.mmPadding = 0
        Caption = 'ICMS 2:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 109273
        mmTop = 5027
        mmWidth = 8731
        BandType = 7
        LayerName = Foreground
      end
      object lTotalICMS2: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'lTotalICMS2'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 118269
        mmTop = 5027
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel125: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label53'
        Border.mmPadding = 0
        Caption = 'ICMS 3:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 109273
        mmTop = 8202
        mmWidth = 8731
        BandType = 7
        LayerName = Foreground
      end
      object lTotalICMS3: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'lTotalICMS3'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 2
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 118269
        mmTop = 8202
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground
      end
      object lTotalIPI1: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'lTotalIPI1'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 3
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 166688
        mmTop = 2117
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel126: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label54'
        Border.mmPadding = 0
        Caption = 'IPI 1:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 160867
        mmTop = 2117
        mmWidth = 5556
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel127: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label401'
        Border.mmPadding = 0
        Caption = 'IPI 2:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 160867
        mmTop = 5292
        mmWidth = 5556
        BandType = 7
        LayerName = Foreground
      end
      object lTotalIPI2: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'lTotalIPI2'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 4
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 166688
        mmTop = 5292
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel128: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label58'
        Border.mmPadding = 0
        Caption = 'IPI 3:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 160867
        mmTop = 8467
        mmWidth = 5556
        BandType = 7
        LayerName = Foreground
      end
      object lTotalIPI3: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'lTotalIPI3'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 5
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 166688
        mmTop = 8467
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground
      end
      object lTotalContabil: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'lTotalContabil'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 6
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        OnCalc = lTotalContabilCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 118269
        mmTop = 14287
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel129: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label59'
        Border.mmPadding = 0
        Caption = 'TOTAL CONT'#193'BIL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 96309
        mmTop = 14287
        mmWidth = 21167
        BandType = 7
        LayerName = Foreground
      end
      object lTotalICMS: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'lTotalContabil1'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 7
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 118269
        mmTop = 11377
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel130: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label60'
        Border.mmPadding = 0
        Caption = 'IMPOSTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 106098
        mmTop = 11377
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground
      end
      object lTotalIPI: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'lTotalIPI'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 8
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 166688
        mmTop = 11642
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel131: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label601'
        Border.mmPadding = 0
        Caption = 'IMPOSTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 154517
        mmTop = 11642
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground
      end
      object lMovimento2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label39'
        Border.mmPadding = 0
        Caption = 'N'#195'O HOUVE MOVIMENTO NO PER'#205'ODO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Name = 'LLRubberGrotesque'
        Font.Size = 26
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 10583
        mmLeft = 55033
        mmTop = -2381
        mmWidth = 175419
        BandType = 7
        LayerName = Foreground
      end
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'TotalCFOP1'
        ExpandAll = False
        NewPrintJob = True
        OutlineSettings.CreateNode = True
        PrintBehavior = pbSection
        TraverseAllData = False
        DataPipelineName = 'pTotaliza'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 19579
        mmWidth = 284300
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = pTotaliza
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Cybersoft - Livro de Entradas (Modelo P1A)'
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
          Version = '19.04'
          mmColumnWidth = 0
          DataPipelineName = 'pTotaliza'
          object ppTitleBand2: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 12700
            mmPrintPosition = 0
            object ppLabel117: TppLabel
              DesignLayer = ppDesignLayer4
              UserName = 'Label1'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'TOTAL POR CFOP'
              Color = 9845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 4497
              mmLeft = 0
              mmTop = 4498
              mmWidth = 284637
              BandType = 1
              LayerName = PageLayer1
            end
            object ppLabel118: TppLabel
              DesignLayer = ppDesignLayer4
              UserName = 'Label3'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'DESCRI'#199#195'O'
              Color = 9845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3437
              mmLeft = 8197
              mmTop = 9259
              mmWidth = 82290
              BandType = 1
              LayerName = PageLayer1
            end
            object ppLabel119: TppLabel
              DesignLayer = ppDesignLayer4
              UserName = 'Label5'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'BC.ICMS'
              Color = 9845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3437
              mmLeft = 112975
              mmTop = 9259
              mmWidth = 21965
              BandType = 1
              LayerName = PageLayer1
            end
            object ppLabel120: TppLabel
              DesignLayer = ppDesignLayer4
              UserName = 'Label6'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'ICMS'
              Color = 9845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3437
              mmLeft = 135203
              mmTop = 9259
              mmWidth = 21965
              BandType = 1
              LayerName = PageLayer1
            end
            object ppLabel121: TppLabel
              DesignLayer = ppDesignLayer4
              UserName = 'Label4'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'CONTABIL'
              Color = 9845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3437
              mmLeft = 90759
              mmTop = 9259
              mmWidth = 21869
              BandType = 1
              LayerName = PageLayer1
            end
            object ppLabel132: TppLabel
              DesignLayer = ppDesignLayer4
              UserName = 'Label2'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'CFOP'
              Color = 9845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3437
              mmLeft = 0
              mmTop = 9259
              mmWidth = 7923
              BandType = 1
              LayerName = PageLayer1
            end
            object ppLabel133: TppLabel
              DesignLayer = ppDesignLayer4
              UserName = 'Label7'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'OUTRAS ICMS'
              Color = 9845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3437
              mmLeft = 179649
              mmTop = 9258
              mmWidth = 21700
              BandType = 1
              LayerName = PageLayer1
            end
            object ppLabel134: TppLabel
              DesignLayer = ppDesignLayer4
              UserName = 'Label8'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'BC.IPI'
              Color = 9845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3437
              mmLeft = 201577
              mmTop = 9258
              mmWidth = 19315
              BandType = 1
              LayerName = PageLayer1
            end
            object ppLabel135: TppLabel
              DesignLayer = ppDesignLayer4
              UserName = 'Label9'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'ISENTAS ICMS'
              Color = 9845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3437
              mmLeft = 157424
              mmTop = 9258
              mmWidth = 21965
              BandType = 1
              LayerName = PageLayer1
            end
            object ppLabel136: TppLabel
              DesignLayer = ppDesignLayer4
              UserName = 'Label114'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'ISENTAS IPI'
              Color = 9845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3437
              mmLeft = 243443
              mmTop = 9259
              mmWidth = 19050
              BandType = 1
              LayerName = PageLayer1
            end
            object ppLabel137: TppLabel
              DesignLayer = ppDesignLayer4
              UserName = 'Label115'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'OUTRAS IPI'
              Color = 9845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3437
              mmLeft = 262757
              mmTop = 9259
              mmWidth = 21965
              BandType = 1
              LayerName = PageLayer1
            end
            object ppLabel138: TppLabel
              DesignLayer = ppDesignLayer4
              UserName = 'Label116'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'IPI'
              Color = 9845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3437
              mmLeft = 221214
              mmTop = 9259
              mmWidth = 21965
              BandType = 1
              LayerName = PageLayer1
            end
          end
          object ppDetailBand3: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 2910
            mmPrintPosition = 0
            object ppDBText14: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'Natureza_Codigo'
              DataPipeline = pTotaliza
              DisplayFormat = '#.###;0; '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 2908
              mmLeft = 0
              mmTop = 0
              mmWidth = 7923
              BandType = 4
              LayerName = PageLayer1
            end
            object ppDBText15: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = 'Descricao'
              DataPipeline = pTotaliza
              DisplayFormat = '#.###;0; '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 2908
              mmLeft = 8730
              mmTop = -1
              mmWidth = 80434
              BandType = 4
              LayerName = PageLayer1
            end
            object ppDBText16: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText3'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'Total_Contabil'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 2908
              mmLeft = 90493
              mmTop = 3
              mmWidth = 21869
              BandType = 4
              LayerName = PageLayer1
            end
            object ppDBText17: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText4'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'Total_BCICMS'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 2908
              mmLeft = 113238
              mmTop = 0
              mmWidth = 21339
              BandType = 4
              LayerName = PageLayer1
            end
            object ppDBText22: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText22'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'Total_ICMS'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 2908
              mmLeft = 135249
              mmTop = 0
              mmWidth = 21339
              BandType = 4
              LayerName = PageLayer1
            end
            object ppDBText23: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText23'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'Total_IsentasICMS'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 2910
              mmLeft = 157333
              mmTop = 0
              mmWidth = 21431
              BandType = 4
              LayerName = PageLayer1
            end
            object ppDBText24: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText24'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'Total_OutrasICMS'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 2910
              mmLeft = 179448
              mmTop = 0
              mmWidth = 21166
              BandType = 4
              LayerName = PageLayer1
            end
            object ppDBText25: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText25'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'Total_BCIPI'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 2910
              mmLeft = 201994
              mmTop = 0
              mmWidth = 18781
              BandType = 4
              LayerName = PageLayer1
            end
            object ppDBText29: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText29'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'Total_IPI'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 2910
              mmLeft = 221305
              mmTop = 0
              mmWidth = 21961
              BandType = 4
              LayerName = PageLayer1
            end
            object ppDBText30: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText30'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'Total_IsentasIPI'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 2910
              mmLeft = 244060
              mmTop = 0
              mmWidth = 17986
              BandType = 4
              LayerName = PageLayer1
            end
            object ppDBText31: TppDBText
              DesignLayer = ppDesignLayer4
              UserName = 'DBText31'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'Total_OutrasIPI'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 2910
              mmLeft = 263156
              mmTop = 0
              mmWidth = 20324
              BandType = 4
              LayerName = PageLayer1
            end
          end
          object ppFooterBand3: TppFooterBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 3175
            mmPrintPosition = 0
            object ppLine37: TppLine
              DesignLayer = ppDesignLayer4
              UserName = 'Line402'
              Border.mmPadding = 0
              Pen.Width = 0
              mmHeight = 792
              mmLeft = 0
              mmTop = 0
              mmWidth = 284428
              BandType = 8
              LayerName = PageLayer1
            end
            object ppLabel141: TppLabel
              DesignLayer = ppDesignLayer4
              UserName = 'Label141'
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
              mmTop = 0
              mmWidth = 45773
              BandType = 8
              LayerName = PageLayer1
            end
            object ppSystemVariable7: TppSystemVariable
              DesignLayer = ppDesignLayer4
              UserName = 'SystemVariable7'
              Border.mmPadding = 0
              VarType = vtPageSetDesc
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 264584
              mmTop = 0
              mmWidth = 18785
              BandType = 8
              LayerName = PageLayer1
            end
            object ppSystemVariable8: TppSystemVariable
              DesignLayer = ppDesignLayer4
              UserName = 'SystemVariable8'
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
              mmLeft = 113242
              mmTop = 0
              mmWidth = 50800
              BandType = 8
              LayerName = PageLayer1
            end
            object ppSystemVariable9: TppSystemVariable
              DesignLayer = ppDesignLayer4
              UserName = 'SystemVariable9'
              Border.mmPadding = 0
              VarType = vtPrintDateTime
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 165100
              mmTop = 0
              mmWidth = 26194
              BandType = 8
              LayerName = PageLayer1
            end
            object ppLine38: TppLine
              DesignLayer = ppDesignLayer4
              UserName = 'Line38'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 3175
              mmLeft = 263790
              mmTop = 0
              mmWidth = 3704
              BandType = 8
              LayerName = PageLayer1
            end
          end
          object ppSummaryBand4: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBCalc10: TppDBCalc
              DesignLayer = ppDesignLayer4
              UserName = 'DBCalc10'
              Border.mmPadding = 0
              DataField = 'Total_Contabil'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 3438
              mmLeft = 90488
              mmTop = 1059
              mmWidth = 21869
              BandType = 7
              LayerName = PageLayer1
            end
            object ppDBCalc11: TppDBCalc
              DesignLayer = ppDesignLayer4
              UserName = 'DBCalc11'
              Border.mmPadding = 0
              DataField = 'Total_BCICMS'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 3438
              mmLeft = 112977
              mmTop = 1059
              mmWidth = 21604
              BandType = 7
              LayerName = PageLayer1
            end
            object ppDBCalc12: TppDBCalc
              DesignLayer = ppDesignLayer4
              UserName = 'DBCalc12'
              Border.mmPadding = 0
              DataField = 'Total_ICMS'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 3438
              mmLeft = 135202
              mmTop = 1059
              mmWidth = 21431
              BandType = 7
              LayerName = PageLayer1
            end
            object ppDBCalc13: TppDBCalc
              DesignLayer = ppDesignLayer4
              UserName = 'DBCalc13'
              Border.mmPadding = 0
              DataField = 'Total_IsentasICMS'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 3438
              mmLeft = 157427
              mmTop = 1059
              mmWidth = 21339
              BandType = 7
              LayerName = PageLayer1
            end
            object ppDBCalc14: TppDBCalc
              DesignLayer = ppDesignLayer4
              UserName = 'DBCalc14'
              Border.mmPadding = 0
              DataField = 'Total_OutrasICMS'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 3438
              mmLeft = 179652
              mmTop = 1059
              mmWidth = 20809
              BandType = 7
              LayerName = PageLayer1
            end
            object ppDBCalc15: TppDBCalc
              DesignLayer = ppDesignLayer4
              UserName = 'DBCalc15'
              Border.mmPadding = 0
              DataField = 'Total_BCIPI'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 3438
              mmLeft = 201877
              mmTop = 1059
              mmWidth = 18689
              BandType = 7
              LayerName = PageLayer1
            end
            object ppDBCalc16: TppDBCalc
              DesignLayer = ppDesignLayer4
              UserName = 'DBCalc16'
              Border.mmPadding = 0
              DataField = 'Total_IPI'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 3438
              mmLeft = 221192
              mmTop = 1059
              mmWidth = 21431
              BandType = 7
              LayerName = PageLayer1
            end
            object ppDBCalc17: TppDBCalc
              DesignLayer = ppDesignLayer4
              UserName = 'DBCalc17'
              Border.mmPadding = 0
              DataField = 'Total_IsentasIPI'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 3438
              mmLeft = 244475
              mmTop = 1059
              mmWidth = 16834
              BandType = 7
              LayerName = PageLayer1
            end
            object ppDBCalc18: TppDBCalc
              DesignLayer = ppDesignLayer4
              UserName = 'DBCalc18'
              Border.mmPadding = 0
              DataField = 'Total_OutrasIPI'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 3438
              mmLeft = 263261
              mmTop = 1059
              mmWidth = 20279
              BandType = 7
              LayerName = PageLayer1
            end
            object ppLabel139: TppLabel
              DesignLayer = ppDesignLayer4
              UserName = 'Label1401'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 
                'TOTAL GERAL. . . . . . . . . . . . . . . . . . . . . . . . . . .' +
                ' . . . '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 2911
              mmLeft = 44714
              mmTop = 1058
              mmWidth = 44391
              BandType = 7
              LayerName = PageLayer1
            end
            object ppLine36: TppLine
              DesignLayer = ppDesignLayer4
              UserName = 'Line36'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              mmHeight = 259
              mmLeft = 0
              mmTop = 0
              mmWidth = 284174
              BandType = 7
              LayerName = PageLayer1
            end
          end
          object ppGroup1: TppGroup
            BreakName = 'Grupo'
            DataPipeline = pTotaliza
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            KeepTogether = True
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'pTotaliza'
            NewFile = False
            object ppGroupHeaderBand1: TppGroupHeaderBand
              Background.Brush.Style = bsClear
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 4763
              mmPrintPosition = 0
              object ppDBText32: TppDBText
                DesignLayer = ppDesignLayer4
                UserName = 'DBText32'
                Border.mmPadding = 0
                Color = 15263976
                DataField = 'Titulo'
                DataPipeline = pTotaliza
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                VerticalAlignment = avCenter
                DataPipelineName = 'pTotaliza'
                mmHeight = 3438
                mmLeft = 262
                mmTop = 1324
                mmWidth = 284428
                BandType = 3
                GroupNo = 0
                LayerName = PageLayer1
              end
            end
            object ppGroupFooterBand1: TppGroupFooterBand
              Background.Brush.Style = bsClear
              Border.mmPadding = 0
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 3969
              mmPrintPosition = 0
              object ppDBCalc1: TppDBCalc
                DesignLayer = ppDesignLayer4
                UserName = 'DBCalc1'
                Border.mmPadding = 0
                DataField = 'Total_Contabil'
                DataPipeline = pTotaliza
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                VerticalAlignment = avCenter
                DataPipelineName = 'pTotaliza'
                mmHeight = 3438
                mmLeft = 90493
                mmTop = 527
                mmWidth = 21869
                BandType = 5
                GroupNo = 0
                LayerName = PageLayer1
              end
              object ppLine20: TppLine
                DesignLayer = ppDesignLayer4
                UserName = 'Line1'
                Border.mmPadding = 0
                Pen.Style = psDot
                Pen.Width = 0
                mmHeight = 259
                mmLeft = 0
                mmTop = 0
                mmWidth = 284174
                BandType = 5
                GroupNo = 0
                LayerName = PageLayer1
              end
              object ppDBCalc2: TppDBCalc
                DesignLayer = ppDesignLayer4
                UserName = 'DBCalc2'
                Border.mmPadding = 0
                DataField = 'Total_BCICMS'
                DataPipeline = pTotaliza
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                VerticalAlignment = avCenter
                DataPipelineName = 'pTotaliza'
                mmHeight = 3438
                mmLeft = 112981
                mmTop = 531
                mmWidth = 21604
                BandType = 5
                GroupNo = 0
                LayerName = PageLayer1
              end
              object ppDBCalc3: TppDBCalc
                DesignLayer = ppDesignLayer4
                UserName = 'DBCalc3'
                Border.mmPadding = 0
                DataField = 'Total_ICMS'
                DataPipeline = pTotaliza
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                VerticalAlignment = avCenter
                DataPipelineName = 'pTotaliza'
                mmHeight = 3438
                mmLeft = 135202
                mmTop = 531
                mmWidth = 21431
                BandType = 5
                GroupNo = 0
                LayerName = PageLayer1
              end
              object ppDBCalc4: TppDBCalc
                DesignLayer = ppDesignLayer4
                UserName = 'DBCalc4'
                Border.mmPadding = 0
                DataField = 'Total_IsentasICMS'
                DataPipeline = pTotaliza
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                VerticalAlignment = avCenter
                DataPipelineName = 'pTotaliza'
                mmHeight = 3438
                mmLeft = 157429
                mmTop = 531
                mmWidth = 21339
                BandType = 5
                GroupNo = 0
                LayerName = PageLayer1
              end
              object ppDBCalc5: TppDBCalc
                DesignLayer = ppDesignLayer4
                UserName = 'DBCalc5'
                Border.mmPadding = 0
                DataField = 'Total_OutrasICMS'
                DataPipeline = pTotaliza
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                VerticalAlignment = avCenter
                DataPipelineName = 'pTotaliza'
                mmHeight = 3438
                mmLeft = 179651
                mmTop = 531
                mmWidth = 20809
                BandType = 5
                GroupNo = 0
                LayerName = PageLayer1
              end
              object ppDBCalc6: TppDBCalc
                DesignLayer = ppDesignLayer4
                UserName = 'DBCalc6'
                Border.mmPadding = 0
                DataField = 'Total_BCIPI'
                DataPipeline = pTotaliza
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                VerticalAlignment = avCenter
                DataPipelineName = 'pTotaliza'
                mmHeight = 3438
                mmLeft = 201885
                mmTop = 531
                mmWidth = 18689
                BandType = 5
                GroupNo = 0
                LayerName = PageLayer1
              end
              object ppDBCalc7: TppDBCalc
                DesignLayer = ppDesignLayer4
                UserName = 'DBCalc7'
                Border.mmPadding = 0
                DataField = 'Total_IPI'
                DataPipeline = pTotaliza
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                VerticalAlignment = avCenter
                DataPipelineName = 'pTotaliza'
                mmHeight = 3438
                mmLeft = 221195
                mmTop = 531
                mmWidth = 21431
                BandType = 5
                GroupNo = 0
                LayerName = PageLayer1
              end
              object ppDBCalc8: TppDBCalc
                DesignLayer = ppDesignLayer4
                UserName = 'DBCalc8'
                Border.mmPadding = 0
                DataField = 'Total_IsentasIPI'
                DataPipeline = pTotaliza
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                VerticalAlignment = avCenter
                DataPipelineName = 'pTotaliza'
                mmHeight = 3438
                mmLeft = 244480
                mmTop = 531
                mmWidth = 16834
                BandType = 5
                GroupNo = 0
                LayerName = PageLayer1
              end
              object ppDBCalc9: TppDBCalc
                DesignLayer = ppDesignLayer4
                UserName = 'DBCalc9'
                Border.mmPadding = 0
                DataField = 'Total_OutrasIPI'
                DataPipeline = pTotaliza
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                VerticalAlignment = avCenter
                DataPipelineName = 'pTotaliza'
                mmHeight = 3438
                mmLeft = 263260
                mmTop = 531
                mmWidth = 20279
                BandType = 5
                GroupNo = 0
                LayerName = PageLayer1
              end
              object ppLabel140: TppLabel
                DesignLayer = ppDesignLayer4
                UserName = 'Label140'
                AutoSize = False
                Border.mmPadding = 0
                Caption = 
                  'TOTAL. . . . . . . . . . . . . . . . . . . . . . . . . . . . . .' +
                  ' . .'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                Transparent = True
                mmHeight = 2911
                mmLeft = 44714
                mmTop = 529
                mmWidth = 44391
                BandType = 5
                GroupNo = 0
                LayerName = PageLayer1
              end
            end
          end
          object ppDesignLayers4: TppDesignLayers
            object ppDesignLayer4: TppDesignLayer
              UserName = 'PageLayer1'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object raCodeModule4: TraCodeModule
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object rLivroEntradaP1A: TppReport
    AutoStop = False
    DataPipeline = pNotasP1A
    NoDataBehaviors = [ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Cybersoft - Livro de Entradas (Modelo P1A)'
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
      'C:\Sistemas\Faturamento\Codigo Fonte\Relatorios\Fiscais_LivroEnt' +
      'radaP1.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = rLivroEntradaP1ABeforePrint
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
    PreviewFormSettings.ZoomSetting = zs100Percent
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
    Left = 308
    Top = 104
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pNotasP1A'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 38100
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape3'
        mmHeight = 20902
        mmLeft = 0
        mmTop = 17198
        mmWidth = 284428
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        mmHeight = 16933
        mmLeft = 0
        mmTop = 0
        mmWidth = 284163
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape2'
        mmHeight = 16933
        mmLeft = 209286
        mmTop = 0
        mmWidth = 75142
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'REGISTRO DE ENTRADAS (Modelo P1A)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3260
        mmLeft = 1058
        mmTop = 1058
        mmWidth = 53890
        BandType = 0
        LayerName = Foreground1
      end
      object lOperacaoP1A: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lOperacaoP1A'
        Border.mmPadding = 0
        Caption = '(Opera'#231#245'es FUNDAP e N'#195'O FUNDAP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 157427
        mmTop = 794
        mmWidth = 50800
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = '(a) C'#211'DIGOS DE VALORES FISCAIS.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 211138
        mmTop = 794
        mmWidth = 63765
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 265
        mmTop = 5027
        mmWidth = 283898
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = '1 - Opera'#231#245'es com cr'#233'dito do imposto.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2879
        mmLeft = 210080
        mmTop = 5821
        mmWidth = 43127
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = '2 - Opera'#231#245'es sem cr'#233'dito do imposto - Isentas ou N'#227'o tributadas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2879
        mmLeft = 210080
        mmTop = 9260
        mmWidth = 73554
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = '3 - Opera'#231#245'es sem cr'#233'dito do imposto -  Outras.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2879
        mmLeft = 210080
        mmTop = 12700
        mmWidth = 52282
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'FIRMA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 528
        mmTop = 5822
        mmWidth = 33073
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'INSCRI'#199#195'O ESTADUAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 528
        mmTop = 9261
        mmWidth = 33073
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'FOLHA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 12700
        mmWidth = 33073
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 93927
        mmTop = 9261
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PER'#205'ODO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 93927
        mmTop = 12700
        mmWidth = 16933
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pEmpresa'
        mmHeight = 3387
        mmLeft = 34131
        mmTop = 5822
        mmWidth = 141817
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'IE'
        DataPipeline = pEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pEmpresa'
        mmHeight = 3440
        mmLeft = 34131
        mmTop = 9261
        mmWidth = 36777
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'CNPJ'
        DataPipeline = pEmpresa
        DisplayFormat = '99.999.999/9999-99;0; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pEmpresa'
        mmHeight = 3440
        mmLeft = 111125
        mmTop = 9261
        mmWidth = 33602
        BandType = 0
        LayerName = Foreground1
      end
      object lFolha_P1A: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'lFolha'
        CharWrap = True
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 3440
        mmLeft = 33867
        mmTop = 12700
        mmWidth = 12435
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DATA DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2879
        mmLeft = 794
        mmTop = 24605
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ENTRADA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2879
        mmLeft = 794
        mmTop = 27780
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 20902
        mmLeft = 14288
        mmTop = 17198
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 14288
        mmTop = 22754
        mmWidth = 84138
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DOCUMENTOS FISCAIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 14817
        mmTop = 18256
        mmWidth = 82021
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ESP'#201'CIE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2879
        mmLeft = 14816
        mmTop = 28575
        mmWidth = 11113
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15081
        mmLeft = 26194
        mmTop = 23019
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'S'#201'RIE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2879
        mmLeft = 26723
        mmTop = 25400
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'SUB-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2879
        mmLeft = 26723
        mmTop = 28575
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'S'#201'RIE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2879
        mmLeft = 26723
        mmTop = 31750
        mmWidth = 7938
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 34925
        mmTop = 23019
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label19'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'N'#218'MERO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 35454
        mmTop = 28575
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line11'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15081
        mmLeft = 50271
        mmTop = 23019
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label20'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2879
        mmLeft = 50800
        mmTop = 25400
        mmWidth = 13495
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label21'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2879
        mmLeft = 50800
        mmTop = 28575
        mmWidth = 13495
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label22'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DOCUM.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2879
        mmLeft = 50800
        mmTop = 31750
        mmWidth = 13495
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line12'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15081
        mmLeft = 64557
        mmTop = 23019
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label201'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'C'#211'DIGO DO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 65088
        mmTop = 28575
        mmWidth = 24077
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line15'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15081
        mmLeft = 89429
        mmTop = 23019
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label202'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 89959
        mmTop = 28575
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label25'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ORIG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 89959
        mmTop = 30691
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line16'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 20902
        mmLeft = 98425
        mmTop = 17198
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label26'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 98954
        mmTop = 24605
        mmWidth = 19578
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label27'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CONTABIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 98954
        mmTop = 27780
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 20638
        mmLeft = 118798
        mmTop = 17463
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line19'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 119063
        mmTop = 23019
        mmWidth = 88900
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label28'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CODIFICA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 119327
        mmTop = 18256
        mmWidth = 21431
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label29'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CONTAB'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 119592
        mmTop = 28575
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label30'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'FISCAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2879
        mmLeft = 130969
        mmTop = 28575
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line20'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15081
        mmLeft = 130440
        mmTop = 23019
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line201'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 20902
        mmLeft = 141288
        mmTop = 17198
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label31'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ICMS VALORES FISCAIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 141817
        mmTop = 18521
        mmWidth = 57150
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label32'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 141817
        mmTop = 25400
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line202'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15081
        mmLeft = 150813
        mmTop = 23019
        mmWidth = 3969
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label33'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'IPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 141816
        mmTop = 31750
        mmWidth = 8730
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label35'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'BASE DE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 159809
        mmTop = 24341
        mmWidth = 19578
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label36'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'C'#193'LCULO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 159809
        mmTop = 27517
        mmWidth = 19578
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label37'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'VALOR DA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 159809
        mmTop = 30692
        mmWidth = 19578
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label38'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'OPERA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 159809
        mmTop = 33867
        mmWidth = 19578
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line203'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 179652
        mmTop = 23019
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label301'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ALIQ.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 180182
        mmTop = 28575
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line29'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 14817
        mmLeft = 188648
        mmTop = 23019
        mmWidth = 4763
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label41'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'IMPOSTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 189177
        mmTop = 27252
        mmWidth = 18256
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label42'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CREDITADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 189177
        mmTop = 30692
        mmWidth = 18255
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line31'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 20638
        mmLeft = 207699
        mmTop = 17198
        mmWidth = 4763
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label43'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'EMITENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 65088
        mmTop = 31750
        mmWidth = 24077
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label56'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'OBSERVA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 208227
        mmTop = 25929
        mmWidth = 76200
        BandType = 0
        LayerName = Foreground1
      end
      object lPeriodo2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label24'
        Border.mmPadding = 0
        Caption = '(Opera'#231#245'es FUNDAP e N'#195'O FUNDAP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 111125
        mmTop = 12700
        mmWidth = 49742
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label39'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 141817
        mmTop = 28575
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'C'#243'd.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 151342
        mmTop = 27781
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label44'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '(a)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 151341
        mmTop = 30427
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line27'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 15081
        mmLeft = 159279
        mmTop = 23019
        mmWidth = 3969
        BandType = 0
        LayerName = Foreground1
      end
      object lMovimento: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label45'
        Border.mmPadding = 0
        Caption = 'N'#195'O HOUVE MOVIMENTO NO PER'#205'ODO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Name = 'LLRubberGrotesque'
        Font.Size = 26
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 10583
        mmLeft = 59267
        mmTop = 58211
        mmWidth = 175419
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 2910
      mmPrintPosition = 0
      object lObservacao: TppDBMemo
        DesignLayer = ppDesignLayer2
        UserName = 'lObservacao'
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'Observacao'
        DataPipeline = pNotasP1A
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'pNotasP1A'
        mmHeight = 2910
        mmLeft = 207698
        mmTop = 0
        mmWidth = 76465
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'BC_Imposto'
        DataPipeline = pNotasP1A
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNotasP1A'
        mmHeight = 2911
        mmLeft = 160338
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Anchors = [atLeft, atTop, atBottom]
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        ReprintOnOverFlow = True
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 0
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 14288
        mmTop = 0
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 26194
        mmTop = 0
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine24: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line8'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 34925
        mmTop = 0
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line10'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 50271
        mmTop = 0
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine26: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line13'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 64558
        mmTop = 0
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line14'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 89429
        mmTop = 0
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine28: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line502'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 98425
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line17'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 118798
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line21'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 130440
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line22'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 141288
        mmTop = 0
        mmWidth = 1323
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line23'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 159279
        mmTop = 0
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine33: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line24'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 179652
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine34: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line25'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 188648
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine35: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line26'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 207699
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine39: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line30'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 280459
        mmTop = 0
        mmWidth = 3969
        BandType = 4
        LayerName = Foreground1
      end
      object lC9_P1A: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'Natureza_Codigo'
        DataPipeline = pNotasP1A
        DisplayFormat = '9.999;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNotasP1A'
        mmHeight = 2911
        mmLeft = 130969
        mmTop = 0
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground1
      end
      object lC8_P1A: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Valor_Contabil'
        DataPipeline = pNotasP1A
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNotasP1A'
        mmHeight = 2911
        mmLeft = 99748
        mmTop = 0
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground1
      end
      object lC7_P1A: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'Estado'
        DataPipeline = pNotasP1A
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNotasP1A'
        mmHeight = 2911
        mmLeft = 89959
        mmTop = 0
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground1
      end
      object lC6_P1A: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'CNPJ'
        DataPipeline = pNotasP1A
        DisplayFormat = '99.999.999/9999-99;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNotasP1A'
        mmHeight = 2911
        mmLeft = 65088
        mmTop = 0
        mmWidth = 24077
        BandType = 4
        LayerName = Foreground1
      end
      object lC5_P1A: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'Data_Emissao'
        DataPipeline = pNotasP1A
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNotasP1A'
        mmHeight = 2911
        mmLeft = 50800
        mmTop = 0
        mmWidth = 13494
        BandType = 4
        LayerName = Foreground1
      end
      object lC4_P1A: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'Numero'
        DataPipeline = pNotasP1A
        DisplayFormat = '000000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNotasP1A'
        mmHeight = 2911
        mmLeft = 35454
        mmTop = 0
        mmWidth = 14552
        BandType = 4
        LayerName = Foreground1
      end
      object lC3_P1A: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'Serie'
        DataPipeline = pNotasP1A
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNotasP1A'
        mmHeight = 2911
        mmLeft = 26723
        mmTop = 0
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground1
      end
      object lC2_P1A: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'Tipo'
        DataPipeline = pNotasP1A
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNotasP1A'
        mmHeight = 2911
        mmLeft = 14817
        mmTop = 0
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground1
      end
      object lC1_P1A: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'Data_EntradaSaida'
        DataPipeline = pNotasP1A
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNotasP1A'
        mmHeight = 2911
        mmLeft = 529
        mmTop = 0
        mmWidth = 13494
        BandType = 4
        LayerName = Foreground1
      end
      object lCanceladaP1A: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label34'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '[ CANCELADA  ]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Name = 'Old Rubber Stamp'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 2911
        mmLeft = 218811
        mmTop = 0
        mmWidth = 54504
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'lAliquotaICMS2'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Aliquota_ICMSOper'
        DataPipeline = pNotasP1A
        DisplayFormat = '##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNotasP1A'
        mmHeight = 2911
        mmLeft = 180182
        mmTop = 0
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText16'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Valor_Imposto'
        DataPipeline = pNotasP1A
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNotasP1A'
        mmHeight = 2911
        mmLeft = 189442
        mmTop = 0
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText21'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Imposto'
        DataPipeline = pNotasP1A
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pNotasP1A'
        mmHeight = 2911
        mmLeft = 142611
        mmTop = 0
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line28'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 2910
        mmLeft = 150813
        mmTop = 0
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground1
      end
      object lCodigo2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Codigo_Imposto'
        DataPipeline = pNotasP1A
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNotasP1A'
        mmHeight = 2911
        mmLeft = 151341
        mmTop = 0
        mmWidth = 7673
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppLine40: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line40'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 0
        mmWidth = 284427
        BandType = 8
        LayerName = Foreground1
      end
      object ppLabel54: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label57'
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
        mmTop = 0
        mmWidth = 45773
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 264584
        mmTop = 0
        mmWidth = 18785
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
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
        mmLeft = 113242
        mmTop = 0
        mmWidth = 50800
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer2
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
        mmLeft = 165100
        mmTop = 0
        mmWidth = 26194
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine41: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line42'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 46831
        mmTop = 0
        mmWidth = 6615
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine42: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line43'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 263790
        mmTop = 0
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 25929
      mmPrintPosition = 0
      object ppLine43: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line401'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 284428
        BandType = 7
        LayerName = Foreground1
      end
      object lTotalICMS1_P1A: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'lTotalICMS1'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 118269
        mmTop = 1852
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel55: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label23'
        Border.mmPadding = 0
        Caption = 'ICMS 1:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 109273
        mmTop = 1852
        mmWidth = 8731
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel56: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label40'
        Border.mmPadding = 0
        Caption = 'ICMS 2:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 109273
        mmTop = 5027
        mmWidth = 8731
        BandType = 7
        LayerName = Foreground1
      end
      object lTotalICMS2_P1A: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'lTotalICMS2'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 118269
        mmTop = 5027
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel57: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label53'
        Border.mmPadding = 0
        Caption = 'ICMS 3:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 109273
        mmTop = 8202
        mmWidth = 8731
        BandType = 7
        LayerName = Foreground1
      end
      object lTotalICMS3_P1A: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'lTotalICMS3'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 2
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 118269
        mmTop = 8202
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground1
      end
      object lTotalIPI1_P1A: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'lTotalIPI1'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 3
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 166688
        mmTop = 2117
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel58: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label54'
        Border.mmPadding = 0
        Caption = 'IPI 1:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 160867
        mmTop = 2117
        mmWidth = 5556
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel59: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label401'
        Border.mmPadding = 0
        Caption = 'IPI 2:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 160867
        mmTop = 5292
        mmWidth = 5556
        BandType = 7
        LayerName = Foreground1
      end
      object lTotalIPI2_P1A: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'lTotalIPI2'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 4
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 166688
        mmTop = 5292
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel60: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label58'
        Border.mmPadding = 0
        Caption = 'IPI 3:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 160867
        mmTop = 8467
        mmWidth = 5556
        BandType = 7
        LayerName = Foreground1
      end
      object lTotalIPI3_P1A: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'lTotalIPI3'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 5
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 166688
        mmTop = 8467
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground1
      end
      object lTotalContabil_P1A: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'lTotalContabil'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 6
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        OnCalc = lTotalContabil_P1ACalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 118269
        mmTop = 14552
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel61: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label59'
        Border.mmPadding = 0
        Caption = 'TOTAL CONT'#193'BIL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 96309
        mmTop = 14552
        mmWidth = 21167
        BandType = 7
        LayerName = Foreground1
      end
      object lTotalICMS_P1A: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'lTotalContabil1'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 7
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 118269
        mmTop = 11377
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label60'
        Border.mmPadding = 0
        Caption = 'IMPOSTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 106098
        mmTop = 11377
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground1
      end
      object lTotalIPI_P1A: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'lTotalIPI'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 8
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 166688
        mmTop = 11642
        mmWidth = 24342
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel113: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label601'
        Border.mmPadding = 0
        Caption = 'IMPOSTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 154517
        mmTop = 11642
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground1
      end
      object ppSubReport2: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = True
        OutlineSettings.CreateNode = True
        PrintBehavior = pbSection
        TraverseAllData = False
        DataPipelineName = 'pTotaliza'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 22225
        mmWidth = 284300
        BandType = 7
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = pTotaliza
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Cybersoft - Livro de Entradas (Modelo P1A)'
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
          Version = '19.04'
          mmColumnWidth = 0
          DataPipelineName = 'pTotaliza'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 12700
            mmPrintPosition = 0
            object ppLabel44: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label1'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'TOTAL POR CFOP'
              Color = 9845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 4497
              mmLeft = 0
              mmTop = 4498
              mmWidth = 284637
              BandType = 1
              LayerName = PageLayer2
            end
            object ppLabel45: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label3'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'DESCRI'#199#195'O'
              Color = 9845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3437
              mmLeft = 8197
              mmTop = 9259
              mmWidth = 82290
              BandType = 1
              LayerName = PageLayer2
            end
            object ppLabel46: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label5'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'BC.ICMS'
              Color = 9845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3437
              mmLeft = 112975
              mmTop = 9259
              mmWidth = 21965
              BandType = 1
              LayerName = PageLayer2
            end
            object ppLabel47: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label6'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'ICMS'
              Color = 9845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3437
              mmLeft = 135203
              mmTop = 9259
              mmWidth = 21965
              BandType = 1
              LayerName = PageLayer2
            end
            object ppLabel48: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label4'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'CONTABIL'
              Color = 9845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3437
              mmLeft = 90759
              mmTop = 9259
              mmWidth = 21869
              BandType = 1
              LayerName = PageLayer2
            end
            object ppLabel49: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label2'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'CFOP'
              Color = 9845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3437
              mmLeft = 0
              mmTop = 9259
              mmWidth = 7923
              BandType = 1
              LayerName = PageLayer2
            end
            object ppLabel50: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label7'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'OUTRAS ICMS'
              Color = 9845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3437
              mmLeft = 179649
              mmTop = 9258
              mmWidth = 21700
              BandType = 1
              LayerName = PageLayer2
            end
            object ppLabel52: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label8'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'BC.IPI'
              Color = 9845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3437
              mmLeft = 201577
              mmTop = 9258
              mmWidth = 19315
              BandType = 1
              LayerName = PageLayer2
            end
            object ppLabel53: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label9'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'ISENTAS ICMS'
              Color = 9845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3437
              mmLeft = 157424
              mmTop = 9258
              mmWidth = 21965
              BandType = 1
              LayerName = PageLayer2
            end
            object ppLabel114: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label114'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'ISENTAS IPI'
              Color = 9845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3437
              mmLeft = 243443
              mmTop = 9259
              mmWidth = 19050
              BandType = 1
              LayerName = PageLayer2
            end
            object ppLabel115: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label115'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'OUTRAS IPI'
              Color = 9845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3437
              mmLeft = 262757
              mmTop = 9259
              mmWidth = 21965
              BandType = 1
              LayerName = PageLayer2
            end
            object ppLabel116: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label116'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'IPI'
              Color = 9845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3437
              mmLeft = 221214
              mmTop = 9259
              mmWidth = 21965
              BandType = 1
              LayerName = PageLayer2
            end
          end
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 2910
            mmPrintPosition = 0
            object ppDBText9: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'Natureza_Codigo'
              DataPipeline = pTotaliza
              DisplayFormat = '#.###;0; '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 2908
              mmLeft = 0
              mmTop = 0
              mmWidth = 7923
              BandType = 4
              LayerName = PageLayer2
            end
            object ppDBText11: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText2'
              Border.mmPadding = 0
              DataField = 'Descricao'
              DataPipeline = pTotaliza
              DisplayFormat = '#.###;0; '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 2908
              mmLeft = 8730
              mmTop = -1
              mmWidth = 80434
              BandType = 4
              LayerName = PageLayer2
            end
            object ppDBText12: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText3'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'Total_Contabil'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 2908
              mmLeft = 90493
              mmTop = 3
              mmWidth = 21869
              BandType = 4
              LayerName = PageLayer2
            end
            object ppDBText13: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText4'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'Total_BCICMS'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 2908
              mmLeft = 113238
              mmTop = 0
              mmWidth = 21339
              BandType = 4
              LayerName = PageLayer2
            end
            object ppDBText33: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText22'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'Total_ICMS'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 2908
              mmLeft = 135249
              mmTop = 0
              mmWidth = 21339
              BandType = 4
              LayerName = PageLayer2
            end
            object ppDBText34: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText23'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'Total_IsentasICMS'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 2910
              mmLeft = 157333
              mmTop = 0
              mmWidth = 21431
              BandType = 4
              LayerName = PageLayer2
            end
            object ppDBText35: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText24'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'Total_OutrasICMS'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 2910
              mmLeft = 179448
              mmTop = 0
              mmWidth = 21166
              BandType = 4
              LayerName = PageLayer2
            end
            object ppDBText36: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText25'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'Total_BCIPI'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 2910
              mmLeft = 201994
              mmTop = 0
              mmWidth = 18781
              BandType = 4
              LayerName = PageLayer2
            end
            object ppDBText37: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText29'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'Total_IPI'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 2910
              mmLeft = 221305
              mmTop = 0
              mmWidth = 21961
              BandType = 4
              LayerName = PageLayer2
            end
            object ppDBText38: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText30'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'Total_IsentasIPI'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 2910
              mmLeft = 244060
              mmTop = 0
              mmWidth = 17986
              BandType = 4
              LayerName = PageLayer2
            end
            object ppDBText39: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText31'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'Total_OutrasIPI'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 2910
              mmLeft = 263156
              mmTop = 0
              mmWidth = 20324
              BandType = 4
              LayerName = PageLayer2
            end
          end
          object ppFooterBand4: TppFooterBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 3175
            mmPrintPosition = 0
            object ppLine44: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line402'
              Border.mmPadding = 0
              Pen.Width = 0
              mmHeight = 792
              mmLeft = 0
              mmTop = 0
              mmWidth = 284428
              BandType = 8
              LayerName = PageLayer2
            end
            object ppLabel142: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label141'
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
              mmTop = 0
              mmWidth = 45773
              BandType = 8
              LayerName = PageLayer2
            end
            object ppSystemVariable10: TppSystemVariable
              DesignLayer = ppDesignLayer3
              UserName = 'SystemVariable7'
              Border.mmPadding = 0
              VarType = vtPageSetDesc
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 264584
              mmTop = 0
              mmWidth = 18785
              BandType = 8
              LayerName = PageLayer2
            end
            object ppSystemVariable11: TppSystemVariable
              DesignLayer = ppDesignLayer3
              UserName = 'SystemVariable8'
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
              mmLeft = 113242
              mmTop = 0
              mmWidth = 50800
              BandType = 8
              LayerName = PageLayer2
            end
            object ppSystemVariable12: TppSystemVariable
              DesignLayer = ppDesignLayer3
              UserName = 'SystemVariable9'
              Border.mmPadding = 0
              VarType = vtPrintDateTime
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 165100
              mmTop = 0
              mmWidth = 26194
              BandType = 8
              LayerName = PageLayer2
            end
            object ppLine45: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line38'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 3175
              mmLeft = 263790
              mmTop = 0
              mmWidth = 3704
              BandType = 8
              LayerName = PageLayer2
            end
          end
          object ppSummaryBand3: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBCalc19: TppDBCalc
              DesignLayer = ppDesignLayer3
              UserName = 'DBCalc10'
              Border.mmPadding = 0
              DataField = 'Total_Contabil'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 3438
              mmLeft = 90488
              mmTop = 1059
              mmWidth = 21869
              BandType = 7
              LayerName = PageLayer2
            end
            object ppDBCalc20: TppDBCalc
              DesignLayer = ppDesignLayer3
              UserName = 'DBCalc11'
              Border.mmPadding = 0
              DataField = 'Total_BCICMS'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 3438
              mmLeft = 112977
              mmTop = 1059
              mmWidth = 21604
              BandType = 7
              LayerName = PageLayer2
            end
            object ppDBCalc21: TppDBCalc
              DesignLayer = ppDesignLayer3
              UserName = 'DBCalc12'
              Border.mmPadding = 0
              DataField = 'Total_ICMS'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 3438
              mmLeft = 135202
              mmTop = 1059
              mmWidth = 21431
              BandType = 7
              LayerName = PageLayer2
            end
            object ppDBCalc22: TppDBCalc
              DesignLayer = ppDesignLayer3
              UserName = 'DBCalc13'
              Border.mmPadding = 0
              DataField = 'Total_IsentasICMS'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 3438
              mmLeft = 157427
              mmTop = 1059
              mmWidth = 21339
              BandType = 7
              LayerName = PageLayer2
            end
            object ppDBCalc23: TppDBCalc
              DesignLayer = ppDesignLayer3
              UserName = 'DBCalc14'
              Border.mmPadding = 0
              DataField = 'Total_OutrasICMS'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 3438
              mmLeft = 179652
              mmTop = 1059
              mmWidth = 20809
              BandType = 7
              LayerName = PageLayer2
            end
            object ppDBCalc24: TppDBCalc
              DesignLayer = ppDesignLayer3
              UserName = 'DBCalc15'
              Border.mmPadding = 0
              DataField = 'Total_BCIPI'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 3438
              mmLeft = 201877
              mmTop = 1059
              mmWidth = 18689
              BandType = 7
              LayerName = PageLayer2
            end
            object ppDBCalc25: TppDBCalc
              DesignLayer = ppDesignLayer3
              UserName = 'DBCalc16'
              Border.mmPadding = 0
              DataField = 'Total_IPI'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 3438
              mmLeft = 221192
              mmTop = 1059
              mmWidth = 21431
              BandType = 7
              LayerName = PageLayer2
            end
            object ppDBCalc26: TppDBCalc
              DesignLayer = ppDesignLayer3
              UserName = 'DBCalc17'
              Border.mmPadding = 0
              DataField = 'Total_IsentasIPI'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 3438
              mmLeft = 244475
              mmTop = 1059
              mmWidth = 16834
              BandType = 7
              LayerName = PageLayer2
            end
            object ppDBCalc27: TppDBCalc
              DesignLayer = ppDesignLayer3
              UserName = 'DBCalc18'
              Border.mmPadding = 0
              DataField = 'Total_OutrasIPI'
              DataPipeline = pTotaliza
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pTotaliza'
              mmHeight = 3438
              mmLeft = 263261
              mmTop = 1059
              mmWidth = 20279
              BandType = 7
              LayerName = PageLayer2
            end
            object ppLine46: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line36'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              mmHeight = 259
              mmLeft = 0
              mmTop = 0
              mmWidth = 284174
              BandType = 7
              LayerName = PageLayer2
            end
            object ppLabel143: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label1401'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 
                'TOTAL GERAL. . . . . . . . . . . . . . . . . . . . . . . . . . .' +
                ' .'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 2911
              mmLeft = 44714
              mmTop = 1058
              mmWidth = 43509
              BandType = 7
              LayerName = PageLayer2
            end
          end
          object ppGroup2: TppGroup
            BreakName = 'Grupo'
            DataPipeline = pTotaliza
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            KeepTogether = True
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'pTotaliza'
            NewFile = False
            object ppGroupHeaderBand2: TppGroupHeaderBand
              Background.Brush.Style = bsClear
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 4763
              mmPrintPosition = 0
              object ppDBText40: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText32'
                Border.mmPadding = 0
                Color = 15263976
                DataField = 'Titulo'
                DataPipeline = pTotaliza
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                VerticalAlignment = avCenter
                DataPipelineName = 'pTotaliza'
                mmHeight = 3438
                mmLeft = 262
                mmTop = 1324
                mmWidth = 284428
                BandType = 3
                GroupNo = 0
                LayerName = PageLayer2
              end
            end
            object ppGroupFooterBand2: TppGroupFooterBand
              Background.Brush.Style = bsClear
              Border.mmPadding = 0
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 3969
              mmPrintPosition = 0
              object ppDBCalc28: TppDBCalc
                DesignLayer = ppDesignLayer3
                UserName = 'DBCalc1'
                Border.mmPadding = 0
                DataField = 'Total_Contabil'
                DataPipeline = pTotaliza
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                VerticalAlignment = avCenter
                DataPipelineName = 'pTotaliza'
                mmHeight = 3438
                mmLeft = 90493
                mmTop = 527
                mmWidth = 21869
                BandType = 5
                GroupNo = 0
                LayerName = PageLayer2
              end
              object ppLine47: TppLine
                DesignLayer = ppDesignLayer3
                UserName = 'Line1'
                Border.mmPadding = 0
                Pen.Style = psDot
                Pen.Width = 0
                mmHeight = 259
                mmLeft = 0
                mmTop = 0
                mmWidth = 284174
                BandType = 5
                GroupNo = 0
                LayerName = PageLayer2
              end
              object ppDBCalc29: TppDBCalc
                DesignLayer = ppDesignLayer3
                UserName = 'DBCalc2'
                Border.mmPadding = 0
                DataField = 'Total_BCICMS'
                DataPipeline = pTotaliza
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                VerticalAlignment = avCenter
                DataPipelineName = 'pTotaliza'
                mmHeight = 3438
                mmLeft = 112981
                mmTop = 531
                mmWidth = 21604
                BandType = 5
                GroupNo = 0
                LayerName = PageLayer2
              end
              object ppDBCalc30: TppDBCalc
                DesignLayer = ppDesignLayer3
                UserName = 'DBCalc3'
                Border.mmPadding = 0
                DataField = 'Total_ICMS'
                DataPipeline = pTotaliza
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                VerticalAlignment = avCenter
                DataPipelineName = 'pTotaliza'
                mmHeight = 3438
                mmLeft = 135202
                mmTop = 531
                mmWidth = 21431
                BandType = 5
                GroupNo = 0
                LayerName = PageLayer2
              end
              object ppDBCalc31: TppDBCalc
                DesignLayer = ppDesignLayer3
                UserName = 'DBCalc4'
                Border.mmPadding = 0
                DataField = 'Total_IsentasICMS'
                DataPipeline = pTotaliza
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                VerticalAlignment = avCenter
                DataPipelineName = 'pTotaliza'
                mmHeight = 3438
                mmLeft = 157429
                mmTop = 531
                mmWidth = 21339
                BandType = 5
                GroupNo = 0
                LayerName = PageLayer2
              end
              object ppDBCalc32: TppDBCalc
                DesignLayer = ppDesignLayer3
                UserName = 'DBCalc5'
                Border.mmPadding = 0
                DataField = 'Total_OutrasICMS'
                DataPipeline = pTotaliza
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                VerticalAlignment = avCenter
                DataPipelineName = 'pTotaliza'
                mmHeight = 3438
                mmLeft = 179651
                mmTop = 531
                mmWidth = 20809
                BandType = 5
                GroupNo = 0
                LayerName = PageLayer2
              end
              object ppDBCalc33: TppDBCalc
                DesignLayer = ppDesignLayer3
                UserName = 'DBCalc6'
                Border.mmPadding = 0
                DataField = 'Total_BCIPI'
                DataPipeline = pTotaliza
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                VerticalAlignment = avCenter
                DataPipelineName = 'pTotaliza'
                mmHeight = 3438
                mmLeft = 201885
                mmTop = 531
                mmWidth = 18689
                BandType = 5
                GroupNo = 0
                LayerName = PageLayer2
              end
              object ppDBCalc34: TppDBCalc
                DesignLayer = ppDesignLayer3
                UserName = 'DBCalc7'
                Border.mmPadding = 0
                DataField = 'Total_IPI'
                DataPipeline = pTotaliza
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                VerticalAlignment = avCenter
                DataPipelineName = 'pTotaliza'
                mmHeight = 3438
                mmLeft = 221195
                mmTop = 531
                mmWidth = 21431
                BandType = 5
                GroupNo = 0
                LayerName = PageLayer2
              end
              object ppDBCalc35: TppDBCalc
                DesignLayer = ppDesignLayer3
                UserName = 'DBCalc8'
                Border.mmPadding = 0
                DataField = 'Total_IsentasIPI'
                DataPipeline = pTotaliza
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                VerticalAlignment = avCenter
                DataPipelineName = 'pTotaliza'
                mmHeight = 3438
                mmLeft = 244480
                mmTop = 531
                mmWidth = 16834
                BandType = 5
                GroupNo = 0
                LayerName = PageLayer2
              end
              object ppDBCalc36: TppDBCalc
                DesignLayer = ppDesignLayer3
                UserName = 'DBCalc9'
                Border.mmPadding = 0
                DataField = 'Total_OutrasIPI'
                DataPipeline = pTotaliza
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                VerticalAlignment = avCenter
                DataPipelineName = 'pTotaliza'
                mmHeight = 3438
                mmLeft = 263260
                mmTop = 531
                mmWidth = 20279
                BandType = 5
                GroupNo = 0
                LayerName = PageLayer2
              end
              object ppLabel144: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label140'
                AutoSize = False
                Border.mmPadding = 0
                Caption = 'TOTAL. . . . . . . . . . . . . . . . . . . . . . . . . . . . . .'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                Transparent = True
                mmHeight = 2911
                mmLeft = 44714
                mmTop = 529
                mmWidth = 43509
                BandType = 5
                GroupNo = 0
                LayerName = PageLayer2
              end
            end
          end
          object ppDesignLayers3: TppDesignLayers
            object ppDesignLayer3: TppDesignLayer
              UserName = 'PageLayer2'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
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
  object tNotasP1A: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT '
      '      Data_EntradaSaida,'
      '      Data_Emissao, '
      '      '#39'NF'#39' AS Tipo,'
      '      '#39#39' AS Serie,'
      '      '#39#39' AS SubSerie, '
      '      Numero, '
      '      Natureza_Codigo, '
      '      Valor_TotalNota AS Valor_Contabil,'
      '      BCICMS, '
      '      Valor_ICMS, '
      '      Valor_IsentasICMS, '
      '      Valor_OutrasICMS, '
      '      Aliquota_ICMSOper, '
      '      Valor_TotalProdutos AS BCIPI,'
      '      Valor_TotalIPI, '
      '      Valor_IsentasIPI,'
      '      Valor_OutrasIPI, '
      '      Incentivo_Fiscal, '
      '      Cancelada, '
      '      Fornecedores.CNPJ, '
      '      Fornecedores.Estado,'
      
        '      CASE WHEN Valor_ICMS        > 0 AND Cancelada <> 1 THEN 1 ' +
        'ELSE 0 END AS Codigo1,'
      
        '      CASE WHEN Valor_IsentasICMS > 0 AND Cancelada <> 1 THEN 2 ' +
        'ELSE 0 END AS Codigo2,'
      
        '      CASE WHEN Valor_OutrasICMS  > 0 AND Cancelada <> 1 THEN 3 ' +
        'ELSE 0 END AS Codigo3,'
      
        '      CASE WHEN Valor_TotalIPI    > 0 AND Cancelada <> 1 THEN 1 ' +
        'ELSE 0 END AS Codigo4,'
      
        '      CASE WHEN Valor_IsentasIPI  > 0 AND Cancelada <> 1 THEN 2 ' +
        'ELSE 0 END AS Codigo5,'
      
        '      CASE WHEN Valor_OutrasIPI   > 0 AND Cancelada <> 1 THEN 3 ' +
        'ELSE 0 END AS Codigo6,'
      '      0 AS Codigo_Imposto,'
      '      '#39' '#39' AS Imposto,'
      '      CAST(0 AS money) AS Valor_Imposto,'
      '      CAST(0 AS money) AS BC_Imposto,'
      '      Fornecedor_Codigo AS Fornecedor'
      'FROM NotasFiscais, Fornecedores WHERE (Numero = 1)')
    FetchRows = 1
    Active = True
    Left = 319
    Top = 3
  end
  object dstNotasP1A: TDataSource
    DataSet = tNotasP1A
    Left = 388
    Top = 3
  end
  object pNotasP1A: TppDBPipeline
    DataSource = dstNotasP1A
    UserName = 'pNotasP1A'
    Left = 271
    Top = 56
    object pNotasP1AppField1: TppField
      FieldAlias = 'Data_EntradaSaida'
      FieldName = 'Data_EntradaSaida'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 0
    end
    object pNotasP1AppField2: TppField
      FieldAlias = 'Data_Emissao'
      FieldName = 'Data_Emissao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object pNotasP1AppField3: TppField
      FieldAlias = 'Tipo'
      FieldName = 'Tipo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 2
    end
    object pNotasP1AppField4: TppField
      FieldAlias = 'Serie'
      FieldName = 'Serie'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object pNotasP1AppField5: TppField
      FieldAlias = 'SubSerie'
      FieldName = 'SubSerie'
      FieldLength = 1
      DisplayWidth = 1
      Position = 4
    end
    object pNotasP1AppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object pNotasP1AppField7: TppField
      FieldAlias = 'Natureza_Codigo'
      FieldName = 'Natureza_Codigo'
      FieldLength = 4
      DisplayWidth = 4
      Position = 6
    end
    object pNotasP1AppField8: TppField
      FieldAlias = 'Valor_Contabil'
      FieldName = 'Valor_Contabil'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 7
    end
    object pNotasP1AppField9: TppField
      FieldAlias = 'BCICMS'
      FieldName = 'BCICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 8
    end
    object pNotasP1AppField10: TppField
      FieldAlias = 'Valor_ICMS'
      FieldName = 'Valor_ICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 9
    end
    object pNotasP1AppField11: TppField
      FieldAlias = 'Valor_IsentasICMS'
      FieldName = 'Valor_IsentasICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 10
    end
    object pNotasP1AppField12: TppField
      FieldAlias = 'Valor_OutrasICMS'
      FieldName = 'Valor_OutrasICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 11
    end
    object pNotasP1AppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_ICMSOper'
      FieldName = 'Aliquota_ICMSOper'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object pNotasP1AppField14: TppField
      FieldAlias = 'BCIPI'
      FieldName = 'BCIPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 13
    end
    object pNotasP1AppField15: TppField
      FieldAlias = 'Valor_TotalIPI'
      FieldName = 'Valor_TotalIPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 14
    end
    object pNotasP1AppField16: TppField
      FieldAlias = 'Valor_IsentasIPI'
      FieldName = 'Valor_IsentasIPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 15
    end
    object pNotasP1AppField17: TppField
      FieldAlias = 'Valor_OutrasIPI'
      FieldName = 'Valor_OutrasIPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 16
    end
    object pNotasP1AppField18: TppField
      FieldAlias = 'Incentivo_Fiscal'
      FieldName = 'Incentivo_Fiscal'
      FieldLength = 15
      DisplayWidth = 15
      Position = 17
    end
    object pNotasP1AppField19: TppField
      FieldAlias = 'Cancelada'
      FieldName = 'Cancelada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 18
    end
    object pNotasP1AppField20: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 19
    end
    object pNotasP1AppField21: TppField
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 20
    end
    object pNotasP1AppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo1'
      FieldName = 'Codigo1'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object pNotasP1AppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo2'
      FieldName = 'Codigo2'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object pNotasP1AppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo3'
      FieldName = 'Codigo3'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object pNotasP1AppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo4'
      FieldName = 'Codigo4'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object pNotasP1AppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo5'
      FieldName = 'Codigo5'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 25
    end
    object pNotasP1AppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo6'
      FieldName = 'Codigo6'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object pNotasP1AppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo_Imposto'
      FieldName = 'Codigo_Imposto'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object pNotasP1AppField29: TppField
      FieldAlias = 'Imposto'
      FieldName = 'Imposto'
      FieldLength = 1
      DisplayWidth = 1
      Position = 28
    end
    object pNotasP1AppField30: TppField
      FieldAlias = 'Valor_Imposto'
      FieldName = 'Valor_Imposto'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 29
    end
    object pNotasP1AppField31: TppField
      FieldAlias = 'BC_Imposto'
      FieldName = 'BC_Imposto'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 30
    end
    object pNotasP1AppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fornecedor'
      FieldName = 'Fornecedor'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 31
    end
  end
  object tTotaliza: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Natureza_Codigo,'
      '       Valor_TotalNota,'
      '       BCICMS,'
      '       Valor_ICMS,'
      '       Valor_IsentasICMS,'
      '       Valor_OutrasICMS,'
      '       Aliquota_ICMSOper,'
      '       BCIPI,'
      '       Valor_TotalIPI,'
      '       Valor_IsentasIPI,'
      '       Valor_OutrasIPI,'
      '       Cancelada,'
      '       Fornecedores.CNPJ,'
      '       Fornecedores.Estado,'
      
        '       CASE WHEN BCICMS            > 0 THEN 1 ELSE 0 END AS Codi' +
        'go1,'
      
        '       CASE WHEN Valor_IsentasICMS > 0 THEN 2 ELSE 0 END AS Codi' +
        'go2,'
      
        '       CASE WHEN Valor_OutrasICMS  > 0 THEN 3 ELSE 0 END AS Codi' +
        'go3,'
      
        '       CASE WHEN Valor_TotalIPI    > 0 THEN 1 ELSE 0 END AS Codi' +
        'go4,'
      
        '       CASE WHEN Valor_IsentasIPI  > 0 THEN 2 ELSE 0 END AS Codi' +
        'go5,'
      
        '       CASE WHEN Valor_OutrasIPI   > 0 THEN 3 ELSE 0 END AS Codi' +
        'go6,'
      '       Fornecedor_Codigo AS Fornecedor,'
      '       NFe_Denegada'
      '       ,Observacao'
      'INTO   #Temp'
      'FROM   NotasFiscais, Fornecedores'
      
        'WHERE (Saida_Entrada = 0) AND (Data_Emissao BETWEEN '#39'05/01/2022'#39 +
        ' and '#39'05/31/2022'#39') AND (Fornecedores.Codigo = NotasFiscais.Forne' +
        'cedor_Codigo)'
      'UNION ALL'
      'SELECT Natureza_Codigo'
      '      ,0'
      '      ,0'
      '      ,0'
      '      ,0'
      '      ,0'
      '      ,0'
      '      ,0'
      '      ,0'
      '      ,0'
      '      ,0'
      '      ,Cancelada'
      '      ,Fornecedores.CNPJ'
      '      ,Fornecedores.Estado'
      '      ,0'
      '      ,0'
      '      ,0'
      '      ,0'
      '      ,0'
      '      ,0'
      '      ,Fornecedor_Codigo, Nfe_Denegada'
      '      ,Observacao'
      'FROM   NotasFiscais, Fornecedores'
      
        'WHERE (Saida_Entrada = 0) AND (Data_Emissao BETWEEN '#39'05/01/2022'#39 +
        ' and '#39'05/31/2022'#39') AND (Fornecedores.Codigo = NotasFiscais.Forne' +
        'cedor_Codigo)'
      'UNION  ALL'
      'SELECT Natureza_Codigo'
      '      ,Valor_TotalNota'
      '      ,Valor_BCICMSOper'
      '      ,Valor_ICMSOper'
      '      ,Valor_IsentasICMS'
      '      ,Valor_OutrasICMS'
      '      ,Aliquota_ICMSOper'
      
        '      ,(SELECT SUM(Valor_Liquido) FROM NotasTerceirosItens WHERE' +
        '(NotasTerceirosItens.Nota = NotasTerceiros.Nota) AND (NotasTerce' +
        'irosItens.Fornecedor = NotasTerceiros.Fornecedor) AND (Valor_IPI' +
        ' > 0)) AS BCIPI'
      '      ,Valor_TotalIPI'
      '      ,Valor_IsentasIPI'
      '      ,Valor_OutrasIPI'
      '      ,NULL'
      
        '      ,CNPJ = (SELECT CNPJ FROM Fornecedores WHERE Codigo = Forn' +
        'ecedor)'
      
        '      ,Estado = (SELECT Estado FROM Fornecedores WHERE Codigo = ' +
        'Fornecedor)'
      
        '      ,CASE WHEN Valor_BCICMSOper  > 0 THEN 1 ELSE 0 END AS Codi' +
        'go1'
      
        '      ,CASE WHEN Valor_IsentasICMS > 0 THEN 2 ELSE 0 END AS Codi' +
        'go2'
      
        '      ,CASE WHEN Valor_OutrasICMS  > 0 THEN 3 ELSE 0 END AS Codi' +
        'go3'
      
        '      ,CASE WHEN Valor_TotalIPI    > 0 THEN 1 ELSE 0 END AS Codi' +
        'go4'
      
        '      ,CASE WHEN Valor_IsentasIPI  > 0 THEN 2 ELSE 0 END AS Codi' +
        'go5'
      
        '      ,CASE WHEN Valor_OutrasIPI   > 0 THEN 3 ELSE 0 END AS Codi' +
        'go6'
      '      ,Fornecedor'
      '      ,CAST(0 AS bit) AS NFe_Denegada'
      '      ,Observacoes COLLATE SQL_Latin1_General_CP1_CI_AS'
      'FROM  NotasTerceiros'
      'WHERE (Data_Entrada BETWEEN '#39'05/01/2022'#39' and '#39'05/31/2022'#39') '
      'AND ISNULL(Provisoria, 0) = 0 '
      'AND ISNULL(Servico, '#39#39') = '#39#39' '
      'AND ISNULL(Desdobramento, 0) = 0'
      
        'AND Nota NOT IN(SELECT Nota FROM NotasTerceiros WHERE Data_Entra' +
        'da BETWEEN '#39'05/01/2022'#39' and '#39'05/31/2022'#39' AND ISNULL(Desdobrament' +
        'o, 0) = 1)'
      'UNION ALL'
      'SELECT  Natureza_Codigo'
      
        '       ,Valor_TotalNota   = ISNULL((SELECT SUM(ISNULL(Valor_Liqu' +
        'ido, 0)+ISNULL(Valor_ICMSSub, 0)+ISNULL(Valor_IPI, 0)) FROM Nota' +
        'sTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota'
      
        '                            AND NTI.Fornecedor = NotasTerceiros.' +
        'Fornecedor AND NTI.Natureza_Codigo = NotasTerceiros.Natureza_Cod' +
        'igo), 0)'
      
        '       ,Valor_BCICMSOper  = ISNULL((SELECT SUM(Valor_BCICMSOper)' +
        ' FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.No' +
        'ta AND NTI.Fornecedor = NotasTerceiros.Fornecedor AND NTI.Nature' +
        'za_Codigo = NotasTerceiros.Natureza_Codigo), 0)'
      
        '       ,Valor_ICMSOper    = ISNULL((SELECT SUM(Valor_ICMSOper) F' +
        'ROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Nota' +
        ' AND NTI.Fornecedor = NotasTerceiros.Fornecedor AND NTI.Natureza' +
        '_Codigo = NotasTerceiros.Natureza_Codigo), 0)'
      
        '       ,Valor_IsentasICMS = ISNULL((SELECT SUM(Valor_IsentasICMS' +
        ') FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.N' +
        'ota AND NTI.Fornecedor = NotasTerceiros.Fornecedor AND NTI.Natur' +
        'eza_Codigo = NotasTerceiros.Natureza_Codigo), 0)'
      
        '       ,Valor_OutrasICMS  = ISNULL((SELECT SUM(Valor_OutrasICMS)' +
        ' FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.No' +
        'ta AND NTI.Fornecedor = NotasTerceiros.Fornecedor AND NTI.Nature' +
        'za_Codigo = NotasTerceiros.Natureza_Codigo), 0)'
      '       ,Aliquota_ICMSOper'
      
        '       ,BCIPI             = ISNULL((SELECT SUM(Valor_Liquido) FR' +
        'OM NotasTerceirosItens WHERE(NotasTerceirosItens.Nota = NotasTer' +
        'ceiros.Nota) AND (NotasTerceirosItens.Fornecedor = NotasTerceiro' +
        's.Fornecedor) AND (Valor_IPI > 0)), 0)'
      
        '       ,Valor_TotalIPI    = ISNULL((SELECT SUM(Valor_IPI) FROM N' +
        'otasTerceirosItens WHERE(NotasTerceirosItens.Nota = NotasTerceir' +
        'os.Nota) AND (NotasTerceirosItens.Fornecedor = NotasTerceiros.Fo' +
        'rnecedor)), 0)'
      
        '       ,Valor_IsentasIPI  = ISNULL((SELECT SUM(Valor_IsentasIPI)' +
        ' FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.No' +
        'ta AND NTI.Fornecedor = NotasTerceiros.Fornecedor AND NTI.Nature' +
        'za_Codigo = NotasTerceiros.Natureza_Codigo), 0)'
      
        '       ,Valor_OutrasIPI   = ISNULL((SELECT SUM(Valor_OutrasIPI) ' +
        'FROM NotasTerceirosItens NTI WHERE NTI.Nota = NotasTerceiros.Not' +
        'a AND NTI.Fornecedor = NotasTerceiros.Fornecedor AND NTI.Naturez' +
        'a_Codigo = NotasTerceiros.Natureza_Codigo), 0)'
      '       ,NULL'
      
        '       ,CNPJ = (SELECT CNPJ FROM Fornecedores WHERE Codigo = For' +
        'necedor)'
      
        '       ,Estado = (SELECT Estado FROM Fornecedores WHERE Codigo =' +
        ' Fornecedor)'
      
        '       ,CASE WHEN Valor_BCICMSOper  > 0 THEN 1 ELSE 0 END AS Cod' +
        'igo1'
      
        '       ,CASE WHEN Valor_IsentasICMS > 0 THEN 2 ELSE 0 END AS Cod' +
        'igo2'
      
        '       ,CASE WHEN Valor_OutrasICMS  > 0 THEN 3 ELSE 0 END AS Cod' +
        'igo3'
      
        '       ,CASE WHEN Valor_TotalIPI    > 0 THEN 1 ELSE 0 END AS Cod' +
        'igo4'
      
        '       ,CASE WHEN Valor_IsentasIPI  > 0 THEN 2 ELSE 0 END AS Cod' +
        'igo5'
      
        '       ,CASE WHEN Valor_OutrasIPI   > 0 THEN 3 ELSE 0 END AS Cod' +
        'igo6'
      '       ,Fornecedor'
      '       ,CAST(0 AS bit) AS NFe_Denegada'
      '       ,Observacoes COLLATE SQL_Latin1_General_CP1_CI_AS'
      'FROM  NotasTerceiros'
      'WHERE (Data_Entrada BETWEEN '#39'05/01/2022'#39' and '#39'05/31/2022'#39') '
      'AND   ISNULL(Provisoria, 0) = 0 '
      'AND   ISNULL(Servico, '#39#39') = '#39#39' '
      
        'AND   Nota IN(SELECT Nota FROM NotasTerceiros WHERE Data_Entrada' +
        ' BETWEEN '#39'05/01/2022'#39' and '#39'05/31/2022'#39' AND ISNULL(Desdobramento,' +
        ' 0) = 1)'
      
        'UPDATE #Temp SET Codigo1=Codigo2, Codigo2=0 WHERE(Codigo1=0 AND ' +
        'Codigo2>0)'
      
        'UPDATE #Temp SET Codigo1=Codigo3, Codigo3=0 WHERE(Codigo1=0 AND ' +
        'Codigo3>0)'
      
        'UPDATE #Temp SET Codigo2=Codigo3, Codigo3=0 WHERE(Codigo1=0 AND ' +
        'Codigo3>0)'
      
        'UPDATE #Temp SET Codigo4=Codigo5, Codigo5=0 WHERE(Codigo4=0 AND ' +
        'Codigo5>0)'
      
        'UPDATE #Temp SET Codigo4=Codigo6, Codigo6=0 WHERE(Codigo4=0 AND ' +
        'Codigo6>0)'
      
        'UPDATE #Temp SET Codigo5=Codigo6, Codigo6=0 WHERE(Codigo5=0 AND ' +
        'Codigo6>0)'
      'UPDATE #Temp SET  Valor_TotalNota   = 0'
      '                 ,BCICMS            = 0'
      '                 ,Valor_ICMS        = 0'
      '                 ,Valor_IsentasICMS = 0'
      '                 ,Valor_OutrasICMS  = 0'
      '                 ,BCIPI             = 0'
      '                 ,Valor_TotalIPI    = 0'
      '                 ,Valor_IsentasIPI  = 0'
      '                 ,Valor_OutrasIPI   = 0'
      '                 ,Aliquota_ICMSOper = 0'
      'WHERE(Cancelada = 1) or NFe_Denegada = 1'
      'SELECT #Temp.*, Codigo1 AS Codigo_ICMS, Codigo4 AS Codigo_IPI,'
      '       CASE'
      '          WHEN Codigo1 = 1 THEN BCICMS'
      '          WHEN Codigo1 = 2 THEN Valor_IsentasICMS'
      '          WHEN Codigo1 = 3 THEN Valor_OutrasICMS'
      '       ELSE 0 END AS Apuracao_ICMS,'
      '       CASE'
      '          WHEN Codigo4 = 1 THEN BCIPI'
      '          WHEN Codigo4 = 2 THEN Valor_IsentasIPI'
      '          WHEN Codigo4 = 3 THEN Valor_OutrasIPI'
      '       ELSE 0 END AS Apuracao_IPI,'
      
        '       CASE WHEN Codigo1 = 1 THEN Valor_ICMS     ELSE 0 END AS I' +
        'mposto_ICMS,'
      
        '       CASE WHEN Codigo4 = 1 THEN Valor_TotalIPI ELSE 0 END AS I' +
        'mposto_IPI,'
      '       Valor_TotalNota AS Valor_Contabil,'
      '       1 AS Ordem'
      'INTO #Temp2'
      'FROM #Temp'
      
        'WHERE (Codigo1 <> 0) OR (Codigo4 <> 0) AND (Cancelada <> 1 OR Nf' +
        'e_Denegada <> 1)'
      'UNION ALL'
      'SELECT #Temp.*, Codigo2, Codigo5,'
      '       CASE'
      '          WHEN Codigo2 = 1 THEN BCICMS'
      '          WHEN Codigo2 = 2 THEN Valor_IsentasICMS'
      '          WHEN Codigo2 = 3 THEN Valor_OutrasICMS'
      '       ELSE 0 END,'
      '       CASE'
      '          WHEN Codigo5 = 1 THEN BCIPI'
      '          WHEN Codigo5 = 2 THEN Valor_IsentasIPI'
      '          WHEN Codigo5 = 3 THEN Valor_OutrasIPI'
      '       ELSE 0 END,'
      '       CASE WHEN Codigo2 = 1 THEN Valor_ICMS     ELSE 0 END,'
      '       CASE WHEN Codigo5 = 1 THEN Valor_TotalIPI ELSE 0 END,'
      '       0,'
      '       2 AS Ordem'
      'FROM #Temp'
      
        'WHERE (Codigo2 <> 0 OR Codigo5 <> 0) AND (Cancelada <> 1 OR Nfe_' +
        'Denegada <> 1)'
      'UNION ALL'
      'SELECT #Temp.*, Codigo3, Codigo6,'
      '       CASE'
      '          WHEN Codigo3 = 1 THEN BCICMS'
      '          WHEN Codigo3 = 2 THEN Valor_IsentasICMS'
      '          WHEN Codigo3 = 3 THEN Valor_OutrasICMS'
      '       ELSE 0 END,'
      '       CASE'
      '          WHEN Codigo6 = 1 THEN BCIPI'
      '          WHEN Codigo6 = 2 THEN Valor_IsentasIPI'
      '          WHEN Codigo6 = 3 THEN Valor_OutrasIPI'
      '       ELSE 0 END,'
      '       CASE WHEN Codigo3 = 1 THEN Valor_ICMS     ELSE 0 END,'
      '       CASE WHEN Codigo6 = 1 THEN Valor_TotalIPI ELSE 0 END,'
      '       0,'
      '       3 AS Ordem'
      'FROM   #Temp'
      
        'WHERE  (Codigo3 <> 0 OR Codigo6 <> 0) AND (Cancelada <> 1 OR Nfe' +
        '_Denegada <> 1)'
      'UNION  ALL'
      'SELECT #Temp.*, 0, 0, 0, 0, 0, 0, 0, 0 AS Ordem'
      'FROM   #Temp'
      
        'WHERE  (Cancelada = 1 OR Nfe_Denegada = 1) AND (Codigo1 = 0 AND ' +
        'Codigo2 = 0 AND Codigo3 = 0 AND Codigo4 = 0 AND Codigo5 = 0 AND ' +
        'Codigo6 = 0)'
      
        'DELETE FROM #TEMP2 WHERE (Cancelada = 1 OR Nfe_Denegada = 1) AND' +
        ' (Ordem <> 0)'
      ''
      'select Natureza_Codigo'
      
        '      ,Titulo            = (select upper(Descricao_NF) from Cybe' +
        'rsoft_Cadastros.dbo.Natureza where Codigo = substring(Natureza_C' +
        'odigo,1,1)+'#39'000'#39')'
      '      ,Grupo             = substring(Natureza_Codigo,1,1)+'#39'000'#39
      
        '      ,Descricao         = (select upper(Descricao_NF) from Cybe' +
        'rsoft_Cadastros.dbo.Natureza where Codigo = Natureza_Codigo)'
      
        '      ,Total_Contabil    = 10000000000 --sum(isnull(Valor_Contab' +
        'il, 0))'
      '      ,Total_BCICMS      = sum(isnull(BCICMS, 0))'
      '      ,Total_ICMS        = sum(isnull(Imposto_ICMS, 0))'
      '      ,Total_IsentasICMS = sum(isnull(Valor_IsentasICMS, 0))'
      '      ,Total_OutrasICMS  = sum(isnull(Valor_OutrasICMS, 0))'
      '      ,Total_BCIPI       = sum(isnull(BCIPI, 0))'
      '      ,Total_IPI         = sum(isnull(Imposto_IPI, 0))'
      '      ,Total_IsentasIPI  = sum(isnull(Valor_IsentasIPI, 0))'
      '      ,Total_OutrasIPI   = sum(isnull(Valor_OutrasIPI, 0))'
      'from #TEMP2'
      'where isnull(Natureza_Codigo, '#39#39') <> '#39#39
      'and Ordem = 1'
      'group by Natureza_Codigo'
      'order by Natureza_Codigo'
      ''
      ''
      'DROP TABLE #Temp, #Temp2')
    FetchRows = 1
    Active = True
    Left = 384
    Top = 107
  end
  object pTotaliza: TppDBPipeline
    DataSource = dstTotaliza
    UserName = 'pTotaliza'
    Left = 312
    Top = 152
    object pTotalizappField1: TppField
      FieldAlias = 'Natureza_Codigo'
      FieldName = 'Natureza_Codigo'
      FieldLength = 4
      DisplayWidth = 4
      Position = 0
    end
    object pTotalizappField2: TppField
      FieldAlias = 'Titulo'
      FieldName = 'Titulo'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object pTotalizappField3: TppField
      FieldAlias = 'Grupo'
      FieldName = 'Grupo'
      FieldLength = 4
      DisplayWidth = 4
      Position = 2
    end
    object pTotalizappField4: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object pTotalizappField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total_Contabil'
      FieldName = 'Total_Contabil'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object pTotalizappField6: TppField
      FieldAlias = 'Total_BCICMS'
      FieldName = 'Total_BCICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 5
    end
    object pTotalizappField7: TppField
      FieldAlias = 'Total_ICMS'
      FieldName = 'Total_ICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 6
    end
    object pTotalizappField8: TppField
      FieldAlias = 'Total_IsentasICMS'
      FieldName = 'Total_IsentasICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 7
    end
    object pTotalizappField9: TppField
      FieldAlias = 'Total_OutrasICMS'
      FieldName = 'Total_OutrasICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 8
    end
    object pTotalizappField10: TppField
      FieldAlias = 'Total_BCIPI'
      FieldName = 'Total_BCIPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 9
    end
    object pTotalizappField11: TppField
      FieldAlias = 'Total_IPI'
      FieldName = 'Total_IPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 10
    end
    object pTotalizappField12: TppField
      FieldAlias = 'Total_IsentasIPI'
      FieldName = 'Total_IsentasIPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 11
    end
    object pTotalizappField13: TppField
      FieldAlias = 'Total_OutrasIPI'
      FieldName = 'Total_OutrasIPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 12
    end
  end
  object dstTotaliza: TDataSource
    DataSet = tTotaliza
    Left = 381
    Top = 163
  end
end
