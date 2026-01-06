object Impressao_Faturamento_HistoricoPedidos: TImpressao_Faturamento_HistoricoPedidos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Impressao_Faturamento_HistoricoPedidos'
  ClientHeight = 307
  ClientWidth = 523
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
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
    Width = 523
    Height = 45
    Align = alTop
    Stretch = True
    ExplicitLeft = -8
    ExplicitTop = 34
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
    Width = 198
    Height = 18
    Caption = 'Hist'#243'rico dos Pedidos de Venda.'
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
    Top = 275
    Width = 523
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitTop = 227
    DesignSize = (
      523
      32)
    object Button1: TButton
      Left = 301
      Top = 1
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Anchors = [akTop, akRight]
      Caption = '&Limpar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = Button1Click
    end
    object bSair: TButton
      Left = 449
      Top = 1
      Width = 74
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
      Left = 375
      Top = 1
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Anchors = [akTop, akRight]
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bImprimirClick
    end
  end
  object StaticText1: TStaticText
    Left = 17
    Top = 62
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
    TabOrder = 9
    Transparent = False
    StyleElements = []
  end
  object cDataIni: TDateEdit
    Left = 131
    Top = 62
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
    Left = 239
    Top = 61
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
    TabOrder = 10
    Transparent = False
    StyleElements = []
  end
  object cDataFim: TDateEdit
    Left = 311
    Top = 61
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
  end
  object StaticText7: TStaticText
    Left = 17
    Top = 85
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
    TabOrder = 11
    Transparent = False
    StyleElements = []
  end
  object cRepresentante: TRxDBLookupCombo
    Left = 131
    Top = 85
    Width = 375
    Height = 21
    DropDownCount = 10
    DropDownWidth = 550
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
    TabOrder = 3
  end
  object StaticText3: TStaticText
    Left = 17
    Top = 108
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
    TabOrder = 12
    Transparent = False
    StyleElements = []
  end
  object cCliente: TRxDBLookupCombo
    Left = 131
    Top = 108
    Width = 375
    Height = 21
    DropDownCount = 10
    DropDownWidth = 550
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo;CNPJ;NOME'
    LookupDisplayIndex = 2
    LookupSource = Dados.dsClientes
    ParentFont = False
    TabOrder = 4
  end
  object StaticText6: TStaticText
    Left = 17
    Top = 154
    Width = 112
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Pedido'
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
  object StaticText8: TStaticText
    Left = 17
    Top = 177
    Width = 112
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Situa'#231#227'o do Pedido'
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
  object cSituacao: TComboBox
    Left = 131
    Top = 177
    Width = 375
    Height = 21
    Style = csDropDownList
    DropDownCount = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    Items.Strings = (
      'N'#227'o Autorizados'
      'Autorizados'
      'Liberado p/Separa'#231#227'o'
      'Em Separa'#231#227'o'
      'Separados'
      'Em Faturamento'
      'Faturados'
      'Despachados'
      'Baixados')
  end
  object cPedido: TEdit
    Left = 131
    Top = 154
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object cExcel: TCheckBox
    Left = 17
    Top = 234
    Width = 97
    Height = 17
    Caption = 'Gerar em Excel.'
    TabOrder = 8
  end
  object StaticText4: TStaticText
    Left = 17
    Top = 131
    Width = 112
    Height = 21
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Raiz do CNPJ'
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
  object cRaizCNPJ: TEdit
    Left = 131
    Top = 131
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 8
    ParentFont = False
    TabOrder = 5
  end
  object pPedidos: TppDBPipeline
    DataSource = dstPedidos
    OpenDataSource = False
    UserName = 'pPedidos'
    Left = 341
    Top = 157
    object pPedidosppField1: TppField
      FieldAlias = 'Pedido'
      FieldName = 'Pedido'
      FieldLength = 10
      DisplayWidth = 10
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
      FieldAlias = 'Situacao_Ped'
      FieldName = 'Situacao_Ped'
      FieldLength = 14
      DisplayWidth = 14
      Position = 4
    end
    object pPedidosppField6: TppField
      FieldAlias = 'Vencimento'
      FieldName = 'Vencimento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 5
    end
    object pPedidosppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtde_M3'
      FieldName = 'Qtde_M3'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object pPedidosppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtde_M3Orig'
      FieldName = 'Qtde_M3Orig'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object pPedidosppField9: TppField
      FieldAlias = 'Total_PedidoOriginal'
      FieldName = 'Total_PedidoOriginal'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 8
    end
    object pPedidosppField10: TppField
      FieldAlias = 'Total_Pedido'
      FieldName = 'Total_Pedido'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 9
    end
    object pPedidosppField11: TppField
      FieldAlias = 'Saldo'
      FieldName = 'Saldo'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 10
    end
    object pPedidosppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Transp_Cod'
      FieldName = 'Transp_Cod'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object pPedidosppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota'
      FieldName = 'Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object pPedidosppField14: TppField
      FieldAlias = 'DataNF'
      FieldName = 'DataNF'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
    object pPedidosppField15: TppField
      FieldAlias = 'Cliente_Nome'
      FieldName = 'Cliente_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object pPedidosppField16: TppField
      FieldAlias = 'Cliente_CNPJ'
      FieldName = 'Cliente_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 15
    end
    object pPedidosppField17: TppField
      FieldAlias = 'Situacao_NF'
      FieldName = 'Situacao_NF'
      FieldLength = 9
      DisplayWidth = 9
      Position = 16
    end
    object pPedidosppField18: TppField
      FieldAlias = 'Transportador'
      FieldName = 'Transportador'
      FieldLength = 60
      DisplayWidth = 60
      Position = 17
    end
    object pPedidosppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_Unitario'
      FieldName = 'Valor_Unitario'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
  end
  object pEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    CloseDataSource = True
    UserName = 'pEmpresas'
    Left = 344
    Top = 9
  end
  object tRepresentantes: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT *'
      'FROM Fornecedores '
      'ORDER BY Nome')
    Left = 246
    Top = 9
  end
  object dstRepresentantes: TDataSource
    DataSet = tRepresentantes
    Left = 246
    Top = 57
  end
  object tPedidos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Pedido'
      
        '      ,Pedido_Pai = iif(isnull(Pedido_Pai, '#39#39') = '#39#39', Pedido_Pai2' +
        ', Pedido_Pai)'
      '      ,Pedido_Pai2'
      '      ,Data'
      '      ,Situacao_Ped = case Local'
      '                           when 0 then '#39'AGUARDANDO'#39' '
      '                           when 1 then '#39'LIBERADO'#39' '
      '                           when 2 then '#39'EM SEPARA'#199#195'O'#39' '
      '                           when 3 then '#39'SEPARADO'#39' '
      '                           when 4 then '#39'EM FATURAMENTO'#39' '
      '                           when 5 then '#39'FATURADO'#39' '
      '                           when 6 then '#39'DESPACHADO'#39' '
      '                           when 7 then '#39'BAIXADO'#39' '
      '                      end'
      '      ,Vencimento = Data'
      
        '      ,Qtde_M3 = (select sum(Quantidade/1000) from PedidosRepres' +
        'entantesItens pri where pri.Pedido = pr.Pedido)'
      
        '      ,Qtde_M3Orig = (select sum(Quantidade_Original/1000) from ' +
        'PedidosRepresentantesItens pri where pri.Pedido = pr.Pedido)'
      '      ,Total_PedidoOriginal'
      '      ,Total_Pedido'
      '      ,Saldo = Total_PedidoOriginal - Total_Pedido'
      
        '      ,Transp_Cod = (select distinct(Transportador_Codigo) from ' +
        'NotasFiscais nf where nf.Pedido_Representante = pr.Pedido and nf' +
        '.Cancelada <> 1 and Nfe_Denegada <> 1 and isnull(nf.Pedido_Repre' +
        'sentante, '#39#39') <> '#39#39')'
      
        '      ,Nota   = (select max(Numero) from NotasFiscais nf where n' +
        'f.Pedido_Representante = pr.Pedido and nf.Cancelada <> 1 and Nfe' +
        '_Denegada <> 1 and isnull(nf.Pedido_Representante, '#39#39') <> '#39#39')'
      
        '      ,DataNF = (select max(Data_Emissao) from NotasFiscais nf w' +
        'here nf.Pedido_Representante = pr.Pedido and nf.Cancelada <> 1 a' +
        'nd Nfe_Denegada <> 1 and isnull(nf.Pedido_Representante, '#39#39') <> ' +
        #39#39')'
      '      ,Cliente_Nome'
      '      ,Cliente_CNPJ'
      'into #temp'
      'from PedidosRepresentantes pr'
      
        'where (isnull(Pedido_Pai, '#39#39') = '#39#39' and isnull(Pedido_Pai2, '#39#39') =' +
        ' '#39#39')'
      'select *'
      
        '     ,Situacao_NF = (select iif(Cancelada = 1, '#39'CANCELADA'#39', '#39'NOR' +
        'MAL'#39') from NotasItens ni where ni.Nota = #temp.Nota and ni.Data ' +
        '= #temp.DataNF)'
      
        '     ,Transportador = (select Nome from Fornecedores where Codig' +
        'o = Transp_Cod)'
      
        '     ,Valor_Unitario = isnull((select max(Valor_Unitario) from N' +
        'otasItens ni where ni.Nota = #temp.Nota and ni.Data = #temp.Data' +
        'NF), 0)'
      'from #temp'
      
        'order by cast(substring(Pedido_Pai, 2,15) as int), cast(substrin' +
        'g(Pedido_Pai2,2,15) as int), cast(substring(Pedido, 2,15) as int' +
        ')'
      'drop table #temp')
    Active = True
    Left = 157
    Top = 110
  end
  object dstPedidos: TDataSource
    DataSet = tPedidos
    Left = 157
    Top = 157
  end
  object rHistorico: TppReport
    AutoStop = False
    DataPipeline = pPedidos
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Hist'#243'ricos de Pedidos de Venda'
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
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 401
    Top = 146
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pPedidos'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 34131
      mmPrintPosition = 0
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer4
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
        mmHeight = 8202
        mmLeft = 28047
        mmTop = 0
        mmWidth = 256388
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'lTitulo'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Hist'#243'rico de Pedidos de Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 28047
        mmTop = 8424
        mmWidth = 256388
        BandType = 0
        LayerName = BandLayer4
      end
      object iLogo: TppImage
        DesignLayer = ppDesignLayer4
        UserName = 'iLogo'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 17329
        mmLeft = 0
        mmTop = 0
        mmWidth = 27252
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PEDIDO'
        Color = 6697728
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5253
        mmLeft = 265
        mmTop = 23284
        mmWidth = 145522
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'N'#186
        Color = 6697728
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5292
        mmLeft = 264
        mmTop = 28839
        mmWidth = 35233
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'SITUA'#199#195'O'
        Color = 6697728
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5292
        mmLeft = 58059
        mmTop = 28839
        mmWidth = 16617
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DATA'
        Color = 6697728
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5292
        mmLeft = 35978
        mmTop = 28839
        mmWidth = 10351
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'VENCTO'
        Color = 6697728
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5292
        mmLeft = 46732
        mmTop = 28839
        mmWidth = 10517
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'QTDE M'#179
        Color = 6697728
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5292
        mmLeft = 75065
        mmTop = 28839
        mmWidth = 33603
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TOTAL'
        Color = 6697728
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5292
        mmLeft = 109270
        mmTop = 28839
        mmWidth = 36516
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NOTA FISCAL'
        Color = 4605510
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5253
        mmLeft = 146247
        mmTop = 23284
        mmWidth = 138376
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label102'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'N'#186' NOTA'
        Color = 4605510
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5292
        mmLeft = 146446
        mmTop = 28839
        mmWidth = 10559
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DATA'
        Color = 4605510
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5292
        mmLeft = 157283
        mmTop = 28839
        mmWidth = 10351
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TRANSPORTADOR'
        Color = 4605510
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5292
        mmLeft = 228385
        mmTop = 28839
        mmWidth = 40772
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label22'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'SITUA'#199#195'O'
        Color = 4605510
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5292
        mmLeft = 269429
        mmTop = 28839
        mmWidth = 15223
        BandType = 0
        LayerName = BandLayer4
      end
      object lPeriodo: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'lTitulo1'
        CharWrap = True
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Hist'#243'rico de Pedidos de Venda'
        Color = 15132390
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        VerticalAlignment = avCenter
        mmHeight = 4023
        mmLeft = 265
        mmTop = 18650
        mmWidth = 284428
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label19'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CLIENTE'
        Color = 4605510
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5292
        mmLeft = 168067
        mmTop = 28839
        mmWidth = 60193
        BandType = 0
        LayerName = BandLayer4
      end
    end
    object ppDetailBand3: TppDetailBand
      BeforePrint = ppDetailBand3BeforePrint
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 11113
      mmPrintPosition = 0
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Pedido'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6697728
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 2838
        mmLeft = 264
        mmTop = 0
        mmWidth = 11625
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'Pedido_Pai'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6697728
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 2838
        mmLeft = 12301
        mmTop = 0
        mmWidth = 11624
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'Pedido_Pai2'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6697728
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 2838
        mmLeft = 24075
        mmTop = 0
        mmWidth = 11094
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'Data'
        DataPipeline = pPedidos
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6697728
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 2838
        mmLeft = 35978
        mmTop = 0
        mmWidth = 10351
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'Vencimento'
        DataPipeline = pPedidos
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6697728
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 2838
        mmLeft = 46733
        mmTop = 0
        mmWidth = 10520
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'Qtde_M3'
        DataPipeline = pPedidos
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6697728
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 2838
        mmLeft = 92078
        mmTop = 0
        mmWidth = 16657
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'Total_Pedido'
        DataPipeline = pPedidos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6697728
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 2838
        mmLeft = 127823
        mmTop = 0
        mmWidth = 17676
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText10'
        Border.mmPadding = 0
        Color = clWindow
        DataField = 'Nota'
        DataPipeline = pPedidos
        DisplayFormat = '000000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 2838
        mmLeft = 146446
        mmTop = 0
        mmWidth = 10559
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText101'
        Border.mmPadding = 0
        Color = clWindow
        DataField = 'DataNF'
        DataPipeline = pPedidos
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 2838
        mmLeft = 157283
        mmTop = 0
        mmWidth = 10351
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText12'
        Border.mmPadding = 0
        Color = clWindow
        DataField = 'Transportador'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 2838
        mmLeft = 228915
        mmTop = 0
        mmWidth = 40076
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText20'
        Border.mmPadding = 0
        Color = clWindow
        DataField = 'Situacao_NF'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 2838
        mmLeft = 269164
        mmTop = 0
        mmWidth = 14163
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText16'
        Border.mmPadding = 0
        Color = clWindow
        DataField = 'Cliente_Nome'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 2838
        mmLeft = 167727
        mmTop = 0
        mmWidth = 38366
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText17'
        Border.mmPadding = 0
        Color = clWindow
        DataField = 'Cliente_CNPJ'
        DataPipeline = pPedidos
        DisplayFormat = '##.###.###/####-##;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 2838
        mmLeft = 206389
        mmTop = 0
        mmWidth = 17334
        BandType = 4
        LayerName = BandLayer4
      end
      object ppSubReport2: TppSubReport
        DesignLayer = ppDesignLayer4
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'pFilho'
        mmHeight = 4140
        mmLeft = 0
        mmTop = 3165
        mmWidth = 284300
        BandType = 4
        LayerName = BandLayer4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object gPai: TppChildReport
          AutoStop = False
          DataPipeline = pFilho
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Hist'#243'ricos de Pedidos de Venda'
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
          DataPipelineName = 'pFilho'
          object ppDetailBand4: TppDetailBand
            AfterPrint = ppDetailBand4AfterPrint
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 3175
            mmPrintPosition = 0
            object ppLine7: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line7'
              Border.mmPadding = 0
              Pen.Color = clSilver
              Pen.Style = psDot
              Pen.Width = 0
              Visible = False
              mmHeight = 159
              mmLeft = 12212
              mmTop = 2938
              mmWidth = 272521
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText25: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText25'
              Border.mmPadding = 0
              DataField = 'Pedido'
              DataPipeline = pFilho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'pFilho'
              mmHeight = 2837
              mmLeft = 12171
              mmTop = 0
              mmWidth = 11624
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText40: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText40'
              Border.mmPadding = 0
              DataField = 'Pedido_Pai2'
              DataPipeline = pFilho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              Visible = False
              DataPipelineName = 'pFilho'
              mmHeight = 2837
              mmLeft = 24077
              mmTop = 0
              mmWidth = 11094
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText41: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText41'
              Border.mmPadding = 0
              DataField = 'Situacao_Ped'
              DataPipeline = pFilho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'pFilho'
              mmHeight = 2837
              mmLeft = 57944
              mmTop = 0
              mmWidth = 16617
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText42: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText42'
              Border.mmPadding = 0
              DataField = 'Data'
              DataPipeline = pFilho
              DisplayFormat = 'dd/mm/yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'pFilho'
              mmHeight = 2837
              mmLeft = 35983
              mmTop = 0
              mmWidth = 10351
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText43: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText43'
              Border.mmPadding = 0
              DataField = 'Vencimento'
              DataPipeline = pFilho
              DisplayFormat = 'dd/mm/yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'pFilho'
              mmHeight = 2837
              mmLeft = 46831
              mmTop = 0
              mmWidth = 10520
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText44: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText44'
              Border.mmPadding = 0
              DataField = 'Qtde_M3'
              DataPipeline = pFilho
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pFilho'
              mmHeight = 2837
              mmLeft = 92075
              mmTop = 0
              mmWidth = 16657
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText45: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText45'
              Border.mmPadding = 0
              DataField = 'Total_Pedido'
              DataPipeline = pFilho
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pFilho'
              mmHeight = 2837
              mmLeft = 127793
              mmTop = 0
              mmWidth = 17676
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText46: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText102'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'Nota'
              DataPipeline = pFilho
              DisplayFormat = '000000000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'pFilho'
              mmHeight = 2837
              mmLeft = 146315
              mmTop = 0
              mmWidth = 10559
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText47: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText47'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'DataNF'
              DataPipeline = pFilho
              DisplayFormat = 'dd/mm/yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'pFilho'
              mmHeight = 2837
              mmLeft = 157163
              mmTop = 0
              mmWidth = 10351
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText48: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText48'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'Transportador'
              DataPipeline = pFilho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'pFilho'
              mmHeight = 2837
              mmLeft = 228865
              mmTop = 0
              mmWidth = 40076
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText49: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText201'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'Situacao_NF'
              DataPipeline = pFilho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'pFilho'
              mmHeight = 2837
              mmLeft = 269082
              mmTop = 0
              mmWidth = 14163
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText61: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText61'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'Cliente_Nome'
              DataPipeline = pFilho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'pFilho'
              mmHeight = 2837
              mmLeft = 167746
              mmTop = 0
              mmWidth = 38366
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText64: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText64'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'Cliente_CNPJ'
              DataPipeline = pFilho
              DisplayFormat = '##.###.###/####-##;0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'pFilho'
              mmHeight = 2837
              mmLeft = 206375
              mmTop = 0
              mmWidth = 17334
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText65: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText601'
              Border.mmPadding = 0
              DataField = 'Qtde_M3Orig'
              DataPipeline = pFilho
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'pFilho'
              mmHeight = 2837
              mmLeft = 74877
              mmTop = 0
              mmWidth = 16657
              BandType = 4
              LayerName = Foreground2
            end
            object ppDBText66: TppDBText
              DesignLayer = ppDesignLayer3
              UserName = 'DBText66'
              Border.mmPadding = 0
              DataField = 'Total_PedidoOriginal'
              DataPipeline = pFilho
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              DataPipelineName = 'pFilho'
              mmHeight = 2837
              mmLeft = 109273
              mmTop = 0
              mmWidth = 17677
              BandType = 4
              LayerName = Foreground2
            end
          end
          object ppSummaryBand1: TppSummaryBand
            BeforePrint = ppSummaryBand1BeforePrint
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 7673
            mmPrintPosition = 0
            object ppLabel25: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label25'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'TOTAL 1'
              Color = 12582911
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              VerticalAlignment = avCenter
              mmHeight = 2819
              mmLeft = 12171
              mmTop = 0
              mmWidth = 62442
              BandType = 7
              LayerName = Foreground2
            end
            object lTotalPai: TppVariable
              DesignLayer = ppDesignLayer3
              UserName = 'lTotalPai'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 0
              Color = 12582911
              DataType = dtCurrency
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              VerticalAlignment = avCenter
              mmHeight = 2908
              mmLeft = 92075
              mmTop = 0
              mmWidth = 16657
              BandType = 7
              LayerName = Foreground2
            end
            object lValorPai: TppVariable
              DesignLayer = ppDesignLayer3
              UserName = 'lTotalPai1'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 1
              Color = 12582911
              DataType = dtCurrency
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              VerticalAlignment = avCenter
              mmHeight = 2909
              mmLeft = 127793
              mmTop = 0
              mmWidth = 17676
              BandType = 7
              LayerName = Foreground2
            end
            object ppLine2: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line2'
              Border.mmPadding = 0
              Pen.Color = 14342874
              Pen.Width = 0
              mmHeight = 794
              mmLeft = 265
              mmTop = 6878
              mmWidth = 284428
              BandType = 7
              LayerName = Foreground2
            end
            object ppLabel1: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label1'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'SALDO 1'
              Color = 12582911
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              VerticalAlignment = avCenter
              mmHeight = 2819
              mmLeft = 12172
              mmTop = 3438
              mmWidth = 62442
              BandType = 7
              LayerName = Foreground2
            end
            object lTotalSaldoPai: TppVariable
              DesignLayer = ppDesignLayer3
              UserName = 'lTotalPai3'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 2
              Color = 12582911
              DataType = dtCurrency
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              VerticalAlignment = avCenter
              mmHeight = 2819
              mmLeft = 92076
              mmTop = 3438
              mmWidth = 16657
              BandType = 7
              LayerName = Foreground2
            end
            object lValorSaldoPai: TppVariable
              DesignLayer = ppDesignLayer3
              UserName = 'lValorSaldoPai'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 3
              Color = 12582911
              DataType = dtCurrency
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              VerticalAlignment = avCenter
              mmHeight = 2909
              mmLeft = 127795
              mmTop = 3438
              mmWidth = 17676
              BandType = 7
              LayerName = Foreground2
            end
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
      object ppDBText60: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText60'
        Border.mmPadding = 0
        Color = 12582911
        DataField = 'Qtde_M3Orig'
        DataPipeline = pPedidos
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6697728
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 2838
        mmLeft = 74966
        mmTop = 0
        mmWidth = 16657
        BandType = 4
        LayerName = BandLayer4
      end
      object ppSubReport3: TppSubReport
        DesignLayer = ppDesignLayer4
        UserName = 'SubReport3'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppSubReport2
        TraverseAllData = False
        DataPipelineName = 'pFilho2'
        mmHeight = 4140
        mmLeft = 0
        mmTop = 6826
        mmWidth = 284300
        BandType = 4
        LayerName = BandLayer4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = pFilho2
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Hist'#243'ricos de Pedidos de Venda'
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
          DataPipelineName = 'pFilho2'
          object ppDetailBand5: TppDetailBand
            AfterPrint = ppDetailBand5AfterPrint
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 2910
            mmPrintPosition = 0
            object ppDBText24: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText24'
              Border.mmPadding = 0
              DataField = 'Pedido'
              DataPipeline = pFilho2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'pFilho2'
              mmHeight = 2837
              mmLeft = 24077
              mmTop = 0
              mmWidth = 11094
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText50: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText50'
              Border.mmPadding = 0
              DataField = 'Situacao_Ped'
              DataPipeline = pFilho2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'pFilho2'
              mmHeight = 2837
              mmLeft = 57944
              mmTop = 0
              mmWidth = 16617
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText51: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText51'
              Border.mmPadding = 0
              DataField = 'Data'
              DataPipeline = pFilho2
              DisplayFormat = 'dd/mm/yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'pFilho2'
              mmHeight = 2837
              mmLeft = 35983
              mmTop = 0
              mmWidth = 10351
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText52: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText52'
              Border.mmPadding = 0
              DataField = 'Vencimento'
              DataPipeline = pFilho2
              DisplayFormat = 'dd/mm/yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'pFilho2'
              mmHeight = 2837
              mmLeft = 46831
              mmTop = 0
              mmWidth = 10520
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText53: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText53'
              Border.mmPadding = 0
              DataField = 'Qtde_M3'
              DataPipeline = pFilho2
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pFilho2'
              mmHeight = 2837
              mmLeft = 92075
              mmTop = 0
              mmWidth = 16657
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText54: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText54'
              Border.mmPadding = 0
              DataField = 'Total_Pedido'
              DataPipeline = pFilho2
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pFilho2'
              mmHeight = 2837
              mmLeft = 127794
              mmTop = 0
              mmWidth = 17677
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText55: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText103'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'Nota'
              DataPipeline = pFilho2
              DisplayFormat = '000000000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'pFilho2'
              mmHeight = 2837
              mmLeft = 146315
              mmTop = 0
              mmWidth = 10559
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText56: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText56'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'DataNF'
              DataPipeline = pFilho2
              DisplayFormat = 'dd/mm/yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'pFilho2'
              mmHeight = 2837
              mmLeft = 157163
              mmTop = 0
              mmWidth = 10351
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText57: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText57'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'Transportador'
              DataPipeline = pFilho2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'pFilho2'
              mmHeight = 2837
              mmLeft = 228865
              mmTop = 0
              mmWidth = 40076
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText58: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText202'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'Situacao_NF'
              DataPipeline = pFilho2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'pFilho2'
              mmHeight = 2837
              mmLeft = 269082
              mmTop = 0
              mmWidth = 14163
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText59: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText59'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'Cliente_Nome'
              DataPipeline = pFilho2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'pFilho2'
              mmHeight = 2837
              mmLeft = 167746
              mmTop = 0
              mmWidth = 38366
              BandType = 4
              LayerName = Foreground3
            end
            object ppDBText62: TppDBText
              DesignLayer = ppDesignLayer5
              UserName = 'DBText62'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'Cliente_CNPJ'
              DataPipeline = pFilho2
              DisplayFormat = '##.###.###/####-##;0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'pFilho2'
              mmHeight = 2837
              mmLeft = 206375
              mmTop = 0
              mmWidth = 17334
              BandType = 4
              LayerName = Foreground3
            end
          end
          object ppSummaryBand2: TppSummaryBand
            BeforePrint = ppSummaryBand2BeforePrint
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 7673
            mmPrintPosition = 0
            object ppLabel26: TppLabel
              DesignLayer = ppDesignLayer5
              UserName = 'Label26'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'TOTAL 2'
              Color = 12582911
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              VerticalAlignment = avCenter
              mmHeight = 2819
              mmLeft = 24077
              mmTop = 0
              mmWidth = 50536
              BandType = 7
              LayerName = Foreground3
            end
            object lTotalPai2: TppVariable
              DesignLayer = ppDesignLayer5
              UserName = 'lTotalPai2'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 0
              Color = 12582911
              DataType = dtCurrency
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              VerticalAlignment = avCenter
              mmHeight = 2819
              mmLeft = 92075
              mmTop = 0
              mmWidth = 16657
              BandType = 7
              LayerName = Foreground3
            end
            object lValorPai2: TppVariable
              DesignLayer = ppDesignLayer5
              UserName = 'lValorPai2'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 1
              Color = 12582911
              DataType = dtCurrency
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              VerticalAlignment = avCenter
              mmHeight = 2909
              mmLeft = 127794
              mmTop = 0
              mmWidth = 17676
              BandType = 7
              LayerName = Foreground3
            end
            object ppLine3: TppLine
              DesignLayer = ppDesignLayer5
              UserName = 'Line1'
              Border.mmPadding = 0
              Pen.Color = 14342874
              Pen.Width = 0
              mmHeight = 794
              mmLeft = -1058
              mmTop = 6878
              mmWidth = 284428
              BandType = 7
              LayerName = Foreground3
            end
            object ppLabel2: TppLabel
              DesignLayer = ppDesignLayer5
              UserName = 'Label1'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'SALDO 2'
              Color = 12582911
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              VerticalAlignment = avCenter
              mmHeight = 2819
              mmLeft = 24077
              mmTop = 3441
              mmWidth = 50536
              BandType = 7
              LayerName = Foreground3
            end
            object lTotalSaldoPai2: TppVariable
              DesignLayer = ppDesignLayer5
              UserName = 'lTotalSaldoPai2'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 2
              Color = 12582911
              DataType = dtCurrency
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              VerticalAlignment = avCenter
              mmHeight = 2819
              mmLeft = 92075
              mmTop = 3441
              mmWidth = 16657
              BandType = 7
              LayerName = Foreground3
            end
            object lValorSaldoPai2: TppVariable
              DesignLayer = ppDesignLayer5
              UserName = 'lValorSaldoPai2'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 3
              Color = 12582911
              DataType = dtCurrency
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              VerticalAlignment = avCenter
              mmHeight = 2909
              mmLeft = 127794
              mmTop = 3441
              mmWidth = 17676
              BandType = 7
              LayerName = Foreground3
            end
          end
          object ppDesignLayers5: TppDesignLayers
            object ppDesignLayer5: TppDesignLayer
              UserName = 'Foreground3'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Color = 14342874
        Pen.Width = 0
        mmHeight = 689
        mmLeft = 0
        mmTop = 2970
        mmWidth = 284326
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText63: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText63'
        Border.mmPadding = 0
        DataField = 'Total_PedidoOriginal'
        DataPipeline = pPedidos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6697728
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 2838
        mmLeft = 109272
        mmTop = 0
        mmWidth = 17677
        BandType = 4
        LayerName = BandLayer4
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer4
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
        mmHeight = 2910
        mmLeft = 265
        mmTop = 529
        mmWidth = 45773
        BandType = 8
        LayerName = BandLayer4
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer4
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
        mmLeft = 120691
        mmTop = 529
        mmWidth = 37449
        BandType = 8
        LayerName = BandLayer4
      end
      object ppSystemVariable5: TppSystemVariable
        DesignLayer = ppDesignLayer4
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
        LayerName = BandLayer4
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line4'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3175
        mmLeft = 46831
        mmTop = 265
        mmWidth = 5821
        BandType = 8
        LayerName = BandLayer4
      end
      object ppSystemVariable6: TppSystemVariable
        DesignLayer = ppDesignLayer4
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
        LayerName = BandLayer4
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line3'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 283898
        BandType = 8
        LayerName = BandLayer4
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line5'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3175
        mmLeft = 263790
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = BandLayer4
      end
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'BandLayer4'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object tFilho: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Pedido'
      '      ,Pedido_Pai'
      '      ,Pedido_Pai2'
      '      ,Data'
      '      ,Situacao_Ped = case Local'
      '                           when 0 then '#39'AGUARDANDO'#39' '
      '                           when 1 then '#39'LIBERADO'#39' '
      '                           when 2 then '#39'EM SEPARA'#199#195'O'#39' '
      '                           when 3 then '#39'SEPARADO'#39' '
      '                           when 4 then '#39'EM FATURAMENTO'#39' '
      '                           when 5 then '#39'FATURADO'#39' '
      '                           when 6 then '#39'DESPACHADO'#39' '
      '                           when 7 then '#39'BAIXADO'#39' '
      '                      end'
      '      ,Vencimento = Data'
      
        '      ,Qtde_M3 = (select sum(Quantidade/1000) from PedidosRepres' +
        'entantesItens pri where pri.Pedido = pr.Pedido)'
      
        '      ,Qtde_M3Orig = (select sum(Quantidade_Original/1000) from ' +
        'PedidosRepresentantesItens pri where pri.Pedido = pr.Pedido)'
      '      ,Total_PedidoOriginal'
      '      ,Total_Pedido'
      '      ,Saldo = Total_PedidoOriginal - Total_Pedido'
      
        '      ,Transp_Cod = (select distinct(Transportador_Codigo) from ' +
        'NotasFiscais nf where nf.Pedido_Representante = pr.Pedido and nf' +
        '.Cancelada <> 1 and Nfe_Denegada <> 1 and isnull(nf.Pedido_Repre' +
        'sentante, '#39#39') <> '#39#39')'
      
        '      ,Nota   = (select max(Numero) from NotasFiscais nf where n' +
        'f.Pedido_Representante = pr.Pedido and nf.Cancelada <> 1 and Nfe' +
        '_Denegada <> 1 and isnull(nf.Pedido_Representante, '#39#39') <> '#39#39')'
      
        '      ,DataNF = (select max(Data_Emissao) from NotasFiscais nf w' +
        'here nf.Pedido_Representante = pr.Pedido and nf.Cancelada <> 1 a' +
        'nd Nfe_Denegada <> 1 and isnull(nf.Pedido_Representante, '#39#39') <> ' +
        #39#39')'
      '      ,Cliente_Nome'
      '      ,Cliente_CNPJ'
      'into #temp'
      'from PedidosRepresentantes pr'
      'where Pedido_Pai = '#39'T8'#39' and isnull(Pedido_Pai2, '#39#39') = '#39#39
      'select *'
      
        '     ,Situacao_NF = (select iif(Cancelada = 1, '#39'CANCELADA'#39', '#39'NOR' +
        'MAL'#39') from NotasItens ni where ni.Nota = #temp.Nota and ni.Data ' +
        '= #temp.DataNF)'
      
        '     ,Transportador = (select Nome from Fornecedores where Codig' +
        'o = Transp_Cod)'
      
        '     ,Valor_Unitario = isnull((select max(Valor_Unitario) from N' +
        'otasItens ni where ni.Nota = #temp.Nota and ni.Data = #temp.Data' +
        'NF), 0)'
      'from #temp'
      'order by cast(substring(Pedido, 2,15) as int)'
      'drop table #temp')
    Active = True
    Left = 101
    Top = 110
  end
  object dstFilho: TDataSource
    DataSet = tFilho
    Left = 101
    Top = 157
  end
  object pFilho: TppDBPipeline
    DataSource = dstFilho
    CloseDataSource = True
    UserName = 'pFilho'
    Left = 343
    Top = 59
    object pFilhoppField1: TppField
      FieldAlias = 'Pedido'
      FieldName = 'Pedido'
      FieldLength = 10
      DisplayWidth = 10
      Position = 0
    end
    object pFilhoppField2: TppField
      FieldAlias = 'Pedido_Pai'
      FieldName = 'Pedido_Pai'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object pFilhoppField3: TppField
      FieldAlias = 'Pedido_Pai2'
      FieldName = 'Pedido_Pai2'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object pFilhoppField4: TppField
      FieldAlias = 'Data'
      FieldName = 'Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object pFilhoppField5: TppField
      FieldAlias = 'Situacao_Ped'
      FieldName = 'Situacao_Ped'
      FieldLength = 14
      DisplayWidth = 14
      Position = 4
    end
    object pFilhoppField6: TppField
      FieldAlias = 'Vencimento'
      FieldName = 'Vencimento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 5
    end
    object pFilhoppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtde_M3'
      FieldName = 'Qtde_M3'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object pFilhoppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtde_M3Orig'
      FieldName = 'Qtde_M3Orig'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object pFilhoppField9: TppField
      FieldAlias = 'Total_PedidoOriginal'
      FieldName = 'Total_PedidoOriginal'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 8
    end
    object pFilhoppField10: TppField
      FieldAlias = 'Total_Pedido'
      FieldName = 'Total_Pedido'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 9
    end
    object pFilhoppField11: TppField
      FieldAlias = 'Saldo'
      FieldName = 'Saldo'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 10
    end
    object pFilhoppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Transp_Cod'
      FieldName = 'Transp_Cod'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object pFilhoppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota'
      FieldName = 'Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object pFilhoppField14: TppField
      FieldAlias = 'DataNF'
      FieldName = 'DataNF'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
    object pFilhoppField15: TppField
      FieldAlias = 'Cliente_Nome'
      FieldName = 'Cliente_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object pFilhoppField16: TppField
      FieldAlias = 'Cliente_CNPJ'
      FieldName = 'Cliente_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 15
    end
    object pFilhoppField17: TppField
      FieldAlias = 'Situacao_NF'
      FieldName = 'Situacao_NF'
      FieldLength = 9
      DisplayWidth = 9
      Position = 16
    end
    object pFilhoppField18: TppField
      FieldAlias = 'Transportador'
      FieldName = 'Transportador'
      FieldLength = 60
      DisplayWidth = 60
      Position = 17
    end
    object pFilhoppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_Unitario'
      FieldName = 'Valor_Unitario'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
  end
  object tFilho2: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Pedido'
      '      ,Pedido_Pai'
      '      ,Pedido_Pai2'
      '      ,Data'
      '      ,Situacao_Ped = case Local'
      '                           when 0 then '#39'AGUARDANDO'#39' '
      '                           when 1 then '#39'LIBERADO'#39' '
      '                           when 2 then '#39'EM SEPARA'#199#195'O'#39' '
      '                           when 3 then '#39'SEPARADO'#39' '
      '                           when 4 then '#39'EM FATURAMENTO'#39' '
      '                           when 5 then '#39'FATURADO'#39' '
      '                           when 6 then '#39'DESPACHADO'#39' '
      '                           when 7 then '#39'BAIXADO'#39' '
      '                      end'
      '      ,Vencimento = Data'
      
        '      ,Qtde_M3 = (select sum(Quantidade/1000) from PedidosRepres' +
        'entantesItens pri where pri.Pedido = pr.Pedido)'
      
        '      ,Qtde_M3Orig = (select sum(Quantidade_Original/1000) from ' +
        'PedidosRepresentantesItens pri where pri.Pedido = pr.Pedido)'
      '      ,Total_PedidoOriginal'
      '      ,Total_Pedido'
      '      ,Saldo = Total_PedidoOriginal - Total_Pedido'
      
        '      ,Transp_Cod = (select distinct(Transportador_Codigo) from ' +
        'NotasFiscais nf where nf.Pedido_Representante = pr.Pedido and nf' +
        '.Cancelada <> 1 and Nfe_Denegada <> 1 and isnull(nf.Pedido_Repre' +
        'sentante, '#39#39') <> '#39#39')'
      
        '      ,Nota   = (select max(Numero) from NotasFiscais nf where n' +
        'f.Pedido_Representante = pr.Pedido and nf.Cancelada <> 1 and Nfe' +
        '_Denegada <> 1 and isnull(nf.Pedido_Representante, '#39#39') <> '#39#39')'
      
        '      ,DataNF = (select max(Data_Emissao) from NotasFiscais nf w' +
        'here nf.Pedido_Representante = pr.Pedido and nf.Cancelada <> 1 a' +
        'nd Nfe_Denegada <> 1 and isnull(nf.Pedido_Representante, '#39#39') <> ' +
        #39#39')'
      '      ,Cliente_Nome'
      '      ,Cliente_CNPJ'
      'into #temp'
      'from PedidosRepresentantes pr'
      'where Pedido_Pai2 = '#39'T9'#39' or Pedido = '#39'T9'#39
      'select *'
      
        '     ,Situacao_NF = (select iif(Cancelada = 1, '#39'CANCELADA'#39', '#39'NOR' +
        'MAL'#39') from NotasItens ni where ni.Nota = #temp.Nota and ni.Data ' +
        '= #temp.DataNF)'
      
        '     ,Transportador = (select Nome from Fornecedores where Codig' +
        'o = Transp_Cod)'
      
        '     ,Valor_Unitario = isnull((select max(Valor_Unitario) from N' +
        'otasItens ni where ni.Nota = #temp.Nota and ni.Data = #temp.Data' +
        'NF), 0)'
      'from #temp'
      'order by cast(substring(Pedido, 2,15) as int)'
      'drop table #temp')
    Active = True
    Left = 50
    Top = 110
  end
  object dstFilho2: TDataSource
    DataSet = tFilho2
    Left = 50
    Top = 157
  end
  object pFilho2: TppDBPipeline
    DataSource = dstFilho2
    CloseDataSource = True
    UserName = 'pFilho2'
    Left = 344
    Top = 116
    object pFilho2ppField1: TppField
      FieldAlias = 'Pedido'
      FieldName = 'Pedido'
      FieldLength = 10
      DisplayWidth = 10
      Position = 0
    end
    object pFilho2ppField2: TppField
      FieldAlias = 'Pedido_Pai'
      FieldName = 'Pedido_Pai'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object pFilho2ppField3: TppField
      FieldAlias = 'Pedido_Pai2'
      FieldName = 'Pedido_Pai2'
      FieldLength = 10
      DisplayWidth = 10
      Position = 2
    end
    object pFilho2ppField4: TppField
      FieldAlias = 'Data'
      FieldName = 'Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object pFilho2ppField5: TppField
      FieldAlias = 'Situacao_Ped'
      FieldName = 'Situacao_Ped'
      FieldLength = 14
      DisplayWidth = 14
      Position = 4
    end
    object pFilho2ppField6: TppField
      FieldAlias = 'Vencimento'
      FieldName = 'Vencimento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 5
    end
    object pFilho2ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtde_M3'
      FieldName = 'Qtde_M3'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object pFilho2ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtde_M3Orig'
      FieldName = 'Qtde_M3Orig'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object pFilho2ppField9: TppField
      FieldAlias = 'Total_PedidoOriginal'
      FieldName = 'Total_PedidoOriginal'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 8
    end
    object pFilho2ppField10: TppField
      FieldAlias = 'Total_Pedido'
      FieldName = 'Total_Pedido'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 9
    end
    object pFilho2ppField11: TppField
      FieldAlias = 'Saldo'
      FieldName = 'Saldo'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 10
    end
    object pFilho2ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Transp_Cod'
      FieldName = 'Transp_Cod'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object pFilho2ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota'
      FieldName = 'Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object pFilho2ppField14: TppField
      FieldAlias = 'DataNF'
      FieldName = 'DataNF'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
    object pFilho2ppField15: TppField
      FieldAlias = 'Cliente_Nome'
      FieldName = 'Cliente_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object pFilho2ppField16: TppField
      FieldAlias = 'Cliente_CNPJ'
      FieldName = 'Cliente_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 15
    end
    object pFilho2ppField17: TppField
      FieldAlias = 'Situacao_NF'
      FieldName = 'Situacao_NF'
      FieldLength = 9
      DisplayWidth = 9
      Position = 16
    end
    object pFilho2ppField18: TppField
      FieldAlias = 'Transportador'
      FieldName = 'Transportador'
      FieldLength = 60
      DisplayWidth = 60
      Position = 17
    end
    object pFilho2ppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_Unitario'
      FieldName = 'Valor_Unitario'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
  end
  object rExcel: TppReport
    AutoStop = False
    DataPipeline = pPedidos
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Hist'#243'ricos de Pedidos de Venda'
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
    DeviceType = 'XlsxReport'
    DefaultFileDeviceType = 'XlsxReport'
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
    TextFileName = '($MyDocuments)\Report.xlsx'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ERP Importa'
    XLSSettings.Author = 'Cybersoft'
    XLSSettings.ExportFormattedStrings = True
    XLSSettings.IgnorePageHeight = True
    XLSSettings.IncludeSingleHeader = True
    XLSSettings.ScaleToPageWidth = True
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Hist'#243'rico de Pedidos'
    XLSSettings.WorksheetName = 'Pedidos'
    Left = 467
    Top = 148
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pPedidos'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 34131
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer6
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
        mmHeight = 8202
        mmLeft = 28047
        mmTop = 0
        mmWidth = 256388
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'lTitulo'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Hist'#243'rico de Pedidos de Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 28047
        mmTop = 8424
        mmWidth = 256388
        BandType = 0
        LayerName = BandLayer8
      end
      object ppImage1: TppImage
        DesignLayer = ppDesignLayer6
        UserName = 'iLogo'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 17329
        mmLeft = 0
        mmTop = 0
        mmWidth = 27252
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PEDIDO'
        Color = 6697728
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5253
        mmLeft = 265
        mmTop = 23284
        mmWidth = 145522
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'N'#186
        Color = 6697728
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5292
        mmLeft = 264
        mmTop = 28839
        mmWidth = 35233
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'SITUA'#199#195'O'
        Color = 6697728
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5292
        mmLeft = 58059
        mmTop = 28839
        mmWidth = 16617
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DATA'
        Color = 6697728
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5292
        mmLeft = 35978
        mmTop = 28839
        mmWidth = 10351
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'VENCTO'
        Color = 6697728
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5292
        mmLeft = 46732
        mmTop = 28839
        mmWidth = 10517
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'QTDE M'#179
        Color = 6697728
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5292
        mmLeft = 75065
        mmTop = 28839
        mmWidth = 33603
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TOTAL'
        Color = 6697728
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5292
        mmLeft = 109270
        mmTop = 28839
        mmWidth = 36516
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NOTA FISCAL'
        Color = 4605510
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5253
        mmLeft = 146247
        mmTop = 23284
        mmWidth = 138376
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label102'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'N'#186' NOTA'
        Color = 4605510
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5292
        mmLeft = 146446
        mmTop = 28839
        mmWidth = 10559
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DATA'
        Color = 4605510
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5292
        mmLeft = 157283
        mmTop = 28839
        mmWidth = 10351
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TRANSPORTADOR'
        Color = 4605510
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5292
        mmLeft = 227887
        mmTop = 28839
        mmWidth = 38614
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label22'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'SITUA'#199#195'O'
        Color = 4605510
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5292
        mmLeft = 267603
        mmTop = 28839
        mmWidth = 15223
        BandType = 0
        LayerName = BandLayer8
      end
      object lPeriodo2: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'lTitulo1'
        CharWrap = True
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Hist'#243'rico de Pedidos de Venda'
        Color = 15132390
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        VerticalAlignment = avCenter
        mmHeight = 4023
        mmLeft = 265
        mmTop = 18650
        mmWidth = 284428
        BandType = 0
        LayerName = BandLayer8
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer6
        UserName = 'Label19'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CLIENTE'
        Color = 4605510
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 5292
        mmLeft = 168067
        mmTop = 28839
        mmWidth = 60193
        BandType = 0
        LayerName = BandLayer8
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Pedido'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6697728
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 5080
        mmLeft = 264
        mmTop = 0
        mmWidth = 11625
        BandType = 4
        LayerName = BandLayer8
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'Pedido_Pai'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6697728
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 5080
        mmLeft = 12301
        mmTop = 0
        mmWidth = 11624
        BandType = 4
        LayerName = BandLayer8
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'Pedido_Pai2'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6697728
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 5080
        mmLeft = 24075
        mmTop = 0
        mmWidth = 11094
        BandType = 4
        LayerName = BandLayer8
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'Data'
        DataPipeline = pPedidos
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6697728
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 5080
        mmLeft = 35978
        mmTop = 0
        mmWidth = 10351
        BandType = 4
        LayerName = BandLayer8
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'Vencimento'
        DataPipeline = pPedidos
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6697728
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 5080
        mmLeft = 46733
        mmTop = 0
        mmWidth = 10520
        BandType = 4
        LayerName = BandLayer8
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'Qtde_M3'
        DataPipeline = pPedidos
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6697728
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 5080
        mmLeft = 92078
        mmTop = 0
        mmWidth = 16657
        BandType = 4
        LayerName = BandLayer8
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'Total_Pedido'
        DataPipeline = pPedidos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6697728
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 5080
        mmLeft = 127823
        mmTop = 0
        mmWidth = 17676
        BandType = 4
        LayerName = BandLayer8
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText10'
        Border.mmPadding = 0
        Color = clWindow
        DataField = 'Nota'
        DataPipeline = pPedidos
        DisplayFormat = '000000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 5080
        mmLeft = 146446
        mmTop = 0
        mmWidth = 10559
        BandType = 4
        LayerName = BandLayer8
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText101'
        Border.mmPadding = 0
        Color = clWindow
        DataField = 'DataNF'
        DataPipeline = pPedidos
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 5080
        mmLeft = 157283
        mmTop = 0
        mmWidth = 10351
        BandType = 4
        LayerName = BandLayer8
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText12'
        Border.mmPadding = 0
        Color = clWindow
        DataField = 'Transportador'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 5080
        mmLeft = 228251
        mmTop = 0
        mmWidth = 38199
        BandType = 4
        LayerName = BandLayer8
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText20'
        Border.mmPadding = 0
        Color = clWindow
        DataField = 'Situacao_NF'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 5080
        mmLeft = 269330
        mmTop = 0
        mmWidth = 13665
        BandType = 4
        LayerName = BandLayer8
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText16'
        Border.mmPadding = 0
        Color = clWindow
        DataField = 'Cliente_Nome'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 5080
        mmLeft = 167727
        mmTop = 0
        mmWidth = 38366
        BandType = 4
        LayerName = BandLayer8
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText17'
        Border.mmPadding = 0
        Color = clWindow
        DataField = 'Cliente_CNPJ'
        DataPipeline = pPedidos
        DisplayFormat = '##.###.###/####-##;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 5080
        mmLeft = 206389
        mmTop = 0
        mmWidth = 20175
        BandType = 4
        LayerName = BandLayer8
      end
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer6
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'pFilho'
        mmHeight = 4140
        mmLeft = 0
        mmTop = 5281
        mmWidth = 284300
        BandType = 4
        LayerName = BandLayer8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = pFilho
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Hist'#243'ricos de Pedidos de Venda'
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
          DataPipelineName = 'pFilho'
          object ppDetailBand2: TppDetailBand
            AfterPrint = ppDetailBand2AfterPrint
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppDBText15: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText25'
              Border.mmPadding = 0
              DataField = 'Pedido'
              DataPipeline = pFilho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho'
              mmHeight = 5080
              mmLeft = 12171
              mmTop = 0
              mmWidth = 11624
              BandType = 4
              LayerName = BandLayer6
            end
            object ppDBText16: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText40'
              Border.mmPadding = 0
              DataField = 'Pedido_Pai2'
              DataPipeline = pFilho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              Visible = False
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho'
              mmHeight = 5080
              mmLeft = 24077
              mmTop = 0
              mmWidth = 11094
              BandType = 4
              LayerName = BandLayer6
            end
            object ppDBText17: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText41'
              Border.mmPadding = 0
              DataField = 'Situacao_Ped'
              DataPipeline = pFilho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho'
              mmHeight = 5080
              mmLeft = 57944
              mmTop = 0
              mmWidth = 16617
              BandType = 4
              LayerName = BandLayer6
            end
            object ppDBText18: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText42'
              Border.mmPadding = 0
              DataField = 'Data'
              DataPipeline = pFilho
              DisplayFormat = 'dd/mm/yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho'
              mmHeight = 5080
              mmLeft = 35983
              mmTop = 0
              mmWidth = 10351
              BandType = 4
              LayerName = BandLayer6
            end
            object ppDBText20: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText43'
              Border.mmPadding = 0
              DataField = 'Vencimento'
              DataPipeline = pFilho
              DisplayFormat = 'dd/mm/yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho'
              mmHeight = 5080
              mmLeft = 46831
              mmTop = 0
              mmWidth = 10520
              BandType = 4
              LayerName = BandLayer6
            end
            object ppDBText21: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText44'
              Border.mmPadding = 0
              DataField = 'Qtde_M3'
              DataPipeline = pFilho
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho'
              mmHeight = 5080
              mmLeft = 92075
              mmTop = 0
              mmWidth = 16657
              BandType = 4
              LayerName = BandLayer6
            end
            object ppDBText22: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText45'
              Border.mmPadding = 0
              DataField = 'Total_Pedido'
              DataPipeline = pFilho
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho'
              mmHeight = 5080
              mmLeft = 127793
              mmTop = 0
              mmWidth = 17676
              BandType = 4
              LayerName = BandLayer6
            end
            object ppDBText23: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText102'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'Nota'
              DataPipeline = pFilho
              DisplayFormat = '000000000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho'
              mmHeight = 5080
              mmLeft = 146315
              mmTop = 0
              mmWidth = 10559
              BandType = 4
              LayerName = BandLayer6
            end
            object ppDBText29: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText47'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'DataNF'
              DataPipeline = pFilho
              DisplayFormat = 'dd/mm/yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho'
              mmHeight = 5080
              mmLeft = 157163
              mmTop = 0
              mmWidth = 10351
              BandType = 4
              LayerName = BandLayer6
            end
            object ppDBText67: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText48'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'Transportador'
              DataPipeline = pFilho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho'
              mmHeight = 5080
              mmLeft = 228865
              mmTop = 0
              mmWidth = 40076
              BandType = 4
              LayerName = BandLayer6
            end
            object ppDBText68: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText201'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'Situacao_NF'
              DataPipeline = pFilho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho'
              mmHeight = 5080
              mmLeft = 269082
              mmTop = 0
              mmWidth = 14163
              BandType = 4
              LayerName = BandLayer6
            end
            object ppDBText69: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText61'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'Cliente_Nome'
              DataPipeline = pFilho
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho'
              mmHeight = 5080
              mmLeft = 167746
              mmTop = 0
              mmWidth = 38366
              BandType = 4
              LayerName = BandLayer6
            end
            object ppDBText70: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText64'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'Cliente_CNPJ'
              DataPipeline = pFilho
              DisplayFormat = '##.###.###/####-##;0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho'
              mmHeight = 5080
              mmLeft = 206375
              mmTop = 0
              mmWidth = 17334
              BandType = 4
              LayerName = BandLayer6
            end
            object ppDBText71: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText601'
              Border.mmPadding = 0
              DataField = 'Qtde_M3Orig'
              DataPipeline = pFilho
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho'
              mmHeight = 5080
              mmLeft = 74877
              mmTop = 0
              mmWidth = 16657
              BandType = 4
              LayerName = BandLayer6
            end
            object ppDBText72: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText66'
              Border.mmPadding = 0
              DataField = 'Total_PedidoOriginal'
              DataPipeline = pFilho
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              Visible = False
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho'
              mmHeight = 5080
              mmLeft = 109273
              mmTop = 0
              mmWidth = 17677
              BandType = 4
              LayerName = BandLayer6
            end
          end
          object ppSummaryBand3: TppSummaryBand
            BeforePrint = ppSummaryBand3BeforePrint
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 7673
            mmPrintPosition = 0
            object ppLabel18: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label25'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'TOTAL 1'
              Color = 12582911
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              VerticalAlignment = avCenter
              mmHeight = 2819
              mmLeft = 12171
              mmTop = 0
              mmWidth = 62442
              BandType = 7
              LayerName = BandLayer6
            end
            object lTotalPaiEx: TppVariable
              DesignLayer = ppDesignLayer1
              UserName = 'lTotalPaiEx'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 0
              Color = 12582911
              DataType = dtCurrency
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              VerticalAlignment = avCenter
              mmHeight = 2908
              mmLeft = 92075
              mmTop = 0
              mmWidth = 16657
              BandType = 7
              LayerName = BandLayer6
            end
            object lValorPaiEx: TppVariable
              DesignLayer = ppDesignLayer1
              UserName = 'lValorPaiEx'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 1
              Color = 12582911
              DataType = dtCurrency
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              VerticalAlignment = avCenter
              mmHeight = 2909
              mmLeft = 127793
              mmTop = 0
              mmWidth = 17676
              BandType = 7
              LayerName = BandLayer6
            end
            object ppLabel19: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label1'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'SALDO 1'
              Color = 12582911
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              VerticalAlignment = avCenter
              mmHeight = 2819
              mmLeft = 12172
              mmTop = 3438
              mmWidth = 62442
              BandType = 7
              LayerName = BandLayer6
            end
            object lTotalSaldoPaiEx: TppVariable
              DesignLayer = ppDesignLayer1
              UserName = 'lTotalPai3'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 2
              Color = 12582911
              DataType = dtCurrency
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              VerticalAlignment = avCenter
              mmHeight = 2819
              mmLeft = 92076
              mmTop = 3438
              mmWidth = 16657
              BandType = 7
              LayerName = BandLayer6
            end
            object lValorSaldoPaiEx: TppVariable
              DesignLayer = ppDesignLayer1
              UserName = 'lValorSaldoPai'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 3
              Color = 12582911
              DataType = dtCurrency
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              VerticalAlignment = avCenter
              mmHeight = 2909
              mmLeft = 127795
              mmTop = 3438
              mmWidth = 17676
              BandType = 7
              LayerName = BandLayer6
            end
          end
          object ppDesignLayers1: TppDesignLayers
            object ppDesignLayer1: TppDesignLayer
              UserName = 'BandLayer6'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppDBText73: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText60'
        Border.mmPadding = 0
        Color = 12582911
        DataField = 'Qtde_M3Orig'
        DataPipeline = pPedidos
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6697728
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 5080
        mmLeft = 74966
        mmTop = 0
        mmWidth = 16657
        BandType = 4
        LayerName = BandLayer8
      end
      object ppSubReport4: TppSubReport
        DesignLayer = ppDesignLayer6
        UserName = 'SubReport3'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppSubReport1
        TraverseAllData = False
        DataPipelineName = 'pFilho2'
        mmHeight = 4140
        mmLeft = 0
        mmTop = 8942
        mmWidth = 284300
        BandType = 4
        LayerName = BandLayer8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = pFilho2
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Hist'#243'ricos de Pedidos de Venda'
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
          DataPipelineName = 'pFilho2'
          object ppDetailBand6: TppDetailBand
            AfterPrint = ppDetailBand6AfterPrint
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppDBText74: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText24'
              Border.mmPadding = 0
              DataField = 'Pedido'
              DataPipeline = pFilho2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho2'
              mmHeight = 5080
              mmLeft = 24077
              mmTop = 0
              mmWidth = 11094
              BandType = 4
              LayerName = BandLayer7
            end
            object ppDBText75: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText50'
              Border.mmPadding = 0
              DataField = 'Situacao_Ped'
              DataPipeline = pFilho2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho2'
              mmHeight = 5080
              mmLeft = 57944
              mmTop = 0
              mmWidth = 16617
              BandType = 4
              LayerName = BandLayer7
            end
            object ppDBText76: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText51'
              Border.mmPadding = 0
              DataField = 'Data'
              DataPipeline = pFilho2
              DisplayFormat = 'dd/mm/yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho2'
              mmHeight = 5080
              mmLeft = 35983
              mmTop = 0
              mmWidth = 10351
              BandType = 4
              LayerName = BandLayer7
            end
            object ppDBText77: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText52'
              Border.mmPadding = 0
              DataField = 'Vencimento'
              DataPipeline = pFilho2
              DisplayFormat = 'dd/mm/yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho2'
              mmHeight = 5080
              mmLeft = 46831
              mmTop = 0
              mmWidth = 10520
              BandType = 4
              LayerName = BandLayer7
            end
            object ppDBText78: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText53'
              Border.mmPadding = 0
              DataField = 'Qtde_M3'
              DataPipeline = pFilho2
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho2'
              mmHeight = 5080
              mmLeft = 92075
              mmTop = 0
              mmWidth = 16657
              BandType = 4
              LayerName = BandLayer7
            end
            object ppDBText79: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText54'
              Border.mmPadding = 0
              DataField = 'Total_Pedido'
              DataPipeline = pFilho2
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 6697728
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho2'
              mmHeight = 5080
              mmLeft = 127794
              mmTop = 0
              mmWidth = 17677
              BandType = 4
              LayerName = BandLayer7
            end
            object ppDBText80: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText103'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'Nota'
              DataPipeline = pFilho2
              DisplayFormat = '000000000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho2'
              mmHeight = 5080
              mmLeft = 146315
              mmTop = 0
              mmWidth = 10559
              BandType = 4
              LayerName = BandLayer7
            end
            object ppDBText81: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText56'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'DataNF'
              DataPipeline = pFilho2
              DisplayFormat = 'dd/mm/yyyy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho2'
              mmHeight = 5080
              mmLeft = 157163
              mmTop = 0
              mmWidth = 10351
              BandType = 4
              LayerName = BandLayer7
            end
            object ppDBText82: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText57'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'Transportador'
              DataPipeline = pFilho2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho2'
              mmHeight = 5080
              mmLeft = 228865
              mmTop = 0
              mmWidth = 40076
              BandType = 4
              LayerName = BandLayer7
            end
            object ppDBText83: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText202'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'Situacao_NF'
              DataPipeline = pFilho2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho2'
              mmHeight = 5080
              mmLeft = 269082
              mmTop = 0
              mmWidth = 14163
              BandType = 4
              LayerName = BandLayer7
            end
            object ppDBText84: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText59'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'Cliente_Nome'
              DataPipeline = pFilho2
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho2'
              mmHeight = 5080
              mmLeft = 167746
              mmTop = 0
              mmWidth = 38366
              BandType = 4
              LayerName = BandLayer7
            end
            object ppDBText85: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText62'
              Border.mmPadding = 0
              Color = clWindow
              DataField = 'Cliente_CNPJ'
              DataPipeline = pFilho2
              DisplayFormat = '##.###.###/####-##;0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pFilho2'
              mmHeight = 5080
              mmLeft = 206375
              mmTop = 0
              mmWidth = 17334
              BandType = 4
              LayerName = BandLayer7
            end
          end
          object ppSummaryBand4: TppSummaryBand
            BeforePrint = ppSummaryBand4BeforePrint
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 7673
            mmPrintPosition = 0
            object ppLabel20: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label26'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'TOTAL 2'
              Color = 12582911
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              VerticalAlignment = avCenter
              mmHeight = 2819
              mmLeft = 24077
              mmTop = 0
              mmWidth = 50536
              BandType = 7
              LayerName = BandLayer7
            end
            object lTotalEx2: TppVariable
              DesignLayer = ppDesignLayer2
              UserName = 'lTotalPai2'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 0
              Color = 12582911
              DataType = dtCurrency
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              VerticalAlignment = avCenter
              mmHeight = 2819
              mmLeft = 92075
              mmTop = 0
              mmWidth = 16657
              BandType = 7
              LayerName = BandLayer7
            end
            object lValorEx2: TppVariable
              DesignLayer = ppDesignLayer2
              UserName = 'lValorPai2'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 1
              Color = 12582911
              DataType = dtCurrency
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              VerticalAlignment = avCenter
              mmHeight = 2909
              mmLeft = 127794
              mmTop = 0
              mmWidth = 17676
              BandType = 7
              LayerName = BandLayer7
            end
            object ppLabel22: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label1'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'SALDO 2'
              Color = 12582911
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              VerticalAlignment = avCenter
              mmHeight = 2819
              mmLeft = 24077
              mmTop = 3441
              mmWidth = 50536
              BandType = 7
              LayerName = BandLayer7
            end
            object lTotalSaldoEx2: TppVariable
              DesignLayer = ppDesignLayer2
              UserName = 'lTotalSaldoPai2'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 2
              Color = 12582911
              DataType = dtCurrency
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              VerticalAlignment = avCenter
              mmHeight = 2819
              mmLeft = 92075
              mmTop = 3441
              mmWidth = 16657
              BandType = 7
              LayerName = BandLayer7
            end
            object lValorSaldoEx2: TppVariable
              DesignLayer = ppDesignLayer2
              UserName = 'lValorSaldoPai2'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 3
              Color = 12582911
              DataType = dtCurrency
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              VerticalAlignment = avCenter
              mmHeight = 2909
              mmLeft = 127794
              mmTop = 3441
              mmWidth = 17676
              BandType = 7
              LayerName = BandLayer7
            end
          end
          object ppDesignLayers2: TppDesignLayers
            object ppDesignLayer2: TppDesignLayer
              UserName = 'BandLayer7'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object ppDBText86: TppDBText
        DesignLayer = ppDesignLayer6
        UserName = 'DBText63'
        Border.mmPadding = 0
        DataField = 'Total_PedidoOriginal'
        DataPipeline = pPedidos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 6697728
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedidos'
        mmHeight = 5080
        mmLeft = 109272
        mmTop = 0
        mmWidth = 17677
        BandType = 4
        LayerName = BandLayer8
      end
    end
    object ppDesignLayers6: TppDesignLayers
      object ppDesignLayer6: TppDesignLayer
        UserName = 'BandLayer8'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
