object Impressao_FiscaisOP_NCM: TImpressao_FiscaisOP_NCM
  Left = 579
  Top = 328
  BorderStyle = bsDialog
  Caption = 'Impressao_FiscaisOP_NCM'
  ClientHeight = 247
  ClientWidth = 401
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
    Width = 401
    Height = 46
    Align = alTop
    Stretch = True
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
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
    Left = 8
    Top = 22
    Width = 252
    Height = 18
    Caption = 'Rela'#231#227'o de NCM'#180's faturadas no per'#237'odo.'
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
    Top = 217
    Width = 401
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 5
    DesignSize = (
      401
      30)
    object bSair: TButton
      Left = 334
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
      Left = 268
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
  object cNCM: TRadioGroup
    Left = 13
    Top = 159
    Width = 376
    Height = 46
    Caption = 'NCM'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Somente as que geram DNF'
      'Todas')
    TabOrder = 4
  end
  object cDataIni: TDateEdit
    Left = 119
    Top = 59
    Width = 112
    Height = 21
    CheckOnExit = True
    Ctl3D = True
    DialogTitle = 'Selecione a data'
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
    TabOrder = 0
  end
  object StaticText1: TStaticText
    Left = 13
    Top = 59
    Width = 104
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
    TabOrder = 6
    Transparent = False
    StyleElements = []
  end
  object cDataFim: TDateEdit
    Left = 119
    Top = 82
    Width = 112
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
    Top = 82
    Width = 104
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
    TabOrder = 7
    Transparent = False
    StyleElements = []
  end
  object StaticText3: TStaticText
    Left = 13
    Top = 105
    Width = 104
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Tipo de Opera'#231#227'o'
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
  object cTipoProcesso: TRxDBLookupCombo
    Left = 119
    Top = 105
    Width = 270
    Height = 21
    DropDownCount = 8
    DisplayAllFields = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo; Descricao'
    LookupDisplayIndex = 1
    LookupSource = Dados.dsTiposProcesso
    ParentFont = False
    TabOrder = 2
  end
  object StaticText4: TStaticText
    Left = 13
    Top = 128
    Width = 104
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
    TabOrder = 9
    Transparent = False
    StyleElements = []
  end
  object cCodigoNCM: TMaskEdit
    Left = 119
    Top = 128
    Width = 111
    Height = 21
    EditMask = '9999.99.99;0; '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    TabOrder = 3
    Text = ''
  end
  object rNCM: TppReport
    AutoStop = False
    DataPipeline = pNCM
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Fiscais - Rela'#231#227'o de NCM'#39's faturadas no per'#237'odo.'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
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
    Left = 326
    Top = 1
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pNCM'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 23548
      mmPrintPosition = 0
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
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
        mmLeft = 27781
        mmTop = 265
        mmWidth = 169863
        BandType = 0
        LayerName = Foreground
      end
      object lTitulo: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTitulo'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Rela'#231#227'o de NCM'#39's faturadas no per'#237'odo.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 27781
        mmTop = 6350
        mmWidth = 169863
        BandType = 0
        LayerName = Foreground
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        Brush.Color = 8404992
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 0
        mmTop = 17991
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NCM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 529
        mmTop = 19050
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground
      end
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape5'
        Brush.Color = 8404992
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 165365
        mmTop = 17991
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'UM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 166159
        mmTop = 19050
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground
      end
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape6'
        Brush.Color = 8404992
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 17727
        mmTop = 17992
        mmWidth = 99484
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DESCRI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 17992
        mmTop = 19050
        mmWidth = 98161
        BandType = 0
        LayerName = Foreground
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        Brush.Color = 8404992
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 117211
        mmTop = 17991
        mmWidth = 6615
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DNF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 117740
        mmTop = 19050
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        Brush.Color = 8404992
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 124089
        mmTop = 17991
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'IPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 124619
        mmTop = 19050
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape4'
        Brush.Color = 8404992
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 134409
        mmTop = 17991
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'II'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 135202
        mmTop = 19050
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground
      end
      object ppShape7: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape7'
        Brush.Color = 8404992
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 144727
        mmTop = 17991
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 145521
        mmTop = 19050
        mmWidth = 8467
        BandType = 0
        LayerName = Foreground
      end
      object ppShape8: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape8'
        Brush.Color = 8404992
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 155046
        mmTop = 17991
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'COFINS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 155311
        mmTop = 19050
        mmWidth = 9525
        BandType = 0
        LayerName = Foreground
      end
      object ppShape9: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape9'
        Brush.Color = 8404992
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 171450
        mmTop = 17991
        mmWidth = 11641
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NOTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 171980
        mmTop = 19050
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground
      end
      object lPeriodo: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTitulo1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Per'#237'odo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 27781
        mmTop = 11906
        mmWidth = 169863
        BandType = 0
        LayerName = Foreground
      end
      object ppShape10: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape10'
        Brush.Color = 8404992
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 183357
        mmTop = 17992
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'EMISS'#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 183886
        mmTop = 19050
        mmWidth = 12965
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
        mmHeight = 17198
        mmLeft = 0
        mmTop = 0
        mmWidth = 27252
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'Nota'
        DataPipeline = pNCM
        DisplayFormat = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNCM'
        mmHeight = 2879
        mmLeft = 171450
        mmTop = 0
        mmWidth = 11641
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'Data'
        DataPipeline = pNCM
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNCM'
        mmHeight = 2879
        mmLeft = 183886
        mmTop = 0
        mmWidth = 13494
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
        mmLeft = 265
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
        mmLeft = 71702
        mmTop = 529
        mmWidth = 58208
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
        mmLeft = 130175
        mmTop = 529
        mmWidth = 26194
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
        mmLeft = 48683
        mmTop = 0
        mmWidth = 13229
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
        mmLeft = 181769
        mmTop = 265
        mmWidth = 15610
        BandType = 8
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
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
        mmLeft = 178859
        mmTop = 265
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'NCM'
      DataPipeline = pNCM
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'pNCM'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText1'
          Border.mmPadding = 0
          DataField = 'NCM'
          DataPipeline = pNCM
          DisplayFormat = '9999.99.99;0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'pNCM'
          mmHeight = 3810
          mmLeft = 0
          mmTop = 795
          mmWidth = 17463
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBMemo1: TppDBMemo
          DesignLayer = ppDesignLayer1
          UserName = 'DBMemo1'
          Border.mmPadding = 0
          CharWrap = False
          DataField = 'Produto'
          DataPipeline = pNCM
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          RemoveEmptyLines = False
          Stretch = True
          Transparent = True
          DataPipelineName = 'pNCM'
          mmHeight = 3810
          mmLeft = 17727
          mmTop = 795
          mmWidth = 99484
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          mmLeading = 0
        end
        object ppLine1: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line1'
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 0
          mmWidth = 197380
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line2'
          Border.mmPadding = 0
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 5292
          mmWidth = 197380
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object myDBCheckBox1: TmyDBCheckBox
          DesignLayer = ppDesignLayer1
          UserName = 'DBCheckBox1'
          CheckBoxColor = clWindowText
          BooleanFalse = 'False'
          BooleanTrue = 'True'
          Anchors = [atLeft, atBottom]
          DataPipeline = pNCM
          DataField = 'DNF'
          Transparent = True
          DataPipelineName = 'pNCM'
          mmHeight = 3440
          mmLeft = 119327
          mmTop = 1323
          mmWidth = 2910
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          Anchors = [atLeft, atBottom]
          Border.mmPadding = 0
          DataField = 'IPI'
          DataPipeline = pNCM
          DisplayFormat = '#0.00%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pNCM'
          mmHeight = 2910
          mmLeft = 124090
          mmTop = 1588
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText3: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText3'
          Anchors = [atLeft, atBottom]
          Border.mmPadding = 0
          DataField = 'II'
          DataPipeline = pNCM
          DisplayFormat = '#0.00%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pNCM'
          mmHeight = 2910
          mmLeft = 134409
          mmTop = 1588
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText4: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText4'
          Anchors = [atLeft, atBottom]
          Border.mmPadding = 0
          DataField = 'PIS'
          DataPipeline = pNCM
          DisplayFormat = '#0.00%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pNCM'
          mmHeight = 2910
          mmLeft = 144727
          mmTop = 1588
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText5: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText5'
          Anchors = [atLeft, atBottom]
          Border.mmPadding = 0
          DataField = 'COFINS'
          DataPipeline = pNCM
          DisplayFormat = '#0.00%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pNCM'
          mmHeight = 2910
          mmLeft = 155046
          mmTop = 1588
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText7: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText7'
          Anchors = [atLeft, atBottom]
          Border.mmPadding = 0
          DataField = 'Unidade'
          DataPipeline = pNCM
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'pNCM'
          mmHeight = 2910
          mmLeft = 165629
          mmTop = 1588
          mmWidth = 5821
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
        mmHeight = 5292
        mmPrintPosition = 0
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
  object pEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    UserName = 'pEmpresas'
    Left = 266
    Top = 1
  end
  object dstNCM: TDataSource
    DataSet = tNCM
    Left = 230
    Top = 1
  end
  object tNCM: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT NCM.*, NotasItens.Nota, NotasItens.Data'
      'FROM   NCM, NotasItens'
      'WHERE (NCM.NCM = NotasItens.NCM)')
    Left = 198
    Top = 1
    object tNCMNCM: TStringField
      FieldName = 'NCM'
      Origin = 'Cybersoft_Cadastros.dbo.NCM.NCM'
      FixedChar = True
      Size = 8
    end
    object tNCMCodigo_EXTIPI: TSmallintField
      FieldName = 'Codigo_EXTIPI'
      Origin = 'Cybersoft_Cadastros.dbo.NCM.Codigo_EXTIPI'
    end
    object tNCMProduto: TStringField
      FieldName = 'Produto'
      Origin = 'Cybersoft_Cadastros.dbo.NCM.Produto'
      Size = 60
    end
    object tNCMUnidade: TStringField
      FieldName = 'Unidade'
      Origin = 'Cybersoft_Cadastros.dbo.NCM.Unidade'
      FixedChar = True
      Size = 3
    end
    object tNCMPIS: TFloatField
      FieldName = 'PIS'
      Origin = 'Cybersoft_Cadastros.dbo.NCM.PIS'
    end
    object tNCMCOFINS: TFloatField
      FieldName = 'COFINS'
      Origin = 'Cybersoft_Cadastros.dbo.NCM.COFINS'
    end
    object tNCMII: TFloatField
      FieldName = 'II'
      Origin = 'Cybersoft_Cadastros.dbo.NCM.II'
    end
    object tNCMIPI_Valor: TFloatField
      FieldName = 'IPI_Valor'
      Origin = 'Cybersoft_Cadastros.dbo.NCM.IPI_Valor'
    end
    object tNCMIPI: TFloatField
      FieldName = 'IPI'
      Origin = 'Cybersoft_Cadastros.dbo.NCM.IPI'
    end
    object tNCMDNF: TBooleanField
      FieldName = 'DNF'
      Origin = 'Cybersoft_Cadastros.dbo.NCM.DNF'
    end
    object tNCMNota: TIntegerField
      FieldName = 'Nota'
      Origin = 'NotasItens.Nota'
    end
    object tNCMData: TDateTimeField
      FieldName = 'Data'
      Origin = 'NotasItens.Data'
    end
  end
  object pNCM: TppDBPipeline
    DataSource = dstNCM
    UserName = 'pNCM'
    Left = 296
    Top = 1
    object pNCMppField1: TppField
      FieldAlias = 'NCM'
      FieldName = 'NCM'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object pNCMppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo_EXTIPI'
      FieldName = 'Codigo_EXTIPI'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object pNCMppField3: TppField
      FieldAlias = 'Produto'
      FieldName = 'Produto'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object pNCMppField4: TppField
      FieldAlias = 'Unidade'
      FieldName = 'Unidade'
      FieldLength = 3
      DisplayWidth = 3
      Position = 3
    end
    object pNCMppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'PIS'
      FieldName = 'PIS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object pNCMppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'COFINS'
      FieldName = 'COFINS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object pNCMppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'II'
      FieldName = 'II'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object pNCMppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'IPI_Valor'
      FieldName = 'IPI_Valor'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object pNCMppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'IPI'
      FieldName = 'IPI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object pNCMppField10: TppField
      FieldAlias = 'DNF'
      FieldName = 'DNF'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 9
    end
    object pNCMppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota'
      FieldName = 'Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object pNCMppField12: TppField
      FieldAlias = 'Data'
      FieldName = 'Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 11
    end
  end
end
