object frmImpressaoProcessosOPFollowUp: TfrmImpressaoProcessosOPFollowUp
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Acompanhamento de Processo (Follow-Up)'
  ClientHeight = 440
  ClientWidth = 666
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  DesignSize = (
    666
    440)
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 666
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitLeft = -162
    ExplicitWidth = 802
  end
  object RxLabel3: TRxLabel
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
  object RxLabel4: TRxLabel
    Left = 8
    Top = 22
    Width = 280
    Height = 18
    Caption = 'Acompanhamento de processos (Follow-Up).'
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
  object lblRecords: TLabel
    Left = 8
    Top = 413
    Width = 140
    Height = 13
    Caption = '0 processo(s) encontrado(s).'
  end
  object StaticText1: TStaticText
    Left = 10
    Top = 99
    Width = 74
    Height = 21
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Respons'#225'vel'
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
  object StaticText3: TStaticText
    Left = 10
    Top = 76
    Width = 74
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
  object cResponsavel: TRxDBLookupCombo
    Left = 86
    Top = 99
    Width = 218
    Height = 21
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Anchors = [akLeft, akTop, akRight]
    LookupField = 'Matricula'
    LookupDisplay = 'Matricula;Nome'
    LookupDisplayIndex = 1
    LookupSource = dsoRES
    ParentFont = False
    TabOrder = 2
  end
  object cCliente: TRxDBLookupCombo
    Left = 86
    Top = 76
    Width = 218
    Height = 21
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Anchors = [akLeft, akTop, akRight]
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo;Nome; CNPJ'
    LookupDisplayIndex = 1
    LookupSource = dsoCLI
    ParentFont = False
    TabOrder = 3
  end
  object StaticText4: TStaticText
    Left = 10
    Top = 53
    Width = 74
    Height = 21
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Per'#237'odo'
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
    Left = 86
    Top = 53
    Width = 106
    Height = 21
    CheckOnExit = True
    DialogTitle = 'Selecione a Data'
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
  object cDataFim: TDateEdit
    Left = 197
    Top = 53
    Width = 106
    Height = 21
    CheckOnExit = True
    DialogTitle = 'Selecione a Data'
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
    TabOrder = 6
  end
  object btnSearch: TButton
    Left = 559
    Top = 53
    Width = 98
    Height = 27
    Anchors = [akTop, akRight]
    Caption = 'Pesquisar'
    TabOrder = 7
    OnClick = btnSearchClick
  end
  object Grade: TDBGrid
    Left = 8
    Top = 155
    Width = 649
    Height = 246
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dsoFLP
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Processo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DI_DUIMP'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Origem'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Documentos'
        Width = 64
        Visible = True
      end>
  end
  object btnPrint: TButton
    Left = 559
    Top = 81
    Width = 98
    Height = 27
    Anchors = [akTop, akRight]
    Caption = 'Imprimir'
    Enabled = False
    TabOrder = 9
    OnClick = btnPrintClick
  end
  object rgEst: TRadioGroup
    Left = 310
    Top = 49
    Width = 114
    Height = 100
    Anchors = [akTop, akRight]
    Caption = 'Estado do Processo'
    ItemIndex = 0
    Items.Strings = (
      'Ativos'
      'Desativados'
      'Todos')
    TabOrder = 10
  end
  object rgSit: TRadioGroup
    Left = 430
    Top = 49
    Width = 123
    Height = 100
    Anchors = [akTop, akRight]
    Caption = 'Situa'#231#227'o do Processo'
    ItemIndex = 3
    Items.Strings = (
      'Abertos'
      'Fechados'
      'Encerrados'
      'Todos')
    TabOrder = 11
  end
  object btnClear: TButton
    Left = 559
    Top = 122
    Width = 98
    Height = 27
    Anchors = [akTop, akRight]
    Caption = 'Limpar'
    TabOrder = 12
    OnClick = btnClearClick
  end
  object btnSaveTo: TBitBtn
    Left = 567
    Top = 407
    Width = 91
    Height = 25
    Caption = 'Salvar como...'
    Enabled = False
    TabOrder = 13
    OnClick = btnSaveToClick
  end
  object txtProcesso: TStaticText
    Left = 11
    Top = 121
    Width = 74
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
    TabOrder = 14
    Transparent = False
    StyleElements = []
  end
  object edtProcesso: TEdit
    Left = 86
    Top = 121
    Width = 106
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 15
  end
  object pprFollowUp: TppReport
    AutoStop = False
    DataPipeline = dbpFollowUp
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
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
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = [efUseSubset]
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
    XLSSettings.ExportComponents = [ecText, ecRichText]
    XLSSettings.ScaleToPageWidth = True
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 114
    Top = 354
    Version = '19.04'
    mmColumnWidth = 197300
    DataPipelineName = 'dbpFollowUp'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 20638
      mmPrintPosition = 0
      object iLogoSint: TppImage
        DesignLayer = ppDesignLayer7
        UserName = 'iLogo'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 16933
        mmLeft = 0
        mmTop = 0
        mmWidth = 27781
        BandType = 0
        LayerName = Foreground6
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 5027
        mmLeft = 28310
        mmTop = 0
        mmWidth = 169008
        BandType = 0
        LayerName = Foreground6
      end
      object lTituloSint: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'lTitulo'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Acompanhamento Follow-UP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 28310
        mmTop = 6350
        mmWidth = 169008
        BandType = 0
        LayerName = Foreground6
      end
      object lPeriodoSint: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'labParams'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Per'#237'odo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 4
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 1588
        mmLeft = 192617
        mmTop = 13229
        mmWidth = 4763
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label12'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' PROCESSO'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 0
        mmTop = 18788
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' CLIENTE'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1320
        mmLeft = 5798
        mmTop = 18788
        mmWidth = 16669
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label2'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' TIPO'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 22734
        mmTop = 18787
        mmWidth = 6085
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label3'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' EXPORTADOR'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 29075
        mmTop = 18787
        mmWidth = 7144
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label4'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' BL/AWB'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 36476
        mmTop = 18787
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label5'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' CE MERCANTE'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 42296
        mmTop = 18787
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label6'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' CONTAINER'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 50758
        mmTop = 18787
        mmWidth = 6085
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label7'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' FREE TIME'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 57105
        mmTop = 18787
        mmWidth = 6085
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label8'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' CANAL'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 63452
        mmTop = 18787
        mmWidth = 5292
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label9'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' DI/DUIMP'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 69003
        mmTop = 18787
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label10'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' INVOICE'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 76938
        mmTop = 18787
        mmWidth = 5556
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label101'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VALOR '
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 82750
        mmTop = 18787
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label13'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' LI'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 89366
        mmTop = 18787
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label14'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' MODAL'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 94671
        mmTop = 18786
        mmWidth = 5027
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label16'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' TIPO DE IMPORTA'#199#195'O'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 99949
        mmTop = 18786
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label17'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' AGENTE DE CARGA'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 109216
        mmTop = 18786
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label18'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' DESPACHANTE'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 117727
        mmTop = 18785
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label19'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' ORIGEM'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 126194
        mmTop = 18785
        mmWidth = 6085
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label20'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' DESTINO'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 132545
        mmTop = 18785
        mmWidth = 7673
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label201'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' EMBARQUE'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 140489
        mmTop = 18785
        mmWidth = 5292
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label22'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' PREVISAO CHEGADA'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 146043
        mmTop = 18785
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label23'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' CHEGADA'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 155036
        mmTop = 18785
        mmWidth = 5292
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label24'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' DOCUMENTOS'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 160589
        mmTop = 18785
        mmWidth = 5821
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label25'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' PRESENCA DE CARGA'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 166679
        mmTop = 18785
        mmWidth = 8731
        BandType = 0
        LayerName = Foreground6
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer7
        UserName = 'Label26'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' HIST'#211'RICO DO PROCESSO'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1323
        mmLeft = 175672
        mmTop = 18785
        mmWidth = 21960
        BandType = 0
        LayerName = Foreground6
      end
    end
    object ppDetailBand7: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 1852
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Processo'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 0
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'ClienteNome'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 5798
        mmTop = 0
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'Tipo'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 22734
        mmTop = 0
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'Exportador'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 29075
        mmTop = 0
        mmWidth = 7144
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'BL_AWB'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 36476
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'CE_MERCANTE_RUC'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 42296
        mmTop = 0
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'Container'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 50758
        mmTop = 0
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'FREE_TIME'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 57105
        mmTop = 0
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'CANAL'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 63452
        mmTop = 0
        mmWidth = 5292
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'DI_DUIMP'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 69003
        mmTop = 0
        mmWidth = 7673
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'Invoce'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 76938
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'VALOR'
        DataPipeline = dbpFollowUp
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 82750
        mmTop = 0
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'LI'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 89366
        mmTop = 0
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'ModalDescricao'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 94671
        mmTop = 0
        mmWidth = 5027
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText17'
        Border.mmPadding = 0
        DataField = 'TIPO_IMPORTACAO'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 99949
        mmTop = 0
        mmWidth = 8996
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText18'
        Border.mmPadding = 0
        DataField = 'Agente_Carga'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 109216
        mmTop = 0
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText19'
        Border.mmPadding = 0
        DataField = 'DESPACHANTE_NOME'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 117727
        mmTop = 0
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText20'
        Border.mmPadding = 0
        DataField = 'Origem'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 126194
        mmTop = 0
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText201'
        Border.mmPadding = 0
        DataField = 'Destino'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 132545
        mmTop = 0
        mmWidth = 7673
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText22'
        Border.mmPadding = 0
        DataField = 'EMBARQUE'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 140489
        mmTop = 0
        mmWidth = 5292
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText23'
        Border.mmPadding = 0
        DataField = 'PREVISAO_CHEGADA'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 146043
        mmTop = 0
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText24'
        Border.mmPadding = 0
        DataField = 'CHEGADA'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 155036
        mmTop = 0
        mmWidth = 5292
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText25'
        Border.mmPadding = 0
        DataField = 'Documentos'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 160589
        mmTop = 0
        mmWidth = 5821
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer7
        UserName = 'DBText26'
        Border.mmPadding = 0
        DataField = 'PRESENCA_CARGA'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 166679
        mmTop = 0
        mmWidth = 8731
        BandType = 4
        LayerName = Foreground6
      end
      object ppDBMemo1: TppDBMemo
        DesignLayer = ppDesignLayer7
        UserName = 'DBMemo1'
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'HISTORICO_PROCESSO'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        TextAlignment = taFullJustified
        Transparent = True
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1323
        mmLeft = 175672
        mmTop = 0
        mmWidth = 21695
        BandType = 4
        LayerName = Foreground6
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer7
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpBottom
        StretchWithParent = True
        Weight = 0.200000002980232200
        mmHeight = 792
        mmLeft = 0
        mmTop = 1054
        mmWidth = 197380
        BandType = 4
        LayerName = Foreground6
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer7
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.400000005960464500
        mmHeight = 259
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
        BandType = 8
        LayerName = Foreground6
      end
    end
    object ppDesignLayers7: TppDesignLayers
      object ppDesignLayer7: TppDesignLayer
        UserName = 'Foreground6'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object dbpFollowUp: TppDBPipeline
    DataSource = dsoFLP
    UserName = 'pFollowUp'
    Left = 86
    Top = 382
  end
  object qryFLP: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'DECLARE @DataInicial DATETIME;'
      'DECLARE @DataFinal DATETIME;'
      'DECLARE @Situacao INT;'
      'DECLARE @Estado INT;'
      'DECLARE @ClienteCodigo INT;'
      'DECLARE @RespNome VARCHAR(15);'
      'DECLARE @Processo VARCHAR(15);'
      ''
      'SET @DataInicial = :DataInicial;'
      'SET @DataFinal = :DataFinal;'
      'SET @Situacao = :Situacao;'
      'SET @Estado = :Estado;'
      'SET @ClienteCodigo = :ClienteCodigo;'
      'SET @RespNome = :RespNome;'
      'SET @Processo = :Processo;'
      ''
      'WITH DuimpVersoes AS'
      '('
      '    SELECT Id'
      '    ,ProcessoNumero'
      '    ,Versao'
      '    ,DuimpId'
      '    ,RN = ROW_NUMBER() OVER'
      '     ('
      '         PARTITION BY DuimpId'
      '         ORDER BY Versao DESC'
      '     )'
      '    FROM duimp.versoes'
      ')'
      'SELECT PRD.Processo'
      ',ClienteCodigo = CLI.Codigo'
      ',ClienteNome = CLI.Nome'
      ',PRD.Tipo'
      ',ExportadorCodigo = FORN.Codigo'
      ',Exportador = FORN.Nome'
      ',BL_AWB = PRD.Numero_BL'
      ',CE_MERCANTE_RUC = DUC.Identificacao'
      ',Container = '
      ' STUFF'
      ' ('
      '     ('
      '         SELECT'
      '             '#39';'#39' + CAST(CTN.Numero AS varchar(max))'
      '         FROM Container AS CTN'
      '         WHERE CTN.Processo = PRD.Processo'
      '         ORDER BY CTN.Numero'
      '         FOR XML PATH('#39#39'), TYPE'
      '     ).value('#39'.'#39', '#39'varchar(max)'#39')'
      ' ,1,1,'#39#39')'
      ',FREE_TIME = '
      ' STUFF'
      ' ('
      '     ('
      '         SELECT'
      '             '#39';'#39' + CAST(CTN.Free_Time AS varchar(max))'
      '         FROM Container AS CTN'
      '         WHERE CTN.Processo = PRD.Processo'
      '         ORDER BY CTN.Free_Time'
      '         FOR XML PATH('#39#39'), TYPE'
      '     ).value('#39'.'#39', '#39'varchar(max)'#39')'
      ' ,1,1,'#39#39')'
      ',CANAL = DRA.CanalConsolidado'
      ',DI_DUIMP = PRD.Numero_Declaracao'
      ',Invoce = PRD.Numero_Fatura'
      ',VALOR = PRD.Valor_FaturaME'
      ',LI = PRD.Numero_LI'
      ',ModalCodigo = VIT.Codigo'
      ',ModalDescricao = VIT.Descricao'
      ',TIPO_IMPORTACAO = TIP.Descricao'
      ',Agente_Carga = PRD.Agencia_Maritima'
      ',DESPACHANTE_CODIGO = DSP.Codigo'
      ',DESPACHANTE_NOME = DSP.nome'
      ',PRD.Origem'
      ',Destino = PRD.Local_Desembarque'
      ',EMBARQUE = PRD.Data_Embarque'
      ',PREVISAO_CHEGADA = PRD.Navio_DataPrevista'
      ',CHEGADA = PRD.Navio_DataChegada'
      ',Documentos = PRD.Processo_Abertura'
      ',PRESENCA_CARGA = PRD.data_presencacarga'
      ',HISTORICO_PROCESSO ='
      ' STUFF'
      ' ('
      '     ('
      '         SELECT'
      '               CHAR(13) + CHAR(10)'
      '             + CONVERT(varchar(10), PRH.Data, 23)'
      '             + '#39' '#39
      '             + CONVERT(varchar(5), PRH.Hora, 108)'
      '             + '#39' - '#39
      '             + CAST(PRH.Descricao AS varchar(max))'
      '         FROM ProcessosHistorico AS PRH'
      '         WHERE PRH.Processo = PRD.Processo'
      '         ORDER BY PRH.Data, PRH.Hora'
      '         FOR XML PATH('#39#39'), TYPE'
      '     ).value('#39'.'#39', '#39'varchar(max)'#39')'
      ' ,1,2,'#39#39')'
      ',PRD.Responsavel'
      'FROM ProcessosDocumentos AS PRD'
      'LEFT JOIN Clientes AS CLI'
      ' ON CLI.Codigo = PRD.Cliente'
      'LEFT JOIN duimp.duimps AS DUI'
      ' ON DUI.Numero = PRD.Numero_Declaracao'
      'LEFT JOIN DuimpVersoes AS DUV'
      ' ON DUV.DuimpId = DUI.Id'
      'AND DUV.RN = 1'
      'LEFT JOIN duimp.cargas AS DUC'
      'ON DUC.Id = DUV.Id'
      'LEFT JOIN duimp.resultados_analises_riscos AS DRA'
      ' ON DRA.Id = DUV.Id'
      'LEFT JOIN duimp.cargas_tipos AS DCT'
      ' ON DCT.Id = DUC.IdentificacaoCargaTipo'
      'LEFT JOIN Cybersoft_Cadastros.dbo.ViaTransporte AS VIT'
      ' ON VIT.Codigo = DCT.ViaTransporteCodigo'
      'LEFT JOIN TiposProcesso AS TIP'
      ' ON TIP.Codigo = PRD.Modalidade_Importacao'
      'LEFT JOIN Fornecedores AS FORN'
      ' ON FORN.Codigo = PRD.Fornecedor'
      'LEFT JOIN Fornecedores AS DSP'
      ' ON DSP.Codigo = PRD.Referencia_Despachante'
      'WHERE PRD.Tipo = '#39'IMPORTA'#199#195'O'#39
      'AND'
      '('
      '    ('
      '        @Processo <> '#39#39
      '        AND PRD.Processo = @Processo'
      '    )'
      '    OR'
      '    ('
      '        @Processo = '#39#39
      ''
      '        AND PRD.Processo_Abertura >= @DataInicial'
      '        AND PRD.Processo_Abertura < DATEADD(DAY, 1, @DataFinal)'
      ''
      '        AND ('
      
        '               (@Situacao = 0 AND ISNULL(PRD.Processo_Fechamento' +
        ', 0) = 0)'
      
        '            OR (@Situacao = 1 AND ISNULL(PRD.Processo_Fechamento' +
        ', 0) <> 0)'
      
        '            OR (@Situacao = 2 AND ISNULL(PRD.Data_Encerramento, ' +
        '0) <> 0)'
      '            OR (@Situacao = 3)'
      '        )'
      ''
      '        AND ('
      '               (@Estado = 0 AND ISNULL(PRD.Desativado, 0) = 0)'
      '            OR (@Estado = 1 AND ISNULL(PRD.Desativado, 0) = 1)'
      '            OR (@Estado = 2)'
      '        )'
      ''
      '        AND ('
      '               @ClienteCodigo = 0'
      '            OR PRD.Cliente = @ClienteCodigo'
      '        )'
      ''
      '        AND ('
      '               @RespNome = '#39#39
      '            OR PRD.Responsavel = @RespNome'
      '        )'
      '    )'
      ');')
    AfterOpen = qryFLPAfterOpen
    AfterClose = qryFLPAfterClose
    Left = 58
    Top = 354
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'DataInicial'
        ParamType = ptInput
        Value = 46023d
      end
      item
        DataType = ftDateTime
        Name = 'DataFinal'
        ParamType = ptInput
        Value = 46233d
      end
      item
        DataType = ftInteger
        Name = 'Situacao'
        ParamType = ptInput
        Value = 3
      end
      item
        DataType = ftInteger
        Name = 'Estado'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'ClienteCodigo'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'RespNome'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptInput
        Value = ''
      end>
    object qryFLPProcesso: TStringField
      FieldName = 'Processo'
      Size = 15
    end
    object qryFLPClienteCodigo: TIntegerField
      FieldName = 'ClienteCodigo'
      ReadOnly = True
    end
    object qryFLPClienteNome: TStringField
      FieldName = 'ClienteNome'
      ReadOnly = True
      Size = 50
    end
    object qryFLPTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 15
    end
    object qryFLPExportadorCodigo: TIntegerField
      FieldName = 'ExportadorCodigo'
      ReadOnly = True
    end
    object qryFLPExportador: TStringField
      FieldName = 'Exportador'
      ReadOnly = True
      Size = 60
    end
    object qryFLPBL_AWB: TStringField
      FieldName = 'BL_AWB'
    end
    object qryFLPCE_MERCANTE_RUC: TStringField
      FieldName = 'CE_MERCANTE_RUC'
      ReadOnly = True
      Size = 32
    end
    object qryFLPContainer: TMemoField
      FieldName = 'Container'
      ReadOnly = True
      BlobType = ftMemo
    end
    object qryFLPFREE_TIME: TMemoField
      FieldName = 'FREE_TIME'
      ReadOnly = True
      BlobType = ftMemo
    end
    object qryFLPCANAL: TStringField
      FieldName = 'CANAL'
      ReadOnly = True
      Size = 8
    end
    object qryFLPDI_DUIMP: TStringField
      DisplayLabel = 'DI/DUIMP'
      FieldName = 'DI_DUIMP'
      Size = 15
    end
    object qryFLPInvoce: TStringField
      FieldName = 'Invoce'
      Size = 40
    end
    object qryFLPVALOR: TCurrencyField
      FieldName = 'VALOR'
    end
    object qryFLPLI: TStringField
      FieldName = 'LI'
      Size = 15
    end
    object qryFLPModalCodigo: TSmallintField
      FieldName = 'ModalCodigo'
      ReadOnly = True
    end
    object qryFLPModalDescricao: TStringField
      FieldName = 'ModalDescricao'
      ReadOnly = True
      Size = 30
    end
    object qryFLPTIPO_IMPORTACAO: TStringField
      FieldName = 'TIPO_IMPORTACAO'
      ReadOnly = True
      Size = 30
    end
    object qryFLPAgente_Carga: TStringField
      FieldName = 'Agente_Carga'
      Size = 40
    end
    object qryFLPDESPACHANTE_CODIGO: TIntegerField
      FieldName = 'DESPACHANTE_CODIGO'
      ReadOnly = True
    end
    object qryFLPDESPACHANTE_NOME: TStringField
      FieldName = 'DESPACHANTE_NOME'
      ReadOnly = True
      Size = 60
    end
    object qryFLPOrigem: TStringField
      FieldName = 'Origem'
      Size = 30
    end
    object qryFLPDestino: TStringField
      FieldName = 'Destino'
      Size = 30
    end
    object qryFLPEMBARQUE: TDateTimeField
      FieldName = 'EMBARQUE'
    end
    object qryFLPPREVISAO_CHEGADA: TDateTimeField
      FieldName = 'PREVISAO_CHEGADA'
    end
    object qryFLPCHEGADA: TDateTimeField
      FieldName = 'CHEGADA'
    end
    object qryFLPDocumentos: TDateTimeField
      FieldName = 'Documentos'
    end
    object qryFLPPRESENCA_CARGA: TDateTimeField
      FieldName = 'PRESENCA_CARGA'
    end
    object qryFLPHISTORICO_PROCESSO: TMemoField
      FieldName = 'HISTORICO_PROCESSO'
      ReadOnly = True
      BlobType = ftMemo
    end
    object qryFLPResponsavel: TStringField
      FieldName = 'Responsavel'
      Size = 15
    end
  end
  object dsoFLP: TDataSource
    DataSet = qryFLP
    Left = 30
    Top = 354
  end
  object qryCLI: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Codigo'
      ',Nome'
      ',CNPJ'
      'FROM Clientes')
    IndexFieldNames = 'Nome'
    Left = 58
    Top = 326
  end
  object qryRES: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT Matricula'
      ',Nome'
      'FROM Usuarios')
    Left = 86
    Top = 326
    object qryRESMatricula: TStringField
      FieldName = 'Matricula'
      Size = 15
    end
    object qryRESNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
  end
  object dsoCLI: TDataSource
    DataSet = qryCLI
    Left = 30
    Top = 326
  end
  object dsoRES: TDataSource
    DataSet = qryRES
    Left = 30
    Top = 382
  end
  object pEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    UserName = 'pEmpresas'
    Left = 114
    Top = 326
    object pEmpresasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 2
      Position = 0
    end
    object pEmpresasppField2: TppField
      FieldAlias = 'Razao_Social'
      FieldName = 'Razao_Social'
      FieldLength = 50
      DisplayWidth = 28
      Position = 1
    end
    object pEmpresasppField3: TppField
      FieldAlias = 'Nome_Fantasia'
      FieldName = 'Nome_Fantasia'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object pEmpresasppField4: TppField
      FieldAlias = 'Rua'
      FieldName = 'Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object pEmpresasppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Rua_Numero'
      FieldName = 'Rua_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object pEmpresasppField6: TppField
      FieldAlias = 'Complemento'
      FieldName = 'Complemento'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object pEmpresasppField7: TppField
      FieldAlias = 'Bairro'
      FieldName = 'Bairro'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object pEmpresasppField8: TppField
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 7
    end
    object pEmpresasppField9: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 8
    end
    object pEmpresasppField10: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 12
      Position = 9
    end
    object pEmpresasppField11: TppField
      FieldAlias = 'IE'
      FieldName = 'IE'
      FieldLength = 14
      DisplayWidth = 14
      Position = 10
    end
    object pEmpresasppField12: TppField
      FieldAlias = 'IM'
      FieldName = 'IM'
      FieldLength = 14
      DisplayWidth = 14
      Position = 11
    end
    object pEmpresasppField13: TppField
      FieldAlias = 'Junta_Codigo'
      FieldName = 'Junta_Codigo'
      FieldLength = 12
      DisplayWidth = 12
      Position = 12
    end
    object pEmpresasppField14: TppField
      FieldAlias = 'Junta_Data'
      FieldName = 'Junta_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
    object pEmpresasppField15: TppField
      FieldAlias = 'Ramo_Atividade'
      FieldName = 'Ramo_Atividade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object pEmpresasppField16: TppField
      FieldAlias = 'Codigo_Atividade'
      FieldName = 'Codigo_Atividade'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
    object pEmpresasppField17: TppField
      FieldAlias = 'Responsavel'
      FieldName = 'Responsavel'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object pEmpresasppField18: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 17
    end
    object pEmpresasppField19: TppField
      FieldAlias = 'Site'
      FieldName = 'Site'
      FieldLength = 60
      DisplayWidth = 60
      Position = 18
    end
    object pEmpresasppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'Duplicata'
      FieldName = 'Duplicata'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object pEmpresasppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Saida'
      FieldName = 'Nota_Saida'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object pEmpresasppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Entrada'
      FieldName = 'Nota_Entrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object pEmpresasppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Servico'
      FieldName = 'Nota_Servico'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object pEmpresasppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Eletronica'
      FieldName = 'Nota_Eletronica'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object pEmpresasppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'Memorando_Exportacao'
      FieldName = 'Memorando_Exportacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object pEmpresasppField26: TppField
      FieldAlias = 'Sincronizar_NumeroNF'
      FieldName = 'Sincronizar_NumeroNF'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 25
    end
    object pEmpresasppField27: TppField
      FieldAlias = 'Mascara_PlanoContas'
      FieldName = 'Mascara_PlanoContas'
      FieldLength = 20
      DisplayWidth = 20
      Position = 26
    end
    object pEmpresasppField28: TppField
      FieldAlias = 'Codigo_Reduzido'
      FieldName = 'Codigo_Reduzido'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 27
    end
    object pEmpresasppField29: TppField
      FieldAlias = 'Diretor'
      FieldName = 'Diretor'
      FieldLength = 50
      DisplayWidth = 50
      Position = 28
    end
    object pEmpresasppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Numero'
      FieldName = 'Diario_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object pEmpresasppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Pagina'
      FieldName = 'Diario_Pagina'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object pEmpresasppField32: TppField
      FieldAlias = 'Ultimo_Encerramento'
      FieldName = 'Ultimo_Encerramento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 31
    end
    object pEmpresasppField33: TppField
      FieldAlias = 'NFServico_Modelo'
      FieldName = 'NFServico_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 32
    end
    object pEmpresasppField34: TppField
      FieldAlias = 'NFServico_Serie'
      FieldName = 'NFServico_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 33
    end
    object pEmpresasppField35: TppField
      FieldAlias = 'NFEntrada_Modelo'
      FieldName = 'NFEntrada_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 34
    end
    object pEmpresasppField36: TppField
      FieldAlias = 'NFEntrada_Serie'
      FieldName = 'NFEntrada_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 35
    end
    object pEmpresasppField37: TppField
      FieldAlias = 'NFSaida_Modelo'
      FieldName = 'NFSaida_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 36
    end
    object pEmpresasppField38: TppField
      FieldAlias = 'NFSaida_Serie'
      FieldName = 'NFSaida_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 37
    end
    object pEmpresasppField39: TppField
      FieldAlias = 'Matriz_Filial'
      FieldName = 'Matriz_Filial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 38
    end
    object pEmpresasppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Filial'
      FieldName = 'Numero_Filial'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 2
      Position = 39
    end
    object pEmpresasppField41: TppField
      FieldAlias = 'NFEletronica_Modelo'
      FieldName = 'NFEletronica_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 40
    end
    object pEmpresasppField42: TppField
      FieldAlias = 'NFEletronica_Serie'
      FieldName = 'NFEletronica_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 41
    end
    object pEmpresasppField43: TppField
      FieldAlias = 'NFEletronica_Layout'
      FieldName = 'NFEletronica_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 42
    end
    object pEmpresasppField44: TppField
      FieldAlias = 'Certificado_Digital'
      FieldName = 'Certificado_Digital'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 43
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Lote'
      FieldName = 'Numero_Lote'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 44
    end
    object pEmpresasppField46: TppField
      FieldAlias = 'Inscricao_SUFRAMA'
      FieldName = 'Inscricao_SUFRAMA'
      FieldLength = 9
      DisplayWidth = 9
      Position = 45
    end
    object pEmpresasppField47: TppField
      FieldAlias = 'Contador_Nome'
      FieldName = 'Contador_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 46
    end
    object pEmpresasppField48: TppField
      FieldAlias = 'Contador_CNPJ'
      FieldName = 'Contador_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 47
    end
    object pEmpresasppField49: TppField
      FieldAlias = 'Contador_CPF'
      FieldName = 'Contador_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 48
    end
    object pEmpresasppField50: TppField
      FieldAlias = 'Contador_CRC'
      FieldName = 'Contador_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 49
    end
    object pEmpresasppField51: TppField
      FieldAlias = 'Contador_CEP'
      FieldName = 'Contador_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 50
    end
    object pEmpresasppField52: TppField
      FieldAlias = 'Contador_Rua'
      FieldName = 'Contador_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 51
    end
    object pEmpresasppField53: TppField
      FieldAlias = 'Contador_Numero'
      FieldName = 'Contador_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 52
    end
    object pEmpresasppField54: TppField
      FieldAlias = 'Contador_Complemento'
      FieldName = 'Contador_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 53
    end
    object pEmpresasppField55: TppField
      FieldAlias = 'Contador_Bairro'
      FieldName = 'Contador_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 54
    end
    object pEmpresasppField56: TppField
      FieldAlias = 'Contador_Telefone'
      FieldName = 'Contador_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 55
    end
    object pEmpresasppField57: TppField
      FieldAlias = 'Contador_FAX'
      FieldName = 'Contador_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 56
    end
    object pEmpresasppField58: TppField
      FieldAlias = 'Contador_Email'
      FieldName = 'Contador_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 57
    end
    object pEmpresasppField59: TppField
      FieldAlias = 'Contador_Estado'
      FieldName = 'Contador_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 58
    end
    object pEmpresasppField60: TppField
      FieldAlias = 'Data_Constituicao'
      FieldName = 'Data_Constituicao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 59
    end
    object pEmpresasppField61: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tributacao'
      FieldName = 'Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 60
    end
    object pEmpresasppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'Municipio_Codigo'
      FieldName = 'Municipio_Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 61
    end
    object pEmpresasppField63: TppField
      FieldAlias = 'Diretor_CPF'
      FieldName = 'Diretor_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 62
    end
    object pEmpresasppField64: TppField
      FieldAlias = 'Responsavel_CPF'
      FieldName = 'Responsavel_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 63
    end
    object pEmpresasppField65: TppField
      FieldAlias = 'Responsavel_Funcao'
      FieldName = 'Responsavel_Funcao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 64
    end
    object pEmpresasppField66: TppField
      FieldAlias = 'Banco_Dados'
      FieldName = 'Banco_Dados'
      FieldLength = 50
      DisplayWidth = 50
      Position = 65
    end
    object pEmpresasppField67: TppField
      FieldAlias = 'Banco_Contabilidade'
      FieldName = 'Banco_Contabilidade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 66
    end
    object pEmpresasppField68: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente'
      FieldName = 'Ambiente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 67
    end
    object pEmpresasppField69: TppField
      FieldAlias = 'Licensa_NFE_Util'
      FieldName = 'Licensa_NFE_Util'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 68
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField70: TppField
      FieldAlias = 'Processo_Automatico'
      FieldName = 'Processo_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 69
    end
    object pEmpresasppField71: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 70
    end
    object pEmpresasppField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'Apuracao_IPI'
      FieldName = 'Apuracao_IPI'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 71
    end
    object pEmpresasppField73: TppField
      FieldAlias = 'Perfil_SPED'
      FieldName = 'Perfil_SPED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 72
    end
    object pEmpresasppField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Atividade'
      FieldName = 'Tipo_Atividade'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 73
    end
    object pEmpresasppField75: TppField
      FieldAlias = 'Vencimento_Certificado'
      FieldName = 'Vencimento_Certificado'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 74
    end
    object pEmpresasppField76: TppField
      FieldAlias = 'UF_WebService'
      FieldName = 'UF_WebService'
      FieldLength = 10
      DisplayWidth = 10
      Position = 75
    end
    object pEmpresasppField77: TppField
      Alignment = taRightJustify
      FieldAlias = 'Regime_Apuracao'
      FieldName = 'Regime_Apuracao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 76
    end
    object pEmpresasppField78: TppField
      FieldAlias = 'Mascara_Processo'
      FieldName = 'Mascara_Processo'
      FieldLength = 7
      DisplayWidth = 7
      Position = 77
    end
    object pEmpresasppField79: TppField
      FieldAlias = 'Incentivo_Fiscal'
      FieldName = 'Incentivo_Fiscal'
      FieldLength = 20
      DisplayWidth = 20
      Position = 78
    end
    object pEmpresasppField80: TppField
      FieldAlias = 'Email_SMTP'
      FieldName = 'Email_SMTP'
      FieldLength = 80
      DisplayWidth = 80
      Position = 79
    end
    object pEmpresasppField81: TppField
      FieldAlias = 'Email_Senha'
      FieldName = 'Email_Senha'
      FieldLength = 30
      DisplayWidth = 30
      Position = 80
    end
    object pEmpresasppField82: TppField
      FieldAlias = 'Email_MsgEnvioNFE'
      FieldName = 'Email_MsgEnvioNFE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 81
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField83: TppField
      FieldAlias = 'Email_MsgCancelamento'
      FieldName = 'Email_MsgCancelamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 82
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField84: TppField
      Alignment = taRightJustify
      FieldAlias = 'Email_Porta'
      FieldName = 'Email_Porta'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 83
    end
    object pEmpresasppField85: TppField
      FieldAlias = 'Email_ID'
      FieldName = 'Email_ID'
      FieldLength = 80
      DisplayWidth = 80
      Position = 84
    end
    object pEmpresasppField86: TppField
      FieldAlias = 'Distribuidora'
      FieldName = 'Distribuidora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 85
    end
    object pEmpresasppField87: TppField
      FieldAlias = 'Fechamento_Financeiro'
      FieldName = 'Fechamento_Financeiro'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 86
    end
    object pEmpresasppField88: TppField
      FieldAlias = 'Modulo_Comercial'
      FieldName = 'Modulo_Comercial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 87
    end
    object pEmpresasppField89: TppField
      FieldAlias = 'Consolidar'
      FieldName = 'Consolidar'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 88
    end
    object pEmpresasppField90: TppField
      FieldAlias = 'Email_Copia'
      FieldName = 'Email_Copia'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 89
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField91: TppField
      FieldAlias = 'Email_SSL'
      FieldName = 'Email_SSL'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 90
    end
    object pEmpresasppField92: TppField
      FieldAlias = 'Email_Autenticacao'
      FieldName = 'Email_Autenticacao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 91
    end
    object pEmpresasppField93: TppField
      FieldAlias = 'Email_Metodo'
      FieldName = 'Email_Metodo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 92
    end
    object pEmpresasppField94: TppField
      FieldAlias = 'CartaCorrecao_Layout'
      FieldName = 'CartaCorrecao_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 93
    end
    object pEmpresasppField95: TppField
      FieldAlias = 'CNAE'
      FieldName = 'CNAE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 94
    end
    object pEmpresasppField96: TppField
      FieldAlias = 'Email_MsgEnvioCCE'
      FieldName = 'Email_MsgEnvioCCE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 95
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField97: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_EletronicaEntrada'
      FieldName = 'Nota_EletronicaEntrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 96
    end
    object pEmpresasppField98: TppField
      FieldAlias = 'NFEletronica_ModeloEntrada'
      FieldName = 'NFEletronica_ModeloEntrada'
      FieldLength = 2
      DisplayWidth = 2
      Position = 97
    end
    object pEmpresasppField99: TppField
      FieldAlias = 'NFEletronica_SerieEntrada'
      FieldName = 'NFEletronica_SerieEntrada'
      FieldLength = 3
      DisplayWidth = 3
      Position = 98
    end
    object pEmpresasppField100: TppField
      FieldAlias = 'NFEletronica_Numeracao'
      FieldName = 'NFEletronica_Numeracao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 99
    end
    object pEmpresasppField101: TppField
      Alignment = taRightJustify
      FieldAlias = 'Logomarca_Largura'
      FieldName = 'Logomarca_Largura'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 100
    end
    object pEmpresasppField102: TppField
      FieldAlias = 'Pagamento'
      FieldName = 'Pagamento'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 101
    end
    object pEmpresasppField103: TppField
      FieldAlias = 'Modulo_Emprestimos'
      FieldName = 'Modulo_Emprestimos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 102
    end
    object pEmpresasppField104: TppField
      FieldAlias = 'Modulo_XMLCTe'
      FieldName = 'Modulo_XMLCTe'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 103
    end
    object pEmpresasppField105: TppField
      FieldAlias = 'Regime'
      FieldName = 'Regime'
      FieldLength = 1
      DisplayWidth = 1
      Position = 104
    end
    object pEmpresasppField106: TppField
      FieldAlias = 'Modulo_Vendas'
      FieldName = 'Modulo_Vendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 105
    end
    object pEmpresasppField107: TppField
      Alignment = taRightJustify
      FieldAlias = 'CTE_Numero'
      FieldName = 'CTE_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 106
    end
    object pEmpresasppField108: TppField
      FieldAlias = 'CTE_Modelo'
      FieldName = 'CTE_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 107
    end
    object pEmpresasppField109: TppField
      FieldAlias = 'CTE_Serie'
      FieldName = 'CTE_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 108
    end
    object pEmpresasppField110: TppField
      FieldAlias = 'CTE_Layout'
      FieldName = 'CTE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 109
    end
    object pEmpresasppField111: TppField
      FieldAlias = 'Modulo_Logistica'
      FieldName = 'Modulo_Logistica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 110
    end
    object pEmpresasppField112: TppField
      FieldAlias = 'Modulo_Boleto'
      FieldName = 'Modulo_Boleto'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 111
    end
    object pEmpresasppField113: TppField
      FieldAlias = 'Telefone1'
      FieldName = 'Telefone1'
      FieldLength = 11
      DisplayWidth = 11
      Position = 112
    end
    object pEmpresasppField114: TppField
      FieldAlias = 'Telefone2'
      FieldName = 'Telefone2'
      FieldLength = 11
      DisplayWidth = 11
      Position = 113
    end
    object pEmpresasppField115: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 11
      DisplayWidth = 11
      Position = 114
    end
    object pEmpresasppField116: TppField
      FieldAlias = 'Modulo_SISCOMEXWEB'
      FieldName = 'Modulo_SISCOMEXWEB'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 115
    end
    object pEmpresasppField117: TppField
      FieldAlias = 'Modulo_ECommerce'
      FieldName = 'Modulo_ECommerce'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 116
    end
    object pEmpresasppField118: TppField
      FieldAlias = 'Modulo_ManifestoDest'
      FieldName = 'Modulo_ManifestoDest'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 117
    end
    object pEmpresasppField119: TppField
      FieldAlias = 'Manifesto_LayOut'
      FieldName = 'Manifesto_LayOut'
      FieldLength = 10
      DisplayWidth = 10
      Position = 118
    end
    object pEmpresasppField120: TppField
      FieldAlias = 'UF_WebServiceManifesto'
      FieldName = 'UF_WebServiceManifesto'
      FieldLength = 10
      DisplayWidth = 10
      Position = 119
    end
    object pEmpresasppField121: TppField
      FieldAlias = 'Modulo_Televendas'
      FieldName = 'Modulo_Televendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 120
    end
    object pEmpresasppField122: TppField
      FieldAlias = 'Email_MsgOrcamento'
      FieldName = 'Email_MsgOrcamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 121
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField123: TppField
      FieldAlias = 'Email_MsgBoleto'
      FieldName = 'Email_MsgBoleto'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 122
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField124: TppField
      FieldAlias = 'PISCOFINS_F100'
      FieldName = 'PISCOFINS_F100'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 123
    end
    object pEmpresasppField125: TppField
      FieldAlias = 'Logo'
      FieldName = 'Logo'
      FieldLength = 120
      DisplayWidth = 120
      Position = 124
    end
    object pEmpresasppField126: TppField
      FieldAlias = 'Modulo_ConsultaProdutos'
      FieldName = 'Modulo_ConsultaProdutos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 125
    end
    object pEmpresasppField127: TppField
      FieldAlias = 'Modulo_Contabil'
      FieldName = 'Modulo_Contabil'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 126
    end
    object pEmpresasppField128: TppField
      FieldAlias = 'Modulo_EnviarArmazem'
      FieldName = 'Modulo_EnviarArmazem'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 127
    end
    object pEmpresasppField129: TppField
      FieldAlias = 'Versao_DLL'
      FieldName = 'Versao_DLL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 128
    end
    object pEmpresasppField130: TppField
      FieldAlias = 'Desativada'
      FieldName = 'Desativada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 129
    end
    object pEmpresasppField131: TppField
      FieldAlias = 'Menu_Inventario'
      FieldName = 'Menu_Inventario'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 130
    end
    object pEmpresasppField132: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_GNRE'
      FieldName = 'Ambiente_GNRE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 131
    end
    object pEmpresasppField133: TppField
      FieldAlias = 'GNRE_Layout'
      FieldName = 'GNRE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 132
    end
    object pEmpresasppField134: TppField
      FieldAlias = 'Modulo_GNRE'
      FieldName = 'Modulo_GNRE'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 133
    end
    object pEmpresasppField135: TppField
      FieldAlias = 'Modulo_DadosDI'
      FieldName = 'Modulo_DadosDI'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 134
    end
    object pEmpresasppField136: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Qualificacao'
      FieldName = 'Contador_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 135
    end
    object pEmpresasppField137: TppField
      FieldAlias = 'Contador_CRCUF'
      FieldName = 'Contador_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 136
    end
    object pEmpresasppField138: TppField
      FieldAlias = 'Contador_CRCData'
      FieldName = 'Contador_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 137
    end
    object pEmpresasppField139: TppField
      FieldAlias = 'NIRE'
      FieldName = 'NIRE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 138
    end
    object pEmpresasppField140: TppField
      FieldAlias = 'Fechamento_FinanceiroFinal'
      FieldName = 'Fechamento_FinanceiroFinal'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 139
    end
    object pEmpresasppField141: TppField
      Alignment = taRightJustify
      FieldAlias = 'SPED_CTAPlanoRef'
      FieldName = 'SPED_CTAPlanoRef'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 140
    end
    object pEmpresasppField142: TppField
      FieldAlias = 'Contador_CRCSequencial'
      FieldName = 'Contador_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 141
    end
    object pEmpresasppField143: TppField
      FieldAlias = 'Refis'
      FieldName = 'Refis'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 142
    end
    object pEmpresasppField144: TppField
      FieldAlias = 'Paes'
      FieldName = 'Paes'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 143
    end
    object pEmpresasppField145: TppField
      Alignment = taRightJustify
      FieldAlias = 'Forma_Tributacao'
      FieldName = 'Forma_Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 144
    end
    object pEmpresasppField146: TppField
      FieldAlias = 'Extincao_RTT'
      FieldName = 'Extincao_RTT'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 145
    end
    object pEmpresasppField147: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtde_SCP'
      FieldName = 'Qtde_SCP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 146
    end
    object pEmpresasppField148: TppField
      FieldAlias = 'Natureza_Juridica'
      FieldName = 'Natureza_Juridica'
      FieldLength = 10
      DisplayWidth = 10
      Position = 147
    end
    object pEmpresasppField149: TppField
      FieldAlias = 'NIRE_Data'
      FieldName = 'NIRE_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 148
    end
    object pEmpresasppField150: TppField
      FieldAlias = 'Representante_Bairro'
      FieldName = 'Representante_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 149
    end
    object pEmpresasppField151: TppField
      FieldAlias = 'Representante_CEP'
      FieldName = 'Representante_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 150
    end
    object pEmpresasppField152: TppField
      FieldAlias = 'Representante_CNPJ'
      FieldName = 'Representante_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 151
    end
    object pEmpresasppField153: TppField
      FieldAlias = 'Representante_Complemento'
      FieldName = 'Representante_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 152
    end
    object pEmpresasppField154: TppField
      FieldAlias = 'Representante_CPF'
      FieldName = 'Representante_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 153
    end
    object pEmpresasppField155: TppField
      FieldAlias = 'Representante_CRC'
      FieldName = 'Representante_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 154
    end
    object pEmpresasppField156: TppField
      FieldAlias = 'Representante_CRCData'
      FieldName = 'Representante_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 155
    end
    object pEmpresasppField157: TppField
      FieldAlias = 'Representante_CRCSequencial'
      FieldName = 'Representante_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 156
    end
    object pEmpresasppField158: TppField
      FieldAlias = 'Representante_CRCUF'
      FieldName = 'Representante_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 157
    end
    object pEmpresasppField159: TppField
      FieldAlias = 'Representante_Email'
      FieldName = 'Representante_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 158
    end
    object pEmpresasppField160: TppField
      FieldAlias = 'Representante_Estado'
      FieldName = 'Representante_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 159
    end
    object pEmpresasppField161: TppField
      FieldAlias = 'Representante_FAX'
      FieldName = 'Representante_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 160
    end
    object pEmpresasppField162: TppField
      FieldAlias = 'Representante_Nome'
      FieldName = 'Representante_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 161
    end
    object pEmpresasppField163: TppField
      FieldAlias = 'Representante_Numero'
      FieldName = 'Representante_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 162
    end
    object pEmpresasppField164: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Qualificacao'
      FieldName = 'Representante_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 163
    end
    object pEmpresasppField165: TppField
      FieldAlias = 'Representante_Rua'
      FieldName = 'Representante_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 164
    end
    object pEmpresasppField166: TppField
      FieldAlias = 'Representante_Telefone'
      FieldName = 'Representante_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 165
    end
    object pEmpresasppField167: TppField
      FieldAlias = 'Contador_SignatarioResp'
      FieldName = 'Contador_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 166
    end
    object pEmpresasppField168: TppField
      FieldAlias = 'Representante_SignatarioResp'
      FieldName = 'Representante_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 167
    end
    object pEmpresasppField169: TppField
      FieldAlias = 'Autorizacao_NFECNPJ'
      FieldName = 'Autorizacao_NFECNPJ'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 168
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField170: TppField
      FieldAlias = 'Autorizacao_NFECPF'
      FieldName = 'Autorizacao_NFECPF'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 169
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField171: TppField
      Alignment = taRightJustify
      FieldAlias = 'Encerramento_Contabil'
      FieldName = 'Encerramento_Contabil'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 170
    end
    object pEmpresasppField172: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Municipio'
      FieldName = 'Contador_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 171
    end
    object pEmpresasppField173: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Municipio'
      FieldName = 'Representante_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 172
    end
    object pEmpresasppField174: TppField
      FieldAlias = 'Classificacao_Tributaria'
      FieldName = 'Classificacao_Tributaria'
      FieldLength = 2
      DisplayWidth = 2
      Position = 173
    end
    object pEmpresasppField175: TppField
      Alignment = taRightJustify
      FieldAlias = 'Obrigada_ECD'
      FieldName = 'Obrigada_ECD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 174
    end
    object pEmpresasppField176: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desoneracao_Folha'
      FieldName = 'Desoneracao_Folha'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 175
    end
    object pEmpresasppField177: TppField
      Alignment = taRightJustify
      FieldAlias = 'Isencao_Multa'
      FieldName = 'Isencao_Multa'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 176
    end
    object pEmpresasppField178: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_REINF'
      FieldName = 'Ambiente_REINF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 177
    end
    object pEmpresasppField179: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_Sequencia'
      FieldName = 'REINF_Sequencia'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 178
    end
    object pEmpresasppField180: TppField
      FieldAlias = 'REINF_ModoLancamento'
      FieldName = 'REINF_ModoLancamento'
      FieldLength = 10
      DisplayWidth = 10
      Position = 179
    end
    object pEmpresasppField181: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_ProcEmi'
      FieldName = 'REINF_ProcEmi'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 180
    end
    object pEmpresasppField182: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_tpInsc'
      FieldName = 'REINF_tpInsc'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 181
    end
    object pEmpresasppField183: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_indSitPJ'
      FieldName = 'REINF_indSitPJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 182
    end
    object pEmpresasppField184: TppField
      FieldAlias = 'REINF_ideEFR'
      FieldName = 'REINF_ideEFR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 183
    end
    object pEmpresasppField185: TppField
      FieldAlias = 'REINF_VerProc'
      FieldName = 'REINF_VerProc'
      FieldLength = 5
      DisplayWidth = 5
      Position = 184
    end
    object pEmpresasppField186: TppField
      FieldAlias = 'REINF_iniValid'
      FieldName = 'REINF_iniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 185
    end
    object pEmpresasppField187: TppField
      FieldAlias = 'REINF_fimValid'
      FieldName = 'REINF_fimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 186
    end
    object pEmpresasppField188: TppField
      FieldAlias = 'REINF_AltiniValid'
      FieldName = 'REINF_AltiniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 187
    end
    object pEmpresasppField189: TppField
      FieldAlias = 'REINF_AltfimValid'
      FieldName = 'REINF_AltfimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 188
    end
    object pEmpresasppField190: TppField
      FieldAlias = 'Versao_REINF'
      FieldName = 'Versao_REINF'
      FieldLength = 10
      DisplayWidth = 10
      Position = 189
    end
    object pEmpresasppField191: TppField
      FieldAlias = 'EmissaoNFE_Bloqueada'
      FieldName = 'EmissaoNFE_Bloqueada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 190
    end
    object pEmpresasppField192: TppField
      FieldAlias = 'EmissaoNFE_BloqueadaUsuario'
      FieldName = 'EmissaoNFE_BloqueadaUsuario'
      FieldLength = 80
      DisplayWidth = 80
      Position = 191
    end
    object pEmpresasppField193: TppField
      FieldAlias = 'MOdulo_Despacho'
      FieldName = 'MOdulo_Despacho'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 192
    end
    object pEmpresasppField194: TppField
      Alignment = taRightJustify
      FieldAlias = 'Processo_Exp'
      FieldName = 'Processo_Exp'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 193
    end
    object pEmpresasppField195: TppField
      Alignment = taRightJustify
      FieldAlias = 'PO'
      FieldName = 'PO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 194
    end
    object pEmpresasppField196: TppField
      FieldAlias = 'PO_Automatico'
      FieldName = 'PO_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 195
    end
    object pEmpresasppField197: TppField
      FieldAlias = 'Mascara_ProcessoExp'
      FieldName = 'Mascara_ProcessoExp'
      FieldLength = 7
      DisplayWidth = 7
      Position = 196
    end
    object pEmpresasppField198: TppField
      FieldAlias = 'Mascara_PO'
      FieldName = 'Mascara_PO'
      FieldLength = 7
      DisplayWidth = 7
      Position = 197
    end
    object pEmpresasppField199: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_CTe'
      FieldName = 'Ambiente_CTe'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 198
    end
    object pEmpresasppField200: TppField
      FieldAlias = 'Transportadora'
      FieldName = 'Transportadora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 199
    end
    object pEmpresasppField201: TppField
      FieldAlias = 'RNTRC'
      FieldName = 'RNTRC'
      FieldLength = 8
      DisplayWidth = 8
      Position = 200
    end
    object pEmpresasppField202: TppField
      FieldAlias = 'Assinatura'
      FieldName = 'Assinatura'
      FieldLength = 120
      DisplayWidth = 120
      Position = 201
    end
    object pEmpresasppField203: TppField
      FieldAlias = 'Classificacao_ContribIPI'
      FieldName = 'Classificacao_ContribIPI'
      FieldLength = 2
      DisplayWidth = 2
      Position = 202
    end
    object pEmpresasppField204: TppField
      FieldAlias = 'Envio_Backup'
      FieldName = 'Envio_Backup'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 203
    end
    object pEmpresasppField205: TppField
      FieldAlias = 'ECommerce_Data'
      FieldName = 'ECommerce_Data'
      FieldLength = 10
      DisplayWidth = 10
      Position = 204
    end
    object pEmpresasppField206: TppField
      FieldAlias = 'Processo_AutomaticoExp'
      FieldName = 'Processo_AutomaticoExp'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 205
    end
    object pEmpresasppField207: TppField
      FieldAlias = 'ECommerce_Hora'
      FieldName = 'ECommerce_Hora'
      FieldLength = 10
      DisplayWidth = 10
      Position = 206
    end
    object pEmpresasppField208: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_Armazem'
      FieldName = 'Ambiente_Armazem'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 207
    end
    object pEmpresasppField209: TppField
      FieldAlias = 'Lancamento_Contabil'
      FieldName = 'Lancamento_Contabil'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 208
    end
    object pEmpresasppField210: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pedido_Nota'
      FieldName = 'Pedido_Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 209
    end
    object pEmpresasppField211: TppField
      Alignment = taRightJustify
      FieldAlias = 'Layout_Estoque'
      FieldName = 'Layout_Estoque'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 210
    end
    object pEmpresasppField212: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ultimo_NSU'
      FieldName = 'Ultimo_NSU'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 211
    end
    object pEmpresasppField213: TppField
      FieldAlias = 'UF_WEBServiceEPEC'
      FieldName = 'UF_WEBServiceEPEC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 212
    end
    object pEmpresasppField214: TppField
      FieldAlias = 'Licensa_CTE_Util'
      FieldName = 'Licensa_CTE_Util'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 213
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField215: TppField
      FieldAlias = 'UF_WebServiceCTe'
      FieldName = 'UF_WebServiceCTe'
      FieldLength = 10
      DisplayWidth = 10
      Position = 214
    end
    object pEmpresasppField216: TppField
      FieldAlias = 'Email_Criptografia'
      FieldName = 'Email_Criptografia'
      FieldLength = 20
      DisplayWidth = 20
      Position = 215
    end
    object pEmpresasppField217: TppField
      FieldAlias = 'Email_MsgFollowUp'
      FieldName = 'Email_MsgFollowUp'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 216
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField218: TppField
      FieldAlias = 'FCP_Interno'
      FieldName = 'FCP_Interno'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 217
    end
    object pEmpresasppField219: TppField
      FieldAlias = 'ImportarPlanPed_Bloqueado'
      FieldName = 'ImportarPlanPed_Bloqueado'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 218
    end
    object pEmpresasppField220: TppField
      FieldAlias = 'Email_MsgPedidos'
      FieldName = 'Email_MsgPedidos'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 219
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField221: TppField
      FieldAlias = 'PISCOFINS_F100Financ'
      FieldName = 'PISCOFINS_F100Financ'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 220
    end
  end
  object dlgSavePDF: TSaveDialog
    FileName = 'Acompanhamento FollowUp'
    Filter = 'Documento PDF (*.pdf)|*.pdf|Microsoft Excel (*.xls)|*.xls'
    Left = 142
    Top = 326
  end
  object qryPRH: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT PRH.Processo'
      ',PRH.Data'
      ',PRH.Hora'
      ',PRH.Descricao'
      'FROM ProcessosHistorico AS PRH'
      'WHERE PRH.Processo = :Processo;')
    MasterSource = dsoFLP
    MasterFields = 'Processo'
    DetailFields = 'Processo'
    IndexFieldNames = 'Data;Hora'
    Left = 58
    Top = 382
    ParamData = <
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptInput
        Size = 9
        Value = 'VIX225/25'
      end
      item
        DataType = ftString
        Name = 'Processo'
        ParamType = ptInput
        Value = 'VIX225/25'
      end>
    object qryPRHProcesso: TStringField
      FieldName = 'Processo'
      Size = 15
    end
    object qryPRHData: TDateTimeField
      FieldName = 'Data'
    end
    object qryPRHHora: TStringField
      FieldName = 'Hora'
      Size = 5
    end
    object qryPRHDescricao: TMemoField
      FieldName = 'Descricao'
      BlobType = ftMemo
    end
  end
  object dbpPRH: TppBDEPipeline
    UserName = 'dbpPRH'
    Left = 86
    Top = 354
    MasterDataPipelineName = 'dbpFollowUp'
  end
  object pprXLS: TppReport
    AutoStop = False
    DataPipeline = dbpFollowUp
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
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
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = [efUseSubset]
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
    XLSSettings.DefaultBands = [btHeader, btDetail]
    XLSSettings.ExportComponents = [ecText, ecRichText]
    XLSSettings.IncludeSingleHeader = True
    XLSSettings.ScaleToPageWidth = True
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 114
    Top = 382
    Version = '19.04'
    mmColumnWidth = 197300
    DataPipelineName = 'dbpFollowUp'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 1323
      mmPrintPosition = 0
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' PROCESSO'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 0
        mmTop = 0
        mmWidth = 5556
        BandType = 0
        LayerName = BandLayer2
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' CLIENTE'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1320
        mmLeft = 5798
        mmTop = 0
        mmWidth = 16669
        BandType = 0
        LayerName = BandLayer2
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' TIPO'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 22734
        mmTop = 0
        mmWidth = 6085
        BandType = 0
        LayerName = BandLayer2
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' EXPORTADOR'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 29075
        mmTop = 0
        mmWidth = 7144
        BandType = 0
        LayerName = BandLayer2
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' BL/AWB'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 36476
        mmTop = 0
        mmWidth = 5556
        BandType = 0
        LayerName = BandLayer2
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' CE MERCANTE'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 42296
        mmTop = 0
        mmWidth = 8202
        BandType = 0
        LayerName = BandLayer2
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' CONTAINER'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 50758
        mmTop = 0
        mmWidth = 6085
        BandType = 0
        LayerName = BandLayer2
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' FREE TIME'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 57105
        mmTop = 0
        mmWidth = 6085
        BandType = 0
        LayerName = BandLayer2
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' CANAL'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 63452
        mmTop = 0
        mmWidth = 5292
        BandType = 0
        LayerName = BandLayer2
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' DI/DUIMP'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 69003
        mmTop = 0
        mmWidth = 7673
        BandType = 0
        LayerName = BandLayer2
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' INVOICE'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 76938
        mmTop = 0
        mmWidth = 5556
        BandType = 0
        LayerName = BandLayer2
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VALOR '
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 82750
        mmTop = 0
        mmWidth = 6350
        BandType = 0
        LayerName = BandLayer2
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' LI'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 89366
        mmTop = 0
        mmWidth = 5027
        BandType = 0
        LayerName = BandLayer2
      end
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' MODAL'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 94671
        mmTop = 0
        mmWidth = 5027
        BandType = 0
        LayerName = BandLayer2
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' TIPO DE IMPORTA'#199#195'O'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 100214
        mmTop = 0
        mmWidth = 8996
        BandType = 0
        LayerName = BandLayer2
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' AGENTE DE CARGA'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 109481
        mmTop = 0
        mmWidth = 8202
        BandType = 0
        LayerName = BandLayer2
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' DESPACHANTE'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 117992
        mmTop = 0
        mmWidth = 8202
        BandType = 0
        LayerName = BandLayer2
      end
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' ORIGEM'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 126459
        mmTop = 0
        mmWidth = 6085
        BandType = 0
        LayerName = BandLayer2
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' DESTINO'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 132810
        mmTop = 0
        mmWidth = 7673
        BandType = 0
        LayerName = BandLayer2
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label201'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' EMBARQUE'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 140754
        mmTop = 0
        mmWidth = 5292
        BandType = 0
        LayerName = BandLayer2
      end
      object ppLabel50: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' PREVISAO CHEGADA'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 146308
        mmTop = 0
        mmWidth = 8731
        BandType = 0
        LayerName = BandLayer2
      end
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' CHEGADA'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 155301
        mmTop = 0
        mmWidth = 5292
        BandType = 0
        LayerName = BandLayer2
      end
      object ppLabel52: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' DOCUMENTOS'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 160854
        mmTop = 0
        mmWidth = 5821
        BandType = 0
        LayerName = BandLayer2
      end
      object ppLabel53: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' PRESENCA DE CARGA'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1321
        mmLeft = 166944
        mmTop = 0
        mmWidth = 8731
        BandType = 0
        LayerName = BandLayer2
      end
      object ppLabel54: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label26'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' HIST'#211'RICO DO PROCESSO'
        Color = 10184960
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 1323
        mmLeft = 175937
        mmTop = 0
        mmWidth = 21441
        BandType = 0
        LayerName = BandLayer2
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 1852
      mmPrintPosition = 0
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Processo'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 0
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'ClienteNome'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 5798
        mmTop = 0
        mmWidth = 16669
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'Tipo'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 22734
        mmTop = 0
        mmWidth = 6085
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'Exportador'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 29075
        mmTop = 0
        mmWidth = 7144
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'BL_AWB'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 36476
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'CE_MERCANTE_RUC'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 42296
        mmTop = 0
        mmWidth = 8202
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'Container'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 50758
        mmTop = 0
        mmWidth = 6085
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'FREE_TIME'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 57105
        mmTop = 0
        mmWidth = 6085
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'CANAL'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 63452
        mmTop = 0
        mmWidth = 5292
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'DI_DUIMP'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 69003
        mmTop = 0
        mmWidth = 7673
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'Invoce'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 76938
        mmTop = 0
        mmWidth = 5556
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'VALOR'
        DataPipeline = dbpFollowUp
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 82750
        mmTop = 0
        mmWidth = 6350
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'LI'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 89366
        mmTop = 0
        mmWidth = 5027
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'ModalDescricao'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 94671
        mmTop = 0
        mmWidth = 5027
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText43: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
        Border.mmPadding = 0
        DataField = 'TIPO_IMPORTACAO'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 100214
        mmTop = 0
        mmWidth = 8996
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText44: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText18'
        Border.mmPadding = 0
        DataField = 'Agente_Carga'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 109481
        mmTop = 0
        mmWidth = 8202
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText45: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText19'
        Border.mmPadding = 0
        DataField = 'DESPACHANTE'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 117992
        mmTop = 0
        mmWidth = 8202
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText46: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText20'
        Border.mmPadding = 0
        DataField = 'Origem'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 126459
        mmTop = 0
        mmWidth = 6085
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText47: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText201'
        Border.mmPadding = 0
        DataField = 'Destino'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 132810
        mmTop = 0
        mmWidth = 7673
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText48: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText22'
        Border.mmPadding = 0
        DataField = 'EMBARQUE'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 140754
        mmTop = 0
        mmWidth = 5292
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText49: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText23'
        Border.mmPadding = 0
        DataField = 'PREVISAO_CHEGADA'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 146308
        mmTop = 0
        mmWidth = 8731
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText50: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText24'
        Border.mmPadding = 0
        DataField = 'CHEGADA'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 155301
        mmTop = 0
        mmWidth = 5292
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText51: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText25'
        Border.mmPadding = 0
        DataField = 'Documentos'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 160854
        mmTop = 0
        mmWidth = 5821
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBText52: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText26'
        Border.mmPadding = 0
        DataField = 'PRESENCA_CARGA'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1321
        mmLeft = 166944
        mmTop = 0
        mmWidth = 8731
        BandType = 4
        LayerName = BandLayer2
      end
      object ppDBMemo2: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo1'
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'HISTORICO_PROCESSO'
        DataPipeline = dbpFollowUp
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 2
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        TextAlignment = taFullJustified
        Transparent = True
        DataPipelineName = 'dbpFollowUp'
        mmHeight = 1323
        mmLeft = 175937
        mmTop = 0
        mmWidth = 21441
        BandType = 4
        LayerName = BandLayer2
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpBottom
        StretchWithParent = True
        Weight = 0.200000002980232200
        mmHeight = 792
        mmLeft = 0
        mmTop = 1054
        mmWidth = 197380
        BandType = 4
        LayerName = BandLayer2
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'BandLayer2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
end
