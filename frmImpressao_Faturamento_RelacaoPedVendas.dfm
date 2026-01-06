object Impressao_Faturamento_RelacaoPedVendas: TImpressao_Faturamento_RelacaoPedVendas
  Left = 804
  Top = 299
  BorderStyle = bsDialog
  Caption = 'Impressao_Faturamento_RelacaoPedVendas'
  ClientHeight = 388
  ClientWidth = 734
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 734
    Height = 45
    Align = alTop
    Stretch = True
    ExplicitTop = -5
    ExplicitWidth = 510
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 207
    Height = 21
    Caption = 'IMPRESS'#195'O - FATURAMENTO'
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
    Width = 125
    Height = 18
    Caption = 'Rela'#231#227'o de pedidos.'
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
    Top = 356
    Width = 734
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitWidth = 633
    object Button1: TButton
      AlignWithMargins = True
      Left = 509
      Top = 2
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Limpar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Button1Click
      ExplicitLeft = 408
    end
    object bSair: TButton
      AlignWithMargins = True
      Left = 659
      Top = 2
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
      ExplicitLeft = 558
    end
    object bImprimir: TButton
      AlignWithMargins = True
      Left = 584
      Top = 2
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bImprimirClick
      ExplicitLeft = 483
    end
  end
  object StaticText1: TStaticText
    Left = 10
    Top = 56
    Width = 112
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
  object cDataIni: TDateEdit
    Left = 124
    Top = 56
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
    TabOrder = 2
    OnExit = cDataIniExit
  end
  object StaticText2: TStaticText
    Left = 232
    Top = 56
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
    TabOrder = 3
    Transparent = False
    StyleElements = []
  end
  object cDataFim: TDateEdit
    Left = 304
    Top = 56
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
    TabOrder = 4
  end
  object StaticText7: TStaticText
    Left = 10
    Top = 79
    Width = 112
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Representante'
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
  object cRepresentante: TRxDBLookupCombo
    Left = 124
    Top = 79
    Width = 600
    Height = 21
    DropDownCount = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo;CNPJ;NOME'
    LookupDisplayIndex = 2
    LookupSource = dstRepresentantes
    ParentFont = False
    TabOrder = 6
  end
  object StaticText3: TStaticText
    Left = 10
    Top = 102
    Width = 112
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
    TabOrder = 7
    Transparent = False
    StyleElements = []
  end
  object cCliente: TRxDBLookupCombo
    Left = 124
    Top = 102
    Width = 600
    Height = 21
    DropDownCount = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo;CNPJ;NOME'
    LookupDisplayIndex = 2
    LookupSource = dstClientes
    ParentFont = False
    TabOrder = 8
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 140
    Width = 175
    Height = 196
    Caption = 'Situa'#231#227'o do Pedido'
    TabOrder = 9
    object cLib: TCheckBox
      Left = 11
      Top = 41
      Width = 138
      Height = 17
      Caption = 'Liberados p/Separa'#231#227'o'
      TabOrder = 0
    end
    object cEmSep: TCheckBox
      Left = 11
      Top = 59
      Width = 138
      Height = 17
      Caption = 'Em separa'#231#227'o'
      TabOrder = 1
    end
    object cSep: TCheckBox
      Left = 11
      Top = 77
      Width = 138
      Height = 17
      Caption = 'Separados'
      TabOrder = 2
    end
    object cEmFat: TCheckBox
      Left = 11
      Top = 95
      Width = 138
      Height = 17
      Caption = 'Em Faturamento'
      TabOrder = 3
    end
    object cFat: TCheckBox
      Left = 11
      Top = 113
      Width = 138
      Height = 17
      Caption = 'Faturados'
      TabOrder = 4
    end
    object cDesp: TCheckBox
      Left = 11
      Top = 131
      Width = 138
      Height = 17
      Caption = 'Despachados'
      TabOrder = 5
    end
    object cBai: TCheckBox
      Left = 11
      Top = 149
      Width = 138
      Height = 17
      Caption = 'Baixados'
      TabOrder = 6
    end
    object cCancel: TCheckBox
      Left = 11
      Top = 167
      Width = 138
      Height = 17
      Caption = 'Cancelados'
      TabOrder = 7
    end
    object cAguard: TCheckBox
      Left = 11
      Top = 23
      Width = 138
      Height = 17
      Caption = 'Aguardando Libera'#231#227'o'
      TabOrder = 8
    end
  end
  object rRelacao: TppReport
    AutoStop = False
    DataPipeline = pPedidos
    NoDataBehaviors = [ndMessageDialog, ndBlankPage]
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Rela'#231#227'o de Pedidos'
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
      'C:\Sistemas\Faturamento\Codigo_Fonte\Relatorios\Pedidos_Relacao.' +
      'rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
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
    Left = 425
    Top = 292
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pPedidos'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 19844
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pEmpresas'
        mmHeight = 4995
        mmLeft = 30696
        mmTop = 0
        mmWidth = 252938
        BandType = 0
        LayerName = Foreground1
      end
      object lTitulo: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lTitulo'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Rela'#231#227'o de pedidos de vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 30696
        mmTop = 6084
        mmWidth = 252938
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
        mmHeight = 17727
        mmLeft = 0
        mmTop = 0
        mmWidth = 30167
        BandType = 0
        LayerName = Foreground1
      end
      object lPeriodo: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lTitulo1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 
          'p/Sepra'#231#227'o | Em Sepra'#231#227'o | Separados | Em Faturamento | Faturado' +
          's | Despachados | Baixados | Cancelados |'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3943
        mmLeft = 30695
        mmTop = 15787
        mmWidth = 252938
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
      mmHeight = 21167
      mmPrintPosition = 0
      object lSituacao: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lSituacao'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'FATURADO'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 5821
        mmLeft = 91546
        mmTop = 6087
        mmWidth = 97367
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Pedido_Pai'
        DataPipeline = pPedidos
        DisplayFormat = '000000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3471
        mmLeft = 31485
        mmTop = 3599
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'Data'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 66675
        mmTop = 159
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'Cliente_Nome'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 122238
        mmTop = 159
        mmWidth = 72496
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'Origem_Pedido'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3471
        mmLeft = 225690
        mmTop = 7038
        mmWidth = 57679
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Nota'
        DataPipeline = pPedidos
        DisplayFormat = '000000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3471
        mmLeft = 31485
        mmTop = 7038
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'Endereco_Entrega'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 31485
        mmTop = 13917
        mmWidth = 163248
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText101'
        Border.mmPadding = 0
        DataField = 'Condicao_Pgto'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 225690
        mmTop = 159
        mmWidth = 57679
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'Condicao_Frete'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 31485
        mmTop = 10478
        mmWidth = 53446
        BandType = 4
        LayerName = Foreground1
      end
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'pitens'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 17621
        mmWidth = 284300
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = pitens
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Rela'#231#227'o de Pedidos'
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
          DataPipelineName = 'pitens'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 3704
            mmPrintPosition = 0
            object ppLabel12: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label12'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'C'#211'DIGO'
              Color = 10440704
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3801
              mmLeft = 0
              mmTop = 0
              mmWidth = 19350
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel14: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label14'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'DESCRI'#199#195'O'
              Color = 10440704
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3801
              mmLeft = 19578
              mmTop = 0
              mmWidth = 126871
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel13: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label13'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'QTDE'
              Color = 10440704
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3801
              mmLeft = 146947
              mmTop = 0
              mmWidth = 16695
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel16: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label16'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'UNIT'#193'RIO'
              Color = 10440704
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3801
              mmLeft = 164351
              mmTop = 0
              mmWidth = 18745
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel19: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label19'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'UNIT C/IMP'
              Color = 10440704
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3801
              mmLeft = 206271
              mmTop = 0
              mmWidth = 21410
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel20: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label20'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'DESCONTOS'
              Color = 10440704
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3801
              mmLeft = 228387
              mmTop = 0
              mmWidth = 30332
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel21: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label201'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'TOTAL'
              Color = 10440704
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3801
              mmLeft = 259418
              mmTop = 0
              mmWidth = 23978
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel4: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label4'
              AutoSize = False
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.mmPadding = 0
              Caption = 'TOTAL'
              Color = 10440704
              Font.Charset = ANSI_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3801
              mmLeft = 183861
              mmTop = 0
              mmWidth = 21521
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
            mmHeight = 3969
            mmPrintPosition = 0
            object ppDBText13: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText13'
              Border.mmPadding = 0
              DataField = 'Codigo_Mercadoria'
              DataPipeline = pitens
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pitens'
              mmHeight = 3810
              mmLeft = 0
              mmTop = 0
              mmWidth = 19350
              BandType = 4
              LayerName = Foreground
            end
            object ppDBRichText1: TppDBRichText
              DesignLayer = ppDesignLayer1
              UserName = 'DBRichText1'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              Border.mmPadding = 0
              ExportRTFAsBitmap = False
              DataField = 'Descricao_Mercadoria'
              DataPipeline = pitens
              RemoveEmptyLines = False
              Transparent = True
              DataPipelineName = 'pitens'
              mmHeight = 3810
              mmLeft = 19578
              mmTop = 0
              mmWidth = 126871
              BandType = 4
              LayerName = Foreground
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
            end
            object ppDBText14: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText14'
              Border.mmPadding = 0
              DataField = 'Quantidade'
              DataPipeline = pitens
              DisplayFormat = ',##0.000'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pitens'
              mmHeight = 3810
              mmLeft = 146947
              mmTop = 0
              mmWidth = 16695
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText15: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText15'
              Border.mmPadding = 0
              DataField = 'Valor_Unitario'
              DataPipeline = pitens
              DisplayFormat = ',##0.0000'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pitens'
              mmHeight = 3810
              mmLeft = 164351
              mmTop = 0
              mmWidth = 18390
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText16: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText16'
              Border.mmPadding = 0
              DataField = 'Valor_Impostos'
              DataPipeline = pitens
              DisplayFormat = ',##0.0000'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pitens'
              mmHeight = 3810
              mmLeft = 206271
              mmTop = 0
              mmWidth = 21410
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText17: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText17'
              Border.mmPadding = 0
              DataField = 'Perc_Desconto'
              DataPipeline = pitens
              DisplayFormat = ',##0.00%'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pitens'
              mmHeight = 3810
              mmLeft = 228387
              mmTop = 0
              mmWidth = 10549
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText18: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText18'
              Border.mmPadding = 0
              DataField = 'Valor_Desconto'
              DataPipeline = pitens
              DisplayFormat = ',##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pitens'
              mmHeight = 3810
              mmLeft = 239413
              mmTop = 0
              mmWidth = 19479
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText19: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText19'
              Border.mmPadding = 0
              DataField = 'Valor_Total'
              DataPipeline = pitens
              DisplayFormat = ',##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pitens'
              mmHeight = 3810
              mmLeft = 259418
              mmTop = 0
              mmWidth = 23978
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText23: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText23'
              Border.mmPadding = 0
              DataField = 'Valor_Liquido'
              DataPipeline = pitens
              DisplayFormat = ',##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pitens'
              mmHeight = 3810
              mmLeft = 183861
              mmTop = 0
              mmWidth = 21521
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 8202
            mmPrintPosition = 0
            object ppLine8: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line8'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              StretchWithParent = True
              mmHeight = 1323
              mmLeft = 0
              mmTop = 6879
              mmWidth = 284428
              BandType = 7
              LayerName = Foreground
            end
            object ppLine9: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line9'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              StretchWithParent = True
              Visible = False
              mmHeight = 1323
              mmLeft = 0
              mmTop = 0
              mmWidth = 284428
              BandType = 7
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
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PEDIDO PAI:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3471
        mmLeft = 0
        mmTop = 3599
        mmWidth = 30956
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label22'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'EMISS'#195'O:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 52652
        mmTop = 159
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label23'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NOTA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 7038
        mmWidth = 30956
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label24'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'EMISS'#195'O:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 52652
        mmTop = 7038
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText20'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Data_Nota'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 66675
        mmTop = 7038
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label25'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DESTINAT'#193'RIO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 103452
        mmTop = 159
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label26'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'COND.PGTO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 196057
        mmTop = 159
        mmWidth = 29104
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label27'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'COND.FRETE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 10478
        mmWidth = 30956
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label28'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'END.ENTREGA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 13917
        mmWidth = 30956
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label29'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ORIGEM:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 196057
        mmTop = 7038
        mmWidth = 29104
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label301'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TOTAL DO PEDIDO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 196057
        mmTop = 13917
        mmWidth = 29104
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText21'
        Border.mmPadding = 0
        DataField = 'Total_Pedido'
        DataPipeline = pPedidos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 225690
        mmTop = 13917
        mmWidth = 28047
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText22'
        Border.mmPadding = 0
        DataField = 'Pedido'
        DataPipeline = pPedidos
        DisplayFormat = '000000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3471
        mmLeft = 31485
        mmTop = 159
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PEDIDO REPRESENTANTE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3471
        mmLeft = 0
        mmTop = 159
        mmWidth = 30956
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText24'
        Border.mmPadding = 0
        DataField = 'Processo'
        DataPipeline = pPedidos
        DisplayFormat = '000000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 225759
        mmTop = 3599
        mmWidth = 34041
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PROCESSO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 196116
        mmTop = 3599
        mmWidth = 29111
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
      object ppLabel63: TppLabel
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
        mmLeft = 130440
        mmTop = 529
        mmWidth = 26988
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
        mmLeft = 158221
        mmTop = 528
        mmWidth = 24077
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3175
        mmLeft = 46831
        mmTop = 265
        mmWidth = 5821
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 268288
        mmTop = 528
        mmWidth = 15610
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 283898
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3175
        mmLeft = 263790
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'Total_Pedido'
        DataPipeline = pPedidos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 3471
        mmLeft = 225690
        mmTop = 3409
        mmWidth = 28047
        BandType = 7
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TOTAL GERAL:'
        Color = clBlack
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3471
        mmLeft = 795
        mmTop = 3409
        mmWidth = 224105
        BandType = 7
        LayerName = Foreground1
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Representante_Nome'
      DataPipeline = pPedidos
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'pPedidos'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Color = 10440704
        Background.Gradient.EndColor = 4194432
        Background.Gradient.StartColor = 8388863
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppDBText6: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText6'
          Border.mmPadding = 0
          DataField = 'Representante_Nome'
          DataPipeline = pPedidos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          VerticalAlignment = avCenter
          DataPipelineName = 'pPedidos'
          mmHeight = 3115
          mmLeft = 26988
          mmTop = 589
          mmWidth = 250032
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel3: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label3'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'REPRESENTANTE:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          VerticalAlignment = avCenter
          mmHeight = 3168
          mmLeft = 1435
          mmTop = 589
          mmWidth = 25255
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppLabel7: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label7'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'TOTAL DO REPRESENTANTE:'
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          VerticalAlignment = avCenter
          mmHeight = 3440
          mmLeft = 0
          mmTop = 529
          mmWidth = 223310
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBCalc2: TppDBCalc
          DesignLayer = ppDesignLayer2
          UserName = 'DBCalc2'
          Border.mmPadding = 0
          DataField = 'Total_Pedido'
          DataPipeline = pPedidos
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          VerticalAlignment = avCenter
          DataPipelineName = 'pPedidos'
          mmHeight = 3471
          mmLeft = 225690
          mmTop = 529
          mmWidth = 28047
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
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
  object pPedidos: TppDBPipeline
    DataSource = dstPedidos
    CloseDataSource = True
    UserName = 'pPedidos'
    Left = 425
    Top = 244
    object pPedidosppField1: TppField
      FieldAlias = 'Pedido'
      FieldName = 'Pedido'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object pPedidosppField2: TppField
      FieldAlias = 'Pedido_Pai'
      FieldName = 'Pedido_Pai'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object pPedidosppField3: TppField
      FieldAlias = 'Pedido_Pai2'
      FieldName = 'Pedido_Pai2'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object pPedidosppField4: TppField
      FieldAlias = 'Data'
      FieldName = 'Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object pPedidosppField5: TppField
      FieldAlias = 'Saida_Entrada'
      FieldName = 'Saida_Entrada'
      FieldLength = 5
      DisplayWidth = 5
      Position = 4
    end
    object pPedidosppField6: TppField
      FieldAlias = 'Cliente_Nome'
      FieldName = 'Cliente_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object pPedidosppField7: TppField
      FieldAlias = 'Representante_Nome'
      FieldName = 'Representante_Nome'
      FieldLength = 60
      DisplayWidth = 60
      Position = 6
    end
    object pPedidosppField8: TppField
      FieldAlias = 'Total_Pedido'
      FieldName = 'Total_Pedido'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 7
    end
    object pPedidosppField9: TppField
      FieldAlias = 'Origem_Pedido'
      FieldName = 'Origem_Pedido'
      FieldLength = 10
      DisplayWidth = 10
      Position = 8
    end
    object pPedidosppField10: TppField
      FieldAlias = 'Matriz_Filial'
      FieldName = 'Matriz_Filial'
      FieldLength = 6
      DisplayWidth = 6
      Position = 9
    end
    object pPedidosppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota'
      FieldName = 'Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object pPedidosppField12: TppField
      FieldAlias = 'Data_Nota'
      FieldName = 'Data_Nota'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 11
    end
    object pPedidosppField13: TppField
      FieldAlias = 'Condicao_Pgto'
      FieldName = 'Condicao_Pgto'
      FieldLength = 40
      DisplayWidth = 40
      Position = 12
    end
    object pPedidosppField14: TppField
      FieldAlias = 'Condicao_Frete'
      FieldName = 'Condicao_Frete'
      FieldLength = 35
      DisplayWidth = 35
      Position = 13
    end
  end
  object pEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    CloseDataSource = True
    UserName = 'pEmpresas'
    Left = 425
    Top = 148
  end
  object tRepresentantes: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Codigo'
      '      ,Nome'
      '      ,CNPJ '
      'FROM Fornecedores '
      'ORDER BY Nome')
    Left = 343
    Top = 148
    object tRepresentantesCodigo: TIntegerField
      DisplayWidth = 5
      FieldName = 'Codigo'
    end
    object tRepresentantesNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object tRepresentantesCNPJ: TStringField
      DisplayWidth = 12
      FieldName = 'CNPJ'
      Size = 14
    end
  end
  object dstRepresentantes: TDataSource
    DataSet = tRepresentantes
    Left = 343
    Top = 196
  end
  object tItens: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT  Pedido'
      '       ,Codigo_Mercadoria'
      '       ,Descricao_Mercadoria'
      '       ,Quantidade'
      '       ,Valor_Unitario'
      
        '       ,Valor_Impostos = Valor_Unitario + ISNULL(Valor_IPI, 0) +' +
        ' ISNULL(Valor_ICMSSub, 0)'
      '       ,Valor_Total'
      '       ,Valor_Desconto = ISNULL(Desconto_Valor, 0)'
      '       ,Perc_Desconto  = ISNULL(Desconto, 0)'
      '       ,Peso_Liquido'
      '       ,Peso_Bruto'
      'FROM PedidosItens')
    Left = 255
    Top = 244
  end
  object dstItens: TDataSource
    DataSet = tItens
    Left = 255
    Top = 292
  end
  object pitens: TppDBPipeline
    DataSource = dstItens
    CloseDataSource = True
    UserName = 'pitens'
    Left = 425
    Top = 196
  end
  object dstPedidos: TDataSource
    DataSet = tPedidos
    Left = 255
    Top = 196
  end
  object tPedidos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Pedido'
      '      ,Pedido_Pai'
      '      ,Pedido_Pai2'
      '      ,pr.Data'
      '      ,Saida_Entrada = '#39'SA'#205'DA'#39' '
      '      ,pr.Cliente_Nome'
      
        '      ,Representante_Nome = (select Nome from Fornecedores where' +
        ' Codigo = Representante)'
      '      ,pr.Total_Pedido'
      '      ,Origem_Pedido'
      
        '      ,Matriz_Filial = iif((select Numero_Filial from Cybersoft_' +
        'Cadastros.dbo.Empresas where Codigo = 22) = 0, '#39'MATRIZ'#39', cast((s' +
        'elect Numero_Filial from Cybersoft_Cadastros.dbo.Empresas where ' +
        'Codigo = 22) as varchar(6)))'
      
        '      ,Nota = (select Numero from NotasFiscais nf where nf.Pedid' +
        'o_Representante = pr.Pedido and nf.Cancelada <> 1 and Nfe_Denega' +
        'da <> 1)'
      
        '      ,Data_Nota = (select Data_Emissao from NotasFiscais nf whe' +
        're nf.Pedido_Representante = pr.Pedido and nf.Cancelada <> 1 and' +
        ' Nfe_Denegada <> 1)'
      
        '      ,Condicao_Pgto = (select Descricao from Cybersoft_Cadastro' +
        's.dbo.ModalidadesPagamento where Codigo = Modalidade_Pagamento)'
      
        '      ,Condicao_Frete = case when Modalidade_Frete = 0 then '#39'Por' +
        ' conta do emitente'#39' '
      
        '                             when Modalidade_Frete = 1 then '#39'Por' +
        ' conta do destinat'#225'rio/remetente'#39' '
      
        '                             when Modalidade_Frete = 2 then '#39'Por' +
        ' conta de terceiros'#39' '
      
        '                             when Modalidade_Frete = 9 then '#39'Sem' +
        ' cobran'#231'a de frete'#39' '
      '                        end'
      'from PedidosRepresentantes pr'
      'where pr.Pedido is not null'
      'and pr.Data between '#39'07/01/2025'#39' and '#39'07/31/2025'#39
      'order by Representante_Nome, Data, Pedido')
    Active = True
    Left = 255
    Top = 148
  end
  object tClientes: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Codigo'
      '      ,Nome = ltrim(rtrim(Nome))'
      '      ,CNPJ = case when isnull(CNPJ, '#39#39') <> '#39#39' then'
      
        '                   substring(CNPJ, 1, 2)+'#39'.'#39'+substring(CNPJ, 3, ' +
        '3)+'#39'.'#39'+substring(CNPJ, 6, 3)+'#39'/'#39'+substring(CNPJ, 9, 4)+'#39'-'#39'+subst' +
        'ring(CNPJ, 13, 2)'
      '              else'
      
        '                   substring(CPF, 1, 3)+'#39'.'#39'+substring(CPF, 4, 3)' +
        '+'#39'.'#39'+substring(CPF, 7, 3)+'#39'-'#39'+substring(CPF, 10, 2)'
      '              end'
      'from Clientes'
      
        'where Codigo in(select distinct Cliente from pedidosRepresentant' +
        'es)'
      'order by Nome')
    Left = 343
    Top = 244
    object tClientesCodigo: TIntegerField
      DisplayWidth = 5
      FieldName = 'Codigo'
    end
    object tClientesNome: TStringField
      FieldName = 'Nome'
      ReadOnly = True
      Size = 50
    end
    object tClientesCNPJ: TStringField
      DisplayWidth = 12
      FieldName = 'CNPJ'
      ReadOnly = True
      Size = 18
    end
  end
  object dstClientes: TDataSource
    DataSet = tClientes
    Left = 344
    Top = 295
  end
end
