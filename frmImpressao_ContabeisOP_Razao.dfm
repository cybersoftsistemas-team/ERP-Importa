object Impressao_ContabeisOP_Razao: TImpressao_ContabeisOP_Razao
  Left = 504
  Top = 266
  BorderStyle = bsDialog
  Caption = 'Impressao_ContabeisOP_Razao'
  ClientHeight = 300
  ClientWidth = 626
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
    Width = 626
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitWidth = 677
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
    Width = 103
    Height = 18
    Caption = 'Raz'#227'o Analitico.'
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
    Top = 270
    Width = 626
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    DesignSize = (
      626
      30)
    object bSair: TButton
      Left = 559
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
      Left = 493
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
    Left = 86
    Top = 56
    Width = 111
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
  object StaticText2: TStaticText
    Left = 12
    Top = 56
    Width = 72
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
    Left = 86
    Top = 79
    Width = 111
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
  object StaticText1: TStaticText
    Left = 12
    Top = 79
    Width = 72
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
  object GroupBox1: TGroupBox
    Left = 10
    Top = 175
    Width = 234
    Height = 84
    Caption = 'Op'#231#245'es'
    TabOrder = 5
    object cSalto: TToggleSwitch
      Left = 9
      Top = 30
      Width = 214
      Height = 18
      Alignment = taLeftJustify
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      StateCaptions.CaptionOn = 'Saltar pagina na mudan'#231'a de contas.'
      StateCaptions.CaptionOff = 'Saltar pagina na mudan'#231'a de contas.'
      SwitchHeight = 12
      SwitchWidth = 22
      TabOrder = 0
      ThumbWidth = 12
    end
    object cMaiusculo: TToggleSwitch
      Left = 9
      Top = 45
      Width = 214
      Height = 18
      Alignment = taLeftJustify
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      StateCaptions.CaptionOn = 'Nome das Contas em Mai'#250'sculo'
      StateCaptions.CaptionOff = 'Nome das Contas em Mai'#250'sculo'
      SwitchHeight = 12
      SwitchWidth = 22
      TabOrder = 1
      ThumbWidth = 12
    end
    object cTotalDiario: TToggleSwitch
      Left = 9
      Top = 60
      Width = 214
      Height = 18
      Alignment = taLeftJustify
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      StateCaptions.CaptionOn = 'Mostrar total diario'
      StateCaptions.CaptionOff = 'Mostrar total diario'
      SwitchHeight = 12
      SwitchWidth = 22
      TabOrder = 2
      ThumbWidth = 12
    end
    object cConsolidado: TToggleSwitch
      Left = 9
      Top = 15
      Width = 214
      Height = 18
      Alignment = taLeftJustify
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      StateCaptions.CaptionOn = 'Consolidado'
      StateCaptions.CaptionOff = 'Consolidado'
      SwitchHeight = 12
      SwitchWidth = 22
      TabOrder = 3
      ThumbWidth = 12
    end
  end
  object StaticText3: TStaticText
    Left = 12
    Top = 102
    Width = 72
    Height = 21
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
    TabOrder = 6
    Transparent = False
    StyleElements = []
  end
  object StaticText4: TStaticText
    Left = 12
    Top = 148
    Width = 72
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
    TabOrder = 7
    Transparent = False
    StyleElements = []
  end
  object cEmpresa: TRxDBLookupCombo
    Left = 86
    Top = 148
    Width = 531
    Height = 21
    DropDownCount = 15
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
    TabOrder = 8
  end
  object cProcesso: TRxDBLookupCombo
    Left = 86
    Top = 102
    Width = 165
    Height = 21
    DropDownCount = 15
    DisplayAllFields = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Processo'
    LookupDisplay = 'Processo'
    LookupSource = Dados.dsProcessosDOC
    ParentFont = False
    TabOrder = 9
    OnChange = cProcessoChange
  end
  object bSel: TBitBtn
    Left = 358
    Top = 60
    Width = 149
    Height = 50
    Caption = '&Selecionar Contas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000FF00FF00FF00FF00FF00FF008080
      8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C000FF00FF00FF00FF00FF00FF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C000FF00FF00FF00FF00FF00FF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FF000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C000FF00FF00FF00FF00FF00FF008080
      800080808000FFFFFF00FFFFFF00FF000000FF000000FF000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C000FF00FF00FF00FF00FF00FF008080
      800080808000FFFFFF00FF000000FF000000FF000000FF000000FF000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C000FF00FF00FF00FF00FF00FF008080
      800080808000FFFFFF00FF000000FF000000FFFFFF00FF000000FF000000FF00
      0000FFFFFF00FFFFFF00FFFFFF00C0C0C000FF00FF00FF00FF00FF00FF008080
      800080808000FFFFFF00FF000000FFFFFF00FFFFFF00FFFFFF00FF000000FF00
      0000FF000000FFFFFF00FFFFFF00C0C0C000FF00FF00FF00FF00FF00FF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
      0000FF000000FFFFFF00FFFFFF00C0C0C000FF00FF00FF00FF00FF00FF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FF000000FFFFFF00FFFFFF00C0C0C000FF00FF00FF00FF00FF00FF008080
      800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C000FF00FF00FF00FF00FF00FF008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000FFFFFF00C0C0C000FF00FF00FF00FF00FF00FF008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000C0C0C000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    Layout = blGlyphRight
    ParentFont = False
    TabOrder = 10
    OnClick = bSelClick
  end
  object StaticText5: TStaticText
    Left = 12
    Top = 125
    Width = 72
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Benefici'#225'rio'
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
  object cBenef: TRxDBLookupCombo
    Left = 86
    Top = 125
    Width = 531
    Height = 21
    DropDownCount = 15
    DisplayAllFields = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Nome'
    LookupDisplay = 'CNPJ_CPF;Nome'
    LookupSource = dstBenef
    ParentFont = False
    TabOrder = 12
  end
  object cDetalheBen: TRadioGroup
    Left = 254
    Top = 175
    Width = 175
    Height = 84
    Caption = 'Detalhamento (Benefici'#225'rio)'
    Items.Strings = (
      'Conforme Plano de Contas'
      'Detalhar Todos'
      'Detalhar Nenhum')
    TabOrder = 13
    TabStop = True
  end
  object cDetalheProc: TRadioGroup
    Left = 440
    Top = 175
    Width = 175
    Height = 84
    Caption = 'Detalhamento (Processo)'
    Items.Strings = (
      'Conforme Plano de Contas'
      'Detalhar Todos'
      'Detalhar Nenhum')
    TabOrder = 14
  end
  object tLancamentos: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'select  LAN.Data'
      '       ,Mes            = month(LAN.Data)'
      '       ,LAN.Numero'
      '       ,LAN.Lote'
      
        '       ,Conta          = (select Conta from PlanoContas PC where' +
        ' PC.Codigo = LAN.Conta_Debito)'
      '       ,Codigo         = LAN.Conta_Debito'
      
        '       ,Descricao      = (select Descricao from PlanoContas PC w' +
        'here PC.Codigo = LAN.Conta_Debito)'
      '       ,LAN.Historico_Codigo'
      
        '       ,Historico      = isnull((select Descricao from Historico' +
        'Padrao where Codigo = LAN.Historico_Codigo), '#39#39') + cast(isnull(L' +
        'AN.Historico_Complemento, '#39#39') AS VARCHAR(100))'
      '       ,Saldo_Anterior = cast(0 as money)'
      '       ,Debito         = LAN.Valor'
      '       ,Credito        = cast(0 AS Money)'
      
        '       ,Beneficiario   = case when substring(Beneficiario, 1, 1)' +
        ' = '#39'C'#39' then '
      
        #9'                           (select Nome from Cybersoft_ABMF_Mat' +
        'riz.dbo.Clientes where Codigo = substring(Beneficiario, 2, 15)) '
      
        '                              when substring(Beneficiario, 1, 1)' +
        ' = '#39'F'#39' then'
      
        '                                   case when isnumeric(substring' +
        '(Beneficiario, 2, 15)) = 1 then'
      
        #9#9#9#9#9'(select Nome from Cybersoft_ABMF_Matriz.dbo.Fornecedores wh' +
        'ere Codigo = substring(Beneficiario, 2, 15))'
      '                                   else'
      
        #9#9#9#9#9'(select Nome from Cybersoft_Cadastros.dbo.OrgaosPublicos wh' +
        'ere Codigo = substring(Beneficiario, 2, 15))'
      '                                   end'
      '                         end'
      '      ,Detalha_Ben = cast(1 as bit)'
      '      ,Processo    = LAN.processo_Debito'
      '      ,Detalha_Pro = cast(1 as bit)'
      'into #Temp'
      'from  Lancamentos LAN'
      'where LAN.Data between '#39'11/01/2021'#39' and '#39'11/30/2021'#39
      'and   LAN.Contabilizar = 1'
      'and   isnull(Conta_Debito, '#39#39') <> '#39#39
      
        '--and (select Imprimir_Razao from PlanoContas PC where PC.Codigo' +
        ' = LAN.Conta_Debito) = 1'
      'union all'
      'select  LAN.Data'
      '       ,Mes            = MONTH(LAN.Data)'
      '       ,LAN.Numero'
      '       ,LAN.Lote'
      
        '       ,Conta          = (select Conta from PlanoContas PC where' +
        ' PC.Codigo = LAN.Conta_Credito)'
      '       ,Codigo         = LAN.Conta_Credito'
      
        '       ,Descricao      = (select Descricao from PlanoContas PC w' +
        'here PC.Codigo = LAN.Conta_Credito)'
      '       ,LAN.Historico_Codigo'
      
        '       ,Historico      = isnull((select Descricao from Historico' +
        'Padrao where Codigo = LAN.Historico_Codigo), '#39#39') + CAST(isnull(L' +
        'AN.Historico_Complemento, '#39#39') AS VARCHAR(100))'
      '       ,Saldo_Anterior = CAST(0 as money)'
      '       ,Debito         = CAST(0 AS Money)'
      '       ,Credito        = LAN.Valor'
      
        '       ,Beneficiario   = case when substring(Beneficiario, 1, 1)' +
        ' = '#39'C'#39' then (select Nome from Cybersoft_ABMF_Matriz.dbo.Clientes' +
        ' where Codigo = substring(Beneficiario, 2, 15)) '
      
        '                              when substring(Beneficiario, 1, 1)' +
        ' = '#39'F'#39' then'
      
        #9#9#9#9'   case when isnumeric(substring(Beneficiario, 2, 15)) = 1 t' +
        'hen'
      
        #9#9#9#9'        (select Nome from Cybersoft_ABMF_Matriz.dbo.Forneced' +
        'ores where Codigo = substring(Beneficiario, 2, 15))'
      '                                   else'
      
        #9#9#9#9'        (select Nome from Cybersoft_Cadastros.dbo.OrgaosPubl' +
        'icos where Codigo = substring(Beneficiario, 2, 15))'
      '                                   end'
      '                         end'
      '      ,Detalha_Ben = cast(1 as bit)'
      '      ,Processo    = LAN.Processo_Credito'
      '      ,Detalha_Pro = cast(1 as bit)'
      'from   Lancamentos LAN'
      'where LAN.Data between '#39'11/01/2021'#39' and '#39'11/30/2021'#39
      'and   LAN.Contabilizar = 1'
      'and   ISNULL(Conta_Credito, '#39#39') <> '#39#39
      
        '  --and (select Imprimir_Razao from PlanoContas PC where PC.Codi' +
        'go = LAN.Conta_Credito) = 1'
      
        'update #Temp set Saldo_Anterior = isnull((select Saldo_Anterior ' +
        'from PlanoContas PC where PC.Codigo = #Temp.Codigo), 0) -'
      
        '                                  isnull((select sum(Valor)     ' +
        'from Lancamentos LC where LC.Contabilizar = 1 and LC.Conta_Debit' +
        'o  = #Temp.Codigo and Data <'#39'11/01/2021'#39'), 0) +'
      
        '                                  isnull((select sum(Valor)     ' +
        'from Lancamentos LC where LC.Contabilizar = 1 and LC.Conta_Credi' +
        'to = #Temp.Codigo and Data <'#39'11/01/2021'#39'), 0)'
      'select * from #temp'
      'order by Conta, Beneficiario, Data, Lote, Numero'
      'drop table #Temp')
    FetchRows = 1
    Left = 224
    Top = 8
    object tLancamentosMes: TIntegerField
      FieldName = 'Mes'
      Origin = '.'
      ReadOnly = True
    end
    object tLancamentosNumero: TIntegerField
      FieldName = 'Numero'
      Origin = '.'
      ReadOnly = True
    end
    object tLancamentosConta: TStringField
      FieldName = 'Conta'
      Origin = '.'
      ReadOnly = True
      Size = 15
    end
    object tLancamentosHistorico_Codigo: TSmallintField
      FieldName = 'Historico_Codigo'
      Origin = '.'
      ReadOnly = True
    end
    object tLancamentosHistorico: TStringField
      FieldName = 'Historico'
      Origin = '.'
      ReadOnly = True
      Size = 160
    end
    object tLancamentosSaldo_Anterior: TCurrencyField
      FieldName = 'Saldo_Anterior'
      Origin = '.'
      ReadOnly = True
    end
    object tLancamentosDebito: TCurrencyField
      FieldName = 'Debito'
      Origin = '.'
      ReadOnly = True
    end
    object tLancamentosCredito: TCurrencyField
      FieldName = 'Credito'
      Origin = '.'
      ReadOnly = True
    end
    object tLancamentosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = '.'
      ReadOnly = True
      Size = 50
    end
    object tLancamentosCodigo: TStringField
      FieldName = 'Codigo'
      ReadOnly = True
      Size = 6
    end
    object tLancamentosLote: TLargeintField
      FieldName = 'Lote'
      ReadOnly = True
    end
    object tLancamentosData: TDateField
      FieldName = 'Data'
      ReadOnly = True
    end
    object tLancamentosBeneficiario: TStringField
      FieldName = 'Beneficiario'
      Size = 60
    end
    object tLancamentosDetalha_Ben: TBooleanField
      FieldName = 'Detalha_Ben'
    end
    object tLancamentosDetalha_Pro: TBooleanField
      FieldName = 'Detalha_Pro'
    end
    object tLancamentosProcesso: TStringField
      FieldName = 'Processo'
      Size = 15
    end
  end
  object rRazao: TppReport
    AutoStop = False
    DataPipeline = ppLancamentos
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297039
    PrinterSetup.mmPaperWidth = 209974
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Sistemas\Faturamento\Codigo Fonte\Relatorios\Razao.rtm'
    Units = utPrinterPixels
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = rRazaoBeforePrint
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
    Left = 546
    Top = 8
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppLancamentos'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 21696
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Color = clBlue
        DataField = 'Razao_Social'
        DataPipeline = ppEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppEmpresas'
        mmHeight = 5292
        mmLeft = 24077
        mmTop = 166
        mmWidth = 173567
        BandType = 0
        LayerName = Foreground
      end
      object lTitulo: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTitulo'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Raz'#227'o Anal'#237'tico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = [fsItalic]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4498
        mmLeft = 24077
        mmTop = 5469
        mmWidth = 173567
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
        mmHeight = 13229
        mmLeft = 0
        mmTop = 0
        mmWidth = 23019
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'SALDO'
        Color = 4259970
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 173780
        mmTop = 18133
        mmWidth = 23599
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CR'#201'DITO'
        Color = 4259970
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 150566
        mmTop = 18133
        mmWidth = 22719
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'HIST'#211'RICO'
        Color = 4259970
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 26120
        mmTop = 18133
        mmWidth = 100510
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DATA'
        Color = 4259970
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 18133
        mmWidth = 11994
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'D'#201'BITO'
        Color = 4259970
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 126856
        mmTop = 18133
        mmWidth = 23283
        BandType = 0
        LayerName = Foreground
      end
      object lPeriodo: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTitulo1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Per'#237'odo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 24077
        mmTop = 13945
        mmWidth = 173285
        BandType = 0
        LayerName = Foreground
      end
      object lPeriodo2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lPeriodo2'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Per'#237'odo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3852
        mmLeft = 24077
        mmTop = 10054
        mmWidth = 173285
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LOTE/LAN'
        Color = 4259970
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 12277
        mmTop = 18133
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground
      end
    end
    object bDetalhe: TppDetailBand
      BeforePrint = bDetalheBeforePrint
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 2910
      mmPrintPosition = 0
      object ppDBMemo1: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo1'
        Border.mmPadding = 0
        CharWrap = True
        DataField = 'Historico'
        DataPipeline = ppLancamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppLancamentos'
        mmHeight = 2963
        mmLeft = 26225
        mmTop = -155
        mmWidth = 100480
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object lSaldo: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'lSaldo'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2797
        mmLeft = 174484
        mmTop = -374
        mmWidth = 22719
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Numero'
        DataPipeline = ppLancamentos
        DisplayFormat = '00000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        VerticalAlignment = avCenter
        DataPipelineName = 'ppLancamentos'
        mmHeight = 2963
        mmLeft = 19318
        mmTop = -321
        mmWidth = 5994
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2963
        mmLeft = 18144
        mmTop = -321
        mmWidth = 794
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Lote'
        DataPipeline = ppLancamentos
        DisplayFormat = '0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        VerticalAlignment = avCenter
        DataPipelineName = 'ppLancamentos'
        mmHeight = 2893
        mmLeft = 12277
        mmTop = -321
        mmWidth = 5370
        BandType = 4
        LayerName = Foreground
      end
      object lData: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'lData'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Data'
        DataPipeline = ppLancamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        DataPipelineName = 'ppLancamentos'
        mmHeight = 2893
        mmLeft = 0
        mmTop = -321
        mmWidth = 11994
        BandType = 4
        LayerName = Foreground
      end
      object lCredito: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'lCredito'
        Anchors = [atLeft, atBottom]
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Credito'
        DataPipeline = ppLancamentos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppLancamentos'
        mmHeight = 2903
        mmLeft = 150918
        mmTop = -374
        mmWidth = 22719
        BandType = 4
        LayerName = Foreground
      end
      object lDebito: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'lDebito'
        Anchors = [atLeft, atBottom]
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Debito'
        DataPipeline = ppLancamentos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppLancamentos'
        mmHeight = 2727
        mmLeft = 127353
        mmTop = -374
        mmWidth = 22719
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1398
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Cybersoft Sistemas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 0
        mmTop = 529
        mmWidth = 24606
        BandType = 8
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3440
        mmLeft = 24871
        mmTop = 0
        mmWidth = 1588
        BandType = 8
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3440
        mmLeft = 178065
        mmTop = 0
        mmWidth = 2910
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 179388
        mmTop = 529
        mmWidth = 17992
        BandType = 8
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3440
        mmLeft = 119063
        mmTop = 0
        mmWidth = 1588
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Contador_Nome'
        DataPipeline = ppEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEmpresas'
        mmHeight = 2910
        mmLeft = 26194
        mmTop = 529
        mmWidth = 68792
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Contador_CRC'
        DataPipeline = ppEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppEmpresas'
        mmHeight = 2910
        mmLeft = 95515
        mmTop = 529
        mmWidth = 22225
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 119856
        mmTop = 529
        mmWidth = 57679
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Conta'
      DataPipeline = ppLancamentos
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppLancamentos'
      NewFile = False
      object gConta: TppGroupHeaderBand
        BeforePrint = gContaBeforePrint
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object lConta: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'lConta'
          Border.Style = psClear
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Color = 16768477
          DataField = 'Conta'
          DataPipeline = ppLancamentos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taCentered
          VerticalAlignment = avCenter
          DataPipelineName = 'ppLancamentos'
          mmHeight = 2660
          mmLeft = 9926
          mmTop = 590
          mmWidth = 26287
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel5: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label5'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'CONTA:'
          Color = clNavy
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2131
          mmLeft = 1588
          mmTop = 590
          mmWidth = 7408
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText3: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText3'
          OnGetText = ppDBText3GetText
          Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
          Border.Style = psClear
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 1411
          Color = 16768477
          DataField = 'Descricao'
          DataPipeline = ppLancamentos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 7
          Font.Style = [fsBold]
          VerticalAlignment = avCenter
          DataPipelineName = 'ppLancamentos'
          mmHeight = 2660
          mmLeft = 49609
          mmTop = 590
          mmWidth = 147836
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine1: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line1'
          Border.mmPadding = 0
          Pen.Width = 0
          mmHeight = 794
          mmLeft = 0
          mmTop = 3515
          mmWidth = 197644
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel6: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label6'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 
            'SALDO ANTERIOR . . . . . . . . . . . . . . . . . . . . . . . . .' +
            ' . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .' +
            ' . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .' +
            ' . . . . . . . . . . . . . . . . . . . . . '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          VerticalAlignment = avCenter
          mmHeight = 2538
          mmLeft = 63142
          mmTop = 4311
          mmWidth = 110149
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBText2: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'lConta1'
          Border.Style = psClear
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Color = 16768477
          DataField = 'Codigo'
          DataPipeline = ppLancamentos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taCentered
          VerticalAlignment = avCenter
          DataPipelineName = 'ppLancamentos'
          mmHeight = 2660
          mmLeft = 36616
          mmTop = 590
          mmWidth = 12733
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object lSaldo_Anterior: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText2'
          Border.mmPadding = 0
          DataField = 'Saldo_Anterior'
          DataPipeline = ppLancamentos
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 7
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          VerticalAlignment = avCenter
          DataPipelineName = 'ppLancamentos'
          mmHeight = 2538
          mmLeft = 174484
          mmTop = 4155
          mmWidth = 22719
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine5: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line5'
          Border.mmPadding = 0
          Pen.Width = 0
          mmHeight = 794
          mmLeft = 0
          mmTop = 237
          mmWidth = 197644
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line2'
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          mmHeight = 794
          mmLeft = 0
          mmTop = 6814
          mmWidth = 197644
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object rgConta: TppGroupFooterBand
        BeforePrint = rgContaBeforePrint
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3528
        mmPrintPosition = 0
        object ppLabel8: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label8'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 
            'TOTAL DA CONTA. . . . . . . . . . . . . . . . . . . . . . . . . ' +
            '. . . . . . . . . . . . . . . . . . . . . . . . .'
          Color = 16768477
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          VerticalAlignment = avCenter
          mmHeight = 3034
          mmLeft = 63218
          mmTop = 106
          mmWidth = 63500
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object lSaldoAtual: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'lSaldoAtual1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 0
          Color = 16768477
          DataType = dtCurrency
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 7
          Font.Style = [fsBold]
          OnCalc = lSaldoAtualCalc
          TextAlignment = taRightJustified
          VerticalAlignment = avCenter
          mmHeight = 3034
          mmLeft = 174484
          mmTop = 106
          mmWidth = 22719
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object lTotalContaCred: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'lTotalContaCred'
          Border.mmPadding = 0
          Color = 16768477
          DataField = 'Credito'
          DataPipeline = ppLancamentos
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          VerticalAlignment = avCenter
          DataPipelineName = 'ppLancamentos'
          mmHeight = 3034
          mmLeft = 150918
          mmTop = 106
          mmWidth = 22719
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object lTotalContaDeb: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'lTotalContaDeb'
          Border.mmPadding = 0
          Color = 16768477
          DataField = 'Debito'
          DataPipeline = ppLancamentos
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          VerticalAlignment = avCenter
          DataPipelineName = 'ppLancamentos'
          mmHeight = 3034
          mmLeft = 127353
          mmTop = 106
          mmWidth = 22719
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'Processo'
      DataPipeline = ppLancamentos
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppLancamentos'
      NewFile = False
      object rgProcessoCab: TppGroupHeaderBand
        BeforePrint = rgProcessoCabBeforePrint
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 3951
        mmPrintPosition = 0
        object ppLine4: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line4'
          Border.mmPadding = 0
          Pen.Width = 0
          mmHeight = 442
          mmLeft = 265
          mmTop = 2469
          mmWidth = 63184
          BandType = 3
          GroupNo = 2
          LayerName = Foreground
        end
        object ppDBText8: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText8'
          Border.BorderPositions = [bpTop, bpBottom]
          Border.Color = clSilver
          Border.mmPadding = 0
          Color = 13820415
          DataField = 'Processo'
          DataPipeline = ppLancamentos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 7
          Font.Style = [fsBold]
          VerticalAlignment = avCenter
          DataPipelineName = 'ppLancamentos'
          mmHeight = 2974
          mmLeft = 63236
          mmTop = 846
          mmWidth = 134317
          BandType = 3
          GroupNo = 2
          LayerName = Foreground
        end
        object ppDBText11: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText11'
          Border.mmPadding = 0
          DataField = 'Saldo_Anterior'
          DataPipeline = ppLancamentos
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 7
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          VerticalAlignment = avCenter
          DataPipelineName = 'ppLancamentos'
          mmHeight = 2646
          mmLeft = 174484
          mmTop = 970
          mmWidth = 22719
          BandType = 3
          GroupNo = 2
          LayerName = Foreground
        end
      end
      object rgProcesso: TppGroupFooterBand
        BeforePrint = rgProcessoBeforePrint
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3528
        mmPrintPosition = 0
        object lTotalPro: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'lTotalPro'
          HyperlinkEnabled = False
          AutoSize = False
          Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
          Border.mmPadding = 0
          Caption = 
            'TOTAL DO PROCESSO. . . . . . . . . . . . . . . . . . . . . . . .' +
            ' . . . . . . . . . . . . . . . . .'
          Color = 13820415
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          VerticalAlignment = avCenter
          mmHeight = 3034
          mmLeft = 63236
          mmTop = 141
          mmWidth = 63500
          BandType = 5
          GroupNo = 2
          LayerName = Foreground
        end
        object lTotalProD: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'lTotalProD'
          Border.mmPadding = 0
          Color = 13820415
          DataField = 'Debito'
          DataPipeline = ppLancamentos
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          DataPipelineName = 'ppLancamentos'
          mmHeight = 3034
          mmLeft = 127357
          mmTop = 141
          mmWidth = 22672
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object lTotalProC: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'lTotalProC'
          Border.mmPadding = 0
          Color = 13820415
          DataField = 'Credito'
          DataPipeline = ppLancamentos
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          DataPipelineName = 'ppLancamentos'
          mmHeight = 3034
          mmLeft = 150918
          mmTop = 141
          mmWidth = 22719
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object lSaldoPro: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'lSaldoPro'
          AutoSize = False
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 0
          Color = 13820415
          DataType = dtCurrency
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          mmHeight = 3034
          mmLeft = 174484
          mmTop = 141
          mmWidth = 22719
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'Beneficiario'
      DataPipeline = ppLancamentos
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppLancamentos'
      NewFile = False
      object rgBeneficiarioCab: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppLine3: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line3'
          Border.mmPadding = 0
          Pen.Width = 0
          mmHeight = 442
          mmLeft = 176
          mmTop = 2346
          mmWidth = 63184
          BandType = 3
          GroupNo = 2
          LayerName = Foreground
        end
        object ppDBText6: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText6'
          Border.BorderPositions = [bpTop, bpBottom]
          Border.Color = clSilver
          Border.mmPadding = 0
          Color = 16771839
          DataField = 'Beneficiario'
          DataPipeline = ppLancamentos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 7
          Font.Style = [fsBold]
          VerticalAlignment = avCenter
          DataPipelineName = 'ppLancamentos'
          mmHeight = 2974
          mmLeft = 63237
          mmTop = 954
          mmWidth = 134317
          BandType = 3
          GroupNo = 2
          LayerName = Foreground
        end
        object ppDBText7: TppDBText
          DesignLayer = ppDesignLayer1
          UserName = 'DBText7'
          Border.mmPadding = 0
          DataField = 'Saldo_Anterior'
          DataPipeline = ppLancamentos
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 7
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          VerticalAlignment = avCenter
          DataPipelineName = 'ppLancamentos'
          mmHeight = 2646
          mmLeft = 174484
          mmTop = 1058
          mmWidth = 22719
          BandType = 3
          GroupNo = 2
          LayerName = Foreground
        end
      end
      object rgBeneficiario: TppGroupFooterBand
        BeforePrint = rgBeneficiarioBeforePrint
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3528
        mmPrintPosition = 0
        object ppLabel13: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label13'
          HyperlinkEnabled = False
          AutoSize = False
          Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
          Border.mmPadding = 0
          Caption = 
            'TOTAL DO BENEFICI'#193'RIO . . . . . . . . . . . . . . . . . . . . . ' +
            '. . . . . . . . . . . . . . . .'
          Color = 16771839
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          VerticalAlignment = avCenter
          mmHeight = 3034
          mmLeft = 63236
          mmTop = 282
          mmWidth = 63500
          BandType = 5
          GroupNo = 2
          LayerName = Foreground
        end
        object lTotalBeneC: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'lTotalBeneC'
          Border.mmPadding = 0
          Color = 16771839
          DataField = 'Credito'
          DataPipeline = ppLancamentos
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          VerticalAlignment = avCenter
          DataPipelineName = 'ppLancamentos'
          mmHeight = 3034
          mmLeft = 150918
          mmTop = 282
          mmWidth = 22719
          BandType = 5
          GroupNo = 2
          LayerName = Foreground
        end
        object lTotalBeneD: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'lTotalBeneD'
          Border.mmPadding = 0
          Color = 16771839
          DataField = 'Debito'
          DataPipeline = ppLancamentos
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          VerticalAlignment = avCenter
          DataPipelineName = 'ppLancamentos'
          mmHeight = 3034
          mmLeft = 127353
          mmTop = 282
          mmWidth = 22719
          BandType = 5
          GroupNo = 2
          LayerName = Foreground
        end
        object lSaldoBene: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'lSaldoBene'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 0
          Color = 16771839
          DataType = dtCurrency
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 7
          Font.Style = [fsBold]
          OnCalc = lSaldoAtualCalc
          TextAlignment = taRightJustified
          VerticalAlignment = avCenter
          mmHeight = 3034
          mmLeft = 174484
          mmTop = 282
          mmWidth = 22719
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Data'
      DataPipeline = ppLancamentos
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppLancamentos'
      NewFile = False
      object gData: TppGroupHeaderBand
        Visible = False
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object rgData: TppGroupFooterBand
        Visible = False
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3528
        mmPrintPosition = 0
        object ppLabel11: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label11'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 
            'TOTAL DO DIA... . . . . . . . . . . . . . . . . . . . . . . . . ' +
            '. . . . . . . . . . . . . . . . . . . . . . . . . . .'
          Color = 14680063
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          VerticalAlignment = avCenter
          mmHeight = 3034
          mmLeft = 63218
          mmTop = 282
          mmWidth = 63500
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object lTotalDiaC: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'lTotalDiaC'
          Border.mmPadding = 0
          Color = 14680063
          DataField = 'Credito'
          DataPipeline = ppLancamentos
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          VerticalAlignment = avCenter
          DataPipelineName = 'ppLancamentos'
          mmHeight = 3034
          mmLeft = 150918
          mmTop = 282
          mmWidth = 22719
          BandType = 5
          GroupNo = 1
          LayerName = Foreground
        end
        object lTotalDiaD: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'lTotalDiaD'
          Border.mmPadding = 0
          Color = 14680063
          DataField = 'Debito'
          DataPipeline = ppLancamentos
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 7
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          VerticalAlignment = avCenter
          DataPipelineName = 'ppLancamentos'
          mmHeight = 3034
          mmLeft = 127353
          mmTop = 282
          mmWidth = 22719
          BandType = 5
          GroupNo = 1
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
  object ppLancamentos: TppDBPipeline
    DataSource = dstLancamentos
    CloseDataSource = True
    UserName = 'Lancamentos'
    Left = 546
    Top = 56
  end
  object ppEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    CloseDataSource = True
    UserName = 'Empresas'
    Left = 546
    Top = 104
  end
  object tPlanoContas: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      '--USE Cybersoft_Contabilidade_MTRADING'
      ''
      'DECLARE @pDataIni datetime, @pDataFim datetime'
      'SET @pDataIni = '#39'11/01/2010'#39
      'SET @pDataFim = '#39'11/30/2010'#39
      ''
      
        'UPDATE PlanoContas SET Debito   = CASE WHEN (SELECT SUM(Valor) F' +
        'ROM Lancamentos WHERE(Conta_Debito  = PlanoContas.Codigo) AND (D' +
        'ata BETWEEN @pDataIni AND @pDataFim)) > 0 THEN (SELECT SUM(Valor' +
        ') FROM Lancamentos WHERE(Conta_Debito  = PlanoContas.Codigo) AND' +
        ' (Data BETWEEN @pDataIni AND @pDataFim)) ELSE 0 END'
      
        'UPDATE PlanoContas SET Credito  = CASE WHEN (SELECT SUM(Valor) F' +
        'ROM Lancamentos WHERE(Conta_Credito = PlanoContas.Codigo) AND (D' +
        'ata BETWEEN @pDataIni AND @pDataFim)) > 0 THEN (SELECT SUM(Valor' +
        ') FROM Lancamentos WHERE(Conta_Credito = PlanoContas.Codigo) AND' +
        ' (Data BETWEEN @pDataIni AND @pDataFim)) ELSE 0 END'
      
        'UPDATE PlanoContas SET Atualiza_Debito   = CASE WHEN (SELECT SUM' +
        '(Valor) FROM Lancamentos WHERE(Conta_Debito  = PlanoContas.Codig' +
        'o) AND (Data < @pDataIni)) > 0 THEN (SELECT SUM(Valor) FROM Lanc' +
        'amentos WHERE(Conta_Debito  = PlanoContas.Codigo) AND (Data < @p' +
        'DataIni)) ELSE 0 END'
      
        'UPDATE PlanoContas SET Atualiza_Credito  = CASE WHEN (SELECT SUM' +
        '(Valor) FROM Lancamentos WHERE(Conta_Credito = PlanoContas.Codig' +
        'o) AND (Data < @pDataIni)) > 0 THEN (SELECT SUM(Valor) FROM Lanc' +
        'amentos WHERE(Conta_Credito = PlanoContas.Codigo) AND (Data < @p' +
        'DataIni)) ELSE 0 END'
      
        'UPDATE PlanoContas SET Atualiza_Anterior = CASE WHEN (Saldo_Ante' +
        'rior - Atualiza_Debito + Atualiza_Credito) > 0 THEN (Saldo_Anter' +
        'ior - Atualiza_Debito + Atualiza_Credito) ELSE 0 END'
      ''
      '-- Duplica a tabela e totaliza as contas titulos'
      
        'SELECT PlanoContas.*, (Atualiza_Anterior - Debito + Credito) AS ' +
        'Saldo_Atual, '#39'C'#39' AS DC_Anterior, '#39'C'#39' AS DC_Atual INTO #tPlano FR' +
        'OM PlanoContas ORDER BY Conta'
      
        'UPDATE #tPlano SET Debito  = (SELECT SUM(Debito)  FROM PlanoCont' +
        'as WHERE(PlanoContas.Conta LIKE(RTRIM(#tPlano.Conta)+'#39'%'#39')) AND (' +
        'Sintetica = 0)) WHERE(Sintetica = 1)'
      
        'UPDATE #tPlano SET Credito = (SELECT SUM(Credito) FROM PlanoCont' +
        'as WHERE(PlanoContas.Conta LIKE(RTRIM(#tPlano.Conta)+'#39'%'#39')) AND (' +
        'Sintetica = 0)) WHERE(Sintetica = 1)'
      
        'UPDATE #tPlano SET Atualiza_Anterior = (Saldo_Anterior-Atualiza_' +
        'Debito+Atualiza_Credito) WHERE(Sintetica = 1)'
      
        'UPDATE #tPlano SET Saldo_Atual       = (Atualiza_Anterior-Debito' +
        '+Credito)'
      
        'UPDATE #tPlano SET DC_Anterior       = '#39'D'#39' WHERE(Atualiza_Anteri' +
        'or < 0)'
      
        'UPDATE #tPlano SET DC_Atual          = '#39'D'#39' WHERE(Saldo_Atual < 0' +
        ')'
      
        'UPDATE #tPlano SET Saldo_Atual       = (Saldo_Atual * -1) WHERE ' +
        'Saldo_Atual < 0'
      
        'UPDATE #tPlano SET Saldo_Atual       = 0 WHERE Saldo_Atual IS NU' +
        'LL'
      'UPDATE #tPlano SET Debito            = 0 WHERE Debito IS NULL'
      'UPDATE #tPlano SET Credito           = 0 WHERE Credito IS NULL'
      ''
      
        'SELECT Conta, Codigo, Descricao, Saldo_Anterior, Atualiza_Anteri' +
        'or, Debito, Credito, Saldo_Atual, Sintetica, DC_Anterior, DC_Atu' +
        'al, SUBSTRING(Conta,1,1) AS Grupo  FROM #tPlano ORDER BY Conta'
      ''
      'DROP TABLE #tPlano')
    Left = 360
    Top = 8
    object tPlanoContasConta: TStringField
      FieldName = 'Conta'
      Origin = '#tPlano.Conta'
      FixedChar = True
      Size = 11
    end
    object tPlanoContasCodigo: TStringField
      FieldName = 'Codigo'
      Origin = '#tPlano.Codigo'
      FixedChar = True
      Size = 6
    end
    object tPlanoContasDescricao: TStringField
      FieldName = 'Descricao'
      Origin = '#tPlano.Descricao'
      Size = 50
    end
    object tPlanoContasSaldo_Anterior: TCurrencyField
      FieldName = 'Saldo_Anterior'
      Origin = '#tPlano.Saldo_Anterior'
    end
    object tPlanoContasAtualiza_Anterior: TCurrencyField
      FieldName = 'Atualiza_Anterior'
      Origin = '#tPlano.Atualiza_Anterior'
    end
    object tPlanoContasDebito: TCurrencyField
      FieldName = 'Debito'
      Origin = '#tPlano.Debito'
    end
    object tPlanoContasCredito: TCurrencyField
      FieldName = 'Credito'
      Origin = '#tPlano.Credito'
    end
    object tPlanoContasSaldo_Atual: TCurrencyField
      FieldName = 'Saldo_Atual'
      Origin = '#tPlano.Saldo_Atual'
    end
    object tPlanoContasSintetica: TBooleanField
      FieldName = 'Sintetica'
      Origin = '#tPlano.Sintetica'
    end
    object tPlanoContasDC_Anterior: TStringField
      FieldName = 'DC_Anterior'
      Origin = '#tPlano.DC_Anterior'
      Size = 1
    end
    object tPlanoContasDC_Atual: TStringField
      FieldName = 'DC_Atual'
      Origin = '#tPlano.DC_Atual'
      Size = 1
    end
    object tPlanoContasGrupo: TStringField
      FieldName = 'Grupo'
      Origin = '.'
      ReadOnly = True
      Size = 1
    end
  end
  object tMovimento: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      
        'SELECT Data, Numero, Conta_Debito AS Conta, Historico_Codigo, Hi' +
        'storico_Complemento, Valor AS Debito, 0.00 AS Credito, PlanoCont' +
        'as.Conta AS Classifica, PlanoContas.Descricao FROM Lancamentos, ' +
        'PlanoContas'
      'WHERE Numero = 100')
    Left = 296
    Top = 8
  end
  object dstLancamentos: TDataSource
    DataSet = tLancamentos
    Left = 224
    Top = 56
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
    Left = 424
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
    Left = 424
    Top = 56
  end
  object tBenef: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select distinct '
      '      CNPJ_CPF = isnull(CNPJ, '#39#39')+isnull(CPF, '#39#39')'
      '     ,Nome'
      'from Clientes')
    FetchRows = 1
    Left = 296
    Top = 56
    object tBenefCNPJ_CPF: TStringField
      DisplayWidth = 12
      FieldName = 'CNPJ_CPF'
      ReadOnly = True
      EditMask = '##.###.###/####-##;0'
      Size = 28
    end
    object tBenefNome: TStringField
      DisplayWidth = 35
      FieldName = 'Nome'
      Size = 50
    end
  end
  object dstBenef: TDataSource
    DataSet = tBenef
    Left = 296
    Top = 112
  end
end
