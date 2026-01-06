object Utilitario_ExportaTexto: TUtilitario_ExportaTexto
  Left = 533
  Top = 204
  BorderStyle = bsDialog
  Caption = 'Utilitario_ExportaTexto'
  ClientHeight = 469
  ClientWidth = 607
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
  DesignSize = (
    607
    469)
  PixelsPerInch = 96
  TextHeight = 13
  object Image3: TImage
    Left = 0
    Top = 0
    Width = 607
    Height = 37
    Align = alTop
    Stretch = True
    ExplicitLeft = 8
  end
  object RxLabel3: TRxLabel
    Left = 5
    Top = -1
    Width = 196
    Height = 23
    Caption = 'EXPORTA'#199#195'O DE DADOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ShadowColor = clBlack
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel4: TRxLabel
    Left = 5
    Top = 16
    Width = 243
    Height = 18
    Caption = 'Exporta'#231#227'o de dados em arquivo texto.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ShadowColor = clBlack
    ShadowPos = spRightBottom
    Transparent = True
  end
  object ProgressoAdicao: TProgressBar
    Left = 292
    Top = 452
    Width = 312
    Height = 15
    Anchors = [akRight, akBottom]
    TabOrder = 0
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 439
    Width = 607
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object bSair: TButton
      Left = 537
      Top = 1
      Width = 69
      Height = 28
      Hint = '   Fecha a janela atual e cancela os processos pendentes.   '
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      Left = 0
      Top = 1
      Width = 336
      Height = 28
      DataSource = Dados.dsLayoutExportacao
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel]
      TabOrder = 1
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
    object bLayout: TButton
      Left = 336
      Top = 1
      Width = 69
      Height = 28
      Hint = '   Fecha a janela atual e cancela os processos pendentes.   '
      Caption = '&Layout'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bLayoutClick
    end
    object bGerar: TButton
      Left = 405
      Top = 1
      Width = 69
      Height = 28
      Hint = '   Fecha a janela atual e cancela os processos pendentes.   '
      Caption = '&Gerar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bGerarClick
    end
  end
  object Panel2: TPanel
    Left = 4
    Top = 43
    Width = 599
    Height = 160
    BevelOuter = bvLowered
    TabOrder = 2
    object cCodigo: TDBEdit
      Left = 101
      Top = 6
      Width = 54
      Height = 21
      DataField = 'Layout'
      DataSource = Dados.dsLayoutExportacao
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object cNome: TDBEdit
      Left = 101
      Top = 29
      Width = 493
      Height = 21
      DataField = 'Nome'
      DataSource = Dados.dsLayoutExportacao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object cDescricao: TDBMemo
      Left = 101
      Top = 75
      Width = 493
      Height = 56
      DataField = 'Descricao'
      DataSource = Dados.dsLayoutExportacao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object cNomeArquivo: TDBEdit
      Left = 101
      Top = 133
      Width = 493
      Height = 21
      DataField = 'Nome_Arquivo'
      DataSource = Dados.dsLayoutExportacao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object StaticText1: TStaticText
      Left = 6
      Top = 6
      Width = 93
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
      TabOrder = 8
      Transparent = False
      StyleElements = []
    end
    object StaticText2: TStaticText
      Left = 6
      Top = 29
      Width = 93
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Nome'
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
    object StaticText3: TStaticText
      Left = 6
      Top = 75
      Width = 93
      Height = 56
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
      TabOrder = 10
      Transparent = False
      StyleElements = []
    end
    object StaticText4: TStaticText
      Left = 6
      Top = 133
      Width = 93
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Nome do Arquivo'
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
    object StaticText7: TStaticText
      Left = 6
      Top = 52
      Width = 93
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Data Inicio'
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
    object cDataIni: TDateEdit
      Left = 101
      Top = 52
      Width = 102
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
      Text = '01/12/2023'
    end
    object cDataFim: TDateEdit
      Left = 287
      Top = 52
      Width = 108
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
      TabOrder = 5
      Text = '31/12/2023'
    end
    object StaticText6: TStaticText
      Left = 224
      Top = 52
      Width = 61
      Height = 21
      Cursor = crHandPoint
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
      TabOrder = 13
      Transparent = False
      StyleElements = []
    end
    object StaticText39: TStaticText
      Left = 157
      Top = 6
      Width = 93
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
      TabOrder = 14
      Transparent = False
      StyleElements = []
    end
    object cIncentivo: TDBLookupComboBox
      Left = 252
      Top = 6
      Width = 165
      Height = 21
      DropDownRows = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Nome'
      ListField = 'Estado;Nome'
      ListFieldIndex = 1
      ListSource = Dados.dsIncentivosFiscais
      ParentFont = False
      TabOrder = 1
    end
    object cTodos: TCheckBox
      Left = 424
      Top = 8
      Width = 57
      Height = 17
      Caption = 'Todos'
      TabOrder = 2
      OnClick = cTodosClick
    end
  end
  object Grade: TDBGrid
    Left = 4
    Top = 206
    Width = 599
    Height = 227
    DataSource = Dados.dsLayoutExportacao
    Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Layout'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 264
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome_Arquivo'
        Title.Alignment = taCenter
        Title.Caption = 'Nome do Arquivo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 264
        Visible = True
      end>
  end
  object tLayout: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO LayoutExportacao'
      '  (Layout, Nome, [Descri'#231#227'o], Nome_Arquivo)'
      'VALUES'
      '  (:Layout, :Nome, :"Descri'#231#227'o", :Nome_Arquivo)')
    SQLDelete.Strings = (
      'DELETE FROM LayoutExportacao'
      'WHERE'
      '  Layout = :Old_Layout')
    SQLUpdate.Strings = (
      'UPDATE LayoutExportacao'
      'SET'
      
        '  Layout = :Layout, Nome = :Nome, [Descri'#231#227'o] = :"Descri'#231#227'o", No' +
        'me_Arquivo = :Nome_Arquivo'
      'WHERE'
      '  Layout = :Old_Layout')
    SQLRefresh.Strings = (
      
        'SELECT LayoutExportacao.Layout, LayoutExportacao.Nome, LayoutExp' +
        'ortacao.[Descri'#231#227'o], LayoutExportacao.Nome_Arquivo FROM LayoutEx' +
        'portacao'
      'WHERE LayoutExportacao.Layout = :Layout ')
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT MAX(Layout) AS Layout FROM LayoutExportacao')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 37
    Top = 252
    object tLayoutLayout: TSmallintField
      FieldName = 'Layout'
      ReadOnly = True
    end
  end
  object tEntradas: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO LayoutExportacao'
      '  (Layout, Nome, [Descri'#231#227'o], Nome_Arquivo)'
      'VALUES'
      '  (:Layout, :Nome, :"Descri'#231#227'o", :Nome_Arquivo)')
    SQLDelete.Strings = (
      'DELETE FROM LayoutExportacao'
      'WHERE'
      '  Layout = :Old_Layout')
    SQLUpdate.Strings = (
      'UPDATE LayoutExportacao'
      'SET'
      
        '  Layout = :Layout, Nome = :Nome, [Descri'#231#227'o] = :"Descri'#231#227'o", No' +
        'me_Arquivo = :Nome_Arquivo'
      'WHERE'
      '  Layout = :Old_Layout')
    SQLRefresh.Strings = (
      
        'SELECT LayoutExportacao.Layout, LayoutExportacao.Nome, LayoutExp' +
        'ortacao.[Descri'#231#227'o], LayoutExportacao.Nome_Arquivo FROM LayoutEx' +
        'portacao'
      'WHERE LayoutExportacao.Layout = :Layout ')
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 36
    Top = 299
  end
  object tSaidas: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO LayoutExportacao'
      '  (Layout, Nome, [Descri'#231#227'o], Nome_Arquivo)'
      'VALUES'
      '  (:Layout, :Nome, :"Descri'#231#227'o", :Nome_Arquivo)')
    SQLDelete.Strings = (
      'DELETE FROM LayoutExportacao'
      'WHERE'
      '  Layout = :Old_Layout')
    SQLUpdate.Strings = (
      'UPDATE LayoutExportacao'
      'SET'
      
        '  Layout = :Layout, Nome = :Nome, [Descri'#231#227'o] = :"Descri'#231#227'o", No' +
        'me_Arquivo = :Nome_Arquivo'
      'WHERE'
      '  Layout = :Old_Layout')
    SQLRefresh.Strings = (
      
        'SELECT LayoutExportacao.Layout, LayoutExportacao.Nome, LayoutExp' +
        'ortacao.[Descri'#231#227'o], LayoutExportacao.Nome_Arquivo FROM LayoutEx' +
        'portacao'
      'WHERE LayoutExportacao.Layout = :Layout ')
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 107
    Top = 252
  end
  object tItens: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO LayoutExportacao'
      '  (Layout, Nome, [Descri'#231#227'o], Nome_Arquivo)'
      'VALUES'
      '  (:Layout, :Nome, :"Descri'#231#227'o", :Nome_Arquivo)')
    SQLDelete.Strings = (
      'DELETE FROM LayoutExportacao'
      'WHERE'
      '  Layout = :Old_Layout')
    SQLUpdate.Strings = (
      'UPDATE LayoutExportacao'
      'SET'
      
        '  Layout = :Layout, Nome = :Nome, [Descri'#231#227'o] = :"Descri'#231#227'o", No' +
        'me_Arquivo = :Nome_Arquivo'
      'WHERE'
      '  Layout = :Old_Layout')
    SQLRefresh.Strings = (
      
        'SELECT LayoutExportacao.Layout, LayoutExportacao.Nome, LayoutExp' +
        'ortacao.[Descri'#231#227'o], LayoutExportacao.Nome_Arquivo FROM LayoutEx' +
        'portacao'
      'WHERE LayoutExportacao.Layout = :Layout ')
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 107
    Top = 299
  end
  object tContas: TMSQuery
    SQLUpdate.Strings = (
      'UPDATE PlanoContas'
      'SET'
      
        '  Conta = :Conta, Codigo = :Codigo, Descricao = :Descricao, Sald' +
        'o_Anterior = :Saldo_Anterior, Debito = :Debito, Credito = :Credi' +
        'to, Sintetica = :Sintetica, Natureza = :Natureza, LALUR = :LALUR' +
        ', Mostrar_Balanco = :Mostrar_Balanco, Atualiza_Anterior = :Atual' +
        'iza_Anterior, Atualiza_Debito = :Atualiza_Debito, Atualiza_Credi' +
        'to = :Atualiza_Credito, Imprimir_Razao = :Imprimir_Razao, DRE = ' +
        ':DRE, Data_Exportacao = :Data_Exportacao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT PlanoContas.Conta, PlanoContas.Codigo, PlanoContas.Descri' +
        'cao, PlanoContas.Saldo_Anterior, PlanoContas.Debito, PlanoContas' +
        '.Credito, PlanoContas.Sintetica, PlanoContas.Natureza, PlanoCont' +
        'as.LALUR, PlanoContas.Mostrar_Balanco, PlanoContas.Atualiza_Ante' +
        'rior, PlanoContas.Atualiza_Debito, PlanoContas.Atualiza_Credito,' +
        ' PlanoContas.Imprimir_Razao, PlanoContas.DRE, PlanoContas.Data_E' +
        'xportacao FROM PlanoContas'
      'WHERE PlanoContas.Codigo = :Codigo ')
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT * FROM PlanoContas')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 171
    Top = 252
  end
  object tLC1: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO LayoutExportacao'
      '  (Layout, Nome, [Descri'#231#227'o], Nome_Arquivo)'
      'VALUES'
      '  (:Layout, :Nome, :"Descri'#231#227'o", :Nome_Arquivo)')
    SQLDelete.Strings = (
      'DELETE FROM LayoutExportacao'
      'WHERE'
      '  Layout = :Old_Layout')
    SQLUpdate.Strings = (
      'UPDATE LayoutExportacao'
      'SET'
      
        '  Layout = :Layout, Nome = :Nome, [Descri'#231#227'o] = :"Descri'#231#227'o", No' +
        'me_Arquivo = :Nome_Arquivo'
      'WHERE'
      '  Layout = :Old_Layout')
    SQLRefresh.Strings = (
      
        'SELECT LayoutExportacao.Layout, LayoutExportacao.Nome, LayoutExp' +
        'ortacao.[Descri'#231#227'o], LayoutExportacao.Nome_Arquivo FROM LayoutEx' +
        'portacao'
      'WHERE LayoutExportacao.Layout = :Layout ')
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 174
    Top = 299
  end
  object tLC2: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO LayoutExportacao'
      '  (Layout, Nome, [Descri'#231#227'o], Nome_Arquivo)'
      'VALUES'
      '  (:Layout, :Nome, :"Descri'#231#227'o", :Nome_Arquivo)')
    SQLDelete.Strings = (
      'DELETE FROM LayoutExportacao'
      'WHERE'
      '  Layout = :Old_Layout')
    SQLUpdate.Strings = (
      'UPDATE LayoutExportacao'
      'SET'
      
        '  Layout = :Layout, Nome = :Nome, [Descri'#231#227'o] = :"Descri'#231#227'o", No' +
        'me_Arquivo = :Nome_Arquivo'
      'WHERE'
      '  Layout = :Old_Layout')
    SQLRefresh.Strings = (
      
        'SELECT LayoutExportacao.Layout, LayoutExportacao.Nome, LayoutExp' +
        'ortacao.[Descri'#231#227'o], LayoutExportacao.Nome_Arquivo FROM LayoutEx' +
        'portacao'
      'WHERE LayoutExportacao.Layout = :Layout ')
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 238
    Top = 252
  end
  object tTerceiros: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 239
    Top = 299
  end
  object tBaixas: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO LayoutExportacao'
      '  (Layout, Nome, [Descri'#231#227'o], Nome_Arquivo)'
      'VALUES'
      '  (:Layout, :Nome, :"Descri'#231#227'o", :Nome_Arquivo)')
    SQLDelete.Strings = (
      'DELETE FROM LayoutExportacao'
      'WHERE'
      '  Layout = :Old_Layout')
    SQLUpdate.Strings = (
      'UPDATE LayoutExportacao'
      'SET'
      
        '  Layout = :Layout, Nome = :Nome, [Descri'#231#227'o] = :"Descri'#231#227'o", No' +
        'me_Arquivo = :Nome_Arquivo'
      'WHERE'
      '  Layout = :Old_Layout')
    SQLRefresh.Strings = (
      
        'SELECT LayoutExportacao.Layout, LayoutExportacao.Nome, LayoutExp' +
        'ortacao.[Descri'#231#227'o], LayoutExportacao.Nome_Arquivo FROM LayoutEx' +
        'portacao'
      'WHERE LayoutExportacao.Layout = :Layout ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'use cybersoft_Radar_Matriz'
      'select Data'
      '      ,Valor'
      
        #9'  ,Historico = (select Descricao from Cybersoft_Contabilidade.d' +
        'bo.HistoricoPadrao where Codigo = (select Pagamento_Historico fr' +
        'om ClassificacaoFinanceira where Codigo = (select Classificacao ' +
        'from PagarReceber pr where pr.Numero = prb.numero)))'
      #9'  ,Historico_Complemento = Observacao'
      
        #9'  ,Documento = (select Numero_Documento from PagarReceber pr wh' +
        'ere pr.Numero = prb.Numero)'
      
        #9'  ,Beneficiario = case when Tipo = '#39'R'#39' then (select Nome from C' +
        'lientes pr where Codigo = (select Cliente from PagarReceber pr w' +
        'here pr.Numero = prb.Numero)) '
      #9'                            when Tipo = '#39'P'#39' then '
      
        #9#9#9#9#9#9#9#9'     case when isnull((select Fornecedor from PagarReceb' +
        'er pr where pr.Numero = prb.Numero), 0) <> 0 then'
      
        '                                               (select Nome from' +
        ' Fornecedores pr where Codigo = (select Fornecedor from PagarRec' +
        'eber pr where pr.Numero = prb.Numero))'
      '                                          else'
      
        #9#9#9#9#9#9#9#9#9#9'       (select Nome from Cybersoft_Cadastros.dbo.Orgao' +
        'sPublicos where Codigo = (select Orgao from PagarReceber pr wher' +
        'e pr.Numero = prb.Numero)) '
      '                                     end'
      '                           end'
      
        #9'  ,CPNJ = case when Tipo = '#39'R'#39' then (select isnull(CNPJ, '#39#39')+IS' +
        'NULL(CPF,'#39#39') from Clientes cl  where cl.Codigo = (select Cliente' +
        ' from PagarReceber pr where pr.Numero = prb.Numero)) '
      
        #9'                            when Tipo = '#39'P'#39' then (select isnull' +
        '(CNPJ, '#39#39')+ISNULL(CPF,'#39#39') from Fornecedores fr where fr.Codigo =' +
        ' (select Fornecedor from PagarReceber pr where pr.Numero = prb.N' +
        'umero)) '
      '                           end'
      ''
      #9'  ,Valor_Juros = 0'
      #9'  ,Valor_Multa = 0'
      #9'  ,Valor_Desconto = 0'
      
        #9'  ,Valor_Liquido = Valor - isnull(Juros, 0) - isnull(Multa, 0) ' +
        '+ isnull(Desconto, 0)'
      #9'  ,Banco = (select Nome from Bancos where Codigo = Banco)'
      #9'  ,Tipo'
      'from PagarReceberBaixas prb'
      'where Data Between '#39'12/01/2023'#39' and'#39'12/31/2023'#39
      'order by Tipo, Numero'
      '--and Tipo = '#39'P'#39)
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 309
    Top = 252
  end
  object dstBaixas: TDataSource
    DataSet = tBaixas
    Left = 309
    Top = 300
  end
  object tEmpresas: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO LayoutExportacao'
      '  (Layout, Nome, [Descri'#231#227'o], Nome_Arquivo)'
      'VALUES'
      '  (:Layout, :Nome, :"Descri'#231#227'o", :Nome_Arquivo)')
    SQLDelete.Strings = (
      'DELETE FROM LayoutExportacao'
      'WHERE'
      '  Layout = :Old_Layout')
    SQLUpdate.Strings = (
      'UPDATE LayoutExportacao'
      'SET'
      
        '  Layout = :Layout, Nome = :Nome, [Descri'#231#227'o] = :"Descri'#231#227'o", No' +
        'me_Arquivo = :Nome_Arquivo'
      'WHERE'
      '  Layout = :Old_Layout')
    SQLRefresh.Strings = (
      
        'SELECT LayoutExportacao.Layout, LayoutExportacao.Nome, LayoutExp' +
        'ortacao.[Descri'#231#227'o], LayoutExportacao.Nome_Arquivo FROM LayoutEx' +
        'portacao'
      'WHERE LayoutExportacao.Layout = :Layout ')
    Connection = Dados.Banco
    SQL.Strings = (
      'use cybersoft_Radar_Matriz'
      'select Data'
      '      ,Valor'
      
        #9'  ,Historico = (select Descricao from Cybersoft_Contabilidade.d' +
        'bo.HistoricoPadrao where Codigo = (select Pagamento_Historico fr' +
        'om ClassificacaoFinanceira where Codigo = (select Classificacao ' +
        'from PagarReceber pr where pr.Numero = prb.numero)))'
      #9'  ,Historico_Complemento = Observacao'
      
        #9'  ,Documento = (select Numero_Documento from PagarReceber pr wh' +
        'ere pr.Numero = prb.Numero)'
      
        #9'  ,Beneficiario = case when Tipo = '#39'R'#39' then (select Nome from C' +
        'lientes pr where Codigo = (select Cliente from PagarReceber pr w' +
        'here pr.Numero = prb.Numero)) '
      #9'                            when Tipo = '#39'P'#39' then '
      
        #9#9#9#9#9#9#9#9'     case when isnull((select Fornecedor from PagarReceb' +
        'er pr where pr.Numero = prb.Numero), 0) <> 0 then'
      
        '                                               (select Nome from' +
        ' Fornecedores pr where Codigo = (select Fornecedor from PagarRec' +
        'eber pr where pr.Numero = prb.Numero))'
      '                                          else'
      
        #9#9#9#9#9#9#9#9#9#9'       (select Nome from Cybersoft_Cadastros.dbo.Orgao' +
        'sPublicos where Codigo = (select Orgao from PagarReceber pr wher' +
        'e pr.Numero = prb.Numero)) '
      '                                     end'
      '                           end'
      
        #9'  ,CPNJ = case when Tipo = '#39'R'#39' then (select isnull(CNPJ, '#39#39')+IS' +
        'NULL(CPF,'#39#39') from Clientes cl  where cl.Codigo = (select Cliente' +
        ' from PagarReceber pr where pr.Numero = prb.Numero)) '
      
        #9'                            when Tipo = '#39'P'#39' then (select isnull' +
        '(CNPJ, '#39#39')+ISNULL(CPF,'#39#39') from Fornecedores fr where fr.Codigo =' +
        ' (select Fornecedor from PagarReceber pr where pr.Numero = prb.N' +
        'umero)) '
      '                           end'
      ''
      #9'  ,Valor_Juros = 0'
      #9'  ,Valor_Multa = 0'
      #9'  ,Valor_Desconto = 0'
      
        #9'  ,Valor_Liquido = Valor - isnull(Juros, 0) - isnull(Multa, 0) ' +
        '+ isnull(Desconto, 0)'
      #9'  ,Banco = (select Nome from Bancos where Codigo = Banco)'
      #9'  ,Tipo'
      'from PagarReceberBaixas prb'
      'where Data Between '#39'12/01/2023'#39' and'#39'12/31/2023'#39
      'order by Tipo, Numero'
      '--and Tipo = '#39'P'#39)
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 372
    Top = 253
  end
end
