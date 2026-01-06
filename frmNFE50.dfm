object NFE50: TNFE50
  Left = 798
  Top = 287
  ActiveControl = cDataEmissao
  BorderStyle = bsDialog
  Caption = 'NFE50'
  ClientHeight = 579
  ClientWidth = 874
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
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 874
    Height = 44
    Align = alTop
    Stretch = True
    ExplicitWidth = 871
  end
  object lTitulo: TRxLabel
    Left = 8
    Top = 3
    Width = 183
    Height = 21
    Caption = 'NOTA FISCAL ELETR'#212'NICA'
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
  object lDescricao: TRxLabel
    Left = 8
    Top = 22
    Width = 482
    Height = 18
    Caption = 
      'Gera'#231#227'o e Envio de Notas Fiscais eletr'#244'nicas. (Vers'#227'o 5.0 - Refo' +
      'rma Tribut'#225'ria)'
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
    Top = 549
    Width = 874
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bEnviar: TButton
      Left = 362
      Top = 1
      Width = 94
      Height = 28
      Cursor = crHandPoint
      Hint = 'Gerar as Notas Fiscais Eletr'#244'nicas e enviar.'
      Align = alLeft
      Caption = '/'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bEnviarClick
    end
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 136
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsPedidos
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alLeft
      Ctl3D = True
      Hints.Strings = (
        'Vai para o primeiro registro.'
        'Volta para o registro anterior.'
        'Vai para o pr'#243'ximo registro.'
        'Vai para o '#250'ltimo registro.'
        'Inlcuir um novo registro.'
        'Deletar o registro atual.'
        'Altera o reistro atual.'
        'Salvar o registro no banco de dados.'
        'Cancelar as modifica'#231#245'es feitas no registro atual.'
        'Atualizar inform'#231#245'es do banco de dados.')
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object bDANFE: TButton
      Left = 573
      Top = 1
      Width = 64
      Height = 28
      Cursor = crHandPoint
      Hint = 'Gerar as Notas Fiscais Eletr'#244'nicas e enviar.'
      Align = alLeft
      Caption = 'DAN&FE'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bDANFEClick
    end
    object bSelecionar: TButton
      Left = 137
      Top = 1
      Width = 72
      Height = 28
      Cursor = crHandPoint
      Hint = 'Gerar as Notas Fiscais Eletr'#244'nicas e enviar.'
      Align = alLeft
      Caption = 'Sel.&Todas'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bSelecionarClick
    end
    object bDesmarcar: TButton
      Left = 209
      Top = 1
      Width = 85
      Height = 28
      Cursor = crHandPoint
      Hint = 'Gerar as Notas Fiscais Eletr'#244'nicas e enviar.'
      Align = alLeft
      Caption = '&Desm.Todas'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bDesmarcarClick
    end
    object bSair: TButton
      Left = 807
      Top = 1
      Width = 66
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Button1: TButton
      Left = 294
      Top = 1
      Width = 68
      Height = 28
      Cursor = crHandPoint
      Hint = 'Gerar as Notas Fiscais Eletr'#244'nicas e enviar.'
      Align = alLeft
      Caption = '&Pesquisa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = Button1Click
    end
    object bXML: TButton
      Left = 456
      Top = 1
      Width = 117
      Height = 28
      Cursor = crHandPoint
      Hint = 'Gerar as Notas Fiscais Eletr'#244'nicas e enviar.'
      Align = alLeft
      Caption = '&Apenas Gerar XML'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = bXMLClick
    end
  end
  object cDataEmissao: TDateEdit
    Left = 123
    Top = 53
    Width = 110
    Height = 21
    CheckOnExit = True
    DialogTitle = 'Data'
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
    PopupAlign = epaLeft
    YearDigits = dyFour
    TabOrder = 1
  end
  object StaticText2: TStaticText
    Left = 9
    Top = 53
    Width = 112
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Data de Emiss'#227'o'
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
  object cDataEntradaSaida: TDateEdit
    Left = 123
    Top = 76
    Width = 110
    Height = 21
    CheckOnExit = True
    DialogTitle = 'Data'
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
    PopupAlign = epaLeft
    YearDigits = dyFour
    TabOrder = 3
  end
  object StaticText1: TStaticText
    Left = 9
    Top = 76
    Width = 112
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Data Entrada/Sa'#237'da'
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
  object cTipo: TRadioGroup
    Left = 403
    Top = 47
    Width = 234
    Height = 42
    Caption = 'Pedidos'
    Columns = 3
    ItemIndex = 2
    Items.Strings = (
      'Entrada'
      'Sa'#237'da'
      'Todos')
    TabOrder = 5
    OnClick = cTipoClick
  end
  object StaticText3: TStaticText
    Left = 652
    Top = 53
    Width = 60
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
  object cProcesso: TRxDBLookupCombo
    Left = 714
    Top = 53
    Width = 152
    Height = 21
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Processo'
    LookupDisplay = 'Processo'
    LookupSource = Dados.dsProcessosDOC
    ParentFont = False
    TabOrder = 7
    OnChange = cProcessoChange
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 106
    Width = 868
    Height = 428
    Margins.Bottom = 15
    ActivePage = TabSheet1
    Align = alBottom
    TabHeight = 28
    TabOrder = 8
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Pedidos prontos para envio'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Grade: TRxDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 854
        Height = 250
        Align = alClient
        Color = clLime
        DataSource = Dados.dsPedidos
        GradientEndColor = clLime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = GradeCellClick
        OnDrawColumnCell = GradeDrawColumnCell
        OnKeyUp = GradeKeyUp
        MultiSelect = True
        RowColor2 = 16776176
        Columns = <
          item
            Expanded = False
            FieldName = 'Numero'
            Title.Alignment = taCenter
            Title.Caption = 'Pedido'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 42
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SaidaEntradaTexto'
            Title.Alignment = taCenter
            Title.Caption = 'Opera'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 56
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Complementar'
            Title.Alignment = taCenter
            Title.Caption = 'Compl.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Processo'
            Title.Alignment = taCenter
            Title.Caption = 'Processo N'#186
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DI'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' da DI'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Destinatario_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente/Fornecedor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 265
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_TotalNota'
            Title.Alignment = taCenter
            Title.Caption = 'Total do Pedido'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 107
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Aguardando'
            Title.Alignment = taCenter
            Title.Caption = 'Situa'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Erros'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 35
            Visible = True
          end>
      end
      object GradeErros: TRxDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 259
        Width = 854
        Height = 128
        Cursor = crHandPoint
        Align = alBottom
        DataSource = Dados.dsErrosNFE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = GradeErrosCellClick
        MultiSelect = True
        RowColor2 = 16776176
        Columns = <
          item
            Expanded = False
            FieldName = 'Tabela'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 33023
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold, fsUnderline]
            Title.Alignment = taCenter
            Title.Caption = 'Origem'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Item'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 36
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCM'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Processo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 401
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pedidos com pend'#234'ncias de container'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object RxDBGrid1: TRxDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 854
        Height = 384
        Align = alClient
        Color = 12713983
        DataSource = dstContainers
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = GradeCellClick
        OnKeyUp = GradeKeyUp
        MultiSelect = True
        RowColor2 = 16776176
        OnEditChange = GradeEditChange
        Columns = <
          item
            Expanded = False
            FieldName = 'Numero'
            Title.Alignment = taCenter
            Title.Caption = 'Pedido'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 42
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Saida_EntradaTexto'
            Title.Alignment = taCenter
            Title.Caption = 'Opera'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 56
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Complementar'
            Title.Alignment = taCenter
            Title.Caption = 'Compl.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Processo'
            Title.Alignment = taCenter
            Title.Caption = 'Processo N'#186
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DI'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' da DI'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 81
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Destinatario_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente/Fornecedor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 281
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_TotalNota'
            Title.Alignment = taCenter
            Title.Caption = 'Total do Pedido'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 89
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Aguardando'
            Title.Alignment = taCenter
            Title.Caption = 'Situa'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Erros'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 29
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Enviando'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cMensagens: TMemo
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 854
        Height = 384
        Align = alClient
        BevelOuter = bvRaised
        Color = 3947580
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 15244288
        Font.Height = -13
        Font.Name = 'JetBrains Mono'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        WantReturns = False
        StyleElements = [seFont, seBorder]
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'An'#225'lise'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object mAnalise: TMemo
        Left = 0
        Top = 0
        Width = 860
        Height = 390
        Align = alClient
        Color = 3947580
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -13
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        StyleElements = [seFont, seBorder]
      end
    end
  end
  object cDataHora: TCheckBox
    Left = 237
    Top = 78
    Width = 154
    Height = 17
    Caption = 'Data e Hora Entrada/Sa'#237'da'
    Checked = True
    State = cbChecked
    TabOrder = 9
  end
  object tNotasRef: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO NotasFiscais'
      
        '  (Numero, Pedido, Saida_Entrada, Data_Emissao, Data_EntradaSaid' +
        'a, Hora_EntradaSaida, Tipo_Nota, Serie, Modelo, Processo, FUNDAP' +
        ', Lucro, DI, Data_DI, Natureza_Codigo, Inscricao_Substituto, Inf' +
        '_Complementares, Cliente_Codigo, Fornecedor_Codigo, Estado, Tran' +
        'sportador_Codigo, Volume_Quantidade, Volume_Especie, Volume_Marc' +
        'a, Volume_Numero, Volume_PesoLiquido, Volume_PesoBruto, Valor_PI' +
        'S, Valor_COFINS, Aliquota_ICMSOper, BCICMS, Valor_ICMS, Aliquota' +
        '_ICMSSub, BCICMS_Substitutivo, ValorICMS_Substitutivo, Valor_Tot' +
        'alProdutos, Total_Frete, Valor_Seguro, Valor_OutrasDespesas, BCI' +
        'PI, Valor_TotalIPI, Valor_TotalNota, Rateio_Despesas, Valor_Tota' +
        'lMVA, Valor_ICMSReducao, Desconto_Percentual, Desconto_Tipo, Can' +
        'celada, Motivo_Cancelamento, Complementar, Devolucao, Transmitid' +
        'a, Nota_Referencia, Data_Referencia)'
      'VALUES'
      
        '  (:Numero, :Pedido, :Saida_Entrada, :Data_Emissao, :Data_Entrad' +
        'aSaida, :Hora_EntradaSaida, :Tipo_Nota, :Serie, :Modelo, :Proces' +
        'so, :FUNDAP, :Lucro, :DI, :Data_DI, :Natureza_Codigo, :Inscricao' +
        '_Substituto, :Inf_Complementares, :Cliente_Codigo, :Fornecedor_C' +
        'odigo, :Estado, :Transportador_Codigo, :Volume_Quantidade, :Volu' +
        'me_Especie, :Volume_Marca, :Volume_Numero, :Volume_PesoLiquido, ' +
        ':Volume_PesoBruto, :Valor_PIS, :Valor_COFINS, :Aliquota_ICMSOper' +
        ', :BCICMS, :Valor_ICMS, :Aliquota_ICMSSub, :BCICMS_Substitutivo,' +
        ' :ValorICMS_Substitutivo, :Valor_TotalProdutos, :Total_Frete, :V' +
        'alor_Seguro, :Valor_OutrasDespesas, :BCIPI, :Valor_TotalIPI, :Va' +
        'lor_TotalNota, :Rateio_Despesas, :Valor_TotalMVA, :Valor_ICMSRed' +
        'ucao, :Desconto_Percentual, :Desconto_Tipo, :Cancelada, :Motivo_' +
        'Cancelamento, :Complementar, :Devolucao, :Transmitida, :Nota_Ref' +
        'erencia, :Data_Referencia)')
    SQLDelete.Strings = (
      'DELETE FROM NotasFiscais'
      'WHERE'
      '  Numero = :Old_Numero AND Data_Emissao = :Old_Data_Emissao')
    SQLUpdate.Strings = (
      'UPDATE NotasFiscais'
      'SET'
      
        '  Numero = :Numero, Pedido = :Pedido, Saida_Entrada = :Saida_Ent' +
        'rada, Data_Emissao = :Data_Emissao, Data_EntradaSaida = :Data_En' +
        'tradaSaida, Hora_EntradaSaida = :Hora_EntradaSaida, Tipo_Nota = ' +
        ':Tipo_Nota, Serie = :Serie, Modelo = :Modelo, Processo = :Proces' +
        'so, FUNDAP = :FUNDAP, Lucro = :Lucro, DI = :DI, Data_DI = :Data_' +
        'DI, Natureza_Codigo = :Natureza_Codigo, Inscricao_Substituto = :' +
        'Inscricao_Substituto, Inf_Complementares = :Inf_Complementares, ' +
        'Cliente_Codigo = :Cliente_Codigo, Fornecedor_Codigo = :Fornecedo' +
        'r_Codigo, Estado = :Estado, Transportador_Codigo = :Transportado' +
        'r_Codigo, Volume_Quantidade = :Volume_Quantidade, Volume_Especie' +
        ' = :Volume_Especie, Volume_Marca = :Volume_Marca, Volume_Numero ' +
        '= :Volume_Numero, Volume_PesoLiquido = :Volume_PesoLiquido, Volu' +
        'me_PesoBruto = :Volume_PesoBruto, Valor_PIS = :Valor_PIS, Valor_' +
        'COFINS = :Valor_COFINS, Aliquota_ICMSOper = :Aliquota_ICMSOper, ' +
        'BCICMS = :BCICMS, Valor_ICMS = :Valor_ICMS, Aliquota_ICMSSub = :' +
        'Aliquota_ICMSSub, BCICMS_Substitutivo = :BCICMS_Substitutivo, Va' +
        'lorICMS_Substitutivo = :ValorICMS_Substitutivo, Valor_TotalProdu' +
        'tos = :Valor_TotalProdutos, Total_Frete = :Total_Frete, Valor_Se' +
        'guro = :Valor_Seguro, Valor_OutrasDespesas = :Valor_OutrasDespes' +
        'as, BCIPI = :BCIPI, Valor_TotalIPI = :Valor_TotalIPI, Valor_Tota' +
        'lNota = :Valor_TotalNota, Rateio_Despesas = :Rateio_Despesas, Va' +
        'lor_TotalMVA = :Valor_TotalMVA, Valor_ICMSReducao = :Valor_ICMSR' +
        'educao, Desconto_Percentual = :Desconto_Percentual, Desconto_Tip' +
        'o = :Desconto_Tipo, Cancelada = :Cancelada, Motivo_Cancelamento ' +
        '= :Motivo_Cancelamento, Complementar = :Complementar, Devolucao ' +
        '= :Devolucao, Transmitida = :Transmitida, Nota_Referencia = :Not' +
        'a_Referencia, Data_Referencia = :Data_Referencia'
      'WHERE'
      '  Numero = :Old_Numero AND Data_Emissao = :Old_Data_Emissao')
    SQLRefresh.Strings = (
      
        'SELECT NotasFiscais.Numero, NotasFiscais.Pedido, NotasFiscais.Sa' +
        'ida_Entrada, NotasFiscais.Data_Emissao, NotasFiscais.Data_Entrad' +
        'aSaida, NotasFiscais.Hora_EntradaSaida, NotasFiscais.Tipo_Nota, ' +
        'NotasFiscais.Serie, NotasFiscais.Modelo, NotasFiscais.Processo, ' +
        'NotasFiscais.FUNDAP, NotasFiscais.Lucro, NotasFiscais.DI, NotasF' +
        'iscais.Data_DI, NotasFiscais.Natureza_Codigo, NotasFiscais.Inscr' +
        'icao_Substituto, NotasFiscais.Inf_Complementares, NotasFiscais.C' +
        'liente_Codigo, NotasFiscais.Fornecedor_Codigo, NotasFiscais.Esta' +
        'do, NotasFiscais.Transportador_Codigo, NotasFiscais.Volume_Quant' +
        'idade, NotasFiscais.Volume_Especie, NotasFiscais.Volume_Marca, N' +
        'otasFiscais.Volume_Numero, NotasFiscais.Volume_PesoLiquido, Nota' +
        'sFiscais.Volume_PesoBruto, NotasFiscais.Valor_PIS, NotasFiscais.' +
        'Valor_COFINS, NotasFiscais.Aliquota_ICMSOper, NotasFiscais.BCICM' +
        'S, NotasFiscais.Valor_ICMS, NotasFiscais.Aliquota_ICMSSub, Notas' +
        'Fiscais.BCICMS_Substitutivo, NotasFiscais.ValorICMS_Substitutivo' +
        ', NotasFiscais.Valor_TotalProdutos, NotasFiscais.Total_Frete, No' +
        'tasFiscais.Valor_Seguro, NotasFiscais.Valor_OutrasDespesas, Nota' +
        'sFiscais.BCIPI, NotasFiscais.Valor_TotalIPI, NotasFiscais.Valor_' +
        'TotalNota, NotasFiscais.Rateio_Despesas, NotasFiscais.Valor_Tota' +
        'lMVA, NotasFiscais.Valor_ICMSReducao, NotasFiscais.Desconto_Perc' +
        'entual, NotasFiscais.Desconto_Tipo, NotasFiscais.Cancelada, Nota' +
        'sFiscais.Motivo_Cancelamento, NotasFiscais.Complementar, NotasFi' +
        'scais.Devolucao, NotasFiscais.Transmitida, NotasFiscais.Nota_Ref' +
        'erencia, NotasFiscais.Data_Referencia FROM NotasFiscais'
      
        'WHERE NotasFiscais.Numero = :Numero AND NotasFiscais.Data_Emissa' +
        'o = :Data_Emissao ')
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 334
    Top = 258
  end
  object tChecaData: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Data_Emissao) AS Data_Emissao FROM NotasFiscais'
      '')
    FetchRows = 1
    Left = 403
    Top = 258
    object tChecaDataData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
      Origin = '.'
      ReadOnly = True
    end
  end
  object plNotas: TppDBPipeline
    DataSource = dsNotas
    CloseDataSource = True
    OpenDataSource = False
    UserName = 'plNotas'
    Left = 758
    Top = 392
    object plNotasppField1: TppField
      FieldAlias = 'Pedido'
      FieldName = 'Pedido'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object plNotasppField2: TppField
      FieldAlias = 'Serie'
      FieldName = 'Serie'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object plNotasppField3: TppField
      FieldAlias = 'Modelo'
      FieldName = 'Modelo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object plNotasppField4: TppField
      FieldAlias = 'Cancelada'
      FieldName = 'Cancelada'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object plNotasppField5: TppField
      FieldAlias = 'NFe_Denegada'
      FieldName = 'NFe_Denegada'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object plNotasppField6: TppField
      FieldAlias = 'Data_Cancelamento'
      FieldName = 'Data_Cancelamento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object plNotasppField7: TppField
      FieldAlias = 'Protocolo_Cancelamento'
      FieldName = 'Protocolo_Cancelamento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object plNotasppField8: TppField
      FieldAlias = 'Imprimir_DANFE'
      FieldName = 'Imprimir_DANFE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object plNotasppField9: TppField
      FieldAlias = 'Motivo_Cancelamento'
      FieldName = 'Motivo_Cancelamento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object plNotasppField10: TppField
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object plNotasppField11: TppField
      FieldAlias = 'Saida_Entrada'
      FieldName = 'Saida_Entrada'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object plNotasppField12: TppField
      FieldAlias = 'Data_Emissao'
      FieldName = 'Data_Emissao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object plNotasppField13: TppField
      FieldAlias = 'Data_EntradaSaida'
      FieldName = 'Data_EntradaSaida'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object plNotasppField14: TppField
      FieldAlias = 'Hora_EntradaSaida'
      FieldName = 'Hora_EntradaSaida'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object plNotasppField15: TppField
      FieldAlias = 'Tipo_Nota'
      FieldName = 'Tipo_Nota'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object plNotasppField16: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object plNotasppField17: TppField
      FieldAlias = 'FUNDAP'
      FieldName = 'FUNDAP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object plNotasppField18: TppField
      FieldAlias = 'Lucro'
      FieldName = 'Lucro'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object plNotasppField19: TppField
      FieldAlias = 'Lucro_Valor'
      FieldName = 'Lucro_Valor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object plNotasppField20: TppField
      FieldAlias = 'DI'
      FieldName = 'DI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object plNotasppField21: TppField
      FieldAlias = 'Data_DI'
      FieldName = 'Data_DI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object plNotasppField22: TppField
      FieldAlias = 'Natureza_Codigo'
      FieldName = 'Natureza_Codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object plNotasppField23: TppField
      FieldAlias = 'Inscricao_Substituto'
      FieldName = 'Inscricao_Substituto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object plNotasppField24: TppField
      FieldAlias = 'Inf_Complementares'
      FieldName = 'Inf_Complementares'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object plNotasppField25: TppField
      FieldAlias = 'Cliente_Codigo'
      FieldName = 'Cliente_Codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object plNotasppField26: TppField
      FieldAlias = 'Fornecedor_Codigo'
      FieldName = 'Fornecedor_Codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object plNotasppField27: TppField
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object plNotasppField28: TppField
      FieldAlias = 'Transportador_Codigo'
      FieldName = 'Transportador_Codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object plNotasppField29: TppField
      FieldAlias = 'Modalidade_Frete'
      FieldName = 'Modalidade_Frete'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object plNotasppField30: TppField
      FieldAlias = 'Volume_Quantidade'
      FieldName = 'Volume_Quantidade'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object plNotasppField31: TppField
      FieldAlias = 'Volume_Especie'
      FieldName = 'Volume_Especie'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object plNotasppField32: TppField
      FieldAlias = 'Volume_Marca'
      FieldName = 'Volume_Marca'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object plNotasppField33: TppField
      FieldAlias = 'Volume_Numero'
      FieldName = 'Volume_Numero'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object plNotasppField34: TppField
      FieldAlias = 'Volume_PesoLiquido'
      FieldName = 'Volume_PesoLiquido'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object plNotasppField35: TppField
      FieldAlias = 'Volume_PesoBruto'
      FieldName = 'Volume_PesoBruto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object plNotasppField36: TppField
      FieldAlias = 'Valor_PIS'
      FieldName = 'Valor_PIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object plNotasppField37: TppField
      FieldAlias = 'Valor_COFINS'
      FieldName = 'Valor_COFINS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object plNotasppField38: TppField
      FieldAlias = 'Aliquota_ICMSOper'
      FieldName = 'Aliquota_ICMSOper'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object plNotasppField39: TppField
      FieldAlias = 'BCICMS'
      FieldName = 'BCICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object plNotasppField40: TppField
      FieldAlias = 'Valor_ICMS'
      FieldName = 'Valor_ICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object plNotasppField41: TppField
      FieldAlias = 'Aliquota_ICMSSub'
      FieldName = 'Aliquota_ICMSSub'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object plNotasppField42: TppField
      FieldAlias = 'BCICMS_Substitutivo'
      FieldName = 'BCICMS_Substitutivo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object plNotasppField43: TppField
      FieldAlias = 'ValorICMS_Substitutivo'
      FieldName = 'ValorICMS_Substitutivo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object plNotasppField44: TppField
      FieldAlias = 'Valor_TotalProdutos'
      FieldName = 'Valor_TotalProdutos'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object plNotasppField45: TppField
      FieldAlias = 'Total_Frete'
      FieldName = 'Total_Frete'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object plNotasppField46: TppField
      FieldAlias = 'Valor_Seguro'
      FieldName = 'Valor_Seguro'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object plNotasppField47: TppField
      FieldAlias = 'Valor_OutrasDespesas'
      FieldName = 'Valor_OutrasDespesas'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object plNotasppField48: TppField
      FieldAlias = 'BCIPI'
      FieldName = 'BCIPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object plNotasppField49: TppField
      FieldAlias = 'Valor_TotalII'
      FieldName = 'Valor_TotalII'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object plNotasppField50: TppField
      FieldAlias = 'Valor_TotalIPI'
      FieldName = 'Valor_TotalIPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object plNotasppField51: TppField
      FieldAlias = 'Valor_TotalNota'
      FieldName = 'Valor_TotalNota'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object plNotasppField52: TppField
      FieldAlias = 'Rateio_Despesas'
      FieldName = 'Rateio_Despesas'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object plNotasppField53: TppField
      FieldAlias = 'Valor_TotalMVA'
      FieldName = 'Valor_TotalMVA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object plNotasppField54: TppField
      FieldAlias = 'Valor_ICMSReducao'
      FieldName = 'Valor_ICMSReducao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object plNotasppField55: TppField
      FieldAlias = 'Desconto_Percentual'
      FieldName = 'Desconto_Percentual'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object plNotasppField56: TppField
      FieldAlias = 'Desconto_Tipo'
      FieldName = 'Desconto_Tipo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object plNotasppField57: TppField
      FieldAlias = 'Total_Descontos'
      FieldName = 'Total_Descontos'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object plNotasppField58: TppField
      FieldAlias = 'Modalidade_Pgto'
      FieldName = 'Modalidade_Pgto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object plNotasppField59: TppField
      FieldAlias = 'Nota_Referencia'
      FieldName = 'Nota_Referencia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object plNotasppField60: TppField
      FieldAlias = 'Data_Referencia'
      FieldName = 'Data_Referencia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object plNotasppField61: TppField
      FieldAlias = 'Complementar'
      FieldName = 'Complementar'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object plNotasppField62: TppField
      FieldAlias = 'Devolucao'
      FieldName = 'Devolucao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object plNotasppField63: TppField
      FieldAlias = 'Ajuste'
      FieldName = 'Ajuste'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object plNotasppField64: TppField
      FieldAlias = 'Movimenta_Inventario'
      FieldName = 'Movimenta_Inventario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object plNotasppField65: TppField
      FieldAlias = 'Nota'
      FieldName = 'Nota'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
    object plNotasppField66: TppField
      FieldAlias = 'NFe_CNF'
      FieldName = 'NFe_CNF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 65
      Searchable = False
      Sortable = False
    end
    object plNotasppField67: TppField
      FieldAlias = 'NFe_cNFRef'
      FieldName = 'NFe_cNFRef'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 66
      Searchable = False
      Sortable = False
    end
    object plNotasppField68: TppField
      FieldAlias = 'NFe_Lote'
      FieldName = 'NFe_Lote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 67
      Searchable = False
      Sortable = False
    end
    object plNotasppField69: TppField
      FieldAlias = 'NFe_Recibo'
      FieldName = 'NFe_Recibo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 68
      Searchable = False
      Sortable = False
    end
    object plNotasppField70: TppField
      FieldAlias = 'NFe_DataRecibo'
      FieldName = 'NFe_DataRecibo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 69
      Searchable = False
      Sortable = False
    end
    object plNotasppField71: TppField
      FieldAlias = 'NFe_Protocolo'
      FieldName = 'NFe_Protocolo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 70
      Searchable = False
      Sortable = False
    end
    object plNotasppField72: TppField
      FieldAlias = 'Nfe_DataProtocolo'
      FieldName = 'Nfe_DataProtocolo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 71
      Searchable = False
      Sortable = False
    end
    object plNotasppField73: TppField
      FieldAlias = 'Operacao_Veiculo'
      FieldName = 'Operacao_Veiculo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 72
      Searchable = False
      Sortable = False
    end
    object plNotasppField74: TppField
      FieldAlias = 'Transporte_Placa'
      FieldName = 'Transporte_Placa'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 73
      Searchable = False
      Sortable = False
    end
    object plNotasppField75: TppField
      FieldAlias = 'Transporte_PlacaUF'
      FieldName = 'Transporte_PlacaUF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 74
      Searchable = False
      Sortable = False
    end
    object plNotasppField76: TppField
      FieldAlias = 'Transporte_NomeMotorista'
      FieldName = 'Transporte_NomeMotorista'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 75
      Searchable = False
      Sortable = False
    end
    object plNotasppField77: TppField
      FieldAlias = 'Transporte_RGMotorista'
      FieldName = 'Transporte_RGMotorista'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 76
      Searchable = False
      Sortable = False
    end
    object plNotasppField78: TppField
      FieldAlias = 'Transporte_CodigoANTT'
      FieldName = 'Transporte_CodigoANTT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 77
      Searchable = False
      Sortable = False
    end
    object plNotasppField79: TppField
      FieldAlias = 'Taxa_Cambio'
      FieldName = 'Taxa_Cambio'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 78
      Searchable = False
      Sortable = False
    end
    object plNotasppField80: TppField
      FieldAlias = 'Importacao'
      FieldName = 'Importacao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 79
      Searchable = False
      Sortable = False
    end
    object plNotasppField81: TppField
      FieldAlias = 'Valor_IsentasICMS'
      FieldName = 'Valor_IsentasICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 80
      Searchable = False
      Sortable = False
    end
    object plNotasppField82: TppField
      FieldAlias = 'Valor_OutrasICMS'
      FieldName = 'Valor_OutrasICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 81
      Searchable = False
      Sortable = False
    end
    object plNotasppField83: TppField
      FieldAlias = 'Valor_IsentasIPI'
      FieldName = 'Valor_IsentasIPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 82
      Searchable = False
      Sortable = False
    end
    object plNotasppField84: TppField
      FieldAlias = 'Valor_OutrasIPI'
      FieldName = 'Valor_OutrasIPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 83
      Searchable = False
      Sortable = False
    end
    object plNotasppField85: TppField
      FieldAlias = 'Incentivo_Fiscal'
      FieldName = 'Incentivo_Fiscal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 84
      Searchable = False
      Sortable = False
    end
    object plNotasppField86: TppField
      FieldAlias = 'Aguardando'
      FieldName = 'Aguardando'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 85
      Searchable = False
      Sortable = False
    end
    object plNotasppField87: TppField
      FieldAlias = 'DPEC_Protocolo'
      FieldName = 'DPEC_Protocolo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 86
      Searchable = False
      Sortable = False
    end
    object plNotasppField88: TppField
      FieldAlias = 'DPEC_DataProtocolo'
      FieldName = 'DPEC_DataProtocolo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 87
      Searchable = False
      Sortable = False
    end
    object plNotasppField89: TppField
      FieldAlias = 'DPEC'
      FieldName = 'DPEC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 88
      Searchable = False
      Sortable = False
    end
    object plNotasppField90: TppField
      FieldAlias = 'DPEC_NFe'
      FieldName = 'DPEC_NFe'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 89
      Searchable = False
      Sortable = False
    end
    object plNotasppField91: TppField
      FieldAlias = 'Representante'
      FieldName = 'Representante'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 90
      Searchable = False
      Sortable = False
    end
    object plNotasppField92: TppField
      FieldAlias = 'Representante_Comissao'
      FieldName = 'Representante_Comissao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 91
      Searchable = False
      Sortable = False
    end
    object plNotasppField93: TppField
      FieldAlias = 'Calcula_Volumes'
      FieldName = 'Calcula_Volumes'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 92
      Searchable = False
      Sortable = False
    end
    object plNotasppField94: TppField
      FieldAlias = 'Valor_BCMVA'
      FieldName = 'Valor_BCMVA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 93
      Searchable = False
      Sortable = False
    end
    object plNotasppField95: TppField
      FieldAlias = 'Erros'
      FieldName = 'Erros'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 94
      Searchable = False
      Sortable = False
    end
    object plNotasppField96: TppField
      FieldAlias = 'Destinatario_CNPJ_CPF'
      FieldName = 'Destinatario_CNPJ_CPF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 95
      Searchable = False
      Sortable = False
    end
    object plNotasppField97: TppField
      FieldAlias = 'Destinatario_Nome'
      FieldName = 'Destinatario_Nome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 96
      Searchable = False
      Sortable = False
    end
    object plNotasppField98: TppField
      FieldAlias = 'Destinatario_Rua'
      FieldName = 'Destinatario_Rua'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 97
      Searchable = False
      Sortable = False
    end
    object plNotasppField99: TppField
      FieldAlias = 'Destinatario_RuaNumero'
      FieldName = 'Destinatario_RuaNumero'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 98
      Searchable = False
      Sortable = False
    end
    object plNotasppField100: TppField
      FieldAlias = 'Destinatario_Complemento'
      FieldName = 'Destinatario_Complemento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 99
      Searchable = False
      Sortable = False
    end
    object plNotasppField101: TppField
      FieldAlias = 'Destinatario_Bairro'
      FieldName = 'Destinatario_Bairro'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 100
      Searchable = False
      Sortable = False
    end
    object plNotasppField102: TppField
      FieldAlias = 'Destinatario_Municipio'
      FieldName = 'Destinatario_Municipio'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 101
      Searchable = False
      Sortable = False
    end
    object plNotasppField103: TppField
      FieldAlias = 'Destinatario_Estado'
      FieldName = 'Destinatario_Estado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 102
      Searchable = False
      Sortable = False
    end
    object plNotasppField104: TppField
      FieldAlias = 'Destinatario_CEP'
      FieldName = 'Destinatario_CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 103
      Searchable = False
      Sortable = False
    end
    object plNotasppField105: TppField
      FieldAlias = 'Destinatario_Pais'
      FieldName = 'Destinatario_Pais'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 104
      Searchable = False
      Sortable = False
    end
    object plNotasppField106: TppField
      FieldAlias = 'Destinatario_Telefone1'
      FieldName = 'Destinatario_Telefone1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 105
      Searchable = False
      Sortable = False
    end
    object plNotasppField107: TppField
      FieldAlias = 'Destinatario_IE'
      FieldName = 'Destinatario_IE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 106
      Searchable = False
      Sortable = False
    end
    object plNotasppField108: TppField
      FieldAlias = 'Destinatario_Juridica'
      FieldName = 'Destinatario_Juridica'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 107
      Searchable = False
      Sortable = False
    end
    object plNotasppField109: TppField
      FieldAlias = 'Valor_DUMPING'
      FieldName = 'Valor_DUMPING'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 108
      Searchable = False
      Sortable = False
    end
    object plNotasppField110: TppField
      FieldAlias = 'Pedido_Nota'
      FieldName = 'Pedido_Nota'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 109
      Searchable = False
      Sortable = False
    end
    object plNotasppField111: TppField
      FieldAlias = 'Reducao_ICMSOper'
      FieldName = 'Reducao_ICMSOper'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 110
      Searchable = False
      Sortable = False
    end
    object plNotasppField112: TppField
      FieldAlias = 'Apuracao_PISCOFINS'
      FieldName = 'Apuracao_PISCOFINS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 111
      Searchable = False
      Sortable = False
    end
    object plNotasppField113: TppField
      FieldAlias = 'Inf_Complementares2'
      FieldName = 'Inf_Complementares2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 112
      Searchable = False
      Sortable = False
    end
    object plNotasppField114: TppField
      FieldAlias = 'BCICMS_Apuracao'
      FieldName = 'BCICMS_Apuracao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 113
      Searchable = False
      Sortable = False
    end
    object plNotasppField115: TppField
      FieldAlias = 'Valor_ICMSApuracao'
      FieldName = 'Valor_ICMSApuracao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 114
      Searchable = False
      Sortable = False
    end
    object plNotasppField116: TppField
      FieldAlias = 'Media_BCR'
      FieldName = 'Media_BCR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 115
      Searchable = False
      Sortable = False
    end
    object plNotasppField117: TppField
      FieldAlias = 'Valor_PIS2'
      FieldName = 'Valor_PIS2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 116
      Searchable = False
      Sortable = False
    end
    object plNotasppField118: TppField
      FieldAlias = 'Valor_COFINS2'
      FieldName = 'Valor_COFINS2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 117
      Searchable = False
      Sortable = False
    end
    object plNotasppField119: TppField
      FieldAlias = 'Baixa_Estoque'
      FieldName = 'Baixa_Estoque'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 118
      Searchable = False
      Sortable = False
    end
    object plNotasppField120: TppField
      FieldAlias = 'Valor_DespesasOutros'
      FieldName = 'Valor_DespesasOutros'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 119
      Searchable = False
      Sortable = False
    end
    object plNotasppField121: TppField
      FieldAlias = 'Destinatario_MunicipioNome'
      FieldName = 'Destinatario_MunicipioNome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 120
      Searchable = False
      Sortable = False
    end
    object plNotasppField122: TppField
      FieldAlias = 'ICMS_Destacar'
      FieldName = 'ICMS_Destacar'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 121
      Searchable = False
      Sortable = False
    end
    object plNotasppField123: TppField
      FieldAlias = 'Valor_BCPIS'
      FieldName = 'Valor_BCPIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 122
      Searchable = False
      Sortable = False
    end
    object plNotasppField124: TppField
      FieldAlias = 'Total_Impostos'
      FieldName = 'Total_Impostos'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 123
      Searchable = False
      Sortable = False
    end
    object plNotasppField125: TppField
      FieldAlias = 'Aliquota_IRPJ'
      FieldName = 'Aliquota_IRPJ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 124
      Searchable = False
      Sortable = False
    end
    object plNotasppField126: TppField
      FieldAlias = 'Valor_IRPJ'
      FieldName = 'Valor_IRPJ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 125
      Searchable = False
      Sortable = False
    end
    object plNotasppField127: TppField
      FieldAlias = 'Aliquota_CSLL'
      FieldName = 'Aliquota_CSLL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 126
      Searchable = False
      Sortable = False
    end
    object plNotasppField128: TppField
      FieldAlias = 'Valor_CSLL'
      FieldName = 'Valor_CSLL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 127
      Searchable = False
      Sortable = False
    end
    object plNotasppField129: TppField
      FieldAlias = 'Calculo_Reverso'
      FieldName = 'Calculo_Reverso'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 128
      Searchable = False
      Sortable = False
    end
    object plNotasppField130: TppField
      FieldAlias = 'Pedido_Representante'
      FieldName = 'Pedido_Representante'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 129
      Searchable = False
      Sortable = False
    end
    object plNotasppField131: TppField
      FieldAlias = 'Comissao'
      FieldName = 'Comissao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 130
      Searchable = False
      Sortable = False
    end
    object plNotasppField132: TppField
      FieldAlias = 'Comissao_Valor'
      FieldName = 'Comissao_Valor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 131
      Searchable = False
      Sortable = False
    end
    object plNotasppField133: TppField
      FieldAlias = 'Atendente'
      FieldName = 'Atendente'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 132
      Searchable = False
      Sortable = False
    end
    object plNotasppField134: TppField
      FieldAlias = 'Atendente_Comissao'
      FieldName = 'Atendente_Comissao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 133
      Searchable = False
      Sortable = False
    end
    object plNotasppField135: TppField
      FieldAlias = 'Valor_Inventario'
      FieldName = 'Valor_Inventario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 134
      Searchable = False
      Sortable = False
    end
    object plNotasppField136: TppField
      FieldAlias = 'Indicador_Presenca'
      FieldName = 'Indicador_Presenca'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 135
      Searchable = False
      Sortable = False
    end
    object plNotasppField137: TppField
      FieldAlias = 'Veiculo_Restricao'
      FieldName = 'Veiculo_Restricao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 136
      Searchable = False
      Sortable = False
    end
    object plNotasppField138: TppField
      FieldAlias = 'Ratear_Despesa'
      FieldName = 'Ratear_Despesa'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 137
      Searchable = False
      Sortable = False
    end
    object plNotasppField139: TppField
      FieldAlias = 'NFE_Estorno'
      FieldName = 'NFE_Estorno'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 138
      Searchable = False
      Sortable = False
    end
    object plNotasppField140: TppField
      FieldAlias = 'Envio_Armazem'
      FieldName = 'Envio_Armazem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 139
      Searchable = False
      Sortable = False
    end
    object plNotasppField141: TppField
      FieldAlias = 'Representante_ComissaoGer'
      FieldName = 'Representante_ComissaoGer'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 140
      Searchable = False
      Sortable = False
    end
    object plNotasppField142: TppField
      FieldAlias = 'Vendedor'
      FieldName = 'Vendedor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 141
      Searchable = False
      Sortable = False
    end
    object plNotasppField143: TppField
      FieldAlias = 'Valor_BCICMSDest'
      FieldName = 'Valor_BCICMSDest'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 142
      Searchable = False
      Sortable = False
    end
    object plNotasppField144: TppField
      FieldAlias = 'Valor_ICMSDest'
      FieldName = 'Valor_ICMSDest'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 143
      Searchable = False
      Sortable = False
    end
    object plNotasppField145: TppField
      FieldAlias = 'DIFAL_Valor'
      FieldName = 'DIFAL_Valor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 144
      Searchable = False
      Sortable = False
    end
    object plNotasppField146: TppField
      FieldAlias = 'DIFAL_ValorOrig'
      FieldName = 'DIFAL_ValorOrig'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 145
      Searchable = False
      Sortable = False
    end
    object plNotasppField147: TppField
      FieldAlias = 'DIFAL_ValorDest'
      FieldName = 'DIFAL_ValorDest'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 146
      Searchable = False
      Sortable = False
    end
    object plNotasppField148: TppField
      FieldAlias = 'FCP_ValorDest'
      FieldName = 'FCP_ValorDest'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 147
      Searchable = False
      Sortable = False
    end
    object plNotasppField149: TppField
      FieldAlias = 'FCP_ICMSDest'
      FieldName = 'FCP_ICMSDest'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 148
      Searchable = False
      Sortable = False
    end
    object plNotasppField150: TppField
      FieldAlias = 'FCP_ICMSORIG'
      FieldName = 'FCP_ICMSORIG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 149
      Searchable = False
      Sortable = False
    end
    object plNotasppField151: TppField
      FieldAlias = 'DIFAL_AliqInterna'
      FieldName = 'DIFAL_AliqInterna'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 150
      Searchable = False
      Sortable = False
    end
    object plNotasppField152: TppField
      FieldAlias = 'Passo'
      FieldName = 'Passo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 151
      Searchable = False
      Sortable = False
    end
    object plNotasppField153: TppField
      FieldAlias = 'Tipo_Pagamento'
      FieldName = 'Tipo_Pagamento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 152
      Searchable = False
      Sortable = False
    end
    object plNotasppField154: TppField
      FieldAlias = 'Forma_Pagamento'
      FieldName = 'Forma_Pagamento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 153
      Searchable = False
      Sortable = False
    end
    object plNotasppField155: TppField
      FieldAlias = 'Valor_BCFCPST'
      FieldName = 'Valor_BCFCPST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 154
      Searchable = False
      Sortable = False
    end
    object plNotasppField156: TppField
      FieldAlias = 'Valor_FCPST'
      FieldName = 'Valor_FCPST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 155
      Searchable = False
      Sortable = False
    end
    object plNotasppField157: TppField
      FieldAlias = 'Aliquota_FCPST'
      FieldName = 'Aliquota_FCPST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 156
      Searchable = False
      Sortable = False
    end
    object plNotasppField158: TppField
      FieldAlias = 'Valor_BCFCP'
      FieldName = 'Valor_BCFCP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 157
      Searchable = False
      Sortable = False
    end
    object plNotasppField159: TppField
      FieldAlias = 'Aliquota_FCP'
      FieldName = 'Aliquota_FCP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 158
      Searchable = False
      Sortable = False
    end
    object plNotasppField160: TppField
      FieldAlias = 'Valor_FCP'
      FieldName = 'Valor_FCP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 159
      Searchable = False
      Sortable = False
    end
    object plNotasppField161: TppField
      FieldAlias = 'Valor_ICMSDesonerado'
      FieldName = 'Valor_ICMSDesonerado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 160
      Searchable = False
      Sortable = False
    end
    object plNotasppField162: TppField
      FieldAlias = 'Lote'
      FieldName = 'Lote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 161
      Searchable = False
      Sortable = False
    end
    object plNotasppField163: TppField
      FieldAlias = 'Reboque_Placa'
      FieldName = 'Reboque_Placa'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 162
      Searchable = False
      Sortable = False
    end
    object plNotasppField164: TppField
      FieldAlias = 'Reboque_UF'
      FieldName = 'Reboque_UF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 163
      Searchable = False
      Sortable = False
    end
    object plNotasppField165: TppField
      FieldAlias = 'Reboque_ANTT'
      FieldName = 'Reboque_ANTT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 164
      Searchable = False
      Sortable = False
    end
    object plNotasppField166: TppField
      FieldAlias = 'Entrega_Retirada'
      FieldName = 'Entrega_Retirada'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 165
      Searchable = False
      Sortable = False
    end
    object plNotasppField167: TppField
      FieldAlias = 'Valor_CIF'
      FieldName = 'Valor_CIF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 166
      Searchable = False
      Sortable = False
    end
    object plNotasppField168: TppField
      FieldAlias = 'Tipo_Processo'
      FieldName = 'Tipo_Processo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 167
      Searchable = False
      Sortable = False
    end
    object plNotasppField169: TppField
      FieldAlias = 'Valor_AFRMM'
      FieldName = 'Valor_AFRMM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 168
      Searchable = False
      Sortable = False
    end
    object plNotasppField170: TppField
      FieldAlias = 'OK'
      FieldName = 'OK'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 169
      Searchable = False
      Sortable = False
    end
    object plNotasppField171: TppField
      FieldAlias = 'Indicador_Intermediario'
      FieldName = 'Indicador_Intermediario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 170
      Searchable = False
      Sortable = False
    end
    object plNotasppField172: TppField
      FieldAlias = 'Descricao_Forma'
      FieldName = 'Descricao_Forma'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 171
      Searchable = False
      Sortable = False
    end
    object plNotasppField173: TppField
      FieldAlias = 'Intermediador'
      FieldName = 'Intermediador'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 172
      Searchable = False
      Sortable = False
    end
    object plNotasppField174: TppField
      FieldAlias = 'Valor_BCDIFAL'
      FieldName = 'Valor_BCDIFAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 173
      Searchable = False
      Sortable = False
    end
    object plNotasppField175: TppField
      FieldAlias = 'Valor_ICMSDif'
      FieldName = 'Valor_ICMSDif'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 174
      Searchable = False
      Sortable = False
    end
    object plNotasppField176: TppField
      FieldAlias = 'Valor_ICMSMono'
      FieldName = 'Valor_ICMSMono'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 175
      Searchable = False
      Sortable = False
    end
    object plNotasppField177: TppField
      FieldAlias = 'Valor_ICMSMonoRet'
      FieldName = 'Valor_ICMSMonoRet'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 176
      Searchable = False
      Sortable = False
    end
    object plNotasppField178: TppField
      FieldAlias = 'Valor_BCICMSMono'
      FieldName = 'Valor_BCICMSMono'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 177
      Searchable = False
      Sortable = False
    end
    object plNotasppField179: TppField
      FieldAlias = 'Valor_BCICMSMonoRet'
      FieldName = 'Valor_BCICMSMonoRet'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 178
      Searchable = False
      Sortable = False
    end
    object plNotasppField180: TppField
      FieldAlias = 'Transporte_CPFMotorista'
      FieldName = 'Transporte_CPFMotorista'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 179
      Searchable = False
      Sortable = False
    end
    object plNotasppField181: TppField
      FieldAlias = 'Transporte_Lacre'
      FieldName = 'Transporte_Lacre'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 180
      Searchable = False
      Sortable = False
    end
    object plNotasppField182: TppField
      FieldAlias = 'Reboque_Lacre'
      FieldName = 'Reboque_Lacre'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 181
      Searchable = False
      Sortable = False
    end
    object plNotasppField183: TppField
      FieldAlias = 'Armazem'
      FieldName = 'Armazem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 182
      Searchable = False
      Sortable = False
    end
    object plNotasppField184: TppField
      FieldAlias = 'Armazem_Nome'
      FieldName = 'Armazem_Nome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 183
      Searchable = False
      Sortable = False
    end
    object plNotasppField185: TppField
      FieldAlias = 'Armazem_CNPJ'
      FieldName = 'Armazem_CNPJ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 184
      Searchable = False
      Sortable = False
    end
    object plNotasppField186: TppField
      FieldAlias = 'Armazem_IE'
      FieldName = 'Armazem_IE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 185
      Searchable = False
      Sortable = False
    end
    object plNotasppField187: TppField
      FieldAlias = 'Armazem_Endereco'
      FieldName = 'Armazem_Endereco'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 186
      Searchable = False
      Sortable = False
    end
    object plNotasppField188: TppField
      FieldAlias = 'Valor_BCII'
      FieldName = 'Valor_BCII'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 187
      Searchable = False
      Sortable = False
    end
    object plNotasppField189: TppField
      FieldAlias = 'Remessa'
      FieldName = 'Remessa'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 188
      Searchable = False
      Sortable = False
    end
    object plNotasppField190: TppField
      FieldAlias = 'Inf_Compl'
      FieldName = 'Inf_Compl'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 189
      Searchable = False
      Sortable = False
    end
  end
  object plItens: TppDBPipeline
    DataSource = dsItens
    CloseDataSource = True
    OpenDataSource = False
    UserName = 'plItens'
    Left = 758
    Top = 342
    MasterDataPipelineName = 'plNotas'
    object plItensppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota'
      FieldName = 'Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object plItensppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo_Mercadoria'
      FieldName = 'Codigo_Mercadoria'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object plItensppField3: TppField
      FieldAlias = 'Codigo_Fabricante'
      FieldName = 'Codigo_Fabricante'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object plItensppField4: TppField
      FieldAlias = 'Descricao_Mercadoria'
      FieldName = 'Descricao_Mercadoria'
      FieldLength = 5111
      DisplayWidth = 5111
      Position = 3
    end
    object plItensppField5: TppField
      FieldAlias = 'NCM'
      FieldName = 'NCM'
      FieldLength = 8
      DisplayWidth = 8
      Position = 4
    end
    object plItensppField6: TppField
      FieldAlias = 'Unidade_Medida'
      FieldName = 'Unidade_Medida'
      FieldLength = 3
      DisplayWidth = 3
      Position = 5
    end
    object plItensppField7: TppField
      FieldAlias = 'CodigoTrib_TabA'
      FieldName = 'CodigoTrib_TabA'
      FieldLength = 2
      DisplayWidth = 2
      Position = 6
    end
    object plItensppField8: TppField
      FieldAlias = 'CodigoTrib_TabB'
      FieldName = 'CodigoTrib_TabB'
      FieldLength = 3
      DisplayWidth = 3
      Position = 7
    end
    object plItensppField9: TppField
      FieldAlias = 'CSTIPI'
      FieldName = 'CSTIPI'
      FieldLength = 2
      DisplayWidth = 2
      Position = 8
    end
    object plItensppField10: TppField
      FieldAlias = 'CSTPIS'
      FieldName = 'CSTPIS'
      FieldLength = 2
      DisplayWidth = 2
      Position = 9
    end
    object plItensppField11: TppField
      FieldAlias = 'CSTCOFINS'
      FieldName = 'CSTCOFINS'
      FieldLength = 2
      DisplayWidth = 2
      Position = 10
    end
    object plItensppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade'
      FieldName = 'Quantidade'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object plItensppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_Unitario'
      FieldName = 'Valor_Unitario'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object plItensppField14: TppField
      FieldAlias = 'Valor_Total'
      FieldName = 'Valor_Total'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 13
    end
    object plItensppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_IPI'
      FieldName = 'Aliquota_IPI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object plItensppField16: TppField
      FieldAlias = 'Valor_IPI'
      FieldName = 'Valor_IPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 15
    end
    object plItensppField17: TppField
      FieldAlias = 'Total_IPI'
      FieldName = 'Total_IPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 16
    end
    object plItensppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_ICMSOper'
      FieldName = 'Aliquota_ICMSOper'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object plItensppField19: TppField
      FieldAlias = 'Valor_BCICMSOper'
      FieldName = 'Valor_BCICMSOper'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 18
    end
    object plItensppField20: TppField
      FieldAlias = 'Valor_ICMSOper'
      FieldName = 'Valor_ICMSOper'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 19
    end
    object plItensppField21: TppField
      FieldAlias = 'Valor_BCICMSSub'
      FieldName = 'Valor_BCICMSSub'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 20
    end
    object plItensppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_ICMSSub'
      FieldName = 'Aliquota_ICMSSub'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object plItensppField23: TppField
      FieldAlias = 'Valor_ICMSSub'
      FieldName = 'Valor_ICMSSub'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 22
    end
    object plItensppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_PIS'
      FieldName = 'Aliquota_PIS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
    object plItensppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_PIS'
      FieldName = 'Valor_PIS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object plItensppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_COFINS'
      FieldName = 'Aliquota_COFINS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 25
    end
    object plItensppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_COFINS'
      FieldName = 'Valor_COFINS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 26
    end
    object plItensppField28: TppField
      FieldAlias = 'Total_Item'
      FieldName = 'Total_Item'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 27
    end
    object plItensppField29: TppField
      FieldAlias = 'Total_Impostos'
      FieldName = 'Total_Impostos'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 28
    end
    object plItensppField30: TppField
      FieldAlias = 'Natureza_Codigo'
      FieldName = 'Natureza_Codigo'
      FieldLength = 4
      DisplayWidth = 4
      Position = 29
    end
    object plItensppMasterFieldLink1: TppMasterFieldLink
      MasterFieldName = 'Numero'
      GuidCollationType = gcString
      DetailFieldName = 'Nota'
      DetailSortOrder = soAscending
      IgnoreTrailingSpaces = False
    end
    object plItensppMasterFieldLink2: TppMasterFieldLink
      MasterFieldName = 'Data_Emissao'
      GuidCollationType = gcString
      DetailFieldName = 'Data'
      DetailSortOrder = soAscending
      IgnoreTrailingSpaces = False
    end
  end
  object tbNotas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Pedido= Numero'
      '      ,Serie= '#39'0 '#39' '
      '      ,Modelo= '#39'55'#39' '
      '      ,Cancelada= CAST(0 AS bit)'
      '      ,NFe_Denegada= CAST(0 AS bit)'
      '      ,Data_Cancelamento= CAST(NULL AS datetime)'
      '      ,Protocolo_Cancelamento= CAST(NULL AS varchar(15))'
      '      ,Imprimir_DANFE= CAST(1 AS bit)'
      '      ,Motivo_Cancelamento = CAST(null AS VARCHAR(60)) '
      '      ,* '
      
        '      ,Inf_Compl = concat(Inf_Complementares, Inf_Complementares' +
        '2)'
      'FROM  Pedidos'
      'WHERE  Numero = 5'
      'ORDER  BY Numero')
    FetchRows = 1
    Left = 403
    Top = 195
  end
  object dsNotas: TDataSource
    DataSet = tbNotas
    Left = 403
    Top = 149
  end
  object tbItens: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Nota = Pedido,'
      '       Codigo_Mercadoria,'
      '       Codigo_Fabricante,'
      '       CASE WHEN (Total_Impostos > 0) AND (Valor_Total > 0) THEN'
      
        '            CAST(Descricao_Mercadoria AS VARCHAR(5000))+ CHAR(13' +
        ')+CHAR(13)+'#39'                              TRIBUTOS : R$ '#39'+ CONVE' +
        'RT(VARCHAR, CAST(Total_Impostos AS money),-1) +'
      
        '                 '#39'  ('#39'+CONVERT(VARCHAR, CAST( ROUND((Total_Impos' +
        'tos/Valor_Total)*100, 2) AS money),-1)+'#39'%)'#39' '
      '       ELSE'
      '            CAST(Descricao_Mercadoria AS VARCHAR(5000)) '
      '       END AS Descricao_Mercadoria,'
      '       NCM,'
      '       Unidade_Medida,'
      '       CodigoTrib_TabA,'
      '       CodigoTrib_TabB,'
      '       CSTIPI,'
      '       CSTPIS,'
      '       CSTCOFINS,'
      '       Quantidade,'
      '       Valor_Unitario,'
      '       Valor_Total,'
      '       Aliquota_IPI,'
      '       Valor_IPI,'
      '       Total_IPI,'
      '       Aliquota_ICMSOper,'
      '       Valor_BCICMSOper,'
      '       Valor_ICMSOper,'
      '       Valor_BCICMSSub,'
      '       Aliquota_ICMSSub,'
      '       Valor_ICMSSub,'
      '       Aliquota_PIS,'
      '       Valor_PIS,'
      '       Aliquota_COFINS,'
      '       Valor_COFINS,'
      '       Total_Item,'
      '       Total_Impostos,'
      '       Natureza_Codigo'
      'FROM   PedidosItens'
      'WHERE  Pedido = 5'
      'ORDER  BY Item')
    FetchRows = 1
    Left = 465
    Top = 194
  end
  object dsItens: TDataSource
    DataSet = tbItens
    Left = 465
    Top = 149
  end
  object plEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    CloseDataSource = True
    UserName = 'plEmpresas'
    Left = 758
    Top = 291
  end
  object tLancamento: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'Select MAX(Numero) AS Numero FROM Lancamentos')
    FetchRows = 1
    Left = 90
    Top = 202
  end
  object ppNatureza: TppDBPipeline
    DataSource = Dados.dsNatureza
    CloseDataSource = True
    UserName = 'ppNatureza'
    Left = 758
    Top = 445
  end
  object tTempo: TTimer
    Enabled = False
    Interval = 18000
    OnTimer = tTempoTimer
    Left = 606
    Top = 150
  end
  object DANFE_Retrato: TppReport
    AutoStop = False
    DataPipeline = plNotas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Cybersoft - DANFE Retrato'
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
    Template.FileName = 
      'C:\Sistemas\Faturamento\Codigo_Fonte\Relatorios\DANFE_Retrato.rt' +
      'm'
    Units = utMillimeters
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = DANFE_RetratoBeforePrint
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
    PDFSettings.Author = 'Cybersoft ERP Importa'
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
    PDFSettings.Subject = 'Nota Fiscal Eletr'#244'nica'
    PDFSettings.Title = 'DANFE'
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    ShowCancelDialog = False
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 758
    Top = 241
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'plNotas'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 61383
      mmPrintPosition = 0
      object ppShape60: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape60'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 110596
        mmTop = 55033
        mmWidth = 86519
        BandType = 0
        LayerName = Foreground1
      end
      object lQuadroEmpresa: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'lQuadroEmpresa'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 32279
        mmLeft = 0
        mmTop = 16404
        mmWidth = 79904
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape58: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape58'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 32279
        mmLeft = 79904
        mmTop = 16404
        mmWidth = 30692
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape6'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 12965
        mmLeft = 110596
        mmTop = 16404
        mmWidth = 86519
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape4'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 7144
        mmLeft = 25400
        mmTop = 7144
        mmWidth = 138377
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape3'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 7144
        mmLeft = 0
        mmTop = 7144
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 7145
        mmLeft = 0
        mmTop = 0
        mmWidth = 163777
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape2'
        Brush.Color = 15987699
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 14023
        mmLeft = 164571
        mmTop = 0
        mmWidth = 32544
        BandType = 0
        LayerName = Foreground1
      end
      object lRazaoSocial: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lRazaoSocial'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 
          'RECEBEMOS DE (RAZ'#195'O SOCIAL DO EMITENTE) OS PRODUTOS CONSTANTES D' +
          'A NOTA FISCAL INDICADA AO LADO.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 1058
        mmTop = 2117
        mmWidth = 161396
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DATA DE RECEBIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 1941
        mmLeft = 795
        mmTop = 7408
        mmWidth = 21379
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'IDENTIFICA'#199#195'O E ASSINATURA DO RECEBEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 1941
        mmLeft = 26195
        mmTop = 7408
        mmWidth = 42121
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'NF-e'
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
        mmLeft = 164836
        mmTop = 265
        mmWidth = 32279
        BandType = 0
        LayerName = Foreground1
      end
      object lSerie: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lSerie'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'SERIE 000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 173845
        mmTop = 9260
        mmWidth = 14055
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Style = psDashDotDot
        Pen.Width = 0
        mmHeight = 2117
        mmLeft = 265
        mmTop = 15081
        mmWidth = 197115
        BandType = 0
        LayerName = Foreground1
      end
      object lEndereco: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lEndereco'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'lEndereco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 529
        mmTop = 36777
        mmWidth = 78846
        BandType = 0
        LayerName = Foreground1
      end
      object lBairroMunicipio: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lBairroMunicipio'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'lBairroMunicipio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 529
        mmTop = 39688
        mmWidth = 78846
        BandType = 0
        LayerName = Foreground1
      end
      object lCEP: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lCEP'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'lCEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 529
        mmTop = 42598
        mmWidth = 78846
        BandType = 0
        LayerName = Foreground1
      end
      object lEmpresa: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lEmpresa'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'lEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 529
        mmTop = 33338
        mmWidth = 78846
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DANFE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 80169
        mmTop = 16404
        mmWidth = 30163
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '0 - ENTRADA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        WordWrap = True
        mmHeight = 2879
        mmLeft = 82021
        mmTop = 31485
        mmWidth = 15325
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape7: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape7'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4233
        mmLeft = 101071
        mmTop = 32279
        mmWidth = 3969
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Saida_Entrada'
        DataPipeline = plNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plNotas'
        mmHeight = 3387
        mmLeft = 102394
        mmTop = 32544
        mmWidth = 2117
        BandType = 0
        LayerName = Foreground1
      end
      object lSerie2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lSerie1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'SERIE 000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 88106
        mmTop = 38365
        mmWidth = 10583
        BandType = 0
        LayerName = Foreground1
      end
      object lNumero_Folha: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lNumero_Folha'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Numero_Folha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 84667
        mmTop = 41540
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground1
      end
      object lNumero: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lSerie2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'N'#186' 000.000.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4657
        mmLeft = 167495
        mmTop = 3969
        mmWidth = 26966
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape8: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape8'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 0
        mmTop = 48683
        mmWidth = 110596
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'NATUREZA DA OPERA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 1940
        mmLeft = 794
        mmTop = 49213
        mmWidth = 23283
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape9: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape9'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 0
        mmTop = 55033
        mmWidth = 31485
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'INSCRI'#199#195'O ESTADUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 1940
        mmLeft = 794
        mmTop = 55563
        mmWidth = 19897
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape10: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape10'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 31485
        mmTop = 55033
        mmWidth = 42333
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'INSC. ESTADUAL DO SUBST. TRIBUT'#193'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 1940
        mmLeft = 32279
        mmTop = 55563
        mmWidth = 38629
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'lIE1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Inscricao_Substituto'
        DataPipeline = plNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plNotas'
        mmHeight = 3175
        mmLeft = 32015
        mmTop = 57415
        mmWidth = 41010
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape11: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape101'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 73819
        mmTop = 55033
        mmWidth = 36777
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label101'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 1940
        mmLeft = 74877
        mmTop = 55563
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CNPJ'
        DataPipeline = plEmpresas
        DisplayFormat = '##.###.###/####-##;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plEmpresas'
        mmHeight = 3387
        mmLeft = 74613
        mmTop = 57415
        mmWidth = 35190
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel74: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label74'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '1 - SA'#205'DA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        WordWrap = True
        mmHeight = 2879
        mmLeft = 82021
        mmTop = 34396
        mmWidth = 10880
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Documento Auxiliar da Nota Fiscal Eletr'#244'nica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6085
        mmLeft = 81756
        mmTop = 22225
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape55: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape55'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 7144
        mmLeft = 110596
        mmTop = 29369
        mmWidth = 86519
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel77: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label77'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CHAVE DE ACESSO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2032
        mmLeft = 111654
        mmTop = 29898
        mmWidth = 16976
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape56: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape56'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 12171
        mmLeft = 110596
        mmTop = 36513
        mmWidth = 86519
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape57: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape57'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 110596
        mmTop = 48683
        mmWidth = 86519
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel76: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label76'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DADOS DA NF-e'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2032
        mmLeft = 111654
        mmTop = 49213
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NFe_cNF'
        DataPipeline = plNotas
        DisplayFormat = '##.##.##.##.##.###.###/####-##-###.###.###-###-###.###.###-#;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plNotas'
        mmHeight = 3387
        mmLeft = 111125
        mmTop = 32015
        mmWidth = 85990
        BandType = 0
        LayerName = Foreground1
      end
      object CodigoBarras: TppDBBarCode
        DesignLayer = ppDesignLayer2
        UserName = 'CodigoBarras'
        AlignBarCode = ahLeft
        AutoEncode = True
        BarCodeType = bcCode128
        BarColor = clWindowText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NFe_cNF'
        DataPipeline = plNotas
        PrintHumanReadable = False
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'plNotas'
        mmHeight = 10319
        mmLeft = 118798
        mmTop = 17727
        mmWidth = 74877
        BandType = 0
        LayerName = Foreground1
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object lIE: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'lIE'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'IE'
        DataPipeline = plEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plEmpresas'
        mmHeight = 3387
        mmLeft = 794
        mmTop = 57415
        mmWidth = 30163
        BandType = 0
        LayerName = Foreground1
      end
      object ppMemo1: TppMemo
        DesignLayer = ppDesignLayer2
        UserName = 'Memo1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Memo1'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Lines.Strings = (
          
            'Consulta de autenticidade no portal nacional da NF-e www.nfe.faz' +
            'enda.gov.br/portal ou no site da Sefaz Autorizadora.')
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        mmHeight = 10848
        mmLeft = 111654
        mmTop = 37042
        mmWidth = 84931
        BandType = 0
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel81: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label81'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'PROTOCOLO DE AUTORIZA'#199#195'O DE USO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 111654
        mmTop = 55563
        mmWidth = 34925
        BandType = 0
        LayerName = Foreground1
      end
      object lProtocolo: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'lProtocolo'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NFe_Protocolo'
        DataPipeline = plNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plNotas'
        mmHeight = 3387
        mmLeft = 143934
        mmTop = 57415
        mmWidth = 25135
        BandType = 0
        LayerName = Foreground1
      end
      object lDataProtocolo: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'lDataProtocolo'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NFe_DataProtocolo'
        DataPipeline = plNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plNotas'
        mmHeight = 3387
        mmLeft = 169598
        mmTop = 57415
        mmWidth = 27252
        BandType = 0
        LayerName = Foreground1
      end
      object lNatureza: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lNatureza'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'lDestinatario_Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 1323
        mmTop = 51065
        mmWidth = 108215
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'lIE2'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Email'
        DataPipeline = plEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'plEmpresas'
        mmHeight = 2498
        mmLeft = 529
        mmTop = 45508
        mmWidth = 78846
        BandType = 0
        LayerName = Foreground1
      end
      object lDPEC: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label31'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 
          'DANFE impresso em conting'#234'ncia - DPEC regularmente recebida pela' +
          ' Receita Federal do Brasil'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        Visible = False
        WordWrap = True
        mmHeight = 5821
        mmLeft = 128588
        mmTop = 48948
        mmWidth = 67998
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 85990
        mmTop = 44715
        mmWidth = 15610
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
        mmHeight = 15610
        mmLeft = 28046
        mmTop = 17198
        mmWidth = 24871
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'plItens'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 416
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = plItens
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Cybersoft - DANFE Retrato'
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
          Units = utMillimeters
          Version = '19.04'
          mmColumnWidth = 0
          DataPipelineName = 'plItens'
          object ppDetailBand2: TppDetailBand
            BeforePrint = ppDetailBand2BeforePrint
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 3175
            mmPrintPosition = 0
            object ppLine10: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line10'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 3175
              mmLeft = 92340
              mmTop = 0
              mmWidth = 2381
              BandType = 4
              LayerName = Foreground
            end
            object lCodigo: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText6'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Codigo_Mercadoria'
              DataPipeline = plItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 4
              Font.Style = []
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'plItens'
              mmHeight = 2117
              mmLeft = 794
              mmTop = 500
              mmWidth = 13494
              BandType = 4
              LayerName = Foreground
            end
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line6'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 3175
              mmLeft = 77258
              mmTop = 0
              mmWidth = 5027
              BandType = 4
              LayerName = Foreground
            end
            object ppLine8: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line8'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 3175
              mmLeft = 14552
              mmTop = 0
              mmWidth = 5556
              BandType = 4
              LayerName = Foreground
            end
            object ppLine9: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line9'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 3175
              mmLeft = 0
              mmTop = 0
              mmWidth = 3969
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText27: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText27'
              Anchors = [atLeft, atBottom]
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Natureza_Codigo'
              DataPipeline = plItens
              DisplayFormat = '#.###;0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              DataPipelineName = 'plItens'
              mmHeight = 2117
              mmLeft = 92869
              mmTop = 1029
              mmWidth = 5556
              BandType = 4
              LayerName = Foreground
            end
            object ppLine12: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line12'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 3175
              mmLeft = 98425
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText28: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText28'
              Anchors = [atLeft, atBottom]
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Unidade_Medida'
              DataPipeline = plItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              DataPipelineName = 'plItens'
              mmHeight = 2117
              mmLeft = 98954
              mmTop = 1029
              mmWidth = 3969
              BandType = 4
              LayerName = Foreground
            end
            object ppLine14: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line14'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 3175
              mmLeft = 103188
              mmTop = 0
              mmWidth = 1852
              BandType = 4
              LayerName = Foreground
            end
            object lQuantidade: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'lQuantidade'
              Anchors = [atLeft, atBottom]
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Quantidade'
              DataPipeline = plItens
              DisplayFormat = '###,###,##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              WordWrap = True
              DataPipelineName = 'plItens'
              mmHeight = 2117
              mmLeft = 103981
              mmTop = 1058
              mmWidth = 11377
              BandType = 4
              LayerName = Foreground
            end
            object ppLine16: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line16'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 3175
              mmLeft = 115623
              mmTop = 0
              mmWidth = 2381
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText30: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText30'
              Anchors = [atLeft, atBottom]
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Valor_Unitario'
              DataPipeline = plItens
              DisplayFormat = '###,###,##0.00000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              WordWrap = True
              DataPipelineName = 'plItens'
              mmHeight = 2117
              mmLeft = 116417
              mmTop = 1029
              mmWidth = 14817
              BandType = 4
              LayerName = Foreground
            end
            object ppLine18: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line18'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 3175
              mmLeft = 131763
              mmTop = 0
              mmWidth = 4498
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText31: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText301'
              Anchors = [atLeft, atBottom]
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Valor_Total'
              DataPipeline = plItens
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              WordWrap = True
              DataPipelineName = 'plItens'
              mmHeight = 2117
              mmLeft = 132557
              mmTop = 1029
              mmWidth = 11906
              BandType = 4
              LayerName = Foreground
            end
            object ppLine20: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line20'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 3175
              mmLeft = 144992
              mmTop = 0
              mmWidth = 4498
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText32: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText32'
              Anchors = [atLeft, atBottom]
              BlankWhenZero = True
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Valor_BCICMSOper'
              DataPipeline = plItens
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plItens'
              mmHeight = 2117
              mmLeft = 145521
              mmTop = 1029
              mmWidth = 11906
              BandType = 4
              LayerName = Foreground
            end
            object ppLine22: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line201'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 3175
              mmLeft = 157957
              mmTop = 0
              mmWidth = 5821
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText33: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText33'
              Anchors = [atLeft, atBottom]
              BlankWhenZero = True
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Valor_ICMSOper'
              DataPipeline = plItens
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plItens'
              mmHeight = 2117
              mmLeft = 158486
              mmTop = 1029
              mmWidth = 12171
              BandType = 4
              LayerName = Foreground
            end
            object ppLine24: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line24'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 3175
              mmLeft = 170921
              mmTop = 0
              mmWidth = 4498
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText34: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText34'
              Anchors = [atLeft, atBottom]
              BlankWhenZero = True
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Total_IPI'
              DataPipeline = plItens
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plItens'
              mmHeight = 2117
              mmLeft = 171715
              mmTop = 1029
              mmWidth = 11642
              BandType = 4
              LayerName = Foreground
            end
            object ppLine26: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line26'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 3175
              mmLeft = 183621
              mmTop = 0
              mmWidth = 3440
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText35: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText35'
              Anchors = [atLeft, atBottom]
              BlankWhenZero = True
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Aliquota_ICMSOper'
              DataPipeline = plItens
              DisplayFormat = '#0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plItens'
              mmHeight = 2117
              mmLeft = 184150
              mmTop = 1029
              mmWidth = 5556
              BandType = 4
              LayerName = Foreground
            end
            object ppLine31: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line31'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 3175
              mmLeft = 190236
              mmTop = 0
              mmWidth = 3175
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText36: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText36'
              Anchors = [atLeft, atBottom]
              BlankWhenZero = True
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Aliquota_IPI'
              DataPipeline = plItens
              DisplayFormat = '#0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'plItens'
              mmHeight = 2117
              mmLeft = 190765
              mmTop = 1029
              mmWidth = 5556
              BandType = 4
              LayerName = Foreground
            end
            object ppLine32: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line32'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 3175
              mmLeft = 196850
              mmTop = 0
              mmWidth = 3440
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText25: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText25'
              Anchors = [atLeft, atBottom]
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'NCM'
              DataPipeline = plItens
              DisplayFormat = '####.##.##;0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              DataPipelineName = 'plItens'
              mmHeight = 2117
              mmLeft = 77523
              mmTop = 1029
              mmWidth = 11113
              BandType = 4
              LayerName = Foreground
            end
            object lItem_CST: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label11'
              Anchors = [atLeft, atBottom]
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'Label11'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 4
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 2117
              mmLeft = 88636
              mmTop = 1029
              mmWidth = 3704
              BandType = 4
              LayerName = Foreground
            end
            object ppLine7: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line7'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 3175
              mmLeft = 88106
              mmTop = 0
              mmWidth = 2117
              BandType = 4
              LayerName = Foreground
            end
            object ppDBMemo1: TppDBMemo
              DesignLayer = ppDesignLayer1
              UserName = 'DBMemo1'
              ForceJustifyLastLine = True
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              CharWrap = True
              DataField = 'Descricao_Mercadoria'
              DataPipeline = plItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              ParentDataPipeline = False
              RemoveEmptyLines = False
              Stretch = True
              Transparent = True
              DataPipelineName = 'plItens'
              mmHeight = 2117
              mmLeft = 15346
              mmTop = 500
              mmWidth = 61383
              BandType = 4
              LayerName = Foreground
              mmBottomOffset = 1000
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeading = 0
            end
          end
          object raCodeModule1: TraCodeModule
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
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line27'
        Anchors = [atLeft, atBottom]
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        ReprintOnOverFlow = True
        mmHeight = 265
        mmLeft = 0
        mmTop = 4146
        mmWidth = 197115
        BandType = 4
        LayerName = Foreground1
      end
    end
    object Rodape: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintOnLastPage = False
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppLine28: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line301'
        Anchors = [atLeft, atBottom]
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        ReprintOnOverFlow = True
        mmHeight = 1323
        mmLeft = 0
        mmTop = -88
        mmWidth = 197380
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Numero'
      DataPipeline = plNotas
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'plNotas'
      NewFile = False
      object gDadosNF: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 119327
        mmPrintPosition = 0
        object lHomologacao: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label41'
          Angle = 10
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = '[ HOMOLOGA'#199#195'O ]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744576
          Font.Name = 'LLRubberGrotesque'
          Font.Size = 60
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 43089
          mmLeft = 4347
          mmTop = 40000
          mmWidth = 189555
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
          RotatedOriginLeft = -6605
          RotatedOriginTop = 13994
        end
        object ppShape28: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape28'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 43656
          mmTop = 74225
          mmWidth = 21696
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape13: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape13'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 265
          mmTop = 3175
          mmWidth = 132557
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape45: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape45'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 98161
          mmTop = 97102
          mmWidth = 56092
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape40: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape40'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 107686
          mmTop = 90752
          mmWidth = 27781
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel13: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label13'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'DESTINAT'#193'RIO / REMETENTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2910
          mmLeft = 265
          mmTop = 265
          mmWidth = 35190
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel14: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label14'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'NOME / RAZ'#195'O SOCIAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 1058
          mmTop = 3175
          mmWidth = 19579
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDestinatario_Nome: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lEndereco1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDestinatario_Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3440
          mmLeft = 1323
          mmTop = 4763
          mmWidth = 130704
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape14: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape14'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 132821
          mmTop = 3175
          mmWidth = 38629
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel15: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label15'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'CNPJ / CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 133879
          mmTop = 3175
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape15: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape15'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 172509
          mmTop = 3175
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel16: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label16'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'DATA DA EMISS'#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 173038
          mmTop = 3175
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lData_Emissao: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'lData_Emissao'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Data_Emissao'
          DataPipeline = plNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 173302
          mmTop = 4763
          mmWidth = 23283
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDestinatario_CNPJ: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label7'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Label7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3387
          mmLeft = 133350
          mmTop = 4763
          mmWidth = 37571
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape16: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape16'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 265
          mmTop = 9525
          mmWidth = 98425
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDestinatario_Endereco: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDestinatario_Endereco'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'ENDERE'#199'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 1058
          mmTop = 10054
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDestinatario_Rua: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDestinatario_Rua'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDestinatario_Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3440
          mmLeft = 1058
          mmTop = 12171
          mmWidth = 96838
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape17: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape17'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 98690
          mmTop = 9525
          mmWidth = 47361
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDestinatario_Bairro: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDestinatario_Bairro'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDestinatario_Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3440
          mmLeft = 99484
          mmTop = 12171
          mmWidth = 45773
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape18: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape18'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 146050
          mmTop = 9525
          mmWidth = 25400
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDestinatario_CEP: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDestinatario_CEP'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDestinatario_Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 146579
          mmTop = 12171
          mmWidth = 24077
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel20: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDestinatario_Endereco1'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'BAIRRO / DISTRITO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 99484
          mmTop = 10054
          mmWidth = 16140
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel21: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label21'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'CEP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 146844
          mmTop = 10054
          mmWidth = 3704
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape19: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape19'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 172509
          mmTop = 9525
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel17: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label17'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'DATA ENTRADA/SA'#205'DA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2117
          mmLeft = 173302
          mmTop = 9525
          mmWidth = 23283
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lData_EntradaSaida: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'lData_Emissao1'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Data_EntradaSaida'
          DataPipeline = plNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 173302
          mmTop = 11906
          mmWidth = 23283
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape20: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape20'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6085
          mmLeft = 265
          mmTop = 15610
          mmWidth = 75406
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel18: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDestinatario_Endereco2'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'MUNIC'#205'PIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 1323
          mmTop = 15875
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDestinatario_Municipio: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDestinatario_Rua1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDestinatario_Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3440
          mmLeft = 1058
          mmTop = 17992
          mmWidth = 74083
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape21: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape201'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6085
          mmLeft = 75671
          mmTop = 15610
          mmWidth = 52917
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel19: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label19'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'TELEFONE / FAX'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 76729
          mmTop = 16140
          mmWidth = 14288
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDestinatario_Telefone: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDestinatario_Telefone'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Arial'
          Font.Pitch = fpFixed
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 76729
          mmTop = 17992
          mmWidth = 51065
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape22: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape22'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6085
          mmLeft = 128588
          mmTop = 15610
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel22: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label22'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 129646
          mmTop = 16140
          mmWidth = 2381
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDestinatario_UF: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDestinatario_Telefone1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'ES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3387
          mmLeft = 129382
          mmTop = 17992
          mmWidth = 5821
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape23: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape23'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6085
          mmLeft = 136261
          mmTop = 15610
          mmWidth = 35190
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel24: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label24'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'INSCRI'#199#195'O ESTADUAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 137054
          mmTop = 16140
          mmWidth = 19844
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape24: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape24'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 172509
          mmTop = 15610
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel25: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label25'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'HORA DE SA'#205'DA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 173302
          mmTop = 15875
          mmWidth = 16669
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lHora_Saida: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'lHora_Saida'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Hora_EntradaSaida'
          DataPipeline = plNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 173302
          mmTop = 17992
          mmWidth = 23283
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel27: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label27'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'C'#193'LCULO DO IMPOSTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2910
          mmLeft = 265
          mmTop = 71438
          mmWidth = 28046
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape37: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape37'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 529
          mmTop = 90752
          mmWidth = 83873
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel39: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label39'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'RAZ'#195'O SOCIAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 1323
          mmTop = 91281
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lTransportador_Nome: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lTransportador_Nome'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lTransportador_Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3440
          mmLeft = 1058
          mmTop = 93398
          mmWidth = 82286
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape38: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape38'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 84138
          mmTop = 90752
          mmWidth = 23813
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel40: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label40'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'FRETE POR CONTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 85196
          mmTop = 91281
          mmWidth = 16669
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel41: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lTransportador_Nome1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = '0 - EMITENTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2117
          mmLeft = 84931
          mmTop = 93134
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel42: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label42'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = '1 - DESTINATARIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2117
          mmLeft = 84931
          mmTop = 94721
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape39: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape39'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 3704
          mmLeft = 103188
          mmTop = 92869
          mmWidth = 3440
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText17: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText17'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Modalidade_Frete'
          DataPipeline = plNotas
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 103717
          mmTop = 92869
          mmWidth = 2646
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel43: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label401'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'C'#211'DIGO ANTT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 109538
          mmTop = 91281
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape41: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape401'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 135467
          mmTop = 90752
          mmWidth = 22225
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel44: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label44'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'PLACA DO VE'#205'CULO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 137054
          mmTop = 91281
          mmWidth = 17463
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape42: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape42'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 157692
          mmTop = 90752
          mmWidth = 7938
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel46: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label46'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 159279
          mmTop = 91281
          mmWidth = 2381
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape43: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape43'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 165629
          mmTop = 90752
          mmWidth = 31485
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel45: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label45'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'CNPJ / CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 166688
          mmTop = 91281
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape44: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape44'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 265
          mmTop = 97102
          mmWidth = 97896
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel47: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label47'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'ENDERE'#199'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 1323
          mmTop = 97631
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lTransportador_Endereco: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lTransportador_Nome3'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lTransportador_Endereco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3440
          mmLeft = 1058
          mmTop = 99748
          mmWidth = 96309
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel49: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label49'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'MUNIC'#205'PIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 99219
          mmTop = 97367
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lTransportador_Municipio: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lTransportador_Municipio'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lTransportador_Municipio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3440
          mmLeft = 98954
          mmTop = 99484
          mmWidth = 54504
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape46: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape46'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 154252
          mmTop = 97102
          mmWidth = 7938
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel51: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label51'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 155840
          mmTop = 97631
          mmWidth = 2381
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lTransportador_UF: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lTransportador_UF1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 155311
          mmTop = 99748
          mmWidth = 6085
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape47: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape47'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 162190
          mmTop = 97102
          mmWidth = 34925
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel52: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label52'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'INSCRI'#199#195'O ESTADUAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 162984
          mmTop = 97631
          mmWidth = 26723
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lTransportador_CNPJ: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lTransportador_Municipio1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lTransportador_Municipio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 166688
          mmTop = 93398
          mmWidth = 29898
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lTransportador_IE: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lTransportador_IE'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lTransportador_Municipio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 163248
          mmTop = 99748
          mmWidth = 33338
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape48: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape48'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 265
          mmTop = 103452
          mmWidth = 22754
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel48: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label48'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'QUANTIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 1323
          mmTop = 103981
          mmWidth = 14552
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText18: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText18'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Volume_Quantidade'
          DataPipeline = plNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 1058
          mmTop = 106098
          mmWidth = 21167
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape49: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape49'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 23019
          mmTop = 103452
          mmWidth = 37571
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel50: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label50'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'ESP'#201'CIE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 24077
          mmTop = 103981
          mmWidth = 9790
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText19: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText19'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Volume_Especie'
          DataPipeline = plNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 23813
          mmTop = 106098
          mmWidth = 36248
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape50: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape50'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 60590
          mmTop = 103452
          mmWidth = 37571
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel53: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label501'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'MARCA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 61648
          mmTop = 103981
          mmWidth = 6615
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText20: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText20'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Volume_Marca'
          DataPipeline = plNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3175
          mmLeft = 61383
          mmTop = 106098
          mmWidth = 36248
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape51: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape501'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 98161
          mmTop = 103452
          mmWidth = 29369
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel54: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label54'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'NUMERA'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 99219
          mmTop = 103981
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText21: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText201'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Volume_Numero'
          DataPipeline = plNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3175
          mmLeft = 98954
          mmTop = 106098
          mmWidth = 28046
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape52: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape52'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 127529
          mmTop = 103452
          mmWidth = 34925
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel55: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label55'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'PESO BRUTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 128588
          mmTop = 103981
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText22: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText22'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Volume_PesoBruto'
          DataPipeline = plNotas
          DisplayFormat = '###,###,##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 128323
          mmTop = 106098
          mmWidth = 33073
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape53: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape53'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 162454
          mmTop = 103452
          mmWidth = 34660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel56: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label56'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'PESO L'#205'QUIDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 163513
          mmTop = 103981
          mmWidth = 12435
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText23: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText23'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Volume_PesoLiquido'
          DataPipeline = plNotas
          DisplayFormat = '###,###,##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 162984
          mmTop = 106098
          mmWidth = 33073
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDestinatario_IE: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label32'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDestinatario_IE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 137319
          mmTop = 17727
          mmWidth = 33338
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText38: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText38'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Transporte_CodigoANTT'
          DataPipeline = plNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3175
          mmLeft = 108744
          mmTop = 93398
          mmWidth = 26194
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText39: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText39'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Transporte_Placa'
          DataPipeline = plNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3175
          mmLeft = 136790
          mmTop = 93663
          mmWidth = 19579
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText40: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText40'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Transporte_PlacaUF'
          DataPipeline = plNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3175
          mmLeft = 158486
          mmTop = 93398
          mmWidth = 6615
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape59: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape59'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 23813
          mmLeft = 131763
          mmTop = 47096
          mmWidth = 65617
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape12: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape12'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 23813
          mmLeft = 65881
          mmTop = 47096
          mmWidth = 65617
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape25: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape25'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 23813
          mmLeft = 0
          mmTop = 47096
          mmWidth = 65617
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel26: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label26'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'FATURA / DUPLICATA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2910
          mmLeft = 265
          mmTop = 44186
          mmWidth = 26194
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel12: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label12'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'N'#218'MERO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 1588
          mmTop = 47361
          mmWidth = 18256
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine33: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line33'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          mmHeight = 23548
          mmLeft = 20108
          mmTop = 47361
          mmWidth = 794
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel75: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label75'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'VENCIMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 21167
          mmTop = 47361
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel78: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label78'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'VALOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 39688
          mmTop = 47361
          mmWidth = 24871
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine34: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line34'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          mmHeight = 23548
          mmLeft = 169863
          mmTop = 47361
          mmWidth = 794
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl1: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 1852
          mmTop = 49213
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl1: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 20638
          mmTop = 49213
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl1: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label802'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 39952
          mmTop = 49213
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel90: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label90'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'N'#218'MERO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2032
          mmLeft = 67469
          mmTop = 47361
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine35: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line35'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          mmHeight = 23548
          mmLeft = 151342
          mmTop = 47361
          mmWidth = 794
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel91: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label91'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'VENCIMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2032
          mmLeft = 87048
          mmTop = 47361
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel92: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label92'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'VALOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2032
          mmLeft = 105569
          mmTop = 47361
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine36: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line36'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          mmHeight = 23548
          mmLeft = 38629
          mmTop = 47361
          mmWidth = 794
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel96: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label96'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'N'#218'MERO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2032
          mmLeft = 133350
          mmTop = 47361
          mmWidth = 17463
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine37: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line37'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          mmHeight = 23548
          mmLeft = 85725
          mmTop = 47361
          mmWidth = 794
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel97: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label97'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'VENCIMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2032
          mmLeft = 152665
          mmTop = 47625
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel98: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label98'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'VALOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2032
          mmLeft = 170657
          mmTop = 47361
          mmWidth = 24342
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine38: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line38'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          mmHeight = 23548
          mmLeft = 104246
          mmTop = 47361
          mmWidth = 794
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl2: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 1852
          mmTop = 51858
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl3: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl3'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 1852
          mmTop = 54504
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl2: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 20638
          mmTop = 51858
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl2: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 39952
          mmTop = 51858
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl3: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl3'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 39952
          mmTop = 54504
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl4: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl4'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 1852
          mmTop = 57150
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl5: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl5'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 1852
          mmTop = 59796
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl6: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl6'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 1852
          mmTop = 62442
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl4: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl4'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 20638
          mmTop = 57150
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl5: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl5'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 20638
          mmTop = 59796
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl6: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl6'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 20638
          mmTop = 62442
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl4: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl4'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 39952
          mmTop = 57150
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl5: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl5'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 39952
          mmTop = 59796
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl6: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label11'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 39952
          mmTop = 62442
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl7: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl7'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 1852
          mmTop = 65088
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl8: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl8'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 1852
          mmTop = 67733
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl9: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl9'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 67469
          mmTop = 49213
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl7: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl7'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 20638
          mmTop = 65088
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl8: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl8'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 20638
          mmTop = 67733
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl9: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl9'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 86254
          mmTop = 49213
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl7: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl7'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 39952
          mmTop = 65088
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl8: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl8'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 39952
          mmTop = 67733
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl9: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label18'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 105569
          mmTop = 49213
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl10: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl10'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 67469
          mmTop = 51858
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl10: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl10'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 86254
          mmTop = 51858
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl11: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl11'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 67469
          mmTop = 54504
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl11: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl11'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 86254
          mmTop = 54504
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl11: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl11'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 105569
          mmTop = 54504
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl12: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl12'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 67469
          mmTop = 57150
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl12: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label20'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 86254
          mmTop = 57150
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl12: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl12'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 105569
          mmTop = 57150
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl10: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl10'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 105569
          mmTop = 51858
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl3: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl3'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 20638
          mmTop = 54504
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl13: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl13'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 67469
          mmTop = 59796
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl14: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl14'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lNumDupl14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 67469
          mmTop = 62442
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl15: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl15'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lNumDupl15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 67469
          mmTop = 65088
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl13: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl101'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDataDupl101'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 86254
          mmTop = 59796
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl14: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl14'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDataDupl14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 86254
          mmTop = 62442
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl15: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label201'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Label201'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 86254
          mmTop = 65088
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl13: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl101'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 105569
          mmTop = 59796
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl14: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl14'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lValorDupl14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 105569
          mmTop = 62442
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl15: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl15'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lValorDupl15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 105569
          mmTop = 65088
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl17: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl16'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lNumDupl16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 133086
          mmTop = 49213
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl18: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl17'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lNumDupl17'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 133086
          mmTop = 51858
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl19: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl18'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lNumDupl18'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 133086
          mmTop = 54504
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl20: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl19'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lNumDupl19'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 133086
          mmTop = 57150
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl21: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl20'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lNumDupl20'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 133086
          mmTop = 59796
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl22: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl21'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lNumDupl14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 133086
          mmTop = 62442
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl23: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl22'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lNumDupl15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 133086
          mmTop = 65088
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl17: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl17'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDataDupl17'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 151871
          mmTop = 49213
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl18: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl102'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDataDupl102'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 151871
          mmTop = 51858
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl19: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl19'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDataDupl19'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 151871
          mmTop = 54504
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl20: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label202'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Label202'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 151871
          mmTop = 57150
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl21: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl21'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDataDupl101'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 151871
          mmTop = 59796
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl22: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl22'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDataDupl14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 151871
          mmTop = 62442
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl23: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl23'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDataDupl23'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 151871
          mmTop = 65088
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl17: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl17'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lValorDupl17'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 171186
          mmTop = 49213
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl18: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl102'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lValorDupl102'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 171186
          mmTop = 51858
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl19: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl19'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lValorDupl19'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 171186
          mmTop = 54504
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl20: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl20'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lValorDupl20'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 171186
          mmTop = 57150
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl21: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl21'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lValorDupl21'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 171186
          mmTop = 59796
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl22: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl22'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lValorDupl14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 171186
          mmTop = 62442
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl23: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl23'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lValorDupl15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 171186
          mmTop = 65088
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl16: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label53'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lNumDupl15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 67469
          mmTop = 67733
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl16: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl16'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDataDupl16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 86254
          mmTop = 67733
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl16: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl16'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lValorDupl15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 105569
          mmTop = 67733
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl24: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl24'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lNumDupl15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 133086
          mmTop = 67733
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl24: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl24'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDataDupl24'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 151871
          mmTop = 67733
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl24: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl24'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lValorDupl15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 171186
          mmTop = 67733
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape74: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape74'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 98161
          mmTop = 31221
          mmWidth = 73290
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lTituloEntrega_Retirada: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lTituloEntrega_Retirada'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'INFORMA'#199#213'ES DO LOCAL DE ENTREGA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2963
          mmLeft = 0
          mmTop = 21960
          mmWidth = 48006
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape75: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape75'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 0
          mmTop = 24871
          mmWidth = 132821
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel103: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label103'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'NOME / RAZ'#195'O SOCIAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 529
          mmTop = 25400
          mmWidth = 19579
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lEntregaNome: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lEntregaNome'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDestinatario_Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3175
          mmLeft = 794
          mmTop = 27517
          mmWidth = 130969
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape76: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape76'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 132821
          mmTop = 24871
          mmWidth = 38629
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel105: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label105'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'CNPJ / CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 133350
          mmTop = 25400
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape77: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape77'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 172509
          mmTop = 24871
          mmWidth = 25135
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel106: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label106'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'INSCRI'#199#195'O ESTADUAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2117
          mmLeft = 173038
          mmTop = 25135
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lEntregaCNPJ: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lEntregaCNPJ'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lEntregaCNPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 133350
          mmTop = 27517
          mmWidth = 37571
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape78: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape78'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 0
          mmTop = 31221
          mmWidth = 98425
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel108: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label1001'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'ENDERE'#199'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 529
          mmTop = 31750
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lEntregaRua: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDestinatario_Rua3'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDestinatario_Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3175
          mmLeft = 529
          mmTop = 33867
          mmWidth = 96838
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lEntregaBairro: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDestinatario_Bairro1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDestinatario_Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3175
          mmLeft = 98954
          mmTop = 33867
          mmWidth = 71702
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape79: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape79'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 172509
          mmTop = 31221
          mmWidth = 25135
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel111: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label111'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'BAIRRO / DISTRITO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 98954
          mmTop = 31750
          mmWidth = 16140
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel112: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label112'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'CEP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 173038
          mmTop = 31750
          mmWidth = 3704
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape81: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape202'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6085
          mmLeft = 0
          mmTop = 37571
          mmWidth = 163248
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel114: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label114'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'MUNIC'#205'PIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 794
          mmTop = 37835
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lEntregaMunicipio: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lEntregaMunicipio'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDestinatario_Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3175
          mmLeft = 529
          mmTop = 39952
          mmWidth = 161925
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape82: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape82'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6085
          mmLeft = 163248
          mmTop = 37571
          mmWidth = 8202
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel117: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label117'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 164307
          mmTop = 38100
          mmWidth = 2381
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lEntregaUF: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lEntregaUF'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'ES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 164042
          mmTop = 39952
          mmWidth = 6350
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape84: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape84'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 172509
          mmTop = 37571
          mmWidth = 25135
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel120: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label120'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'FONE/FAX'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2117
          mmLeft = 173038
          mmTop = 37835
          mmWidth = 8636
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lEntregaCEP: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDestinatario_CEP1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDestinatario_Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 173038
          mmTop = 33867
          mmWidth = 24077
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lEntregaIE: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lEntregaCNPJ1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lEntregaCNPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 174096
          mmTop = 26988
          mmWidth = 22490
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lEntregaTelefone: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lEntregaTelefone'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDestinatario_Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 173567
          mmTop = 39952
          mmWidth = 22754
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel57: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label57'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'DADOS DO PRODUTO / SERVI'#199'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 111334
          mmWidth = 42069
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape54: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape54'
          Brush.Color = cl3DDkShadow
          Pen.Width = 0
          ReprintOnOverFlow = True
          mmHeight = 5292
          mmLeft = 0
          mmTop = 114035
          mmWidth = 197115
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel58: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label58'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'C'#211'D.PROD.'
          Color = clSilver
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 2381
          mmTop = 116097
          mmWidth = 9991
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line2'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5027
          mmLeft = 14552
          mmTop = 114300
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine3: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line3'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5027
          mmLeft = 77258
          mmTop = 114300
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel59: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label59'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'DESCRI'#199#195'O DO PRODUTO / SERVI'#199'OS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 29104
          mmTop = 116097
          mmWidth = 33359
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine4: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line4'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5027
          mmLeft = 88106
          mmTop = 114300
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel60: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label60'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'NCM/SH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 79640
          mmTop = 116097
          mmWidth = 6773
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel61: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label601'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'CST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 88636
          mmTop = 116097
          mmWidth = 3556
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine5: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line5'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5292
          mmLeft = 92340
          mmTop = 114035
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel62: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label62'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'CFOP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 93134
          mmTop = 116097
          mmWidth = 4911
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine11: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line11'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5292
          mmLeft = 98425
          mmTop = 114035
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel63: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label63'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'UM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 99748
          mmTop = 116097
          mmWidth = 2625
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine13: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line13'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5292
          mmLeft = 103188
          mmTop = 114035
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel64: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label64'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'QTDE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 106892
          mmTop = 116097
          mmWidth = 4995
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine15: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line15'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5292
          mmLeft = 115623
          mmTop = 114035
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel65: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label65'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'V.UNITARIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 116946
          mmTop = 116097
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine17: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line17'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5292
          mmLeft = 131763
          mmTop = 114035
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel66: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label66'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'V.TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 134938
          mmTop = 116097
          mmWidth = 7197
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine19: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line19'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5292
          mmLeft = 144992
          mmTop = 114035
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel67: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label67'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'BC ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 147902
          mmTop = 116097
          mmWidth = 7366
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine21: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line21'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5292
          mmLeft = 157957
          mmTop = 114035
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel68: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label68'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'V.ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 161661
          mmTop = 116097
          mmWidth = 5757
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine23: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line23'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5292
          mmLeft = 170921
          mmTop = 114035
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel69: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label69'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'V.IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 175684
          mmTop = 116097
          mmWidth = 3471
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine25: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line25'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5292
          mmLeft = 183621
          mmTop = 114035
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel70: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label70'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'ALIQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 184944
          mmTop = 115082
          mmWidth = 4149
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel71: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label701'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 184944
          mmTop = 116989
          mmWidth = 4318
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine29: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line29'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5292
          mmLeft = 190236
          mmTop = 114035
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel72: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label702'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'ALIQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 191823
          mmTop = 115082
          mmWidth = 4149
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel73: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label73'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 192882
          mmTop = 116989
          mmWidth = 2032
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel38: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label38'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'TRANSPORTADOR / VOLUMES TRANSPORTADOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2910
          mmLeft = 265
          mmTop = 87455
          mmWidth = 58738
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape31: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape31'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 107156
          mmTop = 80575
          mmWidth = 21660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape27: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape27'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 21960
          mmTop = 74225
          mmWidth = 21768
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape26: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape26'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 265
          mmTop = 74225
          mmWidth = 21768
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel28: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label28'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'B.C ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2000
          mmLeft = 794
          mmTop = 74755
          mmWidth = 20710
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel23: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label23'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'VALOR DO ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2000
          mmLeft = 22490
          mmTop = 74755
          mmWidth = 20710
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel29: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label29'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'B.C.ICMS ST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2000
          mmLeft = 44450
          mmTop = 74755
          mmWidth = 20710
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText8: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText8'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'BCICMS_Substitutivo'
          DataPipeline = plNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 44450
          mmTop = 76871
          mmWidth = 20710
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape29: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape29'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 65352
          mmTop = 74225
          mmWidth = 21660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel30: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label30'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'VALOR ICMS ST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2000
          mmLeft = 65881
          mmTop = 74755
          mmWidth = 20710
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText9: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText9'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'ValorICMS_Substitutivo'
          DataPipeline = plNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 65881
          mmTop = 76871
          mmWidth = 20710
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape30: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape30'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 168688
          mmTop = 74225
          mmWidth = 28480
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel31: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label301'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'TOTAL PRODUTOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2117
          mmLeft = 169217
          mmTop = 74755
          mmWidth = 27546
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText10: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText10'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Valor_TotalProdutos'
          DataPipeline = plNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 169217
          mmTop = 76871
          mmWidth = 27546
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel32: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label302'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2117
          mmLeft = 107686
          mmTop = 80840
          mmWidth = 20660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText11: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText11'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Valor_TotalIPI'
          DataPipeline = plNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 107686
          mmTop = 83221
          mmWidth = 20660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape32: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape301'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 168688
          mmTop = 80575
          mmWidth = 28480
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel33: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label33'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'TOTAL DA NOTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2032
          mmLeft = 168953
          mmTop = 80840
          mmWidth = 27546
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText12: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText101'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Valor_TotalNota'
          DataPipeline = plNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 168953
          mmTop = 82957
          mmWidth = 27546
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape33: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape33'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 65352
          mmTop = 80575
          mmWidth = 21660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel34: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label34'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'OUTRAS DESP.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1914
          mmLeft = 65881
          mmTop = 80840
          mmWidth = 20710
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText13: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText13'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Valor_OutrasDespesas'
          DataPipeline = plNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 65881
          mmTop = 83221
          mmWidth = 20710
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape34: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape34'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 43921
          mmTop = 80575
          mmWidth = 21660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object pDescontos: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'pDescontos'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Total_Descontos'
          DataPipeline = plNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 44450
          mmTop = 83221
          mmWidth = 20710
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel35: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label35'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'DESCONTOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1914
          mmLeft = 44450
          mmTop = 80840
          mmWidth = 20660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape35: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape35'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 21960
          mmTop = 80575
          mmWidth = 21746
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText15: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText15'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Valor_Seguro'
          DataPipeline = plNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 22490
          mmTop = 83221
          mmWidth = 20660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel36: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label36'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'SEGURO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1914
          mmLeft = 22490
          mmTop = 80840
          mmWidth = 20660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape36: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape36'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 265
          mmTop = 80575
          mmWidth = 21660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText16: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText16'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Total_Frete'
          DataPipeline = plNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 794
          mmTop = 83221
          mmWidth = 20660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel37: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label37'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'FRETE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1914
          mmLeft = 794
          mmTop = 80840
          mmWidth = 20660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText6: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText3'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'BCICMS'
          DataPipeline = plNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 794
          mmTop = 76871
          mmWidth = 20660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText7: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText7'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Valor_ICMS'
          DataPipeline = plNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 22490
          mmTop = 76871
          mmWidth = 20660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape5: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape5'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 107156
          mmTop = 74225
          mmWidth = 21660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel7: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label61'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'IMP.IMPORT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2000
          mmLeft = 107686
          mmTop = 74755
          mmWidth = 20710
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lII: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText14'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Valor_TotalII'
          DataPipeline = plNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 107686
          mmTop = 76871
          mmWidth = 20660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape68: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape68'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 87048
          mmTop = 74225
          mmWidth = 20112
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel80: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label80'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'ICMS UF REMET'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2117
          mmLeft = 87577
          mmTop = 74755
          mmWidth = 19112
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText29: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText29'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'DIFAL_ValorOrig'
          DataPipeline = plNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 87577
          mmTop = 76871
          mmWidth = 19112
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape67: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape67'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 87048
          mmTop = 80575
          mmWidth = 20112
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel93: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label93'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'ICMS UF DEST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2117
          mmLeft = 87577
          mmTop = 80840
          mmWidth = 19112
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText41: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText24'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'DIFAL_ValorDest'
          DataPipeline = plNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 87577
          mmTop = 83221
          mmWidth = 19112
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape69: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape69'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 128852
          mmTop = 74225
          mmWidth = 20034
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel94: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label94'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'AFRMM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2117
          mmLeft = 129382
          mmTop = 74755
          mmWidth = 19112
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object cAFRMM: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText41'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Valor_AFRMM'
          DataPipeline = plNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 129382
          mmTop = 76871
          mmWidth = 19112
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape70: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape70'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 128852
          mmTop = 80575
          mmWidth = 20034
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel95: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label95'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'TOTAL TRIBUTOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2032
          mmLeft = 129382
          mmTop = 81105
          mmWidth = 19112
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText44: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText44'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Total_Impostos'
          DataPipeline = plNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 129382
          mmTop = 83221
          mmWidth = 19112
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape71: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape71'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 148844
          mmTop = 74225
          mmWidth = 19854
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel99: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label99'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'PIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2117
          mmLeft = 149373
          mmTop = 74755
          mmWidth = 18854
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText45: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText43'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Valor_PIS'
          DataPipeline = plNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 149373
          mmTop = 76871
          mmWidth = 18854
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape72: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape701'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 148844
          mmTop = 80575
          mmWidth = 19854
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel101: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label71'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'COFINS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2032
          mmLeft = 149109
          mmTop = 80840
          mmWidth = 18854
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText46: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText46'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Valor_COFINS'
          DataPipeline = plNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'plNotas'
          mmHeight = 3440
          mmLeft = 149109
          mmTop = 82957
          mmWidth = 18854
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDenegada: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDenegada'
          Angle = 10
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = '[ DENEGADO USO]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 33023
          Font.Name = 'LLRubberGrotesque'
          Font.Size = 60
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          Visible = False
          mmHeight = 51329
          mmLeft = 9260
          mmTop = 0
          mmWidth = 179917
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
          RotatedOriginLeft = -12751
          RotatedOriginTop = 22234
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3704
        mmPrintPosition = 0
        object ppSubReport2: TppSubReport
          DesignLayer = ppDesignLayer2
          UserName = 'SubReport2'
          ExpandAll = False
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          TraverseAllData = False
          DataPipelineName = 'plNotas'
          mmHeight = 3619
          mmLeft = 0
          mmTop = 0
          mmWidth = 197300
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppChildReport2: TppChildReport
            AutoStop = False
            DataPipeline = plNotas
            PrinterSetup.BinName = 'Default'
            PrinterSetup.DocumentName = 'Cybersoft - DANFE Retrato'
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
            Units = utMillimeters
            Version = '19.04'
            mmColumnWidth = 0
            DataPipelineName = 'plNotas'
            object ppDetailBand3: TppDetailBand
              Background1.Brush.Style = bsClear
              Background2.Brush.Style = bsClear
              Border.mmPadding = 0
              PrintHeight = phDynamic
              mmBottomOffset = 0
              mmHeight = 29633
              mmPrintPosition = 0
              object ppLabel79: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label23'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'DADOS ADICIONAIS'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                Transparent = True
                mmHeight = 2910
                mmLeft = 353
                mmTop = 10937
                mmWidth = 23283
                BandType = 4
                LayerName = Foreground2
              end
              object ppShape80: TppShape
                DesignLayer = ppDesignLayer3
                UserName = 'Shape80'
                Anchors = [atLeft, atTop, atRight]
                Pen.Width = 0
                StretchWithParent = True
                mmHeight = 15346
                mmLeft = 135467
                mmTop = 13935
                mmWidth = 61560
                BandType = 4
                LayerName = Foreground2
              end
              object ppShape63: TppShape
                DesignLayer = ppDesignLayer3
                UserName = 'Shape63'
                Pen.Width = 0
                Shape = stRoundRect
                mmHeight = 6350
                mmLeft = 0
                mmTop = 3704
                mmWidth = 47890
                BandType = 4
                LayerName = Foreground2
              end
              object ppShape64: TppShape
                DesignLayer = ppDesignLayer3
                UserName = 'Shape64'
                Pen.Width = 0
                Shape = stRoundRect
                mmHeight = 6350
                mmLeft = 47890
                mmTop = 3704
                mmWidth = 49742
                BandType = 4
                LayerName = Foreground2
              end
              object ppLabel86: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label86'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'VALOR TOTAL DOS SERVI'#199'OS'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 5
                Font.Style = []
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                Transparent = True
                mmHeight = 1852
                mmLeft = 49213
                mmTop = 4498
                mmWidth = 29898
                BandType = 4
                LayerName = Foreground2
              end
              object ppShape65: TppShape
                DesignLayer = ppDesignLayer3
                UserName = 'Shape65'
                Pen.Width = 0
                Shape = stRoundRect
                mmHeight = 6350
                mmLeft = 97631
                mmTop = 3704
                mmWidth = 49742
                BandType = 4
                LayerName = Foreground2
              end
              object ppLabel87: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label87'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'BASE DE C'#193'LCULO DO ISSQN'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 5
                Font.Style = []
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                Transparent = True
                mmHeight = 1852
                mmLeft = 98954
                mmTop = 4498
                mmWidth = 29369
                BandType = 4
                LayerName = Foreground2
              end
              object ppShape66: TppShape
                DesignLayer = ppDesignLayer3
                UserName = 'Shape66'
                Pen.Width = 0
                Shape = stRoundRect
                mmHeight = 6350
                mmLeft = 147373
                mmTop = 3704
                mmWidth = 49742
                BandType = 4
                LayerName = Foreground2
              end
              object ppLabel88: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label88'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'VALOR DO ISSQN'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 5
                Font.Style = []
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                Transparent = True
                mmHeight = 1852
                mmLeft = 148696
                mmTop = 4498
                mmWidth = 16404
                BandType = 4
                LayerName = Foreground2
              end
              object ppLabel82: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label80'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'INSCRI'#199#195'O MUN'#205'CIPAL'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 5
                Font.Style = []
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                Transparent = True
                mmHeight = 2032
                mmLeft = 1058
                mmTop = 4233
                mmWidth = 20024
                BandType = 4
                LayerName = Foreground2
              end
              object ppLabel89: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label89'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'C'#193'LCULO DO ISSQN'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                Transparent = True
                mmHeight = 2910
                mmLeft = 0
                mmTop = 793
                mmWidth = 24077
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBMemo2: TppDBMemo
                DesignLayer = ppDesignLayer3
                UserName = 'DBMemo2'
                ForceJustifyLastLine = True
                Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
                Border.Visible = True
                Border.mmPadding = 0
                CharWrap = True
                DataField = 'Inf_Compl'
                DataPipeline = plNotas
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Courier New'
                Font.Size = 6
                Font.Style = []
                RemoveEmptyLines = False
                Stretch = True
                DataPipelineName = 'plNotas'
                mmHeight = 15346
                mmLeft = 352
                mmTop = 13936
                mmWidth = 132997
                BandType = 4
                LayerName = Foreground2
                mmBottomOffset = 0
                mmOverFlowOffset = 0
                mmStopPosition = 0
                mmMinHeight = 0
                mmLeading = 0
              end
              object ppLabel83: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label81'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'RESERVADO AO FISCO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                Transparent = True
                mmHeight = 2910
                mmLeft = 135467
                mmTop = 10848
                mmWidth = 27517
                BandType = 4
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
      end
    end
    object raCodeModule2: TraCodeModule
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
  object tProvisao: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Numero) AS Numero FROM PagarReceber')
    FetchRows = 1
    Left = 35
    Top = 258
    object tProvisaoNumero: TLargeintField
      FieldName = 'Numero'
      ReadOnly = True
    end
  end
  object tPISCOFINS: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 90
    Top = 258
  end
  object tProcessos: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 153
    Top = 258
  end
  object tHistorico: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Numero) AS Numero FROM ProcessosHistorico')
    FetchRows = 1
    Left = 204
    Top = 258
  end
  object tAguardando: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 267
    Top = 258
  end
  object tCIAP: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM CIAP')
    FetchRows = 1
    DetailFields = 'Nota;Data'
    Left = 35
    Top = 202
  end
  object tRateios: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 204
    Top = 312
  end
  object tDespesas: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 403
    Top = 312
  end
  object tItens: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 465
    Top = 312
  end
  object tAdicoes: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM Adicoes WHERE DI = '#39'10'#39)
    FetchRows = 1
    Left = 267
    Top = 312
    object tAdicoesRegistro: TLargeintField
      FieldName = 'Registro'
    end
    object tAdicoesDI: TStringField
      FieldName = 'DI'
      Size = 15
    end
    object tAdicoesAdicao: TSmallintField
      FieldName = 'Adicao'
    end
    object tAdicoesSequencia: TSmallintField
      FieldName = 'Sequencia'
    end
    object tAdicoesSequencia_SISCOMEX: TSmallintField
      FieldName = 'Sequencia_SISCOMEX'
    end
    object tAdicoesCodigo_Mercadoria: TIntegerField
      FieldName = 'Codigo_Mercadoria'
    end
    object tAdicoesQuantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object tAdicoesLancado_Entrada: TFloatField
      FieldName = 'Lancado_Entrada'
    end
    object tAdicoesLancado_Saida: TFloatField
      FieldName = 'Lancado_Saida'
    end
    object tAdicoesLancado_Terceiros: TFloatField
      FieldName = 'Lancado_Terceiros'
    end
  end
  object dstContainers: TDataSource
    DataSet = tContainers
    Left = 529
    Top = 149
  end
  object tContainers: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * '
      'FROM   Pedidos '
      'WHERE  (Valor_TotalNota > 0 OR Complementar = 1)'
      
        '       AND ((SELECT Via_Transporte FROM ProcessosDocumentos WHER' +
        'E(Processo = Pedidos.Processo)) <> '#39'MARITIMA'#39') '
      
        '       OR ( (SELECT Via_Transporte FROM ProcessosDocumentos WHER' +
        'E(Processo = Pedidos.Processo)) = '#39'MARITIMA'#39' AND (SELECT COUNT(*' +
        ') FROM Container WHERE(Processo = Pedidos.Processo)) > 0 )')
    FetchRows = 1
    OnCalcFields = tContainersCalcFields
    DetailFields = 'Nota;Data'
    Left = 529
    Top = 194
    object tContainersNumero: TIntegerField
      FieldName = 'Numero'
    end
    object tContainersSaida_Entrada: TSmallintField
      FieldName = 'Saida_Entrada'
    end
    object tContainersProcesso: TStringField
      FieldName = 'Processo'
      Size = 15
    end
    object tContainersDI: TStringField
      FieldName = 'DI'
      Size = 15
    end
    object tContainersValor_TotalNota: TCurrencyField
      FieldName = 'Valor_TotalNota'
      DisplayFormat = ',##0.00'
    end
    object tContainersComplementar: TBooleanField
      FieldName = 'Complementar'
      DisplayValues = 'Compl'
    end
    object tContainersErros: TSmallintField
      FieldName = 'Erros'
    end
    object tContainersDestinatario_Nome: TStringField
      FieldName = 'Destinatario_Nome'
      Size = 60
    end
    object tContainersAguardando: TBooleanField
      FieldName = 'Aguardando'
      DisplayValues = 'Aguardando'
    end
    object tContainersSaida_EntradaTexto: TStringField
      FieldKind = fkCalculated
      FieldName = 'Saida_EntradaTexto'
      Size = 7
      Calculated = True
    end
  end
  object tUltimoNumero: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 334
    Top = 312
  end
  object tRegistro: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 529
    Top = 312
  end
  object tPedidos: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 403
    Top = 382
  end
  object tDetalhes: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 465
    Top = 382
  end
  object tErro: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 529
    Top = 382
  end
  object tEstoque: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 596
    Top = 384
  end
  object tLote: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 651
    Top = 384
  end
  object tDetalhe: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 596
    Top = 310
  end
  object tLoteNotas: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 596
    Top = 254
  end
  object tTmp: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 35
    Top = 325
  end
  object Banco_Tmp: TMSConnection
    Database = 'Cybersoft_Nimofast_Matriz'
    Options.PersistSecurityInfo = True
    Options.ApplicationName = 'Cybersoft ERP Importa'
    Options.Provider = prSQL
    Options.KeepDesignConnected = False
    Username = 'sa'
    Server = 'SERVER-DADOS'
    LoginPrompt = False
    Left = 204
    Top = 195
    EncryptedPassword = '9CFF86FF9DFF9AFF8DFF8CFF90FF99FF8BFFBFFFCEFFCDFFCCFF'
  end
  object tCli: TMSQuery
    Connection = Banco_Tmp
    Left = 90
    Top = 326
  end
  object SMTP: TIdSMTP
    Host = 'smtp.gmail.com'
    Password = 'vM/o7$9:H0fk'
    Port = 587
    SASLMechanisms = <>
    Username = 'nfe@nimofast.com'
    Left = 691
    Top = 164
  end
  object SSLSocket: TIdSSLIOHandlerSocketOpenSSL
    Destination = 'smtp.gmail.com:587'
    Host = 'smtp.gmail.com'
    MaxLineAction = maException
    Port = 587
    DefaultPort = 0
    SSLOptions.Method = sslvTLSv1_2
    SSLOptions.SSLVersions = [sslvTLSv1_2]
    SSLOptions.Mode = sslmClient
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 737
    Top = 164
  end
  object EmailMSg: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 794
    Top = 164
  end
end
