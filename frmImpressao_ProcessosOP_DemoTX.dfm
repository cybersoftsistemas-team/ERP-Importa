object Impressao_ProcessosOP_DemoTX: TImpressao_ProcessosOP_DemoTX
  Left = 534
  Top = 238
  BorderStyle = bsDialog
  Caption = 'Impressao_ProcessosOP_DemoTX'
  ClientHeight = 243
  ClientWidth = 559
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
    Width = 559
    Height = 46
    Align = alTop
    Stretch = True
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 181
    Height = 21
    Caption = 'IMPRESS'#195'O - PROCESSOS'
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
    Width = 217
    Height = 18
    Caption = 'Demonstrativo da Taxa Financeira.'
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
    Top = 213
    Width = 559
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      559
      30)
    object bSair: TButton
      Left = 492
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
      Left = 426
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
    object bLimpar: TButton
      Left = 360
      Top = 1
      Width = 66
      Height = 28
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '&Limpar'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
      OnClick = bLimparClick
    end
  end
  object StaticText5: TStaticText
    Left = 7
    Top = 100
    Width = 96
    Height = 21
    Cursor = crHandPoint
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
    TabOrder = 1
    Transparent = False
    StyleElements = []
  end
  object cCliente: TRxDBLookupCombo
    Left = 105
    Top = 100
    Width = 446
    Height = 21
    DropDownCount = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo;Nome'
    LookupDisplayIndex = 1
    LookupSource = Dados.dsClientes
    ParentFont = False
    TabOrder = 2
  end
  object StaticText1: TStaticText
    Left = 7
    Top = 77
    Width = 96
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
    TabOrder = 3
    Transparent = False
    StyleElements = []
  end
  object cProcesso: TRxDBLookupCombo
    Left = 105
    Top = 77
    Width = 149
    Height = 21
    DropDownCount = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Processo'
    LookupDisplay = 'Processo'
    LookupSource = Dados.dsProcessosFechamento
    ParentFont = False
    TabOrder = 4
  end
  object cZebrado: TCheckBox
    Left = 7
    Top = 128
    Width = 101
    Height = 17
    Caption = 'Imprimir zebrado.'
    TabOrder = 5
  end
  object cExcel: TCheckBox
    Left = 7
    Top = 148
    Width = 156
    Height = 17
    Caption = 'Enviar dados para o EXCEL.'
    TabOrder = 6
  end
  object cDataIni: TDateEdit
    Left = 105
    Top = 54
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
    TabOrder = 7
  end
  object StaticText8: TStaticText
    Left = 7
    Top = 54
    Width = 96
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
    TabOrder = 8
    Transparent = False
    StyleElements = []
  end
  object cDataFim: TDateEdit
    Left = 253
    Top = 54
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
    TabOrder = 9
  end
  object StaticText10: TStaticText
    Left = 215
    Top = 54
    Width = 36
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Final'
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
  object cSaltarProcesso: TCheckBox
    Left = 7
    Top = 168
    Width = 153
    Height = 17
    Caption = 'Saltar Pagina por Processo.'
    TabOrder = 11
  end
  object cSaltarCliente: TCheckBox
    Left = 7
    Top = 188
    Width = 139
    Height = 17
    Caption = 'Saltar Pagina por Cliente.'
    TabOrder = 12
  end
  object tProcessos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT 0 AS Tipo,'
      '       '#39'TOTAL DAS DESPESAS'#39' AS Descricao_Tipo,'
      
        '       (SELECT Processo FROM ProcessosFechamento WHERE(Codigo = ' +
        'Fechamento)) AS Processo,'
      
        '       (SELECT Nome FROM Clientes WHERE(Codigo = (SELECT Cliente' +
        ' FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = (' +
        'SELECT Processo FROM ProcessosFechamento WHERE(Codigo = Fechamen' +
        'to)))))) AS Cliente,'
      '       Classificacao,'
      '       Descricao,'
      '       Valor_Fechamento,'
      '       Data_BaixaVenc,'
      '       Data_CorrecaoDespesa,'
      
        '       DATEDIFF(Day, Data_BaixaVenc, Data_CorrecaoDespesa) AS Di' +
        'as,'
      
        '      (SELECT Taxa_CorrecaoDespesas FROM ProcessosFechamento WHE' +
        'RE(Codigo = Fechamento)) AS Taxa,'
      
        '      ((Valor_Fechamento * (SELECT Taxa_CorrecaoDespesas FROM Pr' +
        'ocessosFechamento WHERE(Codigo = Fechamento))) * DATEDIFF(Day, D' +
        'ata_BaixaVenc, Data_CorrecaoDespesa)/100) AS Valor_Correcao'
      'FROM  ProcessosFechamentoItens, ProcessosFechamento'
      
        'WHERE (ProcessosFechamentoItens.Fechamento =  ProcessosFechament' +
        'o.Codigo) AND (Data_CorrecaoDespesa IS NOT NULL) '
      'AND  Processo = '#39'ABRTO 0212/11'#39
      'UNION ALL'
      'SELECT 1,'
      '       '#39'TOTAL DO C'#194'MBIO'#39','
      '       Processo,'
      
        '       (SELECT Nome FROM Clientes WHERE(Codigo = (SELECT Cliente' +
        ' FROM ProcessosDocumentos WHERE(ProcessosDocumentos.Processo = C' +
        'ontratoCambio.Processo)))),'
      '       '#39'C'#194'MBIO '#39'+Numero,'
      '       '#39'CONTRATO DE C'#194'MBIO'#39','
      '       (Valor_ME * Taxa_Cambial),'
      '       Data_Vencimento,'
      
        '       (SELECT Data_CorrecaoCambio FROM ProcessosFechamento WHER' +
        'E(ProcessosFechamento.Processo = ContratoCambio.Processo)),'
      
        '       DATEDIFF(Day, Data_Vencimento, (SELECT Data_CorrecaoCambi' +
        'o FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo = ' +
        'ContratoCambio.Processo))),'
      
        '       (SELECT Taxa_CorrecaoCambio FROM ProcessosFechamento WHER' +
        'E(ProcessosFechamento.Processo = ContratoCambio.Processo)),'
      
        '       (((Valor_ME * Taxa_Cambial) * (SELECT Taxa_CorrecaoDespes' +
        'as FROM ProcessosFechamento WHERE(ProcessosFechamento.Processo =' +
        ' ContratoCambio.Processo))) * DATEDIFF(Day, Data_Vencimento, (SE' +
        'LECT Data_CorrecaoCambio FROM ProcessosFechamento WHERE(Processo' +
        'sFechamento.Processo = ContratoCambio.Processo)))/100)'
      'FROM  ContratoCambio '
      'WHERE Processo = '#39'ABRTO 0212/11'#39
      'UNION ALL'
      'SELECT 2,'
      '       '#39'TOTAL DOS IMPOSTOS'#39','
      '       Processo,'
      '       (SELECT Nome FROM Clientes WHERE(Codigo = Cliente)),'
      '       '#39'II'#39','
      '       '#39'IMPOSTO DE IMPORTA'#199#195'O'#39','
      '       II,'
      '       Data_RegistroDeclaracao,'
      
        '       (SELECT Data_CorrecaoImpostos FROM ProcessosFechamento WH' +
        'ERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo)' +
        '),'
      
        '       DATEDIFF(Day, Data_RegistroDeclaracao, (SELECT Data_Corre' +
        'caoImpostos FROM ProcessosFechamento WHERE(ProcessosFechamento.P' +
        'rocesso = ProcessosDocumentos.Processo))),'
      
        '       (SELECT Taxa_CorrecaoImpostos FROM ProcessosFechamento WH' +
        'ERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo)' +
        '),'
      
        '       ((II * (SELECT Taxa_CorrecaoImpostos FROM ProcessosFecham' +
        'ento WHERE(ProcessosFechamento.Processo = ProcessosDocumentos.Pr' +
        'ocesso))) * DATEDIFF(Day, Data_RegistroDeclaracao, (SELECT Data_' +
        'CorrecaoImpostos FROM ProcessosFechamento WHERE(ProcessosFechame' +
        'nto.Processo = ProcessosDocumentos.Processo)))/100)'
      'FROM  ProcessosDocumentos'
      'WHERE Processo = '#39'ABRTO 0212/11'#39
      'UNION ALL'
      'SELECT 2,'
      '       '#39'TOTAL DOS IMPOSTOS'#39','
      '       Processo,'
      '       (SELECT Nome FROM Clientes WHERE(Codigo = Cliente)),'
      '       '#39'IPI'#39','
      '       '#39'IPI'#39','
      '       Valor_IPI,'
      '       Data_RegistroDeclaracao,'
      
        '       (SELECT Data_CorrecaoImpostos FROM ProcessosFechamento WH' +
        'ERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo)' +
        '),'
      
        '       DATEDIFF(Day, Data_RegistroDeclaracao, (SELECT Data_Corre' +
        'caoImpostos FROM ProcessosFechamento WHERE(ProcessosFechamento.P' +
        'rocesso = ProcessosDocumentos.Processo))),'
      
        '       (SELECT Taxa_CorrecaoImpostos FROM ProcessosFechamento WH' +
        'ERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo)' +
        '),'
      
        '       ((Valor_IPI * (SELECT Taxa_CorrecaoImpostos FROM Processo' +
        'sFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocume' +
        'ntos.Processo))) * DATEDIFF(Day, Data_RegistroDeclaracao, (SELEC' +
        'T Data_CorrecaoImpostos FROM ProcessosFechamento WHERE(Processos' +
        'Fechamento.Processo = ProcessosDocumentos.Processo)))/100)'
      'FROM  ProcessosDocumentos'
      'WHERE Processo = '#39'ABRTO 0212/11'#39
      'UNION ALL'
      'SELECT 2,'
      '       '#39'TOTAL DOS IMPOSTOS'#39','
      '       Processo,'
      '       (SELECT Nome FROM Clientes WHERE(Codigo = Cliente)),'
      '       '#39'PIS'#39','
      '       '#39'PIS'#39','
      '       Valor_PIS,'
      '       Data_RegistroDeclaracao,'
      
        '       (SELECT Data_CorrecaoImpostos FROM ProcessosFechamento WH' +
        'ERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo)' +
        '),'
      
        '       DATEDIFF(Day, Data_RegistroDeclaracao, (SELECT Data_Corre' +
        'caoImpostos FROM ProcessosFechamento WHERE(ProcessosFechamento.P' +
        'rocesso = ProcessosDocumentos.Processo))),'
      
        '       (SELECT Taxa_CorrecaoImpostos FROM ProcessosFechamento WH' +
        'ERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo)' +
        '),'
      
        '       ((Valor_PIS * (SELECT Taxa_CorrecaoImpostos FROM Processo' +
        'sFechamento WHERE(ProcessosFechamento.Processo = ProcessosDocume' +
        'ntos.Processo))) * DATEDIFF(Day, Data_RegistroDeclaracao, (SELEC' +
        'T Data_CorrecaoImpostos FROM ProcessosFechamento WHERE(Processos' +
        'Fechamento.Processo = ProcessosDocumentos.Processo)))/100)'
      'FROM  ProcessosDocumentos'
      'WHERE Processo = '#39'ABRTO 0212/11'#39
      'UNION ALL'
      'SELECT 2,'
      '       '#39'TOTAL DOS IMPOSTOS'#39','
      '       Processo,'
      '       (SELECT Nome FROM Clientes WHERE(Codigo = Cliente)),'
      '       '#39'COFINS'#39','
      '       '#39'COFINS'#39','
      '       Valor_COFINS,'
      '       Data_RegistroDeclaracao,'
      
        '       (SELECT Data_CorrecaoImpostos FROM ProcessosFechamento WH' +
        'ERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo)' +
        '),'
      
        '       DATEDIFF(Day, Data_RegistroDeclaracao, (SELECT Data_Corre' +
        'caoImpostos FROM ProcessosFechamento WHERE(ProcessosFechamento.P' +
        'rocesso = ProcessosDocumentos.Processo))),'
      
        '       (SELECT Taxa_CorrecaoImpostos FROM ProcessosFechamento WH' +
        'ERE(ProcessosFechamento.Processo = ProcessosDocumentos.Processo)' +
        '),'
      
        '       ((Valor_COFINS * (SELECT Taxa_CorrecaoImpostos FROM Proce' +
        'ssosFechamento WHERE(ProcessosFechamento.Processo = ProcessosDoc' +
        'umentos.Processo))) * DATEDIFF(Day, Data_RegistroDeclaracao, (SE' +
        'LECT Data_CorrecaoImpostos FROM ProcessosFechamento WHERE(Proces' +
        'sosFechamento.Processo = ProcessosDocumentos.Processo)))/100)'
      'FROM  ProcessosDocumentos'
      'WHERE Processo = '#39'ABRTO 0212/11'#39
      'ORDER BY Cliente, Processo, Tipo')
    Left = 289
    Top = 8
  end
  object rDemonstrativo: TppReport
    AutoStop = False
    DataPipeline = pProcessos
    NoDataBehaviors = [ndMessageDialog, ndBlankPage]
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Demonstrativo da Taxa Financeira'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 20320
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Sistemas\Faturamento\Codigo Fonte\Relatorios\DemonstrativoTax' +
      'aFinanceira2.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
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
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 480
    Top = 8
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pProcessos'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 20638
      mmPrintPosition = 0
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
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
        mmLeft = 28046
        mmTop = 265
        mmWidth = 144463
        BandType = 0
        LayerName = Foreground
      end
      object lTitulo: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTitulo1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Demonstrativo da Taxa Financeira'
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
        mmLeft = 28046
        mmTop = 6085
        mmWidth = 144463
        BandType = 0
        LayerName = Foreground
      end
      object ppShape14: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape14'
        Brush.Color = 8404992
        Shape = stRoundRect
        mmHeight = 3704
        mmLeft = 76465
        mmTop = 16933
        mmWidth = 19578
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2498
        mmLeft = 76465
        mmTop = 17463
        mmWidth = 19578
        BandType = 0
        LayerName = Foreground
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        Brush.Color = 8404992
        Shape = stRoundRect
        mmHeight = 3704
        mmLeft = 96309
        mmTop = 16933
        mmWidth = 15347
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DATA PGTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 96309
        mmTop = 17463
        mmWidth = 15347
        BandType = 0
        LayerName = Foreground
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        Brush.Color = 8404992
        Shape = stRoundRect
        mmHeight = 3704
        mmLeft = 111919
        mmTop = 16933
        mmWidth = 15347
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DATA ATUAL.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 111919
        mmTop = 17463
        mmWidth = 15347
        BandType = 0
        LayerName = Foreground
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape4'
        Brush.Color = 8404992
        Shape = stRoundRect
        mmHeight = 3704
        mmLeft = 136525
        mmTop = 16933
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TAXA AO DIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 136525
        mmTop = 17463
        mmWidth = 15611
        BandType = 0
        LayerName = Foreground
      end
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape5'
        Brush.Color = 8404992
        Shape = stRoundRect
        mmHeight = 3704
        mmLeft = 152400
        mmTop = 16933
        mmWidth = 19578
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'VLR.CORRE'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 152400
        mmTop = 17463
        mmWidth = 19578
        BandType = 0
        LayerName = Foreground
      end
      object ppShape8: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape8'
        Brush.Color = 8404992
        Shape = stRoundRect
        mmHeight = 3704
        mmLeft = 0
        mmTop = 16933
        mmWidth = 76200
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DESPESA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2498
        mmLeft = 0
        mmTop = 17463
        mmWidth = 76200
        BandType = 0
        LayerName = Foreground
      end
      object ppShape9: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape9'
        Brush.Color = 8404992
        Shape = stRoundRect
        mmHeight = 3704
        mmLeft = 127529
        mmTop = 16933
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DIAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 127529
        mmTop = 17463
        mmWidth = 8731
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
        mmHeight = 16669
        mmLeft = 0
        mmTop = 0
        mmWidth = 27252
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object lFaixa: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'lFaixa'
        Brush.Color = 13762497
        Pen.Style = psClear
        Visible = False
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 172244
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Descricao'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 0
        mmTop = 0
        mmWidth = 76200
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Valor_Fechamento'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00;(,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 76464
        mmTop = 0
        mmWidth = 19578
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Data_BaixaVenc'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 96309
        mmTop = 0
        mmWidth = 15346
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Dias'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 127529
        mmTop = 0
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Taxa'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 136525
        mmTop = 0
        mmWidth = 15611
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Valor_Correcao'
        DataPipeline = pProcessos
        DisplayFormat = '#,##0.00;(,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 152400
        mmTop = 0
        mmWidth = 19578
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Data_CorrecaoDespesa'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 111919
        mmTop = 0
        mmWidth = 15347
        BandType = 4
        LayerName = Foreground
      end
    end
    object rRelacaoProcessos: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLabel27: TppLabel
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2911
        mmLeft = 0
        mmTop = 529
        mmWidth = 45773
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer1
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
        mmLeft = 68527
        mmTop = 529
        mmWidth = 41804
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable5: TppSystemVariable
        DesignLayer = ppDesignLayer1
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
        mmLeft = 110596
        mmTop = 529
        mmWidth = 23813
        BandType = 8
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 46567
        mmTop = 0
        mmWidth = 2117
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable6: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable6'
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
        mmLeft = 156634
        mmTop = 264
        mmWidth = 15610
        BandType = 8
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 155575
        mmTop = 265
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 172244
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TOTAL GERAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 37836
        mmTop = 0
        mmWidth = 28575
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc5: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc5'
        Border.mmPadding = 0
        DataField = 'Valor_Fechamento'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00;(,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 76728
        mmTop = 0
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground
      end
      object ppDBCalc8: TppDBCalc
        DesignLayer = ppDesignLayer1
        UserName = 'DBCalc8'
        Border.mmPadding = 0
        DataField = 'Valor_Correcao'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00;(,##0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 152400
        mmTop = 0
        mmWidth = 19578
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Cliente'
      DataPipeline = pProcessos
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'pProcessos'
      NewFile = False
      object pCab_GrupoCliente: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppShape7: TppShape
          DesignLayer = ppDesignLayer1
          UserName = 'Shape7'
          Brush.Color = 14540253
          Pen.Style = psClear
          Shape = stRoundRect
          mmHeight = 3969
          mmLeft = 0
          mmTop = 794
          mmWidth = 172244
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText4: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText4'
          AutoSize = True
          Border.mmPadding = 0
          DataField = 'Cliente'
          DataPipeline = pProcessos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'pProcessos'
          mmHeight = 2963
          mmLeft = 17727
          mmTop = 1058
          mmWidth = 8636
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel8: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label8'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'CLIENTE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2910
          mmLeft = 795
          mmTop = 1059
          mmWidth = 16403
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppLabel5: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label5'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'TOTAL DO CLIENTE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2910
          mmLeft = 37836
          mmTop = 795
          mmWidth = 28575
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc4: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc4'
          Border.mmPadding = 0
          DataField = 'Valor_Fechamento'
          DataPipeline = pProcessos
          DisplayFormat = ',##0.00;(,##0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pProcessos'
          mmHeight = 2910
          mmLeft = 76728
          mmTop = 795
          mmWidth = 19579
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc7: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc7'
          Border.mmPadding = 0
          DataField = 'Valor_Correcao'
          DataPipeline = pProcessos
          DisplayFormat = ',##0.00;(,##0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pProcessos'
          mmHeight = 2910
          mmLeft = 152400
          mmTop = 795
          mmWidth = 19578
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Processo'
      DataPipeline = pProcessos
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'pProcessos'
      NewFile = False
      object pCab_GrupoProcesso: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
        object ppShape1: TppShape
          DesignLayer = ppDesignLayer1
          UserName = 'Shape1'
          Brush.Color = clNavy
          Pen.Style = psClear
          Shape = stRoundRect
          mmHeight = 3969
          mmLeft = 265
          mmTop = 529
          mmWidth = 172244
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          AutoSize = True
          Border.mmPadding = 0
          DataField = 'Processo'
          DataPipeline = pProcessos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'pProcessos'
          mmHeight = 2963
          mmLeft = 17727
          mmTop = 1058
          mmWidth = 11007
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
        object ppLabel7: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label7'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'PROCESSO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2963
          mmLeft = 795
          mmTop = 1058
          mmWidth = 16403
          BandType = 3
          GroupNo = 1
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLabel1: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label1'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'TOTAL DO PROCESSO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2910
          mmLeft = 37836
          mmTop = 0
          mmWidth = 28575
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc3: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc1'
          Border.mmPadding = 0
          DataField = 'Valor_Fechamento'
          DataPipeline = pProcessos
          DisplayFormat = ',##0.00;(,##0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pProcessos'
          mmHeight = 2910
          mmLeft = 76728
          mmTop = 0
          mmWidth = 19578
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object ppDBCalc6: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc6'
          Border.mmPadding = 0
          DataField = 'Valor_Correcao'
          DataPipeline = pProcessos
          DisplayFormat = ',##0.00;(,##0.00)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pProcessos'
          mmHeight = 2910
          mmLeft = 152400
          mmTop = 0
          mmWidth = 19578
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'Tipo'
      DataPipeline = pProcessos
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'pProcessos'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 8731
        mmPrintPosition = 0
        object ppLine1: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line1'
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 4498
          mmLeft = 0
          mmTop = 265
          mmWidth = 172244
          BandType = 5
          GroupNo = 2
          LayerName = Foreground
        end
        object ppShape6: TppShape
          DesignLayer = ppDesignLayer1
          UserName = 'Shape6'
          Brush.Color = 9109503
          Pen.Style = psClear
          Shape = stRoundRect
          mmHeight = 3969
          mmLeft = 0
          mmTop = 529
          mmWidth = 172244
          BandType = 5
          GroupNo = 2
          LayerName = Foreground
        end
        object ppDBText8: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText8'
          AutoSize = True
          Border.mmPadding = 0
          DataField = 'Descricao_Tipo'
          DataPipeline = pProcessos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 7
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'pProcessos'
          mmHeight = 2963
          mmLeft = 529
          mmTop = 795
          mmWidth = 18965
          BandType = 5
          GroupNo = 2
          LayerName = Foreground
        end
        object ppDBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'pTotalDespesas1'
          Border.mmPadding = 0
          DataField = 'Valor_Fechamento'
          DataPipeline = pProcessos
          DisplayFormat = ',#00.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pProcessos'
          mmHeight = 2910
          mmLeft = 76728
          mmTop = 795
          mmWidth = 19578
          BandType = 5
          GroupNo = 2
          LayerName = Foreground
        end
        object ppDBCalc2: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc2'
          Border.mmPadding = 0
          DataField = 'Valor_Correcao'
          DataPipeline = pProcessos
          DisplayFormat = ',#00.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pProcessos'
          mmHeight = 2910
          mmLeft = 152400
          mmTop = 795
          mmWidth = 19578
          BandType = 5
          GroupNo = 2
          LayerName = Foreground
        end
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line2'
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 2646
          mmLeft = 0
          mmTop = 3969
          mmWidth = 172244
          BandType = 5
          GroupNo = 2
          LayerName = Foreground
        end
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
  object dstProcessos: TDataSource
    DataSet = tProcessos
    Left = 318
    Top = 8
  end
  object pEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    UserName = 'pEmpresas'
    Left = 420
    Top = 8
  end
  object pProcessos: TppDBPipeline
    DataSource = dstProcessos
    CloseDataSource = True
    OpenDataSource = False
    UserName = 'pProcessos'
    Left = 450
    Top = 8
  end
  object pCambios: TppDBPipeline
    UserName = 'pCambios'
    Left = 388
    Top = 8
  end
  object pImpostos: TppDBPipeline
    UserName = 'pImpostos'
    Left = 356
    Top = 8
  end
end
