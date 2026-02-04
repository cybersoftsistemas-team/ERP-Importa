object NotaFiscal_Terceiros: TNotaFiscal_Terceiros
  Left = 488
  Top = 225
  BorderStyle = bsDialog
  ClientHeight = 701
  ClientWidth = 815
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
    Width = 815
    Height = 37
    Align = alTop
    Stretch = True
    ExplicitWidth = 806
  end
  object RxLabel3: TRxLabel
    Left = 5
    Top = 1
    Width = 196
    Height = 21
    Caption = 'NOTA FISCAL DE TERCEIROS'
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
  object lTitulo: TRxLabel
    Left = 4
    Top = 17
    Width = 241
    Height = 18
    Caption = 'Registro das Notas Fiscais de Terceiros.'
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
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 40
    Width = 809
    Height = 587
    ActivePage = TabSheet3
    Align = alClient
    TabHeight = 28
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Dados da Nota Fiscal'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 801
        Height = 549
        Align = alClient
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 0
        ExplicitTop = 4
        object cNota: TDBEdit
          Left = 127
          Top = 5
          Width = 75
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Nota'
          DataSource = dmFiscal.dsNotasTerceiros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnChange = cNotaChange
        end
        object cCodigoNatureza: TDBEdit
          Left = 127
          Top = 166
          Width = 56
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Natureza_Codigo'
          DataSource = dmFiscal.dsNotasTerceiros
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          OnChange = cCodigoNaturezaChange
        end
        object cDataEmissao: TDBDateEdit
          Left = 280
          Top = 5
          Width = 110
          Height = 21
          DataField = 'Data_Emissao'
          DataSource = dmFiscal.dsNotasTerceiros
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
          TabOrder = 1
          YearDigits = dyFour
        end
        object cDataEntrada: TDBDateEdit
          Left = 480
          Top = 5
          Width = 110
          Height = 21
          DataField = 'Data_Entrada'
          DataSource = dmFiscal.dsNotasTerceiros
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
          TabOrder = 2
          YearDigits = dyFour
        end
        object StaticText1: TStaticText
          Left = 204
          Top = 5
          Width = 74
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Data Emiss'#227'o'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 28
          Transparent = False
          StyleElements = []
        end
        object lNatureza: TStaticText
          Left = 5
          Top = 166
          Width = 120
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Natureza da Opera'#231#227'o'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 29
          Transparent = False
          StyleElements = []
          OnClick = lNaturezaClick
        end
        object lFornecedor: TStaticText
          Left = 5
          Top = 97
          Width = 120
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Fornecedor'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 30
          Transparent = False
          StyleElements = []
          OnClick = lFornecedorClick
        end
        object StaticText11: TStaticText
          Left = 5
          Top = 5
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Documento N'#186
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 31
          Transparent = False
          StyleElements = []
        end
        object StaticText2: TStaticText
          Left = 392
          Top = 5
          Width = 86
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Data da Entrada'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 32
          Transparent = False
          StyleElements = []
        end
        object StaticText9: TStaticText
          Left = 5
          Top = 212
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Processo N'#186
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 33
          Transparent = False
          StyleElements = []
        end
        object cProcesso: TDBComboBox
          Left = 127
          Top = 212
          Width = 150
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Processo'
          DataSource = dmFiscal.dsNotasTerceiros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 18
        end
        object StaticText13: TStaticText
          Left = 606
          Top = 189
          Width = 33
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'S'#233'rie'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 34
          Transparent = False
          StyleElements = []
        end
        object DBEdit12: TDBEdit
          Left = 641
          Top = 189
          Width = 42
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Serie'
          DataSource = dmFiscal.dsNotasTerceiros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
        end
        object StaticText16: TStaticText
          Left = 685
          Top = 189
          Width = 53
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Sub-S'#233'rie'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 35
          Transparent = False
          StyleElements = []
        end
        object DBEdit13: TDBEdit
          Left = 740
          Top = 189
          Width = 45
          Height = 21
          CharCase = ecUpperCase
          DataField = 'SubSerie'
          DataSource = dmFiscal.dsNotasTerceiros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
        end
        object GroupBox4: TGroupBox
          AlignWithMargins = True
          Left = 4
          Top = 375
          Width = 793
          Height = 170
          Align = alBottom
          Caption = 'Totais da Nota'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 27
          object Image9: TImage
            Left = 364
            Top = 131
            Width = 133
            Height = 33
            Stretch = True
          end
          object Image8: TImage
            Left = 637
            Top = 131
            Width = 149
            Height = 33
            Stretch = True
          end
          object Image7: TImage
            Left = 499
            Top = 131
            Width = 136
            Height = 33
            Stretch = True
          end
          object Image6: TImage
            Left = 226
            Top = 131
            Width = 136
            Height = 33
            Stretch = True
          end
          object Image5: TImage
            Left = 88
            Top = 131
            Width = 136
            Height = 33
            Stretch = True
          end
          object Image3: TImage
            Left = 4
            Top = 131
            Width = 82
            Height = 33
            Stretch = True
          end
          object Label6: TLabel
            Left = 7
            Top = 136
            Width = 24
            Height = 11
            Caption = 'Itens:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object lItens: TLabel
            Left = 40
            Top = 143
            Width = 41
            Height = 19
            Alignment = taRightJustify
            Caption = 'lItens'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label2: TLabel
            Left = 91
            Top = 132
            Width = 39
            Height = 11
            Caption = 'Produtos:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object DBText2: TDBText
            Left = 90
            Top = 143
            Width = 129
            Height = 16
            Alignment = taRightJustify
            DataField = 'Valor_TotalProdutos'
            DataSource = dmFiscal.dsNotasTerceiros
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label3: TLabel
            Left = 229
            Top = 132
            Width = 49
            Height = 11
            Caption = 'Nota Fiscal:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object DBText3: TDBText
            Left = 230
            Top = 143
            Width = 129
            Height = 16
            Alignment = taRightJustify
            DataField = 'Valor_TotalNota'
            DataSource = dmFiscal.dsNotasTerceiros
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label4: TLabel
            Left = 502
            Top = 132
            Width = 45
            Height = 11
            Caption = 'Descontos:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object DBText4: TDBText
            Left = 503
            Top = 143
            Width = 129
            Height = 16
            Alignment = taRightJustify
            DataField = 'Valor_TotalDescontos'
            DataSource = dmFiscal.dsNotasTerceiros
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label5: TLabel
            Left = 641
            Top = 134
            Width = 56
            Height = 11
            Caption = 'Valor L'#237'quido:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object DBText5: TDBText
            Left = 641
            Top = 144
            Width = 141
            Height = 16
            Alignment = taRightJustify
            DataField = 'Valor_TotalLiquido'
            DataSource = dmFiscal.dsNotasTerceiros
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label7: TLabel
            Left = 367
            Top = 134
            Width = 25
            Height = 11
            Caption = 'Frete:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object DBText6: TDBText
            Left = 368
            Top = 145
            Width = 126
            Height = 16
            Alignment = taRightJustify
            DataField = 'Valor_TotalFrete'
            DataSource = dmFiscal.dsNotasTerceiros
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object GroupBox3: TGroupBox
            Left = 399
            Top = 15
            Width = 190
            Height = 113
            Caption = 'IPI'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object DBEdit6: TDBEdit
              Left = 96
              Top = 17
              Width = 89
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Valor_TotalBCIPI'
              DataSource = dmFiscal.dsNotasTerceiros
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Pitch = fpFixed
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit7: TDBEdit
              Left = 96
              Top = 40
              Width = 89
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Valor_TotalIPI'
              DataSource = dmFiscal.dsNotasTerceiros
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Pitch = fpFixed
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit9: TDBEdit
              Left = 96
              Top = 63
              Width = 89
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Valor_IsentasIPI'
              DataSource = dmFiscal.dsNotasTerceiros
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Pitch = fpFixed
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit10: TDBEdit
              Left = 96
              Top = 86
              Width = 89
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Valor_OutrasIPI'
              DataSource = dmFiscal.dsNotasTerceiros
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Pitch = fpFixed
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
            object StaticText21: TStaticText
              Left = 5
              Top = 17
              Width = 89
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Base de C'#225'lculo'
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
            object StaticText22: TStaticText
              Left = 5
              Top = 40
              Width = 89
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Valor'
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
            object StaticText25: TStaticText
              Left = 5
              Top = 63
              Width = 89
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Isentas '
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
            object StaticText26: TStaticText
              Left = 5
              Top = 86
              Width = 89
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Outras'
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
          end
          object GroupBox1: TGroupBox
            Left = 5
            Top = 15
            Width = 192
            Height = 113
            Caption = 'ICMS Operacional'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object StaticText14: TStaticText
              Left = 5
              Top = 17
              Width = 89
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Base de C'#225'lculo'
              Color = 7293440
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 0
              Transparent = False
              StyleElements = []
            end
            object cBaseICMS: TDBEdit
              Left = 96
              Top = 17
              Width = 89
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Valor_BCICMSOper'
              DataSource = dmFiscal.dsNotasTerceiros
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Pitch = fpFixed
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object StaticText15: TStaticText
              Left = 5
              Top = 40
              Width = 89
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Valor'
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
            object cValorICMS: TDBEdit
              Left = 96
              Top = 40
              Width = 89
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Valor_ICMSOper'
              DataSource = dmFiscal.dsNotasTerceiros
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Pitch = fpFixed
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
            object StaticText4: TStaticText
              Left = 5
              Top = 63
              Width = 89
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Isentas '
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
            object cIsentasICMS: TDBEdit
              Left = 96
              Top = 63
              Width = 89
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Valor_IsentasICMS'
              DataSource = dmFiscal.dsNotasTerceiros
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Pitch = fpFixed
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 5
            end
            object StaticText5: TStaticText
              Left = 5
              Top = 86
              Width = 89
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Outras'
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
            object cOutrasICMS: TDBEdit
              Left = 96
              Top = 86
              Width = 89
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Valor_OutrasICMS'
              DataSource = dmFiscal.dsNotasTerceiros
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Pitch = fpFixed
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 7
            end
          end
          object GroupBox2: TGroupBox
            Left = 203
            Top = 15
            Width = 191
            Height = 113
            Caption = 'ICMS Substitutivo'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object DBEdit1: TDBEdit
              Left = 96
              Top = 17
              Width = 89
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Valor_BCICMSSub'
              DataSource = dmFiscal.dsNotasTerceiros
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Pitch = fpFixed
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit2: TDBEdit
              Left = 96
              Top = 40
              Width = 89
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Valor_ICMSSub'
              DataSource = dmFiscal.dsNotasTerceiros
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Pitch = fpFixed
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object StaticText10: TStaticText
              Left = 5
              Top = 17
              Width = 89
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Base de C'#225'lculo'
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
            object StaticText12: TStaticText
              Left = 5
              Top = 40
              Width = 89
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Valor'
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
          end
          object GroupBox5: TGroupBox
            Left = 595
            Top = 15
            Width = 190
            Height = 66
            Caption = 'PIS/COFINS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            object StaticText20: TStaticText
              Left = 5
              Top = 16
              Width = 89
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Valor PIS'
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
            object DBEdit11: TDBEdit
              Left = 96
              Top = 16
              Width = 89
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Valor_PIS'
              DataSource = dmFiscal.dsNotasTerceiros
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Pitch = fpFixed
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object StaticText29: TStaticText
              Left = 5
              Top = 39
              Width = 89
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Valor COFINS'
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
            object DBEdit21: TDBEdit
              Left = 96
              Top = 39
              Width = 89
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Valor_COFINS'
              DataSource = dmFiscal.dsNotasTerceiros
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Pitch = fpFixed
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 3
            end
          end
          object GroupBox6: TGroupBox
            Left = 596
            Top = 81
            Width = 190
            Height = 47
            Caption = 'Despesas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            object StaticText43: TStaticText
              Left = 5
              Top = 16
              Width = 89
              Height = 21
              AutoSize = False
              BevelInner = bvNone
              BevelKind = bkSoft
              BevelOuter = bvSpace
              BorderStyle = sbsSunken
              Caption = 'Total Despesas'
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
            object DBEdit3: TDBEdit
              Left = 96
              Top = 16
              Width = 89
              Height = 21
              CharCase = ecUpperCase
              DataField = 'Total_Despesas'
              DataSource = dmFiscal.dsNotasTerceiros
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Pitch = fpFixed
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
          end
        end
        object cObservacao: TDBMemo
          Left = 127
          Top = 281
          Width = 658
          Height = 42
          DataField = 'Observacoes'
          DataSource = dmFiscal.dsNotasTerceiros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 24
        end
        object StaticText24: TStaticText
          Left = 5
          Top = 281
          Width = 120
          Height = 42
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Observa'#231#245'es'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 36
          Transparent = False
          StyleElements = []
        end
        object StaticText7: TStaticText
          Left = 5
          Top = 189
          Width = 120
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Esp'#233'cie'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 37
          Transparent = False
          StyleElements = []
          OnClick = StaticText7Click
        end
        object StaticText8: TStaticText
          Left = 185
          Top = 189
          Width = 41
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Modelo'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 38
          Transparent = False
          StyleElements = []
        end
        object StaticText18: TStaticText
          Left = 5
          Top = 235
          Width = 120
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Aliquota ICMS Oper.'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 39
          Transparent = False
          StyleElements = []
          OnClick = StaticText18Click
        end
        object DBEdit5: TDBEdit
          Left = 127
          Top = 235
          Width = 55
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Aliquota_ICMSOper'
          DataSource = dmFiscal.dsNotasTerceiros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 20
        end
        object StaticText19: TStaticText
          Left = 185
          Top = 235
          Width = 103
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Aliquota ICMS Subs.'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 40
          Transparent = False
          StyleElements = []
        end
        object DBEdit8: TDBEdit
          Left = 290
          Top = 235
          Width = 55
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Aliquota_ICMSSub'
          DataSource = dmFiscal.dsNotasTerceiros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 21
        end
        object StaticText6: TStaticText
          Left = 5
          Top = 51
          Width = 120
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Refer'#234'ncia'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 41
          Transparent = False
          StyleElements = []
          OnClick = StaticText6Click
        end
        object cEspecie: TDBEdit
          Left = 127
          Top = 189
          Width = 56
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Tipo'
          DataSource = dmFiscal.dsNotasTerceiros
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
          OnChange = cEspecieChange
        end
        object StaticText23: TStaticText
          Left = 5
          Top = 74
          Width = 120
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Centro Custo'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 42
          Transparent = False
          StyleElements = []
          OnClick = StaticText23Click
        end
        object cNatureza: TDBLookupComboBox
          Left = 184
          Top = 166
          Width = 601
          Height = 21
          DataField = 'Natureza_Codigo'
          DataSource = dmFiscal.dsNotasTerceiros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao_NF'
          ListFieldIndex = 1
          ListSource = Dados.dsNatureza
          ParentFont = False
          TabOrder = 13
        end
        object cChaveNFE: TDBEdit
          Left = 127
          Top = 28
          Width = 370
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NFe_cNF'
          DataSource = dmFiscal.dsNotasTerceiros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnExit = cChaveNFEExit
        end
        object StaticText3: TStaticText
          Left = 5
          Top = 28
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Chave NF-e'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 43
          Transparent = False
          StyleElements = []
        end
        object cModelo: TRxDBLookupCombo
          Left = 228
          Top = 189
          Width = 375
          Height = 21
          DropDownCount = 15
          DisplayAllFields = True
          DataField = 'Modelo'
          DataSource = dmFiscal.dsNotasTerceiros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Descricao'
          LookupDisplayIndex = 1
          LookupSource = dmFiscal.dsModelosDocumentos
          ParentFont = False
          TabOrder = 15
        end
        object cReferencia: TRxDBLookupCombo
          Left = 127
          Top = 51
          Width = 658
          Height = 21
          DropDownCount = 15
          DisplayAllFields = True
          DataField = 'Referencia_Fiscal'
          DataSource = dmFiscal.dsNotasTerceiros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Descricao'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsReferenciasFiscais
          ParentFont = False
          TabOrder = 7
          OnCloseUp = cReferenciaCloseUp
          OnExit = cReferenciaCloseUp
        end
        object cCentroCusto: TRxDBLookupCombo
          Left = 127
          Top = 74
          Width = 370
          Height = 21
          DropDownCount = 15
          DisplayAllFields = True
          DataField = 'Centro_Custo'
          DataSource = dmFiscal.dsNotasTerceiros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Descricao'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsCentroCusto
          ParentFont = False
          TabOrder = 8
          OnCloseUp = cReferenciaCloseUp
          OnExit = cReferenciaCloseUp
        end
        object cFornecedor: TRxDBLookupCombo
          Left = 127
          Top = 97
          Width = 658
          Height = 21
          DropDownCount = 15
          DisplayAllFields = True
          DataField = 'Fornecedor'
          DataSource = dmFiscal.dsNotasTerceiros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Nome;CNPJ'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsFornecedores
          ParentFont = False
          TabOrder = 9
          OnCloseUp = cFornecedorExit
          OnEnter = cFornecedorExit
          OnExit = cFornecedorExit
        end
        object DBCheckBox1: TDBCheckBox
          Left = 597
          Top = 7
          Width = 83
          Height = 17
          Caption = 'NF Desdobr.'
          DataField = 'Desdobramento'
          DataSource = dmFiscal.dsNotasTerceiros
          TabOrder = 3
        end
        object StaticText37: TStaticText
          Left = 390
          Top = 235
          Width = 104
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Modalidade de Frete'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 44
          Transparent = False
          StyleElements = []
        end
        object cModalidade: TRxDBComboBox
          Left = 496
          Top = 235
          Width = 289
          Height = 21
          DataField = 'Modalidade_Frete'
          DataSource = dmFiscal.dsNotasTerceiros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'Por conta do emitente'
            'Por conta do destinat'#225'rio/remetente'
            'Por conta de terceiros'
            'Sem cobran'#231'a de frete')
          ParentFont = False
          TabOrder = 22
          Values.Strings = (
            '0'
            '1'
            '2'
            '9')
        end
        object StaticText38: TStaticText
          Left = 5
          Top = 258
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Natureza do Frete'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 45
          Transparent = False
          StyleElements = []
        end
        object cNaturezaFrete: TRxDBComboBox
          Left = 127
          Top = 258
          Width = 658
          Height = 21
          DataField = 'Natureza_Frete'
          DataSource = dmFiscal.dsNotasTerceiros
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            
              '0|Opera'#231#245'es de vendas, com '#244'nus suportado pelo estabelecimento v' +
              'endedor'
            '1|Opera'#231#245'es de vendas, com '#244'nus suportado peloadquirente'
            
              '2|Opera'#231#245'es de compras (bens para revenda, mat'#233'riasprima e outro' +
              's produtos, geradores de cr'#233'dito)'
            
              '3|Opera'#231#245'es de compras (bens para revenda, mat'#233'riasprima e outro' +
              's produtos, n'#227'o geradores de cr'#233'dito)'
            
              '4|Transfer'#234'ncia de produtos acabados entre estabelecimentos da p' +
              'essoa jur'#237'dica'
            
              '5|Transfer'#234'ncia de produtos em elabora'#231#227'o entre estabelecimentos' +
              ' da pessoa jur'#237'dica'
            '9|Outras')
          ParentFont = False
          TabOrder = 23
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '9')
        end
        object StaticText39: TStaticText
          Left = 5
          Top = 120
          Width = 120
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Transportador'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 46
          Transparent = False
          StyleElements = []
          OnClick = lFornecedorClick
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 127
          Top = 120
          Width = 658
          Height = 21
          DropDownCount = 15
          DisplayAllFields = True
          DataField = 'Transportador_Codigo'
          DataSource = dmFiscal.dsNotasTerceiros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Nome;CNPJ'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsFornecedores
          ParentFont = False
          TabOrder = 10
          OnCloseUp = cFornecedorExit
          OnEnter = cFornecedorExit
          OnExit = cFornecedorExit
        end
        object StaticText40: TStaticText
          Left = 5
          Top = 325
          Width = 120
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Munic'#237'pio Origem (CTR)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 47
          Transparent = False
          StyleElements = []
          OnClick = StaticText23Click
        end
        object cMunOrigem: TRxDBLookupCombo
          Left = 127
          Top = 325
          Width = 658
          Height = 21
          DropDownCount = 15
          DisplayAllFields = True
          DataField = 'Municipio_Origem'
          DataSource = dmFiscal.dsNotasTerceiros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Nome'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsMunicipios
          ParentFont = False
          TabOrder = 25
          OnCloseUp = cReferenciaCloseUp
          OnExit = cReferenciaCloseUp
        end
        object cMunDest: TStaticText
          Left = 5
          Top = 348
          Width = 120
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Munic'#237'pio Destino(CTR)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 48
          Transparent = False
          StyleElements = []
          OnClick = StaticText23Click
        end
        object cMunDestino: TRxDBLookupCombo
          Left = 127
          Top = 348
          Width = 658
          Height = 21
          DropDownCount = 15
          DisplayAllFields = True
          DataField = 'Municipio_Destino'
          DataSource = dmFiscal.dsNotasTerceiros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Nome'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsMunicipios
          ParentFont = False
          TabOrder = 26
          OnCloseUp = cReferenciaCloseUp
          OnExit = cReferenciaCloseUp
        end
        object StaticText51: TStaticText
          Left = 499
          Top = 28
          Width = 83
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
          TabOrder = 49
          Transparent = False
          StyleElements = []
        end
        object cIncentivo: TRxDBLookupCombo
          Left = 584
          Top = 28
          Width = 201
          Height = 21
          DropDownCount = 8
          DataField = 'Incentivo_Fiscal'
          DataSource = dmFiscal.dsNotasTerceiros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Nome'
          LookupDisplay = 'Nome;Estado'
          LookupSource = Dados.dsIncentivosFiscais
          ParentFont = False
          TabOrder = 6
        end
        object StaticText45: TStaticText
          Left = 283
          Top = 212
          Width = 101
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tipo de Pagamento'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 50
          Transparent = False
          StyleElements = []
        end
        object cPgto: TRxDBComboBox
          Left = 386
          Top = 212
          Width = 116
          Height = 21
          DataField = 'Tipo_Pagamento'
          DataSource = dmFiscal.dsNotasTerceiros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          Items.Strings = (
            'A Vista'
            'A Prazo'
            'Outros')
          ParentFont = False
          TabOrder = 19
          Values.Strings = (
            '0'
            '1'
            '2')
        end
        object DBCheckBox2: TDBCheckBox
          Left = 690
          Top = 7
          Width = 91
          Height = 17
          Caption = 'NF Complem.'
          DataField = 'Complementar'
          DataSource = dmFiscal.dsNotasTerceiros
          TabOrder = 4
        end
        object StaticText46: TStaticText
          Left = 5
          Top = 143
          Width = 120
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Armaz'#233'm'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 51
          Transparent = False
          StyleElements = []
          OnClick = lFornecedorClick
        end
        object cArmazem: TRxDBLookupCombo
          Left = 127
          Top = 143
          Width = 658
          Height = 21
          DropDownCount = 15
          DisplayAllFields = True
          DataField = 'Armazem'
          DataSource = dmFiscal.dsNotasTerceiros
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Nome;CNPJ'
          LookupDisplayIndex = 1
          LookupSource = dstArmazem
          ParentFont = False
          TabOrder = 11
          OnCloseUp = cFornecedorExit
          OnEnter = cFornecedorExit
          OnExit = cFornecedorExit
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Seriais/Chassis'
      object GradeSerial: TDBGrid
        Left = 0
        Top = 1
        Width = 789
        Height = 484
        DataSource = Dados.dsProdutosSeriais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = GradeSerialDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'Produto_Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Numero'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero 1'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 180
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Numero2'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero 2'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 180
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Numero3'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero 3'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 180
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ano_Fabricacao'
            Title.Alignment = taCenter
            Title.Caption = 'Fabrica'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Ano_Modelo'
            Title.Alignment = taCenter
            Title.Caption = 'Modelo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 71
            Visible = True
          end>
      end
      object bAlterar: TButton
        Left = 362
        Top = 491
        Width = 76
        Height = 35
        Cursor = crHandPoint
        Hint = '   Mostrar os itens da nota fiscal.'
        Caption = '&Alterar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = bAlterarClick
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Lotes'
      object GradeLote: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 795
        Height = 543
        Align = alClient
        DataSource = Dados.dsProdutosDetalhe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Produto_Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 230
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Lote'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 180
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade_Entrada'
            Title.Alignment = taCenter
            Title.Caption = 'Quantidade'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Fabricacao'
            Title.Alignment = taCenter
            Title.Caption = 'Fabrica'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Validade'
            Title.Caption = 'Validade'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Manifesta'#231#227'o do Destinat'#225'rio'
      object GradeManif: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 795
        Height = 256
        Align = alTop
        DataSource = dstManifesto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'Nota'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Emissao'
            Title.Alignment = taCenter
            Title.Caption = 'Emiss'#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NFe_cNF'
            Title.Alignment = taCenter
            Title.Caption = 'Chave NF-e'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 325
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fornecedor'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 287
            Visible = True
          end>
      end
      object bSelTodos: TButton
        Left = 5
        Top = 262
        Width = 106
        Height = 33
        Cursor = crHandPoint
        Caption = 'Selecionar Todos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = bSelTodosClick
      end
      object bSelNehum: TButton
        Left = 117
        Top = 262
        Width = 114
        Height = 33
        Cursor = crHandPoint
        Caption = 'Selecionar Nenhum'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = bSelNehumClick
      end
      object bManifestar: TButton
        Left = 695
        Top = 321
        Width = 90
        Height = 76
        Cursor = crHandPoint
        Hint = '   Mostrar os itens da nota fiscal.'
        Caption = 'Manifestar'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnClick = bManifestarClick
      end
      object Panel4: TPanel
        Left = 1
        Top = 308
        Width = 691
        Height = 105
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 4
        object StaticText41: TStaticText
          Left = 7
          Top = 7
          Width = 98
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Data do Evento'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          Transparent = False
          StyleElements = []
        end
        object StaticText42: TStaticText
          Left = 7
          Top = 30
          Width = 98
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Hora do Evento'
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
        object lJustificativa: TStaticText
          Left = 7
          Top = 76
          Width = 98
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Justificativa'
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
        object cJustificativa: TEdit
          Left = 107
          Top = 76
          Width = 576
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          Text = 'cJustificativa'
        end
        object cData: TDateEdit
          Left = 107
          Top = 7
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
        object cHora: TMaskEdit
          Left = 107
          Top = 30
          Width = 70
          Height = 21
          EditMask = '##:##:##;1; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 8
          ParentFont = False
          TabOrder = 2
          Text = '  :  :  '
        end
        object StaticText44: TStaticText
          Left = 7
          Top = 53
          Width = 98
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Motivo'
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
        object cMotivo: TComboBox
          Left = 107
          Top = 53
          Width = 262
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnChange = cMotivoChange
          Items.Strings = (
            'Confirma'#231#227'o da Opera'#231#227'o'
            'Ci'#234'ncia da Opera'#231#227'o'
            'Desconhecimento da Opera'#231#227'o'
            'Registro da Opera'#231#227'o n'#227'o Realizada')
        end
      end
      object cSit: TRadioGroup
        Left = 438
        Top = 261
        Width = 254
        Height = 42
        Caption = 'Situa'#231#227'o'
        Columns = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Items.Strings = (
          'N'#227'o Manifestadas'
          'Manifestadas')
        ParentFont = False
        TabOrder = 5
        OnClick = cSitClick
      end
      object cMensagens: TMemo
        AlignWithMargins = True
        Left = 3
        Top = 433
        Width = 795
        Height = 113
        Align = alBottom
        BevelOuter = bvRaised
        Color = 16768667
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        WantReturns = False
      end
      object bManiFora: TButton
        Left = 237
        Top = 262
        Width = 132
        Height = 33
        Cursor = crHandPoint
        Caption = 'Manifesto Fora da Data'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnClick = bManiForaClick
      end
      object Button1: TButton
        Left = 704
        Top = 272
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 8
        Visible = False
        OnClick = Button1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Filtros'
      object bFiltrar: TSpeedButton
        Left = 291
        Top = 342
        Width = 100
        Height = 65
        Cursor = crHandPoint
        Hint = '  Limpar os filtros atuais  '
        Caption = 'Filt&rar'
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000103
          0700010307000305090001030700010307000103070001020700000206000002
          060077797B0077797B0077797B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000203080004050A0003040900EDDB
          DB00F3E5E500F8EFEF00FAF5F500FEFCFC00FFFFFF00FFFFFF00F9F3F400F0DF
          E10000020600000206000000010077797B0077797B0077797B00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000305090003050900E0C1C200E5CBCC00EAD3D400EDDB
          DB00F3E6E600F8EFEE00FAF5F500FDFCFC00FFFFFF00FFFFFF00F9F3F300EFE1
          E000E6CECF00DCBABB00D2A7A900000001000101010077797B0077797B007779
          7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0002040800D8AFB000DCB9BA00E0C1C300E5CBCC00EAD3D400EDDB
          DB00F4E6E600F8EFEF00FAF5F500FEFCFC00FFFFFF00FFFFFF00F9F4F400F0E1
          E100E7CECF00DDBBBC00D3A7A900CD9B9C00CC9999000000000076787B007678
          790076787A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0003050A00D3A8AA00D7AFB100DDB9BB00E1C2C300E6CBCC00EAD3D400EDDB
          DB00F4E6E600F7EEEE00FAF6F500FEFDFD00FFFFFF00FFFFFF00F9F3F400F0E1
          E100E7CECF00DDBBBC00D5A9AB00CD9B9D00CC999A00CC999900000000007577
          79007476780074767700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000304
          0900CFA1A300D4A9AB00D7B0B100DCBABB00E1C3C400E6CCCC00EAD3D5000608
          0D00090B100007090E0006080D0008090E0005070C0004050A0003050A000304
          0900E8CFD000DEBCBD00D4A9AB00CD9B9D00CC9A9B00CC999900CC9999000000
          0000737577007275760072747500FFFFFF00FFFFFF00FFFFFF0005060B00CE9D
          9F00D0A1A300D4ABAC00D9B2B400DDBABC00080B1100080A10000A0C1200EBEC
          EB00E5E6E600DFE0E000DBDCDD00D6D7D700D0D1D400CCCCCE00C6C7C800C2C3
          C40006070C000305090003040900CD9B9D00CD9B9D00CC999A00CC999900CC99
          9900000000007173740071727400FFFFFF00FFFFFF00FFFFFF0006080D00D09F
          A100D1A3A400D4AAAC00090C1200090B1200F7F8F800F4F5F500EEEFEF00EAEB
          EB00E6E8E800E1E0E100DCDDDD00D7D7D800D0D1D200CCCDCE00C8C8CA00C2C3
          C400BDBEC000B8B9B900B1B2B3000103080001030700CD9A9C00CC999900CC99
          9900000000006F7072006F7072006E707100FFFFFF00FFFFFF0004060C00D0A0
          A200D5A6A800070A1000FFFFFF00FEFFFF00F7F8F800F4F5F5000D0F1B000F11
          1D000F111D000D0F19000F101700090A100007090E00080A0F000A0B10000708
          0D00BEBEC000B6B8B800B2B2B300ACAEAE00A8A9AB0001030700CC999900CC99
          9900000000006D6F70006C6E70006C6D6F00FFFFFF00FFFFFF0007090F00CF9F
          A200090C1200FFFFFF00FFFFFF00FEFFFE00101221000E102100D1A3A900D3A6
          AC00D3A4AA00D2A4AA00D2A2A800CE9EA200CF9FA200CF9FA200D09FA100CE9D
          A00005060B0004050A0003050900ADAEAF00A8A9AB00A4A4A70000000100CC99
          9900000000006C6D6E006A6C6D006A6B6D006A6B6C00FFFFFF00080B1100090B
          1200FFFFFF00FFFFFF00FFFFFF0011132400EDA6AD00EBA5AE00EBA8B500ECA9
          B600EDA8B500ECA7B000EAA2A900E9A0A700E8A1A500E89FA200E89EA100E79C
          9F00E79C9F00E69C9E00E69C9E0002040900A8A9AB00A5A6A700A1A2A3000101
          010001010100696A6C00696A6B00686A6B0068696A00FFFFFF000D0F1500FFFF
          FF00FFFFFF00FFFFFF0015172600D9B1B900FFA8B500FFABC300FFACC200FFAC
          C200FFACC200FFABC200FFA4B100FFA4AC00FFA0A600FF9EA200FF9DA000FF9D
          9F00FF9C9F00FF9D9F00FF9D9F00FF9C9F0004060A00A5A6A700A1A2A3009C9C
          9C000000000068686A0067686A006768690065676800FFFFFF0011131A00FFFF
          FF00FFFFFF00181A2500FFA8AF00FFABB900E2C0D300FFB0C600FFB2C700FFB3
          C700FFB1C600FFA8BE00FFA9C100FFA2B100FF9FA800FF9FA400FF9EA100FF9F
          A200FF9EA100FF9D9F00FF9D9F00D4AAAC006A322B00010308009FA1A2009C9B
          9C0000000000656667006566670065656700FFFFFF00FFFFFF000C0F1500FFFF
          FF00FFFFFF001C1E2D00FFACB500FFB3C700FFB3C500F0CFDF00F3D5E400FFE5
          EF00FFBDD400FFAFC700FFA7BD00FFA6BB00FFA2AB00FFA0A700FFA0A400FF9E
          A100FF9EA000D3A9AC00D3A9AB0070372F006A312A0002030800A0A1A2009C9B
          9B0000000000646466006364650063636500FFFFFF00FFFFFF00070A1000FFFF
          FF00FFFFFF0013152600FFAAB300FFAEC600FFB1C700FFC7DB00FFFFFF00FFFF
          FF00FFF0F700E4C4D900DCB5C800DAB5CA00D9B1B900D6AEB300D5ACAF00D5AB
          AC00D5ABAC0083463F007B3F3800733C35006E3D380009151C00A4A9AA009FA3
          A400071214006263640061626300FFFFFF00FFFFFF00FFFFFF00080B1100FFFF
          FF00FFFFFF00FFFFFF0016173100FFA8C000FFA9BE00FDB8D000FFF7FB00FFFF
          FF00F3D5E800DEA3C100CC88A200C17E9D00B56D7700AA636700A05C5B009653
          4F008C4D4800844943007D4A440077443D000E081200AAA6AB00A5A2A600A29C
          9F000E01070060626200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000B0D
          1300FFFFFF00FFFFFF00FFFFFF0020256300FCA8BD00FFBDD300FFDEEC00FEDE
          EE00F0C5DD00DCA2C000CF88A300C27E9C00B6717900AB656900A05C59009552
          4E008D514D0084514D007F413E000D050E00ABA9AC00A4A5A7009FA1A2000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF000C0E1600FFFFFF00FFFFFF00FFFFFF002C30650046477900605F9700F3B2
          CC00E7A8C300D58EA800CD84A000C27C9400B66E7500AB666800A15E5A009A5D
          590091575400130813000A060D00ADAEAE00A8A9AB00A3A5A60001010200FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0012141F00FFFFFF00FFFFFF00FFFFFF00FBFCFD00FCFCFD002E2F
          64003433650026265C0022235E00211D3300161C3400536B3A000B0E1600101D
          250017102200BABDC000B4B5BA00ACB2B400A8ADB100010C19005C5D5E005C5D
          5D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00171927001A1C2F00FCFDFD00FBFCFD00F8F9FA00F2F3
          F600EBEDF200E7E8ED00E0E0E200D9D9DB00D3D4D600CECFD100CACCCE00C5C7
          CB00BFC2C800B9BFC400B4BBC1000517210003130F009AA19F00010F07005A5A
          5B00595A5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00181A2A001A1C310018193200EEEF
          F000E8E9EC00E4E5E700DEDFE100D6D7D900D2D3D500D0D1D200CBCDCF00DAE2
          D700BDC5C90005182E00031D2B00CACFD000B0B4B2009C9F9E009B9D9C000C1A
          11005758580056585700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001011
          2100111222001213210014151F000D0E1700090A10000D171E0016101B000F13
          240006172700FFFFFF00F7F9F800DBDEDE00C2C2C300A7A7A7009A9B9A001A21
          1C0006150C005555560054555500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0005152600FFFFFF00EDEFEF00D2D2D300B8B7B8003F403F002A30
          2D0014201A00030B13005353530052525300FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0004141000030C0B0002040200010201004E514F003A40
          3C0024302A000E181F00000000005150510050505000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0003110A007A7D7B00727673005F6460004A53
          4E00343E3E001E252A000B0A0A00000000004F4E4F004F4F4E00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00010F070078807C006D7671005961
          6100434A50002E2F2E001919190006060600000000004D4D4D00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00010A1200787D8100696D
          7000545354003E3E3E0029292A00131413000303020000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000007475
          7400636464004E4D4E0039393900232324000F0F0E0000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          0000717171005E5F5E0048494800343434001E1F1E000A0A0A00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000006D6D6D0059595800434343002F2F2F0019191900FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        OnClick = bFiltrarClick
      end
      object bLimpar: TSpeedButton
        Left = 397
        Top = 342
        Width = 100
        Height = 65
        Cursor = crHandPoint
        Hint = '  Limpar os filtros atuais  '
        Caption = 'Limpar Fil&tros'
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
        OnClick = bLimparClick
      end
      object Panel3: TPanel
        Left = 78
        Top = 156
        Width = 635
        Height = 180
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object StaticText17: TStaticText
          Left = 10
          Top = 10
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Nota Inicial'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          Transparent = False
          StyleElements = []
        end
        object cFiltraNotaIni: TCurrencyEdit
          Left = 132
          Top = 10
          Width = 121
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object StaticText27: TStaticText
          Left = 256
          Top = 10
          Width = 40
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
          TabOrder = 2
          Transparent = False
          StyleElements = []
        end
        object cFiltraNotaFim: TCurrencyEdit
          Left = 298
          Top = 10
          Width = 121
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object StaticText28: TStaticText
          Left = 10
          Top = 33
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Data Emiss'#227'o Inicial'
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
        object cFiltraEmiIni: TDateEdit
          Left = 132
          Top = 33
          Width = 121
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
        end
        object StaticText30: TStaticText
          Left = 256
          Top = 33
          Width = 40
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
          TabOrder = 6
          Transparent = False
          StyleElements = []
        end
        object cFiltraEmiFim: TDateEdit
          Left = 298
          Top = 33
          Width = 121
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
        object StaticText31: TStaticText
          Left = 10
          Top = 56
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Data Entrada Inicial'
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
        object cFiltraEntIni: TDateEdit
          Left = 132
          Top = 56
          Width = 121
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
        object StaticText32: TStaticText
          Left = 256
          Top = 56
          Width = 40
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
        object cFiltraEntFim: TDateEdit
          Left = 298
          Top = 56
          Width = 121
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
        object StaticText33: TStaticText
          Left = 10
          Top = 79
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Refer'#234'ncia Fiscal'
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
        object StaticText34: TStaticText
          Left = 10
          Top = 102
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Fornecedor'
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
        object StaticText35: TStaticText
          Left = 10
          Top = 125
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Natureza da Opera'#231#227'o'
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
        object StaticText36: TStaticText
          Left = 10
          Top = 148
          Width = 120
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
          TabOrder = 15
          Transparent = False
          StyleElements = []
        end
        object cFiltraForn: TRxDBLookupCombo
          Left = 132
          Top = 102
          Width = 493
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Nome'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsFornecedores
          ParentFont = False
          TabOrder = 16
        end
        object cFiltraRef: TRxDBLookupCombo
          Left = 132
          Top = 79
          Width = 493
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Descricao'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsReferenciasFiscais
          ParentFont = False
          TabOrder = 17
        end
        object cFiltraNat: TRxDBLookupCombo
          Left = 132
          Top = 125
          Width = 493
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo; Descricao_NF'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsNatureza
          ParentFont = False
          TabOrder = 18
        end
        object cFiltraProc: TEdit
          Left = 132
          Top = 148
          Width = 157
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
        end
      end
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 633
    Width = 809
    Height = 32
    Margins.Bottom = 0
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object bItens: TButton
      AlignWithMargins = True
      Left = 3
      Top = 2
      Width = 77
      Height = 28
      Cursor = crHandPoint
      Hint = '   Mostrar os itens da nota fiscal.'
      Margins.Left = 2
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Itens'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bItensClick
    end
    object bDuplicatas: TButton
      AlignWithMargins = True
      Left = 81
      Top = 2
      Width = 108
      Height = 28
      Cursor = crHandPoint
      Hint = '   Gerar contas a pagar da nota fiscal.   '
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Contas a Pagar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bDuplicatasClick
    end
    object bImportaXMLNFe: TButton
      AlignWithMargins = True
      Left = 411
      Top = 2
      Width = 98
      Height = 28
      Cursor = crHandPoint
      Hint = '   Importar XML de Nota Fiscal   '
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Importar &NF-e'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bImportaXMLNFeClick
      ExplicitLeft = 385
    end
    object bEfetivar: TButton
      AlignWithMargins = True
      Left = 600
      Top = 2
      Width = 87
      Height = 28
      Cursor = crHandPoint
      Hint = '   Efetivar nota fiscal lan'#231'ada provis'#243'riamente.    '
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Efetivar NF'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bEfetivarClick
      ExplicitLeft = 556
    end
    object bImportaXMLCTe: TButton
      AlignWithMargins = True
      Left = 510
      Top = 2
      Width = 89
      Height = 28
      Cursor = crHandPoint
      Hint = '   Importar XML de CT-e    '
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Importar&C&T-e'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bImportaXMLCTeClick
    end
    object bCredito: TButton
      AlignWithMargins = True
      Left = 316
      Top = 2
      Width = 94
      Height = 28
      Cursor = crHandPoint
      Hint = '   Gerar cr'#233'dito dedevolu'#231#227'o de mercadorias.  '
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Gerar Cr'#233'dito'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bCreditoClick
      ExplicitLeft = 300
    end
    object bVincular: TButton
      AlignWithMargins = True
      Left = 190
      Top = 2
      Width = 125
      Height = 28
      Cursor = crHandPoint
      Hint = '   Vincula lan'#231'amentos financeiros as nota fiscal   '
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Vincular Financeiro'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = bVincularClick
    end
  end
  object Panel5: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 666
    Width = 809
    Height = 32
    Margins.Top = 1
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    object Navega: TDBNavigator
      AlignWithMargins = True
      Left = 3
      Top = 2
      Width = 373
      Height = 28
      Cursor = crHandPoint
      Margins.Left = 2
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      DataSource = dmFiscal.dsNotasTerceiros
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
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
      ConfirmDelete = False
      ShowHint = True
      TabOrder = 0
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
    object bPesquisa: TButton
      AlignWithMargins = True
      Left = 377
      Top = 2
      Width = 67
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Pesquisa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bPesquisaClick
    end
    object bSair: TButton
      AlignWithMargins = True
      Left = 737
      Top = 2
      Width = 70
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bSairClick
    end
  end
  object cXML: TOpenDialog
    DefaultExt = 'xml'
    FileName = '*.xml'
    Filter = 'Arquivo de NF-e (xml)|*.xml'
    Options = [ofHideReadOnly, ofNoChangeDir, ofAllowMultiSelect, ofEnableSizing]
    Left = 126
    Top = 140
  end
  object tExiste: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 227
    Top = 241
  end
  object tDeletaItens: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 227
    Top = 140
  end
  object tItens: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 309
    Top = 140
  end
  object tTransportador: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM Fornecedores ')
    Left = 308
    Top = 188
    object tTransportadorCodigo: TIntegerField
      DisplayWidth = 5
      FieldName = 'Codigo'
      Origin = 'CYBERSOFT_GPF_MATRIZ..Fornecedores.Codigo'
    end
    object tTransportadorNome: TStringField
      FieldName = 'Nome'
      Origin = 'CYBERSOFT_GPF_MATRIZ..Fornecedores.Nome'
      Size = 60
    end
    object tTransportadorCNPJ: TStringField
      DisplayWidth = 7
      FieldName = 'CNPJ'
      Origin = 'CYBERSOFT_GPF_MATRIZ..Fornecedores.CNPJ'
      EditMask = '99.999.999/9999-99;0; '
      Size = 14
    end
  end
  object dstTransportador: TDataSource
    DataSet = tTransportador
    Left = 308
    Top = 241
  end
  object tTotaliza: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 227
    Top = 189
  end
  object tLancamento: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT MAX(Numero) FROM Lancamentos')
    FetchRows = 1
    Left = 398
    Top = 140
  end
  object tManifesto: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Nota'
      '      ,Data_Emissao'
      '      ,NFe_cNF'
      
        '      ,Fornecedor = (select Nome from Fornecedores where Codigo ' +
        '= Fornecedor)'
      'from NotasTerceiros'
      'where Tipo = '#39'NF'#39' '
      'and   Servico is null'
      'and  isnull(Manifesto_Protocolo, '#39#39') = '#39#39
      '--and  isnull(Manifesto_Protocolo, '#39#39') <> '#39#39
      'order by Data_Emissao, Nota')
    Left = 398
    Top = 189
    object tManifestoNota: TIntegerField
      FieldName = 'Nota'
      Origin = 'NotasTerceiros.Nota'
    end
    object tManifestoData_Emissao: TDateTimeField
      Alignment = taCenter
      FieldName = 'Data_Emissao'
      Origin = 'NotasTerceiros.Data_Emissao'
    end
    object tManifestoNFe_cNF: TStringField
      Alignment = taCenter
      FieldName = 'NFe_cNF'
      Origin = 'NotasTerceiros.NFe_cNF'
      Size = 44
    end
    object tManifestoFornecedor: TStringField
      FieldName = 'Fornecedor'
      Origin = '.'
      ReadOnly = True
      Size = 60
    end
  end
  object dstManifesto: TDataSource
    DataSet = tManifesto
    Left = 398
    Top = 241
  end
  object tTmp: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 478
    Top = 140
  end
  object tTmp2: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 478
    Top = 189
  end
  object tArmazem: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'Select Codigo, Nome, CNPJ from Fornecedores')
    Left = 534
    Top = 140
    object tArmazemCodigo: TIntegerField
      DisplayWidth = 5
      FieldName = 'Codigo'
    end
    object tArmazemNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
    object tArmazemCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
  end
  object dstArmazem: TDataSource
    DataSet = tArmazem
    Left = 534
    Top = 188
  end
end
