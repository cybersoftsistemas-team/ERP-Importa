object Impressao_ContabeisOP_Balancete: TImpressao_ContabeisOP_Balancete
  Left = 479
  Top = 251
  BorderStyle = bsDialog
  Caption = 'Impressao_ContabeisOP_Balancete'
  ClientHeight = 444
  ClientWidth = 534
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
    Width = 534
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitWidth = 599
  end
  object bLimparEmpresa: TSpeedButton
    Left = 505
    Top = 105
    Width = 21
    Height = 21
    Cursor = crHandPoint
    Hint = '  Limpar os filtros atuais  '
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
    ParentShowHint = False
    ShowHint = True
    OnClick = bLimparEmpresaClick
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 178
    Height = 21
    Caption = 'IMPRESS'#195'O - CONTABEIS'
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
    Width = 67
    Height = 18
    Caption = 'Balancete.'
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
    Top = 414
    Width = 534
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    DesignSize = (
      534
      30)
    object bSair: TButton
      Left = 467
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
      Left = 401
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
  object cDataIni: TDateEdit
    Left = 85
    Top = 60
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
    TabOrder = 0
  end
  object StaticText1: TStaticText
    Left = 13
    Top = 60
    Width = 70
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
    TabOrder = 3
    Transparent = False
    StyleElements = []
  end
  object cDataFim: TDateEdit
    Left = 85
    Top = 83
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
    TabOrder = 1
  end
  object StaticText2: TStaticText
    Left = 13
    Top = 83
    Width = 70
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
    TabOrder = 4
    Transparent = False
    StyleElements = []
  end
  object StaticText3: TStaticText
    Left = 13
    Top = 106
    Width = 70
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Empresa'
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
  object cEmpresa: TRxDBLookupCombo
    Left = 85
    Top = 106
    Width = 420
    Height = 21
    DropDownCount = 8
    DropDownWidth = 570
    DisplayAllFields = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'CNPJ;Razao_Social; Numero_Filial;Estado'
    LookupSource = dstEmpresas
    ParentFont = False
    TabOrder = 6
  end
  object GroupBox2: TGroupBox
    Left = 13
    Top = 140
    Width = 258
    Height = 258
    Caption = 'Par'#226'metros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    object cSalto: TToggleSwitch
      Left = 9
      Top = 34
      Width = 240
      Height = 18
      Alignment = taLeftJustify
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      StateCaptions.CaptionOn = 'Saltar pagina na mudan'#231'a de grupo'
      StateCaptions.CaptionOff = 'Saltar pagina na mudan'#231'a de grupo'
      SwitchHeight = 12
      SwitchWidth = 22
      TabOrder = 0
      ThumbWidth = 12
    end
    object cNegrito: TToggleSwitch
      Left = 9
      Top = 54
      Width = 240
      Height = 18
      Alignment = taLeftJustify
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      StateCaptions.CaptionOn = 'Contas titulo em negrito'
      StateCaptions.CaptionOff = 'Contas titulo em negrito'
      SwitchHeight = 12
      SwitchWidth = 22
      TabOrder = 1
      ThumbWidth = 12
    end
    object cMaiusculo: TToggleSwitch
      Left = 9
      Top = 74
      Width = 240
      Height = 18
      Alignment = taLeftJustify
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      StateCaptions.CaptionOn = 'Nome das contas em mai'#250'sculo'
      StateCaptions.CaptionOff = 'Nome das contas em mai'#250'sculo'
      SwitchHeight = 12
      SwitchWidth = 22
      TabOrder = 2
      ThumbWidth = 12
    end
    object cMovimento: TToggleSwitch
      Left = 9
      Top = 94
      Width = 240
      Height = 18
      Alignment = taLeftJustify
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      StateCaptions.CaptionOn = 'Somente Contas Movimentadas no Per'#237'odo'
      StateCaptions.CaptionOff = 'Somente contas movimentadas no per'#237'odo'
      SwitchHeight = 12
      SwitchWidth = 22
      TabOrder = 3
      ThumbWidth = 12
    end
    object cSaldoZero: TToggleSwitch
      Left = 9
      Top = 114
      Width = 240
      Height = 18
      Alignment = taLeftJustify
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      StateCaptions.CaptionOn = 'N'#227'o Imprimir contas com saldo zero'
      StateCaptions.CaptionOff = 'N'#227'o Imprimir contas com saldo zero'
      SwitchHeight = 12
      SwitchWidth = 22
      TabOrder = 4
      ThumbWidth = 12
    end
    object cDadosDiretor: TToggleSwitch
      Left = 9
      Top = 154
      Width = 240
      Height = 18
      Alignment = taLeftJustify
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      StateCaptions.CaptionOn = 'Imprimir os dados do Diretor'
      StateCaptions.CaptionOff = 'Imprimir os dados do diretor'
      SwitchHeight = 12
      SwitchWidth = 22
      TabOrder = 5
      ThumbWidth = 12
    end
    object cTotalGrupo: TToggleSwitch
      Left = 9
      Top = 134
      Width = 240
      Height = 18
      Alignment = taLeftJustify
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      StateCaptions.CaptionOn = 'Imprimir total dos grupos'
      StateCaptions.CaptionOff = 'Imprimir total dos grupos'
      SwitchHeight = 12
      SwitchWidth = 22
      TabOrder = 6
      ThumbWidth = 12
    end
    object cZebrado: TToggleSwitch
      Left = 9
      Top = 214
      Width = 240
      Height = 18
      Alignment = taLeftJustify
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      StateCaptions.CaptionOn = 'Imprimir zebrado'
      StateCaptions.CaptionOff = 'Imprimir zebrado'
      SwitchHeight = 12
      SwitchWidth = 22
      TabOrder = 7
      ThumbWidth = 12
    end
    object cDadosContador: TToggleSwitch
      Left = 9
      Top = 194
      Width = 240
      Height = 18
      Alignment = taLeftJustify
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      StateCaptions.CaptionOn = 'Imprimir os dados do Contador'
      StateCaptions.CaptionOff = 'Imprimir os dados do contador'
      SwitchHeight = 12
      SwitchWidth = 22
      TabOrder = 8
      ThumbWidth = 12
    end
    object cDadosResponsavel: TToggleSwitch
      Left = 9
      Top = 174
      Width = 240
      Height = 18
      Alignment = taLeftJustify
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      StateCaptions.CaptionOn = 'Imprimir os dados do Respons'#225'vel'
      StateCaptions.CaptionOff = 'Imprimir os dados do respons'#225'vel'
      SwitchHeight = 12
      SwitchWidth = 22
      TabOrder = 9
      ThumbWidth = 12
    end
    object cSintetico: TToggleSwitch
      Left = 9
      Top = 14
      Width = 240
      Height = 18
      Alignment = taLeftJustify
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      StateCaptions.CaptionOn = 'Sint'#233'tico'
      StateCaptions.CaptionOff = 'Sint'#233'tico'
      SwitchHeight = 12
      SwitchWidth = 22
      TabOrder = 10
      ThumbWidth = 12
    end
    object cExcel: TToggleSwitch
      Left = 9
      Top = 234
      Width = 240
      Height = 18
      Alignment = taLeftJustify
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      StateCaptions.CaptionOn = 'Gerar planiha Excel'
      StateCaptions.CaptionOff = 'Gerar planiha Excel'
      SwitchHeight = 12
      SwitchWidth = 22
      TabOrder = 11
      ThumbWidth = 12
    end
  end
  object cDetalheBen: TRadioGroup
    Left = 285
    Top = 140
    Width = 220
    Height = 84
    Caption = 'Detalhamento (Benefici'#225'rio)'
    Items.Strings = (
      'Configurado no Plano de Contas'
      'Detalhar Todas'
      'Detalhar Nenhuma')
    TabOrder = 8
  end
  object cDetalheProc: TRadioGroup
    Left = 285
    Top = 241
    Width = 220
    Height = 84
    Caption = 'Detalhamento (Processo)'
    Items.Strings = (
      'Configurado no Plano de Contas'
      'Detalhar Todas'
      'Detalhar Nenhuma')
    TabOrder = 9
  end
  object rBalancete: TppReport
    AutoStop = False
    DataPipeline = ppPlanoContas
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Balancete'
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
    Template.FileName = 'C:\Sistemas\Faturamento\Codigo Fonte\Relatorios\Balancete.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = rBalanceteBeforePrint
    CachePages = True
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
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    TextSearchSettings.ShowAll = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 400
    Top = 8
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppPlanoContas'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 30427
      mmPrintPosition = 0
      object lTitulo: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lTitulo'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Balancete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4194368
        Font.Name = 'Calibri'
        Font.Size = 11
        Font.Style = [fsBold, fsItalic]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 0
        mmTop = 17943
        mmWidth = 197644
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape4'
        Brush.Color = clNavy
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 3500
        mmLeft = 1
        mmTop = 26927
        mmWidth = 101622
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CONTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 266
        mmTop = 27110
        mmWidth = 101093
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape5'
        Brush.Color = clNavy
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 3500
        mmLeft = 102129
        mmTop = 26927
        mmWidth = 25929
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'SALDO ANTERIOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 102323
        mmTop = 27110
        mmWidth = 25446
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape3'
        Brush.Color = clNavy
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 3500
        mmLeft = 128323
        mmTop = 26927
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'D'#201'BITO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 128517
        mmTop = 27110
        mmWidth = 21213
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape6'
        Brush.Color = clNavy
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 3500
        mmLeft = 150284
        mmTop = 26927
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CR'#201'DITO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 150477
        mmTop = 27110
        mmWidth = 21213
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape7: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape7'
        Brush.Color = clNavy
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 3500
        mmLeft = 172244
        mmTop = 26927
        mmWidth = 25135
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'SALDO ATUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 172558
        mmTop = 27110
        mmWidth = 24533
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        Border.mmPadding = 0
        Color = clBlue
        DataField = 'Razao_Social'
        DataPipeline = ppEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4194368
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEmpresas'
        mmHeight = 5165
        mmLeft = 27517
        mmTop = 0
        mmWidth = 169598
        BandType = 0
        LayerName = Foreground1
      end
      object lPeriodo: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lTitulo1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Per'#237'odo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4194368
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 22225
        mmWidth = 197644
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
        mmHeight = 14817
        mmLeft = 0
        mmTop = 0
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4276
        mmLeft = 27517
        mmTop = 5821
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NIRE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4276
        mmLeft = 27517
        mmTop = 10319
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'CNPJ'
        DataPipeline = ppEmpresas
        DisplayFormat = '##.###.###/####-##;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEmpresas'
        mmHeight = 4233
        mmLeft = 35719
        mmTop = 5821
        mmWidth = 33338
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'NIRE'
        DataPipeline = ppEmpresas
        DisplayFormat = '##.###.###/####-##;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEmpresas'
        mmHeight = 4233
        mmLeft = 35719
        mmTop = 10319
        mmWidth = 33338
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'I.Estadual:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4276
        mmLeft = 74348
        mmTop = 5821
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'I.Municipal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4276
        mmLeft = 74348
        mmTop = 10319
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'IE'
        DataPipeline = ppEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEmpresas'
        mmHeight = 4233
        mmLeft = 93398
        mmTop = 5821
        mmWidth = 44715
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'IM'
        DataPipeline = ppEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEmpresas'
        mmHeight = 4233
        mmLeft = 93398
        mmTop = 10319
        mmWidth = 44715
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line8'
        Border.Style = psDot
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1319
        mmLeft = 163
        mmTop = 15609
        mmWidth = 197696
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
      mmHeight = 3704
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape2'
        Brush.Color = 15921906
        Pen.Color = clWhite
        Pen.Style = psClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 3609
        mmLeft = -18
        mmTop = 0
        mmWidth = 197972
        BandType = 4
        LayerName = Foreground1
      end
      object lDebito: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'lDebito'
        Border.mmPadding = 0
        DataField = 'Debito'
        DataPipeline = ppPlanoContas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPlanoContas'
        mmHeight = 2830
        mmLeft = 129116
        mmTop = 373
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground1
      end
      object lCredito: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'lCredito'
        Border.mmPadding = 0
        DataField = 'Credito'
        DataPipeline = ppPlanoContas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPlanoContas'
        mmHeight = 2830
        mmLeft = 151077
        mmTop = 373
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground1
      end
      object lItem: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lItem'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'lItem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 265
        mmTop = 419
        mmWidth = 101071
        BandType = 4
        LayerName = Foreground1
      end
      object lSaldoAtual: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'lCredito1'
        Border.mmPadding = 0
        DataField = 'Saldo_Atual'
        DataPipeline = ppPlanoContas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPlanoContas'
        mmHeight = 2830
        mmLeft = 173038
        mmTop = 373
        mmWidth = 22754
        BandType = 4
        LayerName = Foreground1
      end
      object lDC_Anterior: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'lDC_Anterior'
        Border.mmPadding = 0
        DataField = 'DC_Anterior'
        DataPipeline = ppPlanoContas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPlanoContas'
        mmHeight = 2830
        mmLeft = 125942
        mmTop = 373
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground1
      end
      object lDC_SaldoAtual: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'lDC_SaldoAtual'
        Border.mmPadding = 0
        DataField = 'DC_Atual'
        DataPipeline = ppPlanoContas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPlanoContas'
        mmHeight = 3006
        mmLeft = 195792
        mmTop = 434
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground1
      end
      object lAnterior: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'lDebito1'
        Border.mmPadding = 0
        DataField = 'Saldo_Anterior'
        DataPipeline = ppPlanoContas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPlanoContas'
        mmHeight = 2830
        mmLeft = 102129
        mmTop = 373
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 197909
        BandType = 8
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Cybersoft Sistemas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 529
        mmWidth = 27252
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3969
        mmLeft = 112977
        mmTop = 0
        mmWidth = 2117
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3969
        mmLeft = 175948
        mmTop = 0
        mmWidth = 2117
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 178330
        mmTop = 529
        mmWidth = 18521
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3969
        mmLeft = 27781
        mmTop = 0
        mmWidth = 2117
        BandType = 8
        LayerName = Foreground1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'Contador_Nome'
        DataPipeline = ppEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEmpresas'
        mmHeight = 3175
        mmLeft = 29104
        mmTop = 529
        mmWidth = 52123
        BandType = 8
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'Contador_CRC'
        DataPipeline = ppEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEmpresas'
        mmHeight = 3175
        mmLeft = 81756
        mmTop = 529
        mmWidth = 30427
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable2'
        AutoSize = False
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 114036
        mmTop = 529
        mmWidth = 61119
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppSummaryBand1: TppSummaryBand
      BeforePrint = ppSummaryBand1BeforePrint
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 66675
      mmPrintPosition = 0
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TOTALIZA'#199#195'O DOS GRUPOS'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3500
        mmLeft = 0
        mmTop = 6615
        mmWidth = 197644
        BandType = 7
        LayerName = Foreground1
      end
      object lTotaliza: TppMemo
        DesignLayer = ppDesignLayer2
        UserName = 'lTotaliza'
        Border.mmPadding = 0
        Caption = 'lTotaliza'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Lines.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          ''
          ''
          'DIFEREN'#199'A'
          'RESULTADO')
        RemoveEmptyLines = False
        Stretch = True
        TabStopPositions.Strings = (
          '25400'
          '50800'
          '76200'
          '101600'
          '127000'
          '152400')
        TextAlignment = taCentered
        mmHeight = 37835
        mmLeft = 13759
        mmTop = 12700
        mmWidth = 182827
        BandType = 7
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object bDadosDiretor: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'bDadosDiretor'
        ExpandAll = False
        KeepTogether = True
        NewPrintJob = False
        OutlineSettings.CreateNode = False
        ShiftRelativeTo = lTotaliza
        TraverseAllData = False
        mmHeight = 5027
        mmLeft = 0
        mmTop = 51065
        mmWidth = 197300
        BandType = 7
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Balancete'
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
          object sOutrasInformacoes: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 16933
            mmPrintPosition = 0
            object lDiretor: TppMemo
              DesignLayer = ppDesignLayer1
              UserName = 'lContador1'
              Border.mmPadding = 0
              Caption = 'lContador'
              CharWrap = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 10
              Font.Style = []
              Lines.Strings = (
                'LUCIENE SANTOS SILVA'
                'AV.Princesa Isabel n'#186' 629 Sala 1105, Centro - Vitoria')
              RemoveEmptyLines = False
              Transparent = True
              mmHeight = 11113
              mmLeft = 60325
              mmTop = 5819
              mmWidth = 89694
              BandType = 1
              LayerName = Foreground
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeading = 0
            end
            object ppLine7: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line7'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 827
              mmLeft = 60325
              mmTop = 4765
              mmWidth = 89694
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel9: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label9'
              Border.mmPadding = 0
              Caption = 'Diretor:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3969
              mmLeft = 60325
              mmTop = 265
              mmWidth = 11112
              BandType = 1
              LayerName = Foreground
            end
          end
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 6085
            mmPrintPosition = 0
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
      object bDadosResponsavel: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'bDadosResponsavel'
        ExpandAll = False
        KeepTogether = True
        NewPrintJob = False
        OutlineSettings.CreateNode = False
        ShiftRelativeTo = bDadosDiretor
        TraverseAllData = False
        mmHeight = 5027
        mmLeft = 0
        mmTop = 56354
        mmWidth = 197300
        BandType = 7
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Balancete'
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
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 15875
            mmPrintPosition = 0
            object ppLine5: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line2'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 1323
              mmLeft = 60325
              mmTop = 4764
              mmWidth = 89694
              BandType = 1
              LayerName = Foreground2
            end
            object lResponsavel: TppMemo
              DesignLayer = ppDesignLayer3
              UserName = 'lResponsavel'
              Border.mmPadding = 0
              Caption = 'lContador'
              CharWrap = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 10
              Font.Style = []
              Lines.Strings = (
                'LUCIENE SANTOS SILVA'
                'AV.Princesa Isabel n'#186' 629 Sala 1105, Centro - Vitoria')
              RemoveEmptyLines = False
              Transparent = True
              mmHeight = 10054
              mmLeft = 60325
              mmTop = 5822
              mmWidth = 89694
              BandType = 1
              LayerName = Foreground2
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeading = 0
            end
            object ppLabel10: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label101'
              Border.mmPadding = 0
              Caption = 'Respons'#225'vel:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3968
              mmLeft = 60325
              mmTop = 266
              mmWidth = 19050
              BandType = 1
              LayerName = Foreground2
            end
          end
          object ppDetailBand3: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 6085
            mmPrintPosition = 0
          end
          object ppDesignLayers3: TppDesignLayers
            object ppDesignLayer3: TppDesignLayer
              UserName = 'Foreground2'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object bDadosContador: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'bDadosContador'
        ExpandAll = False
        KeepTogether = True
        NewPrintJob = False
        OutlineSettings.CreateNode = False
        ShiftRelativeTo = bDadosResponsavel
        TraverseAllData = False
        mmHeight = 5027
        mmLeft = 0
        mmTop = 61647
        mmWidth = 197300
        BandType = 7
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport3: TppChildReport
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Balancete'
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
          object ppTitleBand2: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 18256
            mmPrintPosition = 0
            object lContador: TppMemo
              DesignLayer = ppDesignLayer4
              UserName = 'lContador3'
              Border.mmPadding = 0
              Caption = 'lContador'
              CharWrap = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 10
              Font.Style = []
              Lines.Strings = (
                'LUCIENE SANTOS SILVA'
                'AV.Princesa Isabel n'#186' 629 Sala 1105, Centro - Vitoria')
              RemoveEmptyLines = False
              Transparent = True
              mmHeight = 12140
              mmLeft = 60325
              mmTop = 6084
              mmWidth = 89694
              BandType = 1
              LayerName = PageLayer1
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeading = 0
            end
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer4
              UserName = 'Line6'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 992
              mmLeft = 60325
              mmTop = 4761
              mmWidth = 89694
              BandType = 1
              LayerName = PageLayer1
            end
            object ppLabel11: TppLabel
              DesignLayer = ppDesignLayer4
              UserName = 'Label11'
              Border.mmPadding = 0
              Caption = 'Contador:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 10
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3969
              mmLeft = 60590
              mmTop = 263
              mmWidth = 14287
              BandType = 1
              LayerName = PageLayer1
            end
          end
          object ppDetailBand4: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 6085
            mmPrintPosition = 0
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
    object ppGroup1: TppGroup
      BreakName = 'Grupo'
      DataPipeline = ppPlanoContas
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppPlanoContas'
      NewFile = False
      object Grupo: TppGroupHeaderBand
        Visible = False
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 3175
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Visible = False
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3175
        mmPrintPosition = 0
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
  object ppPlanoContas: TppDBPipeline
    DataSource = dstBalancete
    CloseDataSource = True
    UserName = 'PlanoContas'
    Left = 400
    Top = 56
  end
  object ppEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    CloseDataSource = True
    UserName = 'Empresas'
    Left = 472
    Top = 56
    object ppEmpresasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 3
      Position = 0
    end
    object ppEmpresasppField2: TppField
      FieldAlias = 'Razao_Social'
      FieldName = 'Razao_Social'
      FieldLength = 50
      DisplayWidth = 35
      Position = 1
    end
    object ppEmpresasppField3: TppField
      FieldAlias = 'Nome_Fantasia'
      FieldName = 'Nome_Fantasia'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppEmpresasppField4: TppField
      FieldAlias = 'Rua'
      FieldName = 'Rua'
      FieldLength = 30
      DisplayWidth = 30
      Position = 3
    end
    object ppEmpresasppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Rua_Numero'
      FieldName = 'Rua_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppEmpresasppField6: TppField
      FieldAlias = 'Complemento'
      FieldName = 'Complemento'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object ppEmpresasppField7: TppField
      FieldAlias = 'Bairro'
      FieldName = 'Bairro'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object ppEmpresasppField8: TppField
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 7
    end
    object ppEmpresasppField9: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 8
    end
    object ppEmpresasppField10: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 12
      Position = 9
    end
    object ppEmpresasppField11: TppField
      FieldAlias = 'IE'
      FieldName = 'IE'
      FieldLength = 14
      DisplayWidth = 14
      Position = 10
    end
    object ppEmpresasppField12: TppField
      FieldAlias = 'IM'
      FieldName = 'IM'
      FieldLength = 14
      DisplayWidth = 14
      Position = 11
    end
    object ppEmpresasppField13: TppField
      FieldAlias = 'Junta_Codigo'
      FieldName = 'Junta_Codigo'
      FieldLength = 12
      DisplayWidth = 12
      Position = 12
    end
    object ppEmpresasppField14: TppField
      FieldAlias = 'Junta_Data'
      FieldName = 'Junta_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
    object ppEmpresasppField15: TppField
      FieldAlias = 'Ramo_Atividade'
      FieldName = 'Ramo_Atividade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object ppEmpresasppField16: TppField
      FieldAlias = 'Codigo_Atividade'
      FieldName = 'Codigo_Atividade'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
    object ppEmpresasppField17: TppField
      FieldAlias = 'Responsavel'
      FieldName = 'Responsavel'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object ppEmpresasppField18: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 17
    end
    object ppEmpresasppField19: TppField
      FieldAlias = 'Site'
      FieldName = 'Site'
      FieldLength = 60
      DisplayWidth = 60
      Position = 18
    end
    object ppEmpresasppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'Duplicata'
      FieldName = 'Duplicata'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppEmpresasppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Saida'
      FieldName = 'Nota_Saida'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object ppEmpresasppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Entrada'
      FieldName = 'Nota_Entrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object ppEmpresasppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Servico'
      FieldName = 'Nota_Servico'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object ppEmpresasppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Eletronica'
      FieldName = 'Nota_Eletronica'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object ppEmpresasppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'Memorando_Exportacao'
      FieldName = 'Memorando_Exportacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object ppEmpresasppField26: TppField
      FieldAlias = 'Sincronizar_NumeroNF'
      FieldName = 'Sincronizar_NumeroNF'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 25
    end
    object ppEmpresasppField27: TppField
      FieldAlias = 'Mascara_PlanoContas'
      FieldName = 'Mascara_PlanoContas'
      FieldLength = 20
      DisplayWidth = 20
      Position = 26
    end
    object ppEmpresasppField28: TppField
      FieldAlias = 'Codigo_Reduzido'
      FieldName = 'Codigo_Reduzido'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 27
    end
    object ppEmpresasppField29: TppField
      FieldAlias = 'Diretor'
      FieldName = 'Diretor'
      FieldLength = 50
      DisplayWidth = 50
      Position = 28
    end
    object ppEmpresasppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Numero'
      FieldName = 'Diario_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object ppEmpresasppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Pagina'
      FieldName = 'Diario_Pagina'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object ppEmpresasppField32: TppField
      FieldAlias = 'Ultimo_Encerramento'
      FieldName = 'Ultimo_Encerramento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 31
    end
    object ppEmpresasppField33: TppField
      FieldAlias = 'NFServico_Modelo'
      FieldName = 'NFServico_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 32
    end
    object ppEmpresasppField34: TppField
      FieldAlias = 'NFServico_Serie'
      FieldName = 'NFServico_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 33
    end
    object ppEmpresasppField35: TppField
      FieldAlias = 'NFEntrada_Modelo'
      FieldName = 'NFEntrada_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 34
    end
    object ppEmpresasppField36: TppField
      FieldAlias = 'NFEntrada_Serie'
      FieldName = 'NFEntrada_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 35
    end
    object ppEmpresasppField37: TppField
      FieldAlias = 'NFSaida_Modelo'
      FieldName = 'NFSaida_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 36
    end
    object ppEmpresasppField38: TppField
      FieldAlias = 'NFSaida_Serie'
      FieldName = 'NFSaida_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 37
    end
    object ppEmpresasppField39: TppField
      FieldAlias = 'Matriz_Filial'
      FieldName = 'Matriz_Filial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 38
    end
    object ppEmpresasppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Filial'
      FieldName = 'Numero_Filial'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 3
      Position = 39
    end
    object ppEmpresasppField41: TppField
      FieldAlias = 'NFEletronica_Modelo'
      FieldName = 'NFEletronica_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 40
    end
    object ppEmpresasppField42: TppField
      FieldAlias = 'NFEletronica_Serie'
      FieldName = 'NFEletronica_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 41
    end
    object ppEmpresasppField43: TppField
      FieldAlias = 'NFEletronica_Layout'
      FieldName = 'NFEletronica_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 42
    end
    object ppEmpresasppField44: TppField
      FieldAlias = 'Certificado_Digital'
      FieldName = 'Certificado_Digital'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Lote'
      FieldName = 'Numero_Lote'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 44
    end
    object ppEmpresasppField46: TppField
      FieldAlias = 'Inscricao_SUFRAMA'
      FieldName = 'Inscricao_SUFRAMA'
      FieldLength = 9
      DisplayWidth = 9
      Position = 45
    end
    object ppEmpresasppField47: TppField
      FieldAlias = 'Contador_Nome'
      FieldName = 'Contador_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 46
    end
    object ppEmpresasppField48: TppField
      FieldAlias = 'Contador_CNPJ'
      FieldName = 'Contador_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 47
    end
    object ppEmpresasppField49: TppField
      FieldAlias = 'Contador_CPF'
      FieldName = 'Contador_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 48
    end
    object ppEmpresasppField50: TppField
      FieldAlias = 'Contador_CRC'
      FieldName = 'Contador_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 49
    end
    object ppEmpresasppField51: TppField
      FieldAlias = 'Contador_CEP'
      FieldName = 'Contador_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 50
    end
    object ppEmpresasppField52: TppField
      FieldAlias = 'Contador_Rua'
      FieldName = 'Contador_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 51
    end
    object ppEmpresasppField53: TppField
      FieldAlias = 'Contador_Numero'
      FieldName = 'Contador_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 52
    end
    object ppEmpresasppField54: TppField
      FieldAlias = 'Contador_Complemento'
      FieldName = 'Contador_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 53
    end
    object ppEmpresasppField55: TppField
      FieldAlias = 'Contador_Bairro'
      FieldName = 'Contador_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 54
    end
    object ppEmpresasppField56: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Municipio'
      FieldName = 'Contador_Municipio'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 55
    end
    object ppEmpresasppField57: TppField
      FieldAlias = 'Contador_Telefone'
      FieldName = 'Contador_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 56
    end
    object ppEmpresasppField58: TppField
      FieldAlias = 'Contador_FAX'
      FieldName = 'Contador_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 57
    end
    object ppEmpresasppField59: TppField
      FieldAlias = 'Contador_Email'
      FieldName = 'Contador_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 58
    end
    object ppEmpresasppField60: TppField
      FieldAlias = 'Contador_Estado'
      FieldName = 'Contador_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 59
    end
    object ppEmpresasppField61: TppField
      FieldAlias = 'Data_Constituicao'
      FieldName = 'Data_Constituicao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 60
    end
    object ppEmpresasppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tributacao'
      FieldName = 'Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 61
    end
    object ppEmpresasppField63: TppField
      Alignment = taRightJustify
      FieldAlias = 'Municipio_Codigo'
      FieldName = 'Municipio_Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 62
    end
    object ppEmpresasppField64: TppField
      FieldAlias = 'Diretor_CPF'
      FieldName = 'Diretor_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 63
    end
    object ppEmpresasppField65: TppField
      FieldAlias = 'Responsavel_CPF'
      FieldName = 'Responsavel_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 64
    end
    object ppEmpresasppField66: TppField
      FieldAlias = 'Responsavel_Funcao'
      FieldName = 'Responsavel_Funcao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 65
    end
    object ppEmpresasppField67: TppField
      FieldAlias = 'Banco_Dados'
      FieldName = 'Banco_Dados'
      FieldLength = 50
      DisplayWidth = 50
      Position = 66
    end
    object ppEmpresasppField68: TppField
      FieldAlias = 'Banco_Contabilidade'
      FieldName = 'Banco_Contabilidade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 67
    end
    object ppEmpresasppField69: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente'
      FieldName = 'Ambiente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 68
    end
    object ppEmpresasppField70: TppField
      FieldAlias = 'Licensa_NFE_Util'
      FieldName = 'Licensa_NFE_Util'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 69
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField71: TppField
      FieldAlias = 'Processo_Automatico'
      FieldName = 'Processo_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 70
    end
    object ppEmpresasppField72: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 71
    end
    object ppEmpresasppField73: TppField
      Alignment = taRightJustify
      FieldAlias = 'Apuracao_IPI'
      FieldName = 'Apuracao_IPI'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 72
    end
    object ppEmpresasppField74: TppField
      FieldAlias = 'Perfil_SPED'
      FieldName = 'Perfil_SPED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 73
    end
    object ppEmpresasppField75: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Atividade'
      FieldName = 'Tipo_Atividade'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 74
    end
    object ppEmpresasppField76: TppField
      FieldAlias = 'Vencimento_Certificado'
      FieldName = 'Vencimento_Certificado'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 75
    end
    object ppEmpresasppField77: TppField
      FieldAlias = 'UF_WebService'
      FieldName = 'UF_WebService'
      FieldLength = 10
      DisplayWidth = 10
      Position = 76
    end
    object ppEmpresasppField78: TppField
      Alignment = taRightJustify
      FieldAlias = 'Regime_Apuracao'
      FieldName = 'Regime_Apuracao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 77
    end
    object ppEmpresasppField79: TppField
      FieldAlias = 'Mascara_Processo'
      FieldName = 'Mascara_Processo'
      FieldLength = 7
      DisplayWidth = 7
      Position = 78
    end
    object ppEmpresasppField80: TppField
      FieldAlias = 'Incentivo_Fiscal'
      FieldName = 'Incentivo_Fiscal'
      FieldLength = 20
      DisplayWidth = 20
      Position = 79
    end
    object ppEmpresasppField81: TppField
      FieldAlias = 'Email_SMTP'
      FieldName = 'Email_SMTP'
      FieldLength = 80
      DisplayWidth = 80
      Position = 80
    end
    object ppEmpresasppField82: TppField
      FieldAlias = 'Email_Senha'
      FieldName = 'Email_Senha'
      FieldLength = 30
      DisplayWidth = 30
      Position = 81
    end
    object ppEmpresasppField83: TppField
      FieldAlias = 'Email_MsgEnvioNFE'
      FieldName = 'Email_MsgEnvioNFE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 82
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField84: TppField
      FieldAlias = 'Email_MsgCancelamento'
      FieldName = 'Email_MsgCancelamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 83
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField85: TppField
      Alignment = taRightJustify
      FieldAlias = 'Email_Porta'
      FieldName = 'Email_Porta'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 84
    end
    object ppEmpresasppField86: TppField
      FieldAlias = 'Email_ID'
      FieldName = 'Email_ID'
      FieldLength = 80
      DisplayWidth = 80
      Position = 85
    end
    object ppEmpresasppField87: TppField
      FieldAlias = 'Distribuidora'
      FieldName = 'Distribuidora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 86
    end
    object ppEmpresasppField88: TppField
      FieldAlias = 'Fechamento_Financeiro'
      FieldName = 'Fechamento_Financeiro'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 87
    end
    object ppEmpresasppField89: TppField
      FieldAlias = 'Modulo_Comercial'
      FieldName = 'Modulo_Comercial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 88
    end
    object ppEmpresasppField90: TppField
      FieldAlias = 'Consolidar'
      FieldName = 'Consolidar'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 89
    end
    object ppEmpresasppField91: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pedido_Nota'
      FieldName = 'Pedido_Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 5
      Position = 90
    end
    object ppEmpresasppField92: TppField
      FieldAlias = 'Email_Copia'
      FieldName = 'Email_Copia'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 91
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField93: TppField
      FieldAlias = 'Email_SSL'
      FieldName = 'Email_SSL'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 92
    end
    object ppEmpresasppField94: TppField
      FieldAlias = 'Email_Autenticacao'
      FieldName = 'Email_Autenticacao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 93
    end
    object ppEmpresasppField95: TppField
      FieldAlias = 'Email_Metodo'
      FieldName = 'Email_Metodo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 94
    end
    object ppEmpresasppField96: TppField
      FieldAlias = 'CartaCorrecao_Layout'
      FieldName = 'CartaCorrecao_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 95
    end
    object ppEmpresasppField97: TppField
      FieldAlias = 'CNAE'
      FieldName = 'CNAE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 96
    end
    object ppEmpresasppField98: TppField
      FieldAlias = 'Email_MsgEnvioCCE'
      FieldName = 'Email_MsgEnvioCCE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 97
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField99: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_EletronicaEntrada'
      FieldName = 'Nota_EletronicaEntrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 98
    end
    object ppEmpresasppField100: TppField
      FieldAlias = 'NFEletronica_ModeloEntrada'
      FieldName = 'NFEletronica_ModeloEntrada'
      FieldLength = 2
      DisplayWidth = 2
      Position = 99
    end
    object ppEmpresasppField101: TppField
      FieldAlias = 'NFEletronica_SerieEntrada'
      FieldName = 'NFEletronica_SerieEntrada'
      FieldLength = 3
      DisplayWidth = 3
      Position = 100
    end
    object ppEmpresasppField102: TppField
      FieldAlias = 'NFEletronica_Numeracao'
      FieldName = 'NFEletronica_Numeracao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 101
    end
    object ppEmpresasppField103: TppField
      Alignment = taRightJustify
      FieldAlias = 'Logomarca_Largura'
      FieldName = 'Logomarca_Largura'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 102
    end
    object ppEmpresasppField104: TppField
      FieldAlias = 'Pagamento'
      FieldName = 'Pagamento'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 103
    end
    object ppEmpresasppField105: TppField
      FieldAlias = 'Modulo_Emprestimos'
      FieldName = 'Modulo_Emprestimos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 104
    end
    object ppEmpresasppField106: TppField
      FieldAlias = 'Modulo_XMLCTe'
      FieldName = 'Modulo_XMLCTe'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 105
    end
    object ppEmpresasppField107: TppField
      FieldAlias = 'Regime'
      FieldName = 'Regime'
      FieldLength = 1
      DisplayWidth = 1
      Position = 106
    end
    object ppEmpresasppField108: TppField
      FieldAlias = 'Modulo_Vendas'
      FieldName = 'Modulo_Vendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 107
    end
    object ppEmpresasppField109: TppField
      Alignment = taRightJustify
      FieldAlias = 'CTE_Numero'
      FieldName = 'CTE_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 108
    end
    object ppEmpresasppField110: TppField
      FieldAlias = 'CTE_Modelo'
      FieldName = 'CTE_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 109
    end
    object ppEmpresasppField111: TppField
      FieldAlias = 'CTE_Serie'
      FieldName = 'CTE_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 110
    end
    object ppEmpresasppField112: TppField
      FieldAlias = 'CTE_Layout'
      FieldName = 'CTE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 111
    end
    object ppEmpresasppField113: TppField
      FieldAlias = 'Modulo_Logistica'
      FieldName = 'Modulo_Logistica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 112
    end
    object ppEmpresasppField114: TppField
      FieldAlias = 'Modulo_Boleto'
      FieldName = 'Modulo_Boleto'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 113
    end
    object ppEmpresasppField115: TppField
      FieldAlias = 'Telefone1'
      FieldName = 'Telefone1'
      FieldLength = 11
      DisplayWidth = 11
      Position = 114
    end
    object ppEmpresasppField116: TppField
      FieldAlias = 'Telefone2'
      FieldName = 'Telefone2'
      FieldLength = 11
      DisplayWidth = 11
      Position = 115
    end
    object ppEmpresasppField117: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 11
      DisplayWidth = 11
      Position = 116
    end
    object ppEmpresasppField118: TppField
      FieldAlias = 'Modulo_SISCOMEXWEB'
      FieldName = 'Modulo_SISCOMEXWEB'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 117
    end
    object ppEmpresasppField119: TppField
      FieldAlias = 'Modulo_ECommerce'
      FieldName = 'Modulo_ECommerce'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 118
    end
    object ppEmpresasppField120: TppField
      FieldAlias = 'Modulo_ManifestoDest'
      FieldName = 'Modulo_ManifestoDest'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 119
    end
    object ppEmpresasppField121: TppField
      FieldAlias = 'Manifesto_LayOut'
      FieldName = 'Manifesto_LayOut'
      FieldLength = 10
      DisplayWidth = 10
      Position = 120
    end
    object ppEmpresasppField122: TppField
      FieldAlias = 'UF_WebServiceManifesto'
      FieldName = 'UF_WebServiceManifesto'
      FieldLength = 10
      DisplayWidth = 10
      Position = 121
    end
    object ppEmpresasppField123: TppField
      FieldAlias = 'Modulo_Televendas'
      FieldName = 'Modulo_Televendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 122
    end
    object ppEmpresasppField124: TppField
      FieldAlias = 'Email_MsgOrcamento'
      FieldName = 'Email_MsgOrcamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 123
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField125: TppField
      FieldAlias = 'Email_MsgBoleto'
      FieldName = 'Email_MsgBoleto'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 124
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField126: TppField
      FieldAlias = 'PISCOFINS_F100'
      FieldName = 'PISCOFINS_F100'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 125
    end
    object ppEmpresasppField127: TppField
      FieldAlias = 'Logo'
      FieldName = 'Logo'
      FieldLength = 120
      DisplayWidth = 120
      Position = 126
    end
    object ppEmpresasppField128: TppField
      FieldAlias = 'Modulo_ConsultaProdutos'
      FieldName = 'Modulo_ConsultaProdutos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 127
    end
    object ppEmpresasppField129: TppField
      FieldAlias = 'Modulo_Contabil'
      FieldName = 'Modulo_Contabil'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 128
    end
    object ppEmpresasppField130: TppField
      FieldAlias = 'Modulo_EnviarArmazem'
      FieldName = 'Modulo_EnviarArmazem'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 129
    end
    object ppEmpresasppField131: TppField
      FieldAlias = 'Versao_DLL'
      FieldName = 'Versao_DLL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 130
    end
    object ppEmpresasppField132: TppField
      FieldAlias = 'Desativada'
      FieldName = 'Desativada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 131
    end
    object ppEmpresasppField133: TppField
      FieldAlias = 'Menu_Inventario'
      FieldName = 'Menu_Inventario'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 132
    end
    object ppEmpresasppField134: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_GNRE'
      FieldName = 'Ambiente_GNRE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 133
    end
    object ppEmpresasppField135: TppField
      FieldAlias = 'GNRE_Layout'
      FieldName = 'GNRE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 134
    end
    object ppEmpresasppField136: TppField
      FieldAlias = 'Modulo_GNRE'
      FieldName = 'Modulo_GNRE'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 135
    end
    object ppEmpresasppField137: TppField
      FieldAlias = 'Modulo_DadosDI'
      FieldName = 'Modulo_DadosDI'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 136
    end
    object ppEmpresasppField138: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Qualificacao'
      FieldName = 'Contador_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 137
    end
    object ppEmpresasppField139: TppField
      FieldAlias = 'Contador_CRCUF'
      FieldName = 'Contador_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 138
    end
    object ppEmpresasppField140: TppField
      FieldAlias = 'Contador_CRCData'
      FieldName = 'Contador_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 139
    end
    object ppEmpresasppField141: TppField
      FieldAlias = 'NIRE'
      FieldName = 'NIRE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 140
    end
    object ppEmpresasppField142: TppField
      FieldAlias = 'Fechamento_FinanceiroFinal'
      FieldName = 'Fechamento_FinanceiroFinal'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 141
    end
    object ppEmpresasppField143: TppField
      Alignment = taRightJustify
      FieldAlias = 'SPED_CTAPlanoRef'
      FieldName = 'SPED_CTAPlanoRef'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 142
    end
    object ppEmpresasppField144: TppField
      FieldAlias = 'Contador_CRCSequencial'
      FieldName = 'Contador_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 143
    end
    object ppEmpresasppField145: TppField
      FieldAlias = 'Refis'
      FieldName = 'Refis'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 144
    end
    object ppEmpresasppField146: TppField
      FieldAlias = 'Paes'
      FieldName = 'Paes'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 145
    end
    object ppEmpresasppField147: TppField
      Alignment = taRightJustify
      FieldAlias = 'Forma_Tributacao'
      FieldName = 'Forma_Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 146
    end
    object ppEmpresasppField148: TppField
      FieldAlias = 'Extincao_RTT'
      FieldName = 'Extincao_RTT'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 147
    end
    object ppEmpresasppField149: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtde_SCP'
      FieldName = 'Qtde_SCP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 148
    end
    object ppEmpresasppField150: TppField
      FieldAlias = 'Natureza_Juridica'
      FieldName = 'Natureza_Juridica'
      FieldLength = 10
      DisplayWidth = 10
      Position = 149
    end
    object ppEmpresasppField151: TppField
      FieldAlias = 'NIRE_Data'
      FieldName = 'NIRE_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 150
    end
    object ppEmpresasppField152: TppField
      FieldAlias = 'Representante_Bairro'
      FieldName = 'Representante_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 151
    end
    object ppEmpresasppField153: TppField
      FieldAlias = 'Representante_CEP'
      FieldName = 'Representante_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 152
    end
    object ppEmpresasppField154: TppField
      FieldAlias = 'Representante_CNPJ'
      FieldName = 'Representante_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 153
    end
    object ppEmpresasppField155: TppField
      FieldAlias = 'Representante_Complemento'
      FieldName = 'Representante_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 154
    end
    object ppEmpresasppField156: TppField
      FieldAlias = 'Representante_CPF'
      FieldName = 'Representante_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 155
    end
    object ppEmpresasppField157: TppField
      FieldAlias = 'Representante_CRC'
      FieldName = 'Representante_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 156
    end
    object ppEmpresasppField158: TppField
      FieldAlias = 'Representante_CRCData'
      FieldName = 'Representante_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 157
    end
    object ppEmpresasppField159: TppField
      FieldAlias = 'Representante_CRCSequencial'
      FieldName = 'Representante_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 158
    end
    object ppEmpresasppField160: TppField
      FieldAlias = 'Representante_CRCUF'
      FieldName = 'Representante_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 159
    end
    object ppEmpresasppField161: TppField
      FieldAlias = 'Representante_Email'
      FieldName = 'Representante_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 160
    end
    object ppEmpresasppField162: TppField
      FieldAlias = 'Representante_Estado'
      FieldName = 'Representante_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 161
    end
    object ppEmpresasppField163: TppField
      FieldAlias = 'Representante_FAX'
      FieldName = 'Representante_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 162
    end
    object ppEmpresasppField164: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Municipio'
      FieldName = 'Representante_Municipio'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 163
    end
    object ppEmpresasppField165: TppField
      FieldAlias = 'Representante_Nome'
      FieldName = 'Representante_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 164
    end
    object ppEmpresasppField166: TppField
      FieldAlias = 'Representante_Numero'
      FieldName = 'Representante_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 165
    end
    object ppEmpresasppField167: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Qualificacao'
      FieldName = 'Representante_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 166
    end
    object ppEmpresasppField168: TppField
      FieldAlias = 'Representante_Rua'
      FieldName = 'Representante_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 167
    end
    object ppEmpresasppField169: TppField
      FieldAlias = 'Representante_Telefone'
      FieldName = 'Representante_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 168
    end
    object ppEmpresasppField170: TppField
      FieldAlias = 'Contador_SignatarioResp'
      FieldName = 'Contador_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 169
    end
    object ppEmpresasppField171: TppField
      FieldAlias = 'Representante_SignatarioResp'
      FieldName = 'Representante_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 170
    end
    object ppEmpresasppField172: TppField
      FieldAlias = 'Autorizacao_NFECNPJ'
      FieldName = 'Autorizacao_NFECNPJ'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 171
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField173: TppField
      FieldAlias = 'Autorizacao_NFECPF'
      FieldName = 'Autorizacao_NFECPF'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 172
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField174: TppField
      Alignment = taRightJustify
      FieldAlias = 'Encerramento_Contabil'
      FieldName = 'Encerramento_Contabil'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 173
    end
  end
  object tLanc: TMSQuery
    Connection = Dados.Banco_Contabilidade
    Left = 176
    Top = 8
  end
  object tEmpresas: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT Codigo, '
      
        '       SUBSTRING(CNPJ,1,2)+'#39'.'#39'+SUBSTRING(CNPJ,3,3)+'#39'.'#39'+SUBSTRING' +
        '(CNPJ,6,3)+'#39'/'#39'+SUBSTRING(CNPJ,9,4)+'#39'-'#39'+SUBSTRING(CNPJ,13,2) AS C' +
        'NPJ, '
      '       Razao_Social, '
      '       Numero_Filial, '
      '       Estado,'
      '       Banco_Dados'
      'FROM Empresas ORDER BY CNPJ')
    FetchRows = 1
    Left = 296
    Top = 8
    object tEmpresasCodigo: TIntegerField
      DisplayWidth = 3
      FieldName = 'Codigo'
      Origin = 'Empresas.Codigo'
    end
    object tEmpresasCNPJ: TStringField
      DisplayWidth = 12
      FieldName = 'CNPJ'
      Origin = '.'
      Size = 18
    end
    object tEmpresasRazao_Social: TStringField
      DisplayWidth = 35
      FieldName = 'Razao_Social'
      Origin = 'Empresas.Razao_Social'
      Size = 50
    end
    object tEmpresasNumero_Filial: TSmallintField
      DisplayWidth = 2
      FieldName = 'Numero_Filial'
      Origin = 'Empresas.Numero_Filial'
    end
    object tEmpresasEstado: TStringField
      FieldName = 'Estado'
      Origin = 'Empresas.Estado'
      Size = 2
    end
    object tEmpresasBanco_Dados: TStringField
      FieldName = 'Banco_Dados'
      Size = 50
    end
  end
  object dstEmpresas: TDataSource
    DataSet = tEmpresas
    Left = 296
    Top = 56
  end
  object tBalancete: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      '-- PLANO NORMAL'
      'SELECT PC.Conta'
      '      ,PC.Codigo'
      '      ,PC.Descricao'
      '      ,PC.Sintetica'
      '      ,PC.Saldo_Anterior'
      '      ,PC.Tipo_Terceiros'
      '      ,PC.Codigo_Terceiros'
      '      ,PC.Natureza'
      
        '      ,Debito            = ISNULL((SELECT SUM(Valor) FROM Lancam' +
        'entos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codi' +
        'go AND LAN.Data BETWEEN '#39'01/01/2016'#39' AND '#39'31/12/2016'#39'), 0)'
      
        '      ,Credito           = ISNULL((SELECT SUM(Valor) FROM Lancam' +
        'entos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codi' +
        'go AND LAN.Data BETWEEN '#39'01/01/2016'#39' AND '#39'31/12/2016'#39'), 0)'
      '      ,Atualiza_Anterior = ISNULL(PC.Saldo_Anterior, 0) -'
      
        '                           ISNULL((SELECT SUM(Valor) FROM Lancam' +
        'entos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codi' +
        'go AND LAN.Data < '#39'01/01/2016'#39'), 0) +'
      
        '                           ISNULL((SELECT SUM(Valor) FROM Lancam' +
        'entos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codi' +
        'go AND LAN.Data < '#39'01/01/2016'#39'), 0)'
      
        '      ,Atualiza_Debito   = ISNULL((SELECT SUM(Valor) FROM Lancam' +
        'entos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Debito  = PC.Codi' +
        'go AND LAN.Data < '#39'01/01/2016'#39'), 0)'
      
        '      ,Atualiza_Credito  = ISNULL((SELECT SUM(Valor) FROM Lancam' +
        'entos LAN WHERE PC.Sintetica = 0 AND LAN.Conta_Credito = PC.Codi' +
        'go AND LAN.Data < '#39'01/01/2016'#39'), 0)'
      '      ,Saldo_Atual       = CAST(0 AS money)'
      '      ,DC_Anterior       = '#39' '#39' '
      '      ,DC_Atual          = '#39' '#39' '
      'INTO   #PlanoTmp'
      'FROM   PlanoContas PC'
      'WHERE  Conta IS NOT NULL'
      '-- TOTALIZANDO CONTAS TITULO'
      
        'UPDATE #PlanoTmp SET Debito            = ISNULL((SELECT SUM(Debi' +
        'to)            FROM #PlanoTmp PT WHERE PT.Conta LIKE RTRIM(#Plan' +
        'oTmp.Conta)+'#39'%'#39' AND PT.Sintetica = 0), 0)'
      
        '                    ,Credito           = ISNULL((SELECT SUM(Cred' +
        'ito)           FROM #PlanoTmp PT WHERE PT.Conta LIKE RTRIM(#Plan' +
        'oTmp.Conta)+'#39'%'#39' AND PT.Sintetica = 0), 0)'
      
        '                    ,Atualiza_Anterior = ISNULL((SELECT SUM(Atua' +
        'liza_Anterior) FROM #PlanoTmp PT WHERE PT.Conta LIKE RTRIM(#Plan' +
        'oTmp.Conta)+'#39'%'#39' AND PT.Sintetica = 0), 0)'
      'WHERE(#PlanoTmp.Sintetica = 1)'
      '-- TOTALIZANDO GRUPOS DE TERCEIROS'
      
        'UPDATE #PlanoTmp SET Debito            = ISNULL((SELECT SUM(Debi' +
        'to)            FROM #PlanoTmp PT WHERE PT.Conta LIKE RTRIM(#Plan' +
        'oTmp.Conta)+'#39'%'#39' AND PT.Sintetica = 0 AND'
      
        '                                         PT.Tipo_Terceiros = #Pl' +
        'anoTmp.Tipo_Terceiros AND ISNULL(PT.Codigo_Terceiros, '#39#39') <> '#39#39')' +
        ', 0)'
      
        '                    ,Credito           = ISNULL((SELECT SUM(Cred' +
        'ito)           FROM #PlanoTmp PT WHERE PT.Conta LIKE RTRIM(#Plan' +
        'oTmp.Conta)+'#39'%'#39' AND PT.Sintetica = 0 AND'
      
        '                                         PT.Tipo_Terceiros = #Pl' +
        'anoTmp.Tipo_Terceiros AND ISNULL(PT.Codigo_Terceiros, '#39#39') <> '#39#39')' +
        ', 0)'
      
        '                    ,Atualiza_Anterior = ISNULL((SELECT SUM(Atua' +
        'liza_Anterior) FROM #PlanoTmp PT WHERE PT.Conta LIKE RTRIM(#Plan' +
        'oTmp.Conta)+'#39'%'#39' AND PT.Sintetica = 0 AND'
      
        '                                         PT.Tipo_Terceiros = #Pl' +
        'anoTmp.Tipo_Terceiros AND ISNULL(PT.Codigo_Terceiros, '#39#39') <> '#39#39')' +
        ', 0)'
      'WHERE ISNULL(#PlanoTmp.Tipo_Terceiros, '#39#39')  <> '#39#39' '
      'AND   ISNULL(#PlanoTmp.Codigo_Terceiros, '#39#39') = '#39#39' '
      
        'UPDATE #PlanoTmp SET Saldo_Atual = (Atualiza_Anterior - Debito +' +
        ' Credito)'
      
        'UPDATE #PlanoTmp SET DC_Anterior = CASE WHEN Atualiza_Anterior <' +
        ' 0 THEN '#39'D'#39' ELSE '#39'C'#39' END'
      
        '                    ,DC_Atual    = CASE WHEN Saldo_Atual       <' +
        ' 0 THEN '#39'D'#39' ELSE '#39'C'#39' END'
      'SELECT Conta'
      '      ,Codigo'
      '      ,Descricao'
      '      ,Sintetica'
      '      ,Tipo_Terceiros'
      '      ,Natureza'
      '      ,Saldo_Anterior = Atualiza_Anterior'
      '      ,DC_Anterior'
      '      ,Debito'
      '      ,Credito'
      '      ,Saldo_Atual'
      '      ,Grupo = SUBSTRING(Conta,1,1)'
      '      ,DC_Atual'
      'FROM   #PlanoTmp'
      'WHERE  Conta IS NOT NULL'
      'AND Saldo_Atual != 0'
      'AND (Debito     != 0 OR Credito != 0)'
      'AND ISNULL(Codigo_Terceiros, '#39#39') = '#39#39' '
      'ORDER BY Conta, Sintetica desc'
      'DROP TABLE #PlanoTmp')
    FetchRows = 1
    Left = 216
    Top = 8
  end
  object dstBalancete: TDataSource
    DataSet = tBalancete
    Left = 216
    Top = 56
  end
end
