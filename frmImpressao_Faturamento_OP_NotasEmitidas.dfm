object Impressao_Faturamento_OP_NotasEmitidas: TImpressao_Faturamento_OP_NotasEmitidas
  Left = 1166
  Top = 154
  BorderStyle = bsDialog
  Caption = 'Impressao_Faturamento_OP_NotasEmitidas'
  ClientHeight = 642
  ClientWidth = 697
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
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
    Width = 697
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitTop = 7
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
    Width = 152
    Height = 18
    Caption = 'Rela'#231#227'o de notas fiscais.'
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
    Top = 612
    Width = 697
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 17
    DesignSize = (
      697
      30)
    object bSair: TButton
      Left = 630
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
      Left = 564
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
    Left = 77
    Top = 59
    Width = 106
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
    Width = 62
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
    TabOrder = 18
    Transparent = False
    StyleElements = []
  end
  object cDataFim: TDateEdit
    Left = 250
    Top = 59
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
    Left = 186
    Top = 59
    Width = 62
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
    TabOrder = 19
    Transparent = False
    StyleElements = []
  end
  object cCancelada: TCheckBox
    Left = 13
    Top = 540
    Width = 260
    Height = 17
    Caption = 'Imprimir as notas fiscais Canceladas / Denegadas.'
    TabOrder = 11
    OnClick = cCanceladaClick
  end
  object cTipo: TRadioGroup
    Left = 173
    Top = 88
    Width = 88
    Height = 81
    Caption = 'Tipo de Nota'
    ItemIndex = 0
    Items.Strings = (
      'Todas'
      'Entradas'
      'Sa'#237'das')
    TabOrder = 2
    OnClick = cTipoClick
  end
  object cNatureza: TRxDBLookupCombo
    Left = 116
    Top = 268
    Width = 570
    Height = 21
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo;Descricao_NF'
    LookupDisplayIndex = 1
    LookupSource = Dados.dsNatureza
    ParentFont = False
    TabOrder = 5
    OnKeyDown = cNaturezaKeyDown
  end
  object StaticText3: TStaticText
    Left = 13
    Top = 268
    Width = 101
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Natureza'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 20
    Transparent = False
    StyleElements = []
  end
  object cOrigem: TRadioGroup
    Left = 266
    Top = 88
    Width = 162
    Height = 81
    Caption = 'Origem da Mercadoria'
    ItemIndex = 0
    Items.Strings = (
      'Todas'
      'Mercadoria Importada'
      'Compras Mercador Interno')
    TabOrder = 3
    OnClick = cOrigemClick
  end
  object cZebrado: TCheckBox
    Left = 365
    Top = 559
    Width = 100
    Height = 17
    Caption = 'Imprimir zebrado.'
    Checked = True
    State = cbChecked
    TabOrder = 15
  end
  object cServico: TCheckBox
    Left = 13
    Top = 578
    Width = 187
    Height = 17
    Caption = 'Imprimir as notas fiscais de servi'#231'o.'
    Checked = True
    State = cbChecked
    TabOrder = 13
  end
  object cProcesso: TRxDBLookupCombo
    Left = 116
    Top = 291
    Width = 570
    Height = 21
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Processo'
    LookupDisplay = 'Processo; Tipo; Numero_Declaracao'
    LookupSource = Dados.dsProcessosDOC
    ParentFont = False
    TabOrder = 6
    OnKeyDown = cProcessoKeyDown
  end
  object StaticText4: TStaticText
    Left = 13
    Top = 291
    Width = 101
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
    TabOrder = 21
    Transparent = False
    StyleElements = []
  end
  object cCliFor: TRxDBLookupCombo
    Left = 116
    Top = 314
    Width = 570
    Height = 21
    DropDownCount = 8
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Alterado'
    LookupDisplay = 'Codigo;CNPJ;Nome'
    LookupDisplayIndex = 2
    LookupSource = Dados.dsClientes
    ParentFont = False
    TabOrder = 7
    OnKeyDown = cProcessoKeyDown
  end
  object lCliFor: TStaticText
    Left = 13
    Top = 314
    Width = 101
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Cliente/Fornecedor'
    Color = 7293440
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 22
    Transparent = False
    StyleElements = []
  end
  object cExcel: TCheckBox
    Left = 365
    Top = 578
    Width = 157
    Height = 17
    Caption = 'Enviar dados para o EXCEL.'
    TabOrder = 16
  end
  object StaticText5: TStaticText
    Left = 13
    Top = 360
    Width = 101
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Estado'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 23
    Transparent = False
    StyleElements = []
  end
  object cEstado: TRxDBLookupCombo
    Left = 116
    Top = 360
    Width = 570
    Height = 21
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Nome'
    LookupDisplay = 'Codigo;Nome'
    LookupDisplayIndex = 1
    LookupSource = Dados.dsEstados
    ParentFont = False
    TabOrder = 9
    OnKeyDown = cProcessoKeyDown
  end
  object cOrigemNota: TRadioGroup
    Left = 433
    Top = 88
    Width = 125
    Height = 81
    Caption = 'Origem da Nota'
    ItemIndex = 0
    Items.Strings = (
      'Todas'
      'Emiss'#227'o Pr'#243'pria'
      'Terceiros')
    TabOrder = 4
    OnClick = cOrigemNotaClick
  end
  object StaticText6: TStaticText
    Left = 13
    Top = 337
    Width = 101
    Height = 21
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
    TabOrder = 24
    Transparent = False
    StyleElements = []
  end
  object cTransportador: TRxDBLookupCombo
    Left = 116
    Top = 337
    Width = 570
    Height = 21
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo;CNPJ;Nome'
    LookupDisplayIndex = 2
    LookupSource = dstTransportador
    ParentFont = False
    TabOrder = 8
    OnKeyDown = cProcessoKeyDown
  end
  object cApenasCancelada: TCheckBox
    Left = 13
    Top = 559
    Width = 296
    Height = 17
    Caption = 'Imprimir apenas as notas fiscais Canceladas / Denegadas.'
    Enabled = False
    TabOrder = 12
  end
  object cIncentivos: TCheckListBox
    Left = 116
    Top = 451
    Width = 471
    Height = 61
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 10
  end
  object StaticText8: TStaticText
    Left = 13
    Top = 451
    Width = 101
    Height = 61
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 
      '                                                   Incentivo Fis' +
      'cal'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 25
    Transparent = False
    StyleElements = []
  end
  object bSelecionar: TBitBtn
    Left = 589
    Top = 450
    Width = 95
    Height = 31
    Caption = 'Selec.&Todos'
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      04000000000080000000C40E0000C40E00001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00007720077000
      00000076660770000000006EE6267700000007AEEE62770000000AEEEE627770
      00007EEEEEE607700000EEEEEEE6267700008EEE08EE607770000EE0008EE607
      700000000088E627770000000008EE607700000000008EE607000000000008EE
      6070000000000088E6080000000000088E6600000000000088EA}
    TabOrder = 26
    OnClick = bSelecionarClick
  end
  object bDesmarcar: TBitBtn
    Left = 589
    Top = 480
    Width = 95
    Height = 32
    Caption = '&Desm.&Todos'
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
    TabOrder = 27
    OnClick = bDesmarcarClick
  end
  object cFinanceiro: TCheckBox
    Left = 365
    Top = 521
    Width = 304
    Height = 17
    Caption = 'Imprimir apenas as notas que geram recebimento financeiro'
    TabOrder = 14
  end
  object cConsolidado: TCheckBox
    Left = 13
    Top = 521
    Width = 183
    Height = 17
    Caption = 'Consolidado (Todas as Empresas)'
    TabOrder = 28
    OnClick = cCanceladaClick
  end
  object cTipoCliente: TRadioGroup
    Left = 563
    Top = 88
    Width = 123
    Height = 81
    Caption = 'Tipo Cliente'
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Contribuinte'
      'N'#227'o Contribuinte')
    TabOrder = 29
    OnClick = cOrigemNotaClick
  end
  object cOrigemDados: TRadioGroup
    Left = 13
    Top = 88
    Width = 155
    Height = 81
    Caption = 'Origem dos Dados'
    ItemIndex = 0
    Items.Strings = (
      'Apenas Notas Fiscais'
      'Apenas Pedidos'
      'Todos')
    TabOrder = 30
    OnClick = cTipoClick
  end
  object StaticText7: TStaticText
    Left = 13
    Top = 383
    Width = 101
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Tipo de Nota'
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
  object cTipoNota: TRxDBLookupCombo
    Left = 116
    Top = 383
    Width = 570
    Height = 21
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo; Descricao'
    LookupDisplayIndex = 1
    LookupSource = Dados.dsTipoNota
    ParentFont = False
    TabOrder = 32
    OnKeyDown = cProcessoKeyDown
  end
  object StaticText9: TStaticText
    Left = 13
    Top = 406
    Width = 101
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
    TabOrder = 33
    Transparent = False
    StyleElements = []
  end
  object cRefFiscal: TRxDBLookupCombo
    Left = 116
    Top = 406
    Width = 570
    Height = 21
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo; Descricao'
    LookupDisplayIndex = 1
    LookupSource = Dados.dsReferenciasFiscais
    ParentFont = False
    TabOrder = 34
    OnKeyDown = cProcessoKeyDown
  end
  object cProvisorias: TCheckBox
    Left = 365
    Top = 540
    Width = 265
    Height = 17
    Caption = 'N'#227'o Imprimir Notas fiscais de Terceiros Provis'#243'rias.'
    TabOrder = 35
  end
  object StaticText10: TStaticText
    Left = 13
    Top = 428
    Width = 101
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
    TabOrder = 36
    Transparent = False
    StyleElements = []
  end
  object cNCM: TMaskEdit
    Left = 116
    Top = 428
    Width = 118
    Height = 21
    EditMask = '9999.99.99;0; '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    TabOrder = 37
    Text = ''
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 13
    Top = 173
    Width = 673
    Height = 84
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'Caracter'#237'sticas'
    TabOrder = 38
    object cSimples: TCheckBox
      Left = 11
      Top = 18
      Width = 97
      Height = 17
      Caption = 'Simples Nacional'
      TabOrder = 0
    end
    object cMEI: TCheckBox
      Left = 11
      Top = 37
      Width = 97
      Height = 17
      Caption = 'MEI'
      TabOrder = 1
    end
    object cConsumidor: TCheckBox
      Left = 244
      Top = 56
      Width = 97
      Height = 17
      Caption = 'Consumidor Final'
      TabOrder = 2
    end
    object cZona: TCheckBox
      Left = 132
      Top = 18
      Width = 97
      Height = 17
      Caption = 'Zona Franca'
      TabOrder = 3
    end
    object cInscricao: TCheckBox
      Left = 132
      Top = 37
      Width = 97
      Height = 17
      Caption = 'Possui Inscri'#231#227'o de ST'
      TabOrder = 4
    end
    object cMicro: TCheckBox
      Left = 11
      Top = 56
      Width = 97
      Height = 17
      Caption = 'Micro Empresa'
      TabOrder = 5
    end
    object cImportador: TCheckBox
      Left = 244
      Top = 18
      Width = 97
      Height = 17
      Caption = 'Importador'
      TabOrder = 6
    end
    object cTerminal: TCheckBox
      Left = 244
      Top = 37
      Width = 97
      Height = 17
      Caption = 'Terminal'
      TabOrder = 7
    end
    object cComprador: TCheckBox
      Left = 132
      Top = 56
      Width = 97
      Height = 17
      Caption = 'Comprador'
      TabOrder = 8
    end
    object cBloqueado: TCheckBox
      Left = 344
      Top = 18
      Width = 97
      Height = 17
      Caption = 'Bloqueado'
      TabOrder = 9
    end
    object cAtivo: TCheckBox
      Left = 344
      Top = 37
      Width = 97
      Height = 17
      Caption = 'Ativo'
      TabOrder = 10
    end
    object cAtacadista: TCheckBox
      Left = 439
      Top = 37
      Width = 97
      Height = 17
      Caption = 'Atacadista'
      TabOrder = 11
    end
    object cVarejista: TCheckBox
      Left = 439
      Top = 18
      Width = 97
      Height = 17
      Caption = 'Varejista'
      TabOrder = 12
    end
  end
  object rNotas: TppReport
    AutoStop = False
    DataPipeline = pNotas
    NoDataBehaviors = [ndMessageDialog, ndBlankPage]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Faturamento - Rela'#231#227'o de Notas Fiscais.'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210080
    PrinterSetup.mmPaperWidth = 296863
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Sistemas\Faturamento\Codigo Fonte\Relatorios\Rela'#231#227'o de Notas' +
      ' Fiscais.rtm'
    Units = utScreenPixels
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
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
    Left = 614
    Top = 104
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pNotas'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 23813
      mmPrintPosition = 0
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.Weight = 1.000000000000000000
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
        mmHeight = 5027
        mmLeft = 27517
        mmTop = 0
        mmWidth = 256646
        BandType = 0
        LayerName = Foreground
      end
      object lTitulo: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTitulo'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Rela'#231#227'o de notas fiscais.'
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
        mmWidth = 256541
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DATA'
        Color = 10053222
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 0
        mmTop = 19050
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'N'#186' NOTA'
        Color = 10053222
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 11642
        mmTop = 19050
        mmWidth = 12435
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
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 27517
        mmTop = 12700
        mmWidth = 256911
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CFOP'
        Color = 10053222
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 24342
        mmTop = 19050
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TOTAL NF'
        Color = 10053222
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 53181
        mmTop = 19050
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DESCONTO'
        Color = 10053222
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 69586
        mmTop = 19050
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TOTAL L'#205'Q.'
        Color = 10053222
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 85990
        mmTop = 19050
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'B.C.ICMS'
        Color = 10053222
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 102394
        mmTop = 19050
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ICMS OPER.'
        Color = 10053222
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 118798
        mmTop = 19050
        mmWidth = 16140
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ICMS SUB'
        Color = 10053222
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 135202
        mmTop = 19050
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'IPI'
        Color = 10053222
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 148696
        mmTop = 19050
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'PIS'
        Color = 10053222
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 175684
        mmTop = 19050
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label102'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'COFINS'
        Color = 10053222
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 202671
        mmTop = 19050
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'II'
        Color = 10053222
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 162190
        mmTop = 19050
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CLIENTE / FORNECEDOR'
        Color = 10053222
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 229659
        mmTop = 19050
        mmWidth = 54504
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'PROCESSO'
        Color = 10053222
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 32808
        mmTop = 19050
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label103'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'PIS IMP'
        Color = 10053222
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 189177
        mmTop = 19050
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'COFINS IMP'
        Color = 10053222
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4763
        mmLeft = 216165
        mmTop = 19050
        mmWidth = 13229
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
      BeforePrint = ppDetailBand1BeforePrint
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
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
        mmWidth = 284428
        BandType = 4
        LayerName = Foreground
      end
      object sCancelada: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'lFaixa1'
        Brush.Color = 8421631
        Brush.Style = bsDiagCross
        Pen.Style = psClear
        Visible = False
        mmHeight = 2910
        mmLeft = 0
        mmTop = 0
        mmWidth = 284428
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Data_Emissao'
        DataPipeline = pNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2910
        mmLeft = 0
        mmTop = 0
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Numero'
        DataPipeline = pNotas
        DisplayFormat = '000000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2910
        mmLeft = 11642
        mmTop = 0
        mmWidth = 12435
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Natureza_Codigo'
        DataPipeline = pNotas
        DisplayFormat = '9.999;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2910
        mmLeft = 24342
        mmTop = 0
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Valor_TotalNota'
        DataPipeline = pNotas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2910
        mmLeft = 53181
        mmTop = 0
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Total_Descontos'
        DataPipeline = pNotas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2910
        mmLeft = 69586
        mmTop = 0
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Valor_Liquido'
        DataPipeline = pNotas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2910
        mmLeft = 85990
        mmTop = 0
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'BCICMS'
        DataPipeline = pNotas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2910
        mmLeft = 102394
        mmTop = 0
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Valor_ICMS'
        DataPipeline = pNotas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2498
        mmLeft = 118798
        mmTop = 0
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'ValorICMS_Substitutivo'
        DataPipeline = pNotas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2921
        mmLeft = 135202
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Valor_TotalIPI'
        DataPipeline = pNotas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2910
        mmLeft = 148696
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Valor_TotalII'
        DataPipeline = pNotas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2910
        mmLeft = 162190
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Valor_PIS'
        DataPipeline = pNotas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2910
        mmLeft = 175684
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Beneficiario'
        DataPipeline = pNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2910
        mmLeft = 230717
        mmTop = 0
        mmWidth = 53181
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText18'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Processo'
        DataPipeline = pNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2032
        mmLeft = 32808
        mmTop = 0
        mmWidth = 20108
        BandType = 4
        LayerName = Foreground
      end
      object lCancelada: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lCancelada'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '[ C A N C E L A D A ]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Name = 'Old Rubber Stamp'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Visible = False
        mmHeight = 2910
        mmLeft = 97102
        mmTop = 0
        mmWidth = 35983
        BandType = 4
        LayerName = Foreground
      end
      object lPISImp: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'lPISImp'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        OnCalc = lPISImpCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 189177
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Valor_COFINS'
        DataPipeline = pNotas
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pNotas'
        mmHeight = 2910
        mmLeft = 202671
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
      object lCofinsImp: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'lCofinsImp'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        OnCalc = lCofinsImpCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 216165
        mmTop = 0
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground
      end
      object lDenegada: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lCancelada1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '[ D E N E G A D A ]'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Name = 'Old Rubber Stamp'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Visible = False
        mmHeight = 2910
        mmLeft = 97631
        mmTop = 0
        mmWidth = 35983
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ERP Importa (Cybersoft Sistemas Ltda.)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 0
        mmTop = 0
        mmWidth = 45773
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable4'
        Border.Weight = 1.000000000000000000
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
        mmLeft = 92075
        mmTop = 0
        mmWidth = 73025
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable5: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 165894
        mmTop = 0
        mmWidth = 26194
        BandType = 8
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 47096
        mmTop = 0
        mmWidth = 2646
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable6: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable6'
        Border.Weight = 1.000000000000000000
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
        mmLeft = 267759
        mmTop = 0
        mmWidth = 16404
        BandType = 8
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 794
        mmLeft = 0
        mmTop = 0
        mmWidth = 284163
        BandType = 8
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 266965
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 20108
      mmPrintPosition = 0
      object ppShape19: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape5'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 15610
        mmLeft = 17727
        mmTop = 4498
        mmWidth = 212990
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ENTRADAS NF PR'#211'PRIAS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 19315
        mmTop = 5556
        mmWidth = 33602
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '*TOTAL DAS SAIDAS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 19315
        mmTop = 16404
        mmWidth = 33602
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ENTRADAS NF TERCEIROS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 19315
        mmTop = 8731
        mmWidth = 33602
        BandType = 7
        LayerName = Foreground
      end
      object ltEntradas_Nota: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltEntradas_Nota'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 53181
        mmTop = 5556
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object ltSaidas_Nota: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltSaidas_Nota'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 53181
        mmTop = 16404
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object ltTerceiros_Nota: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltSaida_Nota1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 2
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 53181
        mmTop = 8731
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object ltEntradas_Desconto: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltEntrada_Nota1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 3
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 69586
        mmTop = 5556
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object ltSaidas_Desconto: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltSaida_Nota2'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 4
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 69586
        mmTop = 16404
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object ltTerceiros_Desconto: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltTerceiros_Desconto'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 5
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 69586
        mmTop = 8731
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object ltEntradas_Liquido: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltEntradas_Nota1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 6
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 85990
        mmTop = 5556
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object ltSaidas_Liquido: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltSaidas_Nota1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 7
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 85990
        mmTop = 16404
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object ltTerceiros_Liquido: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltTerceiros_Liquido'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 8
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 85990
        mmTop = 8731
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object ltEntradas_BCICMS: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltEntradas_BCICMS'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 9
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 102394
        mmTop = 5556
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object ltSaidas_BCICMS: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltSaidas_BCICMS'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 10
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 102394
        mmTop = 16404
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object ltTerceiros_BCICMS: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltTerceiros_Liquido1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 11
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 102394
        mmTop = 8731
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object ltEntradas_VLICMS: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltEntradas_BCICMS1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 12
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 118798
        mmTop = 5556
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object ltSaidas_VLICMS: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltSaidas_BCICMS1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 13
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 118798
        mmTop = 16404
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object ltTerceiros_VLICMS: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltTerceiros_VLICMS'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 14
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 118798
        mmTop = 8731
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object ltEntradas_ICMSSub: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltEntradas_ICMSSub'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 15
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 135202
        mmTop = 5556
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ltSaidas_ICMSSub: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltSaidas_ICMSSub'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 16
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 135202
        mmTop = 16404
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ltTerceiros_ICMSSub: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltTerceiros_VLICMS1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 17
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 135202
        mmTop = 8731
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ltEntradas_IPI: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltEntradas_ICMSSub1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 18
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 148696
        mmTop = 5556
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ltSaidas_IPI: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltSaidas_ICMSSub1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 19
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 148696
        mmTop = 16404
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ltTerceiros_IPI: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltTerceiros_IPI'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 20
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 148696
        mmTop = 8731
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ltEntradas_II: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltEntradas_II'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 21
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 162190
        mmTop = 5556
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ltSaidas_II: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltSaidas_II'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 22
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 162190
        mmTop = 16404
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ltTerceiros_II: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltTerceiros_IPI1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 23
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 162190
        mmTop = 8731
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ltEntradas_PIS: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltEntradas_II1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 24
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 175684
        mmTop = 5556
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ltSaidas_PIS: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltSaidas_II1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 25
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 175684
        mmTop = 16404
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ltTerceiros_PIS: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltTerceiros_PIS'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 26
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 175684
        mmTop = 8731
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ltEntradas_COFINS: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltEntradas_COFINS'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 27
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 202671
        mmTop = 5556
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ltSaidas_COFINS: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltSaidas_COFINS'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 28
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 202671
        mmTop = 16404
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ltTerceiros_COFINS: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltTerceiros_PIS1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 29
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 202671
        mmTop = 8731
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '*TOTAL DAS ENTRADAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 19315
        mmTop = 13229
        mmWidth = 33602
        BandType = 7
        LayerName = Foreground
      end
      object ltSoma_NotaE: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltSaidas_Nota2'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 30
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 53181
        mmTop = 13229
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object ltSoma_DescontoE: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltSoma_DescontoE'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 31
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 69586
        mmTop = 13229
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object ltSoma_LiquidoE: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltSoma_LiquidoE'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 32
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 85990
        mmTop = 13229
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object ltSoma_BCICMSE: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltSaidas_BCICMS2'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 33
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 102394
        mmTop = 13229
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object ltSOMA_VlICMSE: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltSOMA_VlICMSE'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 34
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 118798
        mmTop = 13229
        mmWidth = 16140
        BandType = 7
        LayerName = Foreground
      end
      object ltSoma_ICMSSubE: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltSaidas_ICMSSub2'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 35
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 135202
        mmTop = 13229
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ltSoma_IPIE: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltSoma_IPIE'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 36
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 148696
        mmTop = 13229
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ltSoma_IIE: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltSaidas_II2'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 37
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 162190
        mmTop = 13229
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ltSoma_PISE: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltSoma_PISE'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 38
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 175684
        mmTop = 13229
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ltSoma_COFINSE: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltSaidas_COFINS1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 39
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2582
        mmLeft = 202671
        mmTop = 13229
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Style = psDot
        Pen.Width = 0
        mmHeight = 1058
        mmLeft = 19050
        mmTop = 12171
        mmWidth = 209815
        BandType = 7
        LayerName = Foreground
      end
      object ltEntradas_COFINSImp: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltEntradas_COFINS1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 40
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 216165
        mmTop = 5556
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ltTerceiros_COFINSImp: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltTerceiros_COFINSImp'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 41
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 216165
        mmTop = 8731
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ltSoma_COFINSEImp: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltSoma_COFINSEImp'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 42
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 216165
        mmTop = 13229
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ltSaidas_COFINSImp: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltSaidas_COFINS2'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 43
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 216165
        mmTop = 16404
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ltEntradas_PISImp: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltEntradas_PISImp'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 44
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 189177
        mmTop = 5556
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ltTerceiros_PISImp: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltTerceiros_PIS2'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 45
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 189177
        mmTop = 8731
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ltSoma_PISEImp: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltSoma_PISE1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 46
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 189177
        mmTop = 13229
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
      object ltSaidas_PISImp: TppVariable
        DesignLayer = ppDesignLayer1
        UserName = 'ltSaidas_PISImp'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 47
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 189177
        mmTop = 16404
        mmWidth = 13229
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Empresa'
      DataPipeline = pNotas
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'pNotas'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand2BeforePrint
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppShape18: TppShape
          DesignLayer = ppDesignLayer1
          UserName = 'Shape18'
          Brush.Color = 12698111
          Pen.Style = psClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 3969
          mmLeft = 0
          mmTop = 0
          mmWidth = 284428
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel22: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label22'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'EMPRESA:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2582
          mmLeft = 0
          mmTop = 529
          mmWidth = 11113
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
        object lEmpresa: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'lEmpresa'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'MATRIZ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2582
          mmLeft = 12700
          mmTop = 529
          mmWidth = 7789
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        AfterPrint = ppGroupFooterBand2AfterPrint
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 15610
        mmPrintPosition = 0
        object ppLabel23: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label23'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'ENTRADAS NF PR'#211'PRIAS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 19315
          mmTop = 884
          mmWidth = 33602
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel24: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label24'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = '*TOTAL DAS SAIDAS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 19315
          mmTop = 11732
          mmWidth = 33602
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel25: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label25'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'ENTRADAS NF TERCEIROS:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 19315
          mmTop = 4059
          mmWidth = 33602
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltEntradas_Nota2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltEntradas_Nota2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 0
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 53181
          mmTop = 884
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltSaidas_Nota2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltSaidas_Nota3'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 1
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          OnCalc = ltSaidas_Nota2Calc
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 53181
          mmTop = 11732
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltTerceiros_Nota2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltTerceiros_Nota2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 2
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 53181
          mmTop = 4059
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltEntradas_Desconto2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltEntradas_Desconto2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 3
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 69586
          mmTop = 884
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltSaidas_Desconto2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltSaidas_Desconto2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 4
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 69586
          mmTop = 11732
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltTerceiros_Desconto2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltTerceiros_Desconto1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 5
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 69586
          mmTop = 4059
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltEntradas_Liquido2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltEntradas_Liquido2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 6
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 85990
          mmTop = 884
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltSaidas_Liquido2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltSaidas_Liquido2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 7
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 85990
          mmTop = 11732
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltTerceiros_Liquido2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltTerceiros_Liquido2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 8
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 85990
          mmTop = 4059
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltEntradas_BCICMS2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltEntradas_BCICMS2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 9
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 102394
          mmTop = 884
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltSaidas_BCICMS2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltSaidas_BCICMS3'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 10
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 102394
          mmTop = 11732
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltTerceiros_BCICMS2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltTerceiros_BCICMS2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 11
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 102394
          mmTop = 4059
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltEntradas_VLICMS2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltEntradas_VLICMS2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 12
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 118798
          mmTop = 884
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltSaidas_VLICMS2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltSaidas_VLICMS2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 13
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 118798
          mmTop = 11732
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltTerceiros_VLICMS2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltTerceiros_VLICMS2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 14
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 118798
          mmTop = 4059
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltEntradas_ICMSSub2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltEntradas_ICMSSub2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 15
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 135202
          mmTop = 884
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltSaidas_ICMSSub2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltSaidas_ICMSSub3'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 16
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 135202
          mmTop = 11732
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltTerceiros_ICMSSub2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltTerceiros_ICMSSub2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 17
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 135202
          mmTop = 4059
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltEntradas_IPI2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltEntradas_IPI2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 18
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 148696
          mmTop = 884
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltSaidas_IPI2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltSaidas_IPI2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 19
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 148696
          mmTop = 11732
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltTerceiros_IPI2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltTerceiros_IPI2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 20
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 148696
          mmTop = 4059
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltEntradas_II2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltEntradas_II2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 21
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 162190
          mmTop = 884
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltSaidas_II2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltSaidas_II3'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 22
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 162190
          mmTop = 11732
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltTerceiros_II2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltTerceiros_II2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 23
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 162190
          mmTop = 4059
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltEntradas_PIS2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltEntradas_PIS2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 24
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 175684
          mmTop = 884
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltSaidas_PIS2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltSaidas_PIS2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 25
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 175684
          mmTop = 11732
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltTerceiros_PIS2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltTerceiros_PIS3'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 26
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 175684
          mmTop = 4059
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltEntradas_COFINS2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltEntradas_COFINS2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 27
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 202671
          mmTop = 884
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltSaidas_COFINS2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltSaidas_COFINS3'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 28
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 202671
          mmTop = 11732
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltTerceiros_COFINS2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltTerceiros_COFINS2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 29
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 202671
          mmTop = 4059
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel26: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label26'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = '*TOTAL DAS ENTRADAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 19315
          mmTop = 8557
          mmWidth = 33602
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltSoma_NotaE2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltSoma_NotaE2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 30
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 53181
          mmTop = 8557
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltSoma_DescontoE2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltSoma_DescontoE1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 31
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 69586
          mmTop = 8557
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltSoma_LiquidoE2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltSoma_LiquidoE1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 32
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 85990
          mmTop = 8557
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltSoma_BCICMSE2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltSoma_BCICMSE2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 33
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 102394
          mmTop = 8557
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltSOMA_VlICMSE2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltSOMA_VlICMSE1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 34
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 118798
          mmTop = 8557
          mmWidth = 16140
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltSoma_ICMSSubE2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltSoma_ICMSSubE2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 35
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 135202
          mmTop = 8557
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltSoma_IPIE2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltSoma_IPIE1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 36
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 148696
          mmTop = 8557
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltSoma_IIE2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltSoma_IIE2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 37
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 162190
          mmTop = 8557
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltSoma_PISE2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltSoma_PISE2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 38
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 175684
          mmTop = 8557
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltSoma_COFINSE2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltSoma_COFINSE2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 39
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 202671
          mmTop = 8557
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine4: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line4'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Style = psDot
          Pen.Width = 0
          mmHeight = 1058
          mmLeft = 19050
          mmTop = 7499
          mmWidth = 209815
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltEntradas_COFINSImp2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltEntradas_COFINSImp2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 40
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 216165
          mmTop = 884
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltTerceiros_COFINSImp2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltTerceiros_COFINSImp1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 41
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 216165
          mmTop = 4059
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltSoma_COFINSEImp2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltSoma_COFINSEImp1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 42
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 216165
          mmTop = 8557
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltSaidas_COFINSImp2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltSaidas_COFINSImp2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 43
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 216165
          mmTop = 11732
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltEntradas_PISImp2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltEntradas_PISImp1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 44
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 189177
          mmTop = 884
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltTerceiros_PISImp2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltTerceiros_PISImp2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 45
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 189177
          mmTop = 4059
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltSoma_PISEImp2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltSoma_PISEImp2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 46
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 189177
          mmTop = 8557
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ltSaidas_PISImp2: TppVariable
          DesignLayer = ppDesignLayer1
          UserName = 'ltSaidas_PISImp1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 47
          DataType = dtCurrency
          DisplayFormat = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 189177
          mmTop = 11732
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine3: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line3'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          mmHeight = 794
          mmLeft = 0
          mmTop = 0
          mmWidth = 284163
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Processo'
      DataPipeline = pNotas
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      ReprintOnSubsequentPage = False
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'pNotas'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Visible = False
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Visible = False
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5292
        mmPrintPosition = 0
      end
    end
    object raCodeModule1: TraCodeModule
      object raProgramInfo1: TraProgramInfo
        raClassName = 'TraEventHandler'
        raProgram.ProgramName = 'ltEntradas_NotaOnCalc'
        raProgram.ProgramType = ttProcedure
        raProgram.Source = 
          'procedure ltEntradas_NotaOnCalc(var Value: Variant);'#13#10'begin'#13#10#13#10#13 +
          #10'end;'#13#10
        raProgram.ComponentName = 'ltEntradas_Nota'
        raProgram.EventName = 'OnCalc'
        raProgram.EventID = 33
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
    OpenDataSource = False
    UserName = 'pEmpresas'
    Left = 614
    Top = 5
    object pEmpresasppField1: TppField
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField2: TppField
      FieldAlias = 'Razao_Social'
      FieldName = 'Razao_Social'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField3: TppField
      FieldAlias = 'Nome_Fantasia'
      FieldName = 'Nome_Fantasia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField4: TppField
      FieldAlias = 'Rua'
      FieldName = 'Rua'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField5: TppField
      FieldAlias = 'Rua_Numero'
      FieldName = 'Rua_Numero'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField6: TppField
      FieldAlias = 'Complemento'
      FieldName = 'Complemento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField7: TppField
      FieldAlias = 'Bairro'
      FieldName = 'Bairro'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField8: TppField
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField9: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField10: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField11: TppField
      FieldAlias = 'IE'
      FieldName = 'IE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField12: TppField
      FieldAlias = 'IM'
      FieldName = 'IM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField13: TppField
      FieldAlias = 'Junta_Codigo'
      FieldName = 'Junta_Codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField14: TppField
      FieldAlias = 'Junta_Data'
      FieldName = 'Junta_Data'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField15: TppField
      FieldAlias = 'Ramo_Atividade'
      FieldName = 'Ramo_Atividade'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField16: TppField
      FieldAlias = 'Codigo_Atividade'
      FieldName = 'Codigo_Atividade'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField17: TppField
      FieldAlias = 'Responsavel'
      FieldName = 'Responsavel'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField18: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField19: TppField
      FieldAlias = 'Site'
      FieldName = 'Site'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField20: TppField
      FieldAlias = 'Duplicata'
      FieldName = 'Duplicata'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField21: TppField
      FieldAlias = 'Nota_Saida'
      FieldName = 'Nota_Saida'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField22: TppField
      FieldAlias = 'Nota_Entrada'
      FieldName = 'Nota_Entrada'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField23: TppField
      FieldAlias = 'Nota_Servico'
      FieldName = 'Nota_Servico'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField24: TppField
      FieldAlias = 'Nota_Eletronica'
      FieldName = 'Nota_Eletronica'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField25: TppField
      FieldAlias = 'Memorando_Exportacao'
      FieldName = 'Memorando_Exportacao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField26: TppField
      FieldAlias = 'Sincronizar_NumeroNF'
      FieldName = 'Sincronizar_NumeroNF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField27: TppField
      FieldAlias = 'Mascara_PlanoContas'
      FieldName = 'Mascara_PlanoContas'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField28: TppField
      FieldAlias = 'Codigo_Reduzido'
      FieldName = 'Codigo_Reduzido'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField29: TppField
      FieldAlias = 'Diretor'
      FieldName = 'Diretor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField30: TppField
      FieldAlias = 'Diario_Numero'
      FieldName = 'Diario_Numero'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField31: TppField
      FieldAlias = 'Diario_Pagina'
      FieldName = 'Diario_Pagina'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField32: TppField
      FieldAlias = 'Ultimo_Encerramento'
      FieldName = 'Ultimo_Encerramento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField33: TppField
      FieldAlias = 'NFServico_Modelo'
      FieldName = 'NFServico_Modelo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField34: TppField
      FieldAlias = 'NFServico_Serie'
      FieldName = 'NFServico_Serie'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField35: TppField
      FieldAlias = 'NFEntrada_Modelo'
      FieldName = 'NFEntrada_Modelo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField36: TppField
      FieldAlias = 'NFEntrada_Serie'
      FieldName = 'NFEntrada_Serie'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField37: TppField
      FieldAlias = 'NFSaida_Modelo'
      FieldName = 'NFSaida_Modelo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField38: TppField
      FieldAlias = 'NFSaida_Serie'
      FieldName = 'NFSaida_Serie'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField39: TppField
      FieldAlias = 'Matriz_Filial'
      FieldName = 'Matriz_Filial'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField40: TppField
      FieldAlias = 'Numero_Filial'
      FieldName = 'Numero_Filial'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField41: TppField
      FieldAlias = 'NFEletronica_Modelo'
      FieldName = 'NFEletronica_Modelo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField42: TppField
      FieldAlias = 'NFEletronica_Serie'
      FieldName = 'NFEletronica_Serie'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField43: TppField
      FieldAlias = 'NFEletronica_Layout'
      FieldName = 'NFEletronica_Layout'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField44: TppField
      FieldAlias = 'Certificado_Digital'
      FieldName = 'Certificado_Digital'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField45: TppField
      FieldAlias = 'Numero_Lote'
      FieldName = 'Numero_Lote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField46: TppField
      FieldAlias = 'Inscricao_SUFRAMA'
      FieldName = 'Inscricao_SUFRAMA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField47: TppField
      FieldAlias = 'Contador_Nome'
      FieldName = 'Contador_Nome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField48: TppField
      FieldAlias = 'Contador_CNPJ'
      FieldName = 'Contador_CNPJ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField49: TppField
      FieldAlias = 'Contador_CPF'
      FieldName = 'Contador_CPF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField50: TppField
      FieldAlias = 'Contador_CRC'
      FieldName = 'Contador_CRC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField51: TppField
      FieldAlias = 'Contador_CEP'
      FieldName = 'Contador_CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField52: TppField
      FieldAlias = 'Contador_Rua'
      FieldName = 'Contador_Rua'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField53: TppField
      FieldAlias = 'Contador_Numero'
      FieldName = 'Contador_Numero'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField54: TppField
      FieldAlias = 'Contador_Complemento'
      FieldName = 'Contador_Complemento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField55: TppField
      FieldAlias = 'Contador_Bairro'
      FieldName = 'Contador_Bairro'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField56: TppField
      FieldAlias = 'Contador_Telefone'
      FieldName = 'Contador_Telefone'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField57: TppField
      FieldAlias = 'Contador_FAX'
      FieldName = 'Contador_FAX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField58: TppField
      FieldAlias = 'Contador_Email'
      FieldName = 'Contador_Email'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField59: TppField
      FieldAlias = 'Contador_Estado'
      FieldName = 'Contador_Estado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField60: TppField
      FieldAlias = 'Data_Constituicao'
      FieldName = 'Data_Constituicao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField61: TppField
      FieldAlias = 'Tributacao'
      FieldName = 'Tributacao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField62: TppField
      FieldAlias = 'Municipio_Codigo'
      FieldName = 'Municipio_Codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField63: TppField
      FieldAlias = 'Diretor_CPF'
      FieldName = 'Diretor_CPF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField64: TppField
      FieldAlias = 'Responsavel_CPF'
      FieldName = 'Responsavel_CPF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField65: TppField
      FieldAlias = 'Responsavel_Funcao'
      FieldName = 'Responsavel_Funcao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField66: TppField
      FieldAlias = 'Banco_Dados'
      FieldName = 'Banco_Dados'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 65
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField67: TppField
      FieldAlias = 'Banco_Contabilidade'
      FieldName = 'Banco_Contabilidade'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 66
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField68: TppField
      FieldAlias = 'Ambiente'
      FieldName = 'Ambiente'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 67
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField69: TppField
      FieldAlias = 'Licensa_NFE_Util'
      FieldName = 'Licensa_NFE_Util'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 68
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField70: TppField
      FieldAlias = 'Processo_Automatico'
      FieldName = 'Processo_Automatico'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 69
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField71: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 70
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField72: TppField
      FieldAlias = 'Apuracao_IPI'
      FieldName = 'Apuracao_IPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 71
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField73: TppField
      FieldAlias = 'Perfil_SPED'
      FieldName = 'Perfil_SPED'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 72
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField74: TppField
      FieldAlias = 'Tipo_Atividade'
      FieldName = 'Tipo_Atividade'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 73
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField75: TppField
      FieldAlias = 'Vencimento_Certificado'
      FieldName = 'Vencimento_Certificado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 74
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField76: TppField
      FieldAlias = 'UF_WebService'
      FieldName = 'UF_WebService'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 75
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField77: TppField
      FieldAlias = 'Regime_Apuracao'
      FieldName = 'Regime_Apuracao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 76
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField78: TppField
      FieldAlias = 'Mascara_Processo'
      FieldName = 'Mascara_Processo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 77
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField79: TppField
      FieldAlias = 'Incentivo_Fiscal'
      FieldName = 'Incentivo_Fiscal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 78
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField80: TppField
      FieldAlias = 'Email_SMTP'
      FieldName = 'Email_SMTP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 79
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField81: TppField
      FieldAlias = 'Email_Senha'
      FieldName = 'Email_Senha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 80
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField82: TppField
      FieldAlias = 'Email_MsgEnvioNFE'
      FieldName = 'Email_MsgEnvioNFE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 81
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField83: TppField
      FieldAlias = 'Email_MsgCancelamento'
      FieldName = 'Email_MsgCancelamento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 82
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField84: TppField
      FieldAlias = 'Email_Porta'
      FieldName = 'Email_Porta'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 83
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField85: TppField
      FieldAlias = 'Email_ID'
      FieldName = 'Email_ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 84
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField86: TppField
      FieldAlias = 'Distribuidora'
      FieldName = 'Distribuidora'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 85
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField87: TppField
      FieldAlias = 'Fechamento_Financeiro'
      FieldName = 'Fechamento_Financeiro'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 86
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField88: TppField
      FieldAlias = 'Modulo_Comercial'
      FieldName = 'Modulo_Comercial'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 87
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField89: TppField
      FieldAlias = 'Consolidar'
      FieldName = 'Consolidar'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 88
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField90: TppField
      FieldAlias = 'Email_Copia'
      FieldName = 'Email_Copia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 89
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField91: TppField
      FieldAlias = 'Email_SSL'
      FieldName = 'Email_SSL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 90
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField92: TppField
      FieldAlias = 'Email_Autenticacao'
      FieldName = 'Email_Autenticacao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 91
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField93: TppField
      FieldAlias = 'Email_Metodo'
      FieldName = 'Email_Metodo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 92
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField94: TppField
      FieldAlias = 'CartaCorrecao_Layout'
      FieldName = 'CartaCorrecao_Layout'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 93
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField95: TppField
      FieldAlias = 'CNAE'
      FieldName = 'CNAE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 94
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField96: TppField
      FieldAlias = 'Email_MsgEnvioCCE'
      FieldName = 'Email_MsgEnvioCCE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 95
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField97: TppField
      FieldAlias = 'Nota_EletronicaEntrada'
      FieldName = 'Nota_EletronicaEntrada'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 96
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField98: TppField
      FieldAlias = 'NFEletronica_ModeloEntrada'
      FieldName = 'NFEletronica_ModeloEntrada'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 97
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField99: TppField
      FieldAlias = 'NFEletronica_SerieEntrada'
      FieldName = 'NFEletronica_SerieEntrada'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 98
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField100: TppField
      FieldAlias = 'NFEletronica_Numeracao'
      FieldName = 'NFEletronica_Numeracao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 99
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField101: TppField
      FieldAlias = 'Logomarca_Largura'
      FieldName = 'Logomarca_Largura'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 100
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField102: TppField
      FieldAlias = 'Pagamento'
      FieldName = 'Pagamento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 101
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField103: TppField
      FieldAlias = 'Modulo_Emprestimos'
      FieldName = 'Modulo_Emprestimos'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 102
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField104: TppField
      FieldAlias = 'Modulo_XMLCTe'
      FieldName = 'Modulo_XMLCTe'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 103
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField105: TppField
      FieldAlias = 'Regime'
      FieldName = 'Regime'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 104
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField106: TppField
      FieldAlias = 'Modulo_Vendas'
      FieldName = 'Modulo_Vendas'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 105
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField107: TppField
      FieldAlias = 'CTE_Numero'
      FieldName = 'CTE_Numero'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 106
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField108: TppField
      FieldAlias = 'CTE_Modelo'
      FieldName = 'CTE_Modelo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 107
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField109: TppField
      FieldAlias = 'CTE_Serie'
      FieldName = 'CTE_Serie'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 108
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField110: TppField
      FieldAlias = 'CTE_Layout'
      FieldName = 'CTE_Layout'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 109
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField111: TppField
      FieldAlias = 'Modulo_Logistica'
      FieldName = 'Modulo_Logistica'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 110
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField112: TppField
      FieldAlias = 'Modulo_Boleto'
      FieldName = 'Modulo_Boleto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 111
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField113: TppField
      FieldAlias = 'Telefone1'
      FieldName = 'Telefone1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 112
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField114: TppField
      FieldAlias = 'Telefone2'
      FieldName = 'Telefone2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 113
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField115: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 114
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField116: TppField
      FieldAlias = 'Modulo_SISCOMEXWEB'
      FieldName = 'Modulo_SISCOMEXWEB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 115
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField117: TppField
      FieldAlias = 'Modulo_ECommerce'
      FieldName = 'Modulo_ECommerce'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 116
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField118: TppField
      FieldAlias = 'Modulo_ManifestoDest'
      FieldName = 'Modulo_ManifestoDest'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 117
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField119: TppField
      FieldAlias = 'Manifesto_LayOut'
      FieldName = 'Manifesto_LayOut'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 118
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField120: TppField
      FieldAlias = 'UF_WebServiceManifesto'
      FieldName = 'UF_WebServiceManifesto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 119
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField121: TppField
      FieldAlias = 'Modulo_Televendas'
      FieldName = 'Modulo_Televendas'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 120
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField122: TppField
      FieldAlias = 'Email_MsgOrcamento'
      FieldName = 'Email_MsgOrcamento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 121
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField123: TppField
      FieldAlias = 'Email_MsgBoleto'
      FieldName = 'Email_MsgBoleto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 122
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField124: TppField
      FieldAlias = 'PISCOFINS_F100'
      FieldName = 'PISCOFINS_F100'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 123
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField125: TppField
      FieldAlias = 'Logo'
      FieldName = 'Logo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 124
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField126: TppField
      FieldAlias = 'Modulo_ConsultaProdutos'
      FieldName = 'Modulo_ConsultaProdutos'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 125
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField127: TppField
      FieldAlias = 'Modulo_Contabil'
      FieldName = 'Modulo_Contabil'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 126
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField128: TppField
      FieldAlias = 'Modulo_EnviarArmazem'
      FieldName = 'Modulo_EnviarArmazem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 127
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField129: TppField
      FieldAlias = 'Versao_DLL'
      FieldName = 'Versao_DLL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 128
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField130: TppField
      FieldAlias = 'Desativada'
      FieldName = 'Desativada'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 129
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField131: TppField
      FieldAlias = 'Menu_Inventario'
      FieldName = 'Menu_Inventario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 130
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField132: TppField
      FieldAlias = 'Ambiente_GNRE'
      FieldName = 'Ambiente_GNRE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 131
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField133: TppField
      FieldAlias = 'GNRE_Layout'
      FieldName = 'GNRE_Layout'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 132
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField134: TppField
      FieldAlias = 'Modulo_GNRE'
      FieldName = 'Modulo_GNRE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 133
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField135: TppField
      FieldAlias = 'Modulo_DadosDI'
      FieldName = 'Modulo_DadosDI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 134
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField136: TppField
      FieldAlias = 'Contador_Qualificacao'
      FieldName = 'Contador_Qualificacao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 135
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField137: TppField
      FieldAlias = 'Contador_CRCUF'
      FieldName = 'Contador_CRCUF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 136
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField138: TppField
      FieldAlias = 'Contador_CRCData'
      FieldName = 'Contador_CRCData'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 137
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField139: TppField
      FieldAlias = 'NIRE'
      FieldName = 'NIRE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 138
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField140: TppField
      FieldAlias = 'Fechamento_FinanceiroFinal'
      FieldName = 'Fechamento_FinanceiroFinal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 139
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField141: TppField
      FieldAlias = 'SPED_CTAPlanoRef'
      FieldName = 'SPED_CTAPlanoRef'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 140
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField142: TppField
      FieldAlias = 'Contador_CRCSequencial'
      FieldName = 'Contador_CRCSequencial'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 141
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField143: TppField
      FieldAlias = 'Refis'
      FieldName = 'Refis'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 142
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField144: TppField
      FieldAlias = 'Paes'
      FieldName = 'Paes'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 143
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField145: TppField
      FieldAlias = 'Forma_Tributacao'
      FieldName = 'Forma_Tributacao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 144
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField146: TppField
      FieldAlias = 'Extincao_RTT'
      FieldName = 'Extincao_RTT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 145
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField147: TppField
      FieldAlias = 'Qtde_SCP'
      FieldName = 'Qtde_SCP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 146
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField148: TppField
      FieldAlias = 'Natureza_Juridica'
      FieldName = 'Natureza_Juridica'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 147
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField149: TppField
      FieldAlias = 'NIRE_Data'
      FieldName = 'NIRE_Data'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 148
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField150: TppField
      FieldAlias = 'Representante_Bairro'
      FieldName = 'Representante_Bairro'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 149
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField151: TppField
      FieldAlias = 'Representante_CEP'
      FieldName = 'Representante_CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 150
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField152: TppField
      FieldAlias = 'Representante_CNPJ'
      FieldName = 'Representante_CNPJ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 151
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField153: TppField
      FieldAlias = 'Representante_Complemento'
      FieldName = 'Representante_Complemento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 152
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField154: TppField
      FieldAlias = 'Representante_CPF'
      FieldName = 'Representante_CPF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 153
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField155: TppField
      FieldAlias = 'Representante_CRC'
      FieldName = 'Representante_CRC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 154
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField156: TppField
      FieldAlias = 'Representante_CRCData'
      FieldName = 'Representante_CRCData'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 155
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField157: TppField
      FieldAlias = 'Representante_CRCSequencial'
      FieldName = 'Representante_CRCSequencial'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 156
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField158: TppField
      FieldAlias = 'Representante_CRCUF'
      FieldName = 'Representante_CRCUF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 157
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField159: TppField
      FieldAlias = 'Representante_Email'
      FieldName = 'Representante_Email'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 158
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField160: TppField
      FieldAlias = 'Representante_Estado'
      FieldName = 'Representante_Estado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 159
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField161: TppField
      FieldAlias = 'Representante_FAX'
      FieldName = 'Representante_FAX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 160
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField162: TppField
      FieldAlias = 'Representante_Nome'
      FieldName = 'Representante_Nome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 161
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField163: TppField
      FieldAlias = 'Representante_Numero'
      FieldName = 'Representante_Numero'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 162
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField164: TppField
      FieldAlias = 'Representante_Qualificacao'
      FieldName = 'Representante_Qualificacao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 163
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField165: TppField
      FieldAlias = 'Representante_Rua'
      FieldName = 'Representante_Rua'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 164
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField166: TppField
      FieldAlias = 'Representante_Telefone'
      FieldName = 'Representante_Telefone'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 165
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField167: TppField
      FieldAlias = 'Contador_SignatarioResp'
      FieldName = 'Contador_SignatarioResp'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 166
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField168: TppField
      FieldAlias = 'Representante_SignatarioResp'
      FieldName = 'Representante_SignatarioResp'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 167
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField169: TppField
      FieldAlias = 'Autorizacao_NFECNPJ'
      FieldName = 'Autorizacao_NFECNPJ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 168
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField170: TppField
      FieldAlias = 'Autorizacao_NFECPF'
      FieldName = 'Autorizacao_NFECPF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 169
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField171: TppField
      FieldAlias = 'Encerramento_Contabil'
      FieldName = 'Encerramento_Contabil'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 170
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField172: TppField
      FieldAlias = 'Contador_Municipio'
      FieldName = 'Contador_Municipio'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 171
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField173: TppField
      FieldAlias = 'Representante_Municipio'
      FieldName = 'Representante_Municipio'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 172
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField174: TppField
      FieldAlias = 'Classificacao_Tributaria'
      FieldName = 'Classificacao_Tributaria'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 173
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField175: TppField
      FieldAlias = 'Obrigada_ECD'
      FieldName = 'Obrigada_ECD'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 174
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField176: TppField
      FieldAlias = 'Desoneracao_Folha'
      FieldName = 'Desoneracao_Folha'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 175
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField177: TppField
      FieldAlias = 'Isencao_Multa'
      FieldName = 'Isencao_Multa'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 176
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField178: TppField
      FieldAlias = 'Ambiente_REINF'
      FieldName = 'Ambiente_REINF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 177
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField179: TppField
      FieldAlias = 'REINF_Sequencia'
      FieldName = 'REINF_Sequencia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 178
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField180: TppField
      FieldAlias = 'REINF_ModoLancamento'
      FieldName = 'REINF_ModoLancamento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 179
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField181: TppField
      FieldAlias = 'REINF_ProcEmi'
      FieldName = 'REINF_ProcEmi'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 180
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField182: TppField
      FieldAlias = 'REINF_tpInsc'
      FieldName = 'REINF_tpInsc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 181
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField183: TppField
      FieldAlias = 'REINF_indSitPJ'
      FieldName = 'REINF_indSitPJ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 182
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField184: TppField
      FieldAlias = 'REINF_ideEFR'
      FieldName = 'REINF_ideEFR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 183
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField185: TppField
      FieldAlias = 'REINF_VerProc'
      FieldName = 'REINF_VerProc'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 184
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField186: TppField
      FieldAlias = 'REINF_iniValid'
      FieldName = 'REINF_iniValid'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 185
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField187: TppField
      FieldAlias = 'REINF_fimValid'
      FieldName = 'REINF_fimValid'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 186
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField188: TppField
      FieldAlias = 'REINF_AltiniValid'
      FieldName = 'REINF_AltiniValid'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 187
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField189: TppField
      FieldAlias = 'REINF_AltfimValid'
      FieldName = 'REINF_AltfimValid'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 188
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField190: TppField
      FieldAlias = 'Versao_REINF'
      FieldName = 'Versao_REINF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 189
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField191: TppField
      FieldAlias = 'EmissaoNFE_Bloqueada'
      FieldName = 'EmissaoNFE_Bloqueada'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 190
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField192: TppField
      FieldAlias = 'EmissaoNFE_BloqueadaUsuario'
      FieldName = 'EmissaoNFE_BloqueadaUsuario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 191
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField193: TppField
      FieldAlias = 'MOdulo_Despacho'
      FieldName = 'MOdulo_Despacho'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 192
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField194: TppField
      FieldAlias = 'Processo_Exp'
      FieldName = 'Processo_Exp'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 193
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField195: TppField
      FieldAlias = 'PO'
      FieldName = 'PO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 194
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField196: TppField
      FieldAlias = 'PO_Automatico'
      FieldName = 'PO_Automatico'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 195
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField197: TppField
      FieldAlias = 'Mascara_ProcessoExp'
      FieldName = 'Mascara_ProcessoExp'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 196
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField198: TppField
      FieldAlias = 'Mascara_PO'
      FieldName = 'Mascara_PO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 197
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField199: TppField
      FieldAlias = 'Ambiente_CTe'
      FieldName = 'Ambiente_CTe'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 198
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField200: TppField
      FieldAlias = 'Transportadora'
      FieldName = 'Transportadora'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 199
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField201: TppField
      FieldAlias = 'RNTRC'
      FieldName = 'RNTRC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 200
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField202: TppField
      FieldAlias = 'Assinatura'
      FieldName = 'Assinatura'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 201
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField203: TppField
      FieldAlias = 'Classificacao_ContribIPI'
      FieldName = 'Classificacao_ContribIPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 202
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField204: TppField
      FieldAlias = 'Envio_Backup'
      FieldName = 'Envio_Backup'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 203
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField205: TppField
      FieldAlias = 'ECommerce_Data'
      FieldName = 'ECommerce_Data'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 204
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField206: TppField
      FieldAlias = 'Processo_AutomaticoExp'
      FieldName = 'Processo_AutomaticoExp'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 205
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField207: TppField
      FieldAlias = 'ECommerce_Hora'
      FieldName = 'ECommerce_Hora'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 206
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField208: TppField
      FieldAlias = 'Ambiente_Armazem'
      FieldName = 'Ambiente_Armazem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 207
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField209: TppField
      FieldAlias = 'Lancamento_Contabil'
      FieldName = 'Lancamento_Contabil'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 208
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField210: TppField
      FieldAlias = 'Pedido_Nota'
      FieldName = 'Pedido_Nota'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 209
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField211: TppField
      FieldAlias = 'Layout_Estoque'
      FieldName = 'Layout_Estoque'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 210
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField212: TppField
      FieldAlias = 'Ultimo_NSU'
      FieldName = 'Ultimo_NSU'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 211
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField213: TppField
      FieldAlias = 'UF_WEBServiceEPEC'
      FieldName = 'UF_WEBServiceEPEC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 212
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField214: TppField
      FieldAlias = 'Licensa_CTE_Util'
      FieldName = 'Licensa_CTE_Util'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 213
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField215: TppField
      FieldAlias = 'UF_WebServiceCTe'
      FieldName = 'UF_WebServiceCTe'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 214
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField216: TppField
      FieldAlias = 'Email_Criptografia'
      FieldName = 'Email_Criptografia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 215
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField217: TppField
      FieldAlias = 'Email_MsgFollowUp'
      FieldName = 'Email_MsgFollowUp'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 216
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField218: TppField
      FieldAlias = 'FCP_Interno'
      FieldName = 'FCP_Interno'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 217
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField219: TppField
      FieldAlias = 'ImportarPlanPed_Bloqueado'
      FieldName = 'ImportarPlanPed_Bloqueado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 218
      Searchable = False
      Sortable = False
    end
  end
  object pNotas: TppDBPipeline
    DataSource = dstNotas
    CloseDataSource = True
    UserName = 'pNotas'
    Left = 614
    Top = 56
  end
  object tNotas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'USE Cybersoft_OCIDENTE_Filial1'
      'SELECT Data_Emissao, '
      '       DAY(Data_Emissao) AS Dia, '
      '       Numero, '
      '       Natureza_Codigo, '
      '       Processo, '
      '       Valor_TotalNota, '
      '       Total_Descontos, '
      '       Valor_TotalNota AS Valor_Liquido, '
      '       BCICMS, '
      '       Valor_ICMS,'
      '       ValorICMS_Substitutivo, '
      '       Valor_TotalIPI, '
      '       Valor_TotalII, '
      '       Valor_PIS, '
      '       Valor_COFINS, '
      '       Clientes.Nome AS Beneficiario,'
      
        '       (SELECT Descricao FROM TipoNota WHERE(Codigo = NotasFisca' +
        'is.Tipo_Nota)) AS Descricao_Tipo,'
      
        '       ATN2( (SELECT Valor_PIS    FROM ProcessosDocumentos AS PD' +
        ' WHERE(PD.Processo = NotasFiscais.Processo)), Valor_TotalNota ) ' +
        '* NotasFiscais.Valor_TotalNota AS PIS_Importacao,'
      
        '       ATN2( (SELECT Valor_COFINS FROM ProcessosDocumentos AS PD' +
        ' WHERE(PD.Processo = NotasFiscais.Processo)), Valor_TotalNota ) ' +
        '* NotasFiscais.Valor_TotalNota AS COFINS_Importacao,'
      '       0 AS Empresa,'
      '       Valor_TotalProdutos'
      'FROM   NotasFiscais, Clientes'
      'WHERE (Clientes.Codigo = NotasFiscais.Cliente_Codigo)'
      '      AND Data_Emissao BETWEEN '#39'05/01/2016'#39' AND '#39'05/31/2016'#39
      'ORDER BY Data_Emissao, Processo')
    FetchRows = 1
    Left = 455
    Top = 5
  end
  object dstNotas: TDataSource
    DataSet = tNotas
    Left = 455
    Top = 56
  end
  object tTransportador: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM Fornecedores ')
    Left = 536
    Top = 5
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
      DisplayWidth = 12
      FieldName = 'CNPJ'
      Origin = 'CYBERSOFT_GPF_MATRIZ..Fornecedores.CNPJ'
      EditMask = '99.999.999/9999-99;0; '
      Size = 14
    end
  end
  object dstTransportador: TDataSource
    DataSet = tTransportador
    Left = 536
    Top = 56
  end
  object tRateio: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 399
    Top = 56
  end
  object tEmpresas: TMSQuery
    Connection = Dados.Banco
    FetchRows = 1
    Left = 399
    Top = 5
  end
end
