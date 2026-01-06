object Utilitarios_RecriarContabil2: TUtilitarios_RecriarContabil2
  Left = 406
  Top = 157
  ActiveControl = cDataIni
  BorderIcons = [biSystemMenu, biMinimize, biHelp]
  BorderStyle = bsDialog
  Caption = 'Utilitarios_RecriarContabil2'
  ClientHeight = 574
  ClientWidth = 994
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
    Width = 994
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitLeft = -8
    ExplicitTop = 2
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 4
    Width = 117
    Height = 21
    Caption = 'CONTABILIDADE'
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
  object RxLabel4: TRxLabel
    Left = 8
    Top = 23
    Width = 451
    Height = 18
    Caption = 
      'Gera'#231#227'o dos lan'#231'amentos contabeis (Contas pelo Beneficiario /Pro' +
      'cesso)'
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
    Top = 543
    Width = 994
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      994
      31)
    object bSair: TButton
      Left = 918
      Top = 1
      Width = 75
      Height = 29
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akRight, akBottom]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bSairClick
    end
    object bGerar: TButton
      Left = 843
      Top = 1
      Width = 75
      Height = 29
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akRight, akBottom]
      Caption = '&Gerar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bGerarClick
    end
  end
  object StaticText1: TStaticText
    Left = 5
    Top = 55
    Width = 65
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
    TabOrder = 4
    Transparent = False
    StyleElements = []
  end
  object cDataIni: TDateEdit
    Left = 72
    Top = 55
    Width = 95
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
    Left = 189
    Top = 55
    Width = 65
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
    TabOrder = 5
    Transparent = False
    StyleElements = []
  end
  object cDataFim: TDateEdit
    Left = 260
    Top = 55
    Width = 97
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
  object PageControl1: TPageControl
    Left = 5
    Top = 82
    Width = 986
    Height = 453
    ActivePage = TabSheet3
    TabHeight = 25
    TabOrder = 6
    TabWidth = 100
    object TabSheet3: TTabSheet
      Caption = 'Lotes'
      ImageIndex = 2
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 978
        Height = 418
        Align = alClient
        DataSource = dsLotes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Registro'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 59
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Data'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 74
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
            Width = 60
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Empresa'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 123
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Origem'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 424
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Contabilizar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Webdings'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Contab'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Aberto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Webdings'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Recriar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Webdings'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 46
            Visible = True
          end>
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Lan'#231'amentos'
      ImageIndex = 3
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 978
        Height = 418
        Align = alClient
        DataSource = dstLancamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgTitleClick, dgTitleHotTrack]
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
            FieldName = 'Origem'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 208
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Empresa'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Lote'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Numero'
            Title.Alignment = taCenter
            Title.Caption = 'Lanc'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 37
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Conta_Debito'
            Title.Alignment = taCenter
            Title.Caption = 'Cta (D)'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Conta_Credito'
            Title.Alignment = taCenter
            Title.Caption = 'Cta (C)'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
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
            FieldName = 'Historico_Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'Hist'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Historico_Complemento'
            Title.Alignment = taCenter
            Title.Caption = 'Complemento'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 381
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Processo_Debito'
            Title.Alignment = taCenter
            Title.Caption = 'Processo Deb'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Processo_Credito'
            Title.Alignment = taCenter
            Title.Caption = 'Processo Cred'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Documento'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Documento'
            Title.Alignment = taCenter
            Title.Caption = 'Data Doc'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo_Documento'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo Doc'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo_Nota'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Beneficiario'
            Title.Alignment = taCenter
            Title.Caption = 'Beneficiario C'#243'd'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Beneficiario_CNPJ'
            Title.Alignment = taCenter
            Title.Caption = 'Beneficiario CNPJ'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 112
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Recriar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Webdings'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Contabilizar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Webdings'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Contab'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Erros'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Grade: TDBGrid
        Left = 0
        Top = 0
        Width = 978
        Height = 418
        Cursor = crHandPoint
        Align = alClient
        Color = clBtnFace
        DataSource = dmContab.dsErros
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = GradeDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'Empresa'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 55
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Origem'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'Calibri'
            Font.Style = [fsUnderline]
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 225
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Documento'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 77
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'D_C'
            Title.Alignment = taCenter
            Title.Caption = 'D/C'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Conta'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Var_Conta'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Beneficiario'
            Title.Alignment = taCenter
            Title.Caption = 'Benef'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Processo'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 104
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Sel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Webdings'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Origem_Param'
            Title.Alignment = taCenter
            Title.Caption = 'Origem Par'#226'metro'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 64
            Visible = True
          end>
      end
    end
  end
  object StaticText11: TStaticText
    Left = 378
    Top = 55
    Width = 135
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelOuter = bvRaised
    BorderStyle = sbsSunken
    Caption = 'Senha do ADMINISTRADOR'
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
  object cSenha: TEdit
    Left = 515
    Top = 55
    Width = 168
    Height = 21
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Courier New'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
    PasswordChar = #8226
    TabOrder = 3
  end
  object tPagarReceber: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 60
    Top = 193
  end
  object tProcessos: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 42
    Top = 271
  end
  object tNotas: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 106
    Top = 271
  end
  object tEstoque: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 154
    Top = 271
  end
  object tNumLan: TMSQuery
    Connection = Dados.Banco_Contabilidade
    Left = 156
    Top = 193
  end
  object tTotaliza: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 210
    Top = 271
  end
  object tLoteNum: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 258
    Top = 271
  end
  object tPlano: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 306
    Top = 271
  end
  object tTmp: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 362
    Top = 271
  end
  object tLotes: TRxMemoryData
    FieldDefs = <
      item
        Name = 'Data'
        DataType = ftDate
      end
      item
        Name = 'Registro'
        DataType = ftInteger
      end
      item
        Name = 'Lote'
        DataType = ftInteger
      end
      item
        Name = 'Empresa'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'Origem'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Contabilizar'
        DataType = ftBoolean
      end
      item
        Name = 'Aberto'
        DataType = ftBoolean
      end
      item
        Name = 'Recriar'
        DataType = ftBoolean
      end>
    Left = 609
    Top = 201
    object tLotesData: TDateField
      FieldName = 'Data'
    end
    object tLotesRegistro: TIntegerField
      FieldName = 'Registro'
    end
    object tLotesLote: TIntegerField
      FieldName = 'Lote'
    end
    object tLotesEmpresa: TStringField
      FieldName = 'Empresa'
      EditMask = '##.###.###/####-##;0'
      Size = 14
    end
    object tLotesOrigem: TStringField
      FieldName = 'Origem'
      Size = 15
    end
    object tLotesDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object tLotesContabilizar: TBooleanField
      FieldName = 'Contabilizar'
      DisplayValues = 'a'
    end
    object tLotesAberto: TBooleanField
      FieldName = 'Aberto'
      DisplayValues = 'a'
    end
    object tLotesRecriar: TBooleanField
      FieldName = 'Recriar'
      DisplayValues = 'a'
    end
  end
  object dsLotes: TDataSource
    DataSet = tLotes
    Left = 609
    Top = 249
  end
  object tLancamentos: TRxMemoryData
    FieldDefs = <
      item
        Name = 'Registro'
        DataType = ftLargeint
      end
      item
        Name = 'Empresa'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'Data'
        DataType = ftDate
      end
      item
        Name = 'Numero'
        DataType = ftInteger
      end
      item
        Name = 'Conta_Debito'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Conta_Credito'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'Historico_Codigo'
        DataType = ftSmallint
      end
      item
        Name = 'Valor'
        DataType = ftCurrency
      end
      item
        Name = 'Origem'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Documento'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Data_Documento'
        DataType = ftDate
      end
      item
        Name = 'Tipo_Documento'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Numero_Financeiro'
        DataType = ftInteger
      end
      item
        Name = 'Recriar'
        DataType = ftBoolean
      end
      item
        Name = 'Lote'
        DataType = ftLargeint
      end
      item
        Name = 'Processo_Credito'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Tipo_Nota'
        DataType = ftSmallint
      end
      item
        Name = 'Beneficiario'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Contabilizar'
        DataType = ftBoolean
      end
      item
        Name = 'Beneficiario_CNPJ'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'Historico_Complemento'
        DataType = ftString
        Size = 300
      end>
    Left = 689
    Top = 201
    object tLancamentosRegistro: TLargeintField
      Alignment = taCenter
      FieldName = 'Registro'
      DisplayFormat = '00000000'
    end
    object tLancamentosEmpresa: TStringField
      Alignment = taCenter
      FieldName = 'Empresa'
      EditMask = '##.###.###/####-##;0'
      Size = 14
    end
    object tLancamentosData: TDateField
      Alignment = taCenter
      FieldName = 'Data'
    end
    object tLancamentosNumero: TIntegerField
      Alignment = taCenter
      FieldName = 'Numero'
      DisplayFormat = '00000'
      EditFormat = '00000000'
    end
    object tLancamentosConta_Debito: TStringField
      FieldName = 'Conta_Debito'
      Size = 6
    end
    object tLancamentosConta_Credito: TStringField
      FieldName = 'Conta_Credito'
      Size = 6
    end
    object tLancamentosValor: TCurrencyField
      FieldName = 'Valor'
      DisplayFormat = ',##0.00'
    end
    object tLancamentosHistorico_Codigo: TSmallintField
      FieldName = 'Historico_Codigo'
    end
    object tLancamentosProcesso_Debito: TStringField
      FieldName = 'Processo_Debito'
      Size = 15
    end
    object tLancamentosProcesso_Credito: TStringField
      FieldName = 'Processo_Credito'
      Size = 15
    end
    object tLancamentosOrigem: TStringField
      FieldName = 'Origem'
      Size = 60
    end
    object tLancamentosDocumento: TStringField
      FieldName = 'Documento'
      Size = 15
    end
    object tLancamentosData_Documento: TDateField
      Alignment = taCenter
      FieldName = 'Data_Documento'
    end
    object tLancamentosTipo_Documento: TStringField
      FieldName = 'Tipo_Documento'
      Size = 10
    end
    object tLancamentosNumero_Financeiro: TIntegerField
      FieldName = 'Numero_Financeiro'
      DisplayFormat = '00000000'
    end
    object tLancamentosRecriar: TBooleanField
      FieldName = 'Recriar'
      DisplayValues = 'a'
    end
    object tLancamentosLote: TLargeintField
      FieldName = 'Lote'
      DisplayFormat = '00000'
    end
    object tLancamentosTipo_Nota: TSmallintField
      FieldName = 'Tipo_Nota'
    end
    object tLancamentosBeneficiario: TStringField
      FieldName = 'Beneficiario'
      Size = 10
    end
    object tLancamentosContabilizar: TBooleanField
      FieldName = 'Contabilizar'
      DisplayValues = 'a'
    end
    object tLancamentosBeneficiario_CNPJ: TStringField
      Alignment = taCenter
      FieldName = 'Beneficiario_CNPJ'
      EditMask = '##.###.###/####-##;0'
      Size = 14
    end
    object tLancamentosHistorico_Complemento: TStringField
      FieldName = 'Historico_Complemento'
      Size = 300
    end
  end
  object dstLancamentos: TDataSource
    DataSet = tLancamentos
    Left = 689
    Top = 249
  end
  object tEmpresas: TMSQuery
    Connection = Dados.Banco
    FetchRows = 1
    Left = 418
    Top = 271
  end
end
