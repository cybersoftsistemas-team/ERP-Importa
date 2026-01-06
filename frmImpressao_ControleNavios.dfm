object Impressao_ControleNavios: TImpressao_ControleNavios
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Impressao_ControleNavios'
  ClientHeight = 318
  ClientWidth = 539
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 539
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitLeft = -8
    ExplicitTop = 8
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 255
    Height = 21
    Caption = 'IMPRESS'#195'O - CONTROLE DE NAVIOS'
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
    Width = 123
    Height = 18
    Caption = 'Controle de Navios.'
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
    Top = 288
    Width = 539
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      539
      30)
    object bSair: TButton
      Left = 472
      Top = 1
      Width = 66
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bImprimir: TButton
      Left = 406
      Top = 1
      Width = 66
      Height = 28
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      OnClick = bImprimirClick
    end
  end
  object cNavio: TRxDBLookupCombo
    Left = 84
    Top = 69
    Width = 436
    Height = 21
    DropDownCount = 8
    DisplayAllFields = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Ordem'
    LookupDisplay = 'Navio;Ordem;Status'
    LookupSource = dstNavios
    ParentFont = False
    TabOrder = 1
    OnChange = cNavioChange
  end
  object StaticText7: TStaticText
    Left = 20
    Top = 69
    Width = 62
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Navio'
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
  object cStatus: TRadioGroup
    AlignWithMargins = True
    Left = 20
    Top = 130
    Width = 125
    Height = 98
    Margins.Top = 1
    Caption = 'Status'
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Ativo'
      'Em Andamento'
      'Encerrado')
    TabOrder = 3
  end
  object cSaida: TRadioGroup
    AlignWithMargins = True
    Left = 282
    Top = 130
    Width = 110
    Height = 98
    Margins.Top = 1
    Caption = 'Sa'#237'da'
    ItemIndex = 1
    Items.Strings = (
      'Gerar PDF'
      'Gerar EXCEL')
    TabOrder = 4
  end
  object cMovimento: TRadioGroup
    AlignWithMargins = True
    Left = 160
    Top = 130
    Width = 107
    Height = 98
    Margins.Top = 1
    Caption = 'Movimento'
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Com Laudo'
      'Sem Laudo')
    TabOrder = 5
  end
  object cDataIni: TDateEdit
    Left = 84
    Top = 92
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
  object lData: TStaticText
    Left = 20
    Top = 92
    Width = 62
    Height = 21
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
    TabOrder = 7
    Transparent = False
    StyleElements = []
  end
  object cDataFim: TDateEdit
    Left = 194
    Top = 92
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
    TabOrder = 8
  end
  object cTotal: TCheckBox
    Left = 20
    Top = 247
    Width = 170
    Height = 17
    Caption = 'Mostrar totalizadores do navio.'
    TabOrder = 9
  end
  object tNavios: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'select Ordem, Navio, Status from ControleNavios')
    Left = 202
    Top = 114
    object tNaviosOrdem: TIntegerField
      DisplayWidth = 4
      FieldName = 'Ordem'
    end
    object tNaviosNavio: TStringField
      DisplayWidth = 25
      FieldName = 'Navio'
      Size = 30
    end
    object tNaviosStatus: TStringField
      FieldName = 'Status'
      Size = 15
    end
  end
  object dstNavios: TDataSource
    DataSet = tNavios
    Left = 187
    Top = 165
  end
  object tControle: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select distinct '
      
        '       Status             = (select Status from Cybersoft_Cadast' +
        'ros.dbo.ControleNavios cn where cn.Ordem = cnb.Navio)'
      '      ,Ordem              = cnb.Navio'
      
        '      ,Navio              = (select Navio from Cybersoft_Cadastr' +
        'os.dbo.ControleNavios cn where cn.Ordem = cnb.Navio)'
      '      ,Porto'
      '      ,Armazem_Cod        = cnb.Armazem'
      
        '      ,Armazem            = (select Nome from Fornecedores frn w' +
        'here frn.Codigo = cnb.Armazem)'
      
        '      ,Data_Chegada       = (select Data_Chegada   from Cybersof' +
        't_Cadastros.dbo.ControleNavios cn where cn.Ordem = cnb.Navio)'
      
        '      ,Data_Atracacao     = (select Data_Atracacao from Cybersof' +
        't_Cadastros.dbo.ControleNavios cn where cn.Ordem = cnb.Navio)'
      
        '      ,Data_Descarga      = (select Data_Descarga  from Cybersof' +
        't_Cadastros.dbo.ControleNavios cn where cn.Ordem = cnb.Navio)'
      '      ,Carga_Total        = sum(Quantidade_LT20)'
      '      ,Descarregado = 0'
      '      ,Falta_Descarregar = 0'
      '      ,Quantidade_LT20 = sum(Quantidade_LT20)'
      
        '      ,VariacaoLT         = isnull((select sum(cnl.Variacao_DesL' +
        'T) from ControleNaviosLaudo cnl where cnl.Navio = cnb.Navio and ' +
        'cnl.Laudo = cnb.Laudo), 0)'
      
        '      ,VariacaoPerc       = isnull((select sum(cnl.Variacao_DesP' +
        'erc) from ControleNaviosLaudo cnl where cnl.Navio = cnb.Navio an' +
        'd cnl.Laudo = cnb.Laudo), 0)'
      
        '      ,Bloqueado          = sum(iif(cnb.Bloqueado = 1, Quantidad' +
        'e_LT20, 0))'
      
        '      ,Endossado          = sum(iif(cnb.Endossado = 1, Quantidad' +
        'e_LT20, 0))'
      '      ,Nacionalizado      = 0'
      '      ,Falta_Nacionalizar = 0'
      #9'  ,Laudo'
      'into #temp'
      'from ControleNaviosBL cnb'
      'where Registro is not null'
      '--and Navio = 1023'
      'group by Navio, Porto, Armazem, Laudo'
      ''
      'union all'
      'select Status'
      '      ,Ordem = 0'
      '      ,Navio'
      '      ,Porto = '#39#39' '
      '      ,Armazem_Cod = 0'
      '      ,Armazem = '#39#39' '
      '      ,Data_Chegada'
      '      ,Data_Atracacao'
      '      ,Data_Descarga'
      '      ,Carga_Total        = 0'
      '      ,Descarregado       = 0'
      '      ,Falta_Descarregar  = 0'
      '      ,Quantidade_LT20    = 0'
      '      ,VariacaoLT         = 0'
      '      ,VariacaoPerc       = 0'
      '      ,Bloqueado          = 0'
      '      ,Endossado          = 0'
      '      ,Nacionalizado      = 0'
      '      ,Falta_Nacionalizar = 0'
      '      ,Laudo = '#39#39
      'from Cybersoft_Cadastros.dbo.ControleNavios cn'
      
        'where Ordem not in(select distinct Navio from ControleNaviosLaud' +
        'o)'
      'and Ordem = 1023'
      ''
      
        'update #temp set Descarregado = (select isnull(sum(Quantidade_Re' +
        'cebidaLT20), 0) from ControleNaviosLaudo cnl where cnl.Navio = #' +
        'temp.Ordem and cnl.Laudo = #temp.Laudo)'
      ''
      'update #temp set Falta_Descarregar = Quantidade_LT20 -'
      
        '                                     (select isnull(sum(isnull(Q' +
        'uantidade_RecebidaLT20, 0)-isnull(Variacao_DesLT, 0)), 0) from C' +
        'ontroleNaviosLaudo cnl where cnl.Navio = #temp.Ordem and cnl.Lau' +
        'do = #temp.Laudo)'
      ''
      'update #Temp set Nacionalizado = isnull((select sum(Quantidade)'
      
        '                                         from NotasItensNavios n' +
        'in'
      
        '                                         where nin.Saida_Entrada' +
        ' = 0'
      
        '                                         and nin.Navio = #temp.O' +
        'rdem'
      
        '                                         and nin.Nota = (select ' +
        'Numero from NotasFiscais nf where nf.Numero = nin.Nota and nf.Da' +
        'ta_Emissao = nin.Data_Emissao and nf.Armazem = #temp.Armazem_Cod' +
        ')), 0)'
      
        'update #Temp set Falta_Nacionalizar = isnull(Carga_Total, 0) - i' +
        'snull(Nacionalizado, 0) - isnull(Endossado, 0)'
      ''
      'select Status'
      '      ,Ordem '
      '      ,Navio'
      '      ,Porto '
      '      ,Armazem'
      '      ,Data_Chegada'
      '      ,Data_Atracacao'
      '      ,Data_Descarga'
      '      ,Carga_Total = sum(Carga_Total)'
      '      ,Descarregado = sum(Descarregado)'
      '      ,Falta_Descarregar = sum(Falta_Descarregar)'
      '      ,VariacaoLT = sum(VariacaoLT)'
      '      ,VariacaoPerc = sum(VariacaoPerc)'
      '      ,Bloqueado = sum(Bloqueado)'
      '      ,Endossado = sum(Endossado)'
      '      ,Nacionalizado = sum(Nacionalizado)'
      '      ,Falta_Nacionalizar = sum(Falta_Nacionalizar)'
      'from #temp '
      
        'group by Status, Ordem, Navio, Porto, Armazem, Data_Chegada, Dat' +
        'a_Atracacao, Data_Descarga'
      'order by Status, Navio, Porto, Armazem'
      'drop table #temp')
    Left = 264
    Top = 116
  end
  object rControle: TppReport
    AutoStop = False
    DataPipeline = pControle
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Controle de Navios'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 2540
    PrinterSetup.mmMarginRight = 2540
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Sistemas_XE\Faturamento\Codigo_Fonte\Relatorios\Controle_Navi' +
      'os.rtm'
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
    PreviewFormSettings.PageBorder.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
    PreviewFormSettings.PageBorder.Visible = True
    PreviewFormSettings.PageBorder.Weight = 0.748799979686737100
    PreviewFormSettings.PageBorder.Shadow = True
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.PageDisplay = pdContinuous
    PreviewFormSettings.WindowState = wsMaximized
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
    Left = 428
    Top = 65
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pControle'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 22860
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'NAVIO'
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 0
        mmTop = 18362
        mmWidth = 28652
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'PORTO'
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 29068
        mmTop = 18362
        mmWidth = 23820
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'ARMAZ'#201'M'
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 53480
        mmTop = 18362
        mmWidth = 41993
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'ETA'
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 95990
        mmTop = 18362
        mmWidth = 11129
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'ETB'
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 107644
        mmTop = 18362
        mmWidth = 11247
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'ETS'
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 119336
        mmTop = 18362
        mmWidth = 11247
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'CARGA TOTAL(LT)'
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 131235
        mmTop = 18362
        mmWidth = 16446
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'DESCARREGADO'
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 148204
        mmTop = 18362
        mmWidth = 16485
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'FALTA DESCAR.'
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 165087
        mmTop = 18362
        mmWidth = 16484
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'VAR(LT)'
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 182151
        mmTop = 18362
        mmWidth = 16484
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'VAR(%)'
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 199189
        mmTop = 18362
        mmWidth = 9517
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label102'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'BLOQUEADO'
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 209247
        mmTop = 18362
        mmWidth = 16403
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'ENDOSSADO'
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 226132
        mmTop = 18362
        mmWidth = 16403
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'FALTA NAC'
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 243065
        mmTop = 18362
        mmWidth = 16403
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'NACIONAL'
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 260087
        mmTop = 18362
        mmWidth = 16403
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'STATUS'
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 277114
        mmTop = 18362
        mmWidth = 14818
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
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
        mmHeight = 4995
        mmLeft = 115
        mmTop = 3169
        mmWidth = 291027
        BandType = 0
        LayerName = Foreground
      end
      object lTitulo: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTitulo'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Controle de Navios'
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
        mmLeft = 115
        mmTop = 10048
        mmWidth = 291027
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
        mmHeight = 16317
        mmLeft = 1149
        mmTop = 968
        mmWidth = 21796
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Navio'
        DataPipeline = pControle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pControle'
        mmHeight = 3090
        mmLeft = 0
        mmTop = 0
        mmWidth = 28652
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'Porto'
        DataPipeline = pControle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pControle'
        mmHeight = 3090
        mmLeft = 29068
        mmTop = 0
        mmWidth = 23820
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'Armazem'
        DataPipeline = pControle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pControle'
        mmHeight = 3090
        mmLeft = 53480
        mmTop = 0
        mmWidth = 41993
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'Data_Chegada'
        DataPipeline = pControle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pControle'
        mmHeight = 3090
        mmLeft = 95990
        mmTop = 0
        mmWidth = 11129
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'Data_Atracacao'
        DataPipeline = pControle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pControle'
        mmHeight = 3090
        mmLeft = 107644
        mmTop = 0
        mmWidth = 11247
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'Data_Descarga'
        DataPipeline = pControle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pControle'
        mmHeight = 3090
        mmLeft = 119336
        mmTop = 0
        mmWidth = 11247
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'Carga_Total'
        DataPipeline = pControle
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pControle'
        mmHeight = 3090
        mmLeft = 131176
        mmTop = 0
        mmWidth = 16444
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'Descarregado'
        DataPipeline = pControle
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pControle'
        mmHeight = 3090
        mmLeft = 148204
        mmTop = 0
        mmWidth = 16485
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'Falta_Descarregar'
        DataPipeline = pControle
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pControle'
        mmHeight = 3090
        mmLeft = 165014
        mmTop = 0
        mmWidth = 16485
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'VariacaoLT'
        DataPipeline = pControle
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pControle'
        mmHeight = 3090
        mmLeft = 182121
        mmTop = 0
        mmWidth = 16485
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        Border.mmPadding = 0
        DataField = 'VariacaoPerc'
        DataPipeline = pControle
        DisplayFormat = ',##0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pControle'
        mmHeight = 3090
        mmLeft = 199189
        mmTop = 0
        mmWidth = 9517
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText102'
        Border.mmPadding = 0
        DataField = 'Bloqueado'
        DataPipeline = pControle
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pControle'
        mmHeight = 3090
        mmLeft = 209247
        mmTop = 0
        mmWidth = 16403
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'Endossado'
        DataPipeline = pControle
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pControle'
        mmHeight = 3090
        mmLeft = 226132
        mmTop = 0
        mmWidth = 16403
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'Falta_Nacionalizar'
        DataPipeline = pControle
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pControle'
        mmHeight = 3090
        mmLeft = 243066
        mmTop = 89
        mmWidth = 16403
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'Nacionalizado'
        DataPipeline = pControle
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pControle'
        mmHeight = 3090
        mmLeft = 260087
        mmTop = 89
        mmWidth = 16403
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        Border.mmPadding = 0
        DataField = 'Status'
        DataPipeline = pControle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pControle'
        mmHeight = 3175
        mmLeft = 277114
        mmTop = 0
        mmWidth = 14818
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label103'
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
        mmHeight = 3175
        mmLeft = 0
        mmTop = 529
        mmWidth = 47625
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
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
        mmLeft = 114038
        mmTop = 529
        mmWidth = 47096
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable3'
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
        mmLeft = 161398
        mmTop = 529
        mmWidth = 26194
        BandType = 8
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
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
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
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
        mmLeft = 274205
        mmTop = 265
        mmWidth = 15610
        BandType = 8
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 2293
        mmLeft = 0
        mmTop = 0
        mmWidth = 291571
        BandType = 8
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 272351
        mmTop = 265
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ppDBText1'
      BreakType = btCustomField
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      NewFile = False
      object pCabGrpTot: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 265
        mmPrintPosition = 0
        object ppLine1: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line1'
          Border.mmPadding = 0
          Pen.Width = 0
          mmHeight = 189
          mmLeft = 89
          mmTop = 0
          mmWidth = 291913
          BandType = 3
          GroupNo = 0
          LayerName = Foreground
        end
      end
      object pRodGrpTot: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppShape1: TppShape
          DesignLayer = ppDesignLayer1
          UserName = 'Shape1'
          Brush.Color = 15656678
          Pen.Style = psClear
          mmHeight = 3529
          mmLeft = 107686
          mmTop = 0
          mmWidth = 184371
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLabel18: TppLabel
          DesignLayer = ppDesignLayer1
          UserName = 'Label11'
          Border.mmPadding = 0
          Caption = 'TOTAL DO NAVIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 6
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 109273
          mmTop = 529
          mmWidth = 15081
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer1
          UserName = 'Line2'
          Border.mmPadding = 0
          Pen.Width = 0
          mmHeight = 189
          mmLeft = 189
          mmTop = 0
          mmWidth = 291648
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc1: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc1'
          Border.mmPadding = 0
          DataField = 'Carga_Total'
          DataPipeline = pControle
          DisplayFormat = ',##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pControle'
          mmHeight = 2647
          mmLeft = 131176
          mmTop = 528
          mmWidth = 16444
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc2: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc2'
          Border.mmPadding = 0
          DataField = 'Descarregado'
          DataPipeline = pControle
          DisplayFormat = ',##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pControle'
          mmHeight = 2647
          mmLeft = 148204
          mmTop = 437
          mmWidth = 16485
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc3: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc3'
          Border.mmPadding = 0
          DataField = 'Falta_Descarregar'
          DataPipeline = pControle
          DisplayFormat = ',##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pControle'
          mmHeight = 2646
          mmLeft = 165014
          mmTop = 265
          mmWidth = 16485
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc4: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc4'
          Border.mmPadding = 0
          DataField = 'VariacaoLT'
          DataPipeline = pControle
          DisplayFormat = ',##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pControle'
          mmHeight = 2646
          mmLeft = 182121
          mmTop = 265
          mmWidth = 16485
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc5: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc5'
          Border.mmPadding = 0
          DataField = 'VariacaoPerc'
          DataPipeline = pControle
          DisplayFormat = ',##0.00%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pControle'
          mmHeight = 2646
          mmLeft = 199189
          mmTop = 437
          mmWidth = 9517
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc6: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc6'
          Border.mmPadding = 0
          DataField = 'Bloqueado'
          DataPipeline = pControle
          DisplayFormat = ',##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pControle'
          mmHeight = 2646
          mmLeft = 209247
          mmTop = 265
          mmWidth = 16403
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc7: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc7'
          Border.mmPadding = 0
          DataField = 'Endossado'
          DataPipeline = pControle
          DisplayFormat = ',##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pControle'
          mmHeight = 2646
          mmLeft = 226132
          mmTop = 265
          mmWidth = 16403
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc8: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc8'
          Border.mmPadding = 0
          DataField = 'Falta_Nacionalizar'
          DataPipeline = pControle
          DisplayFormat = ',##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pControle'
          mmHeight = 2646
          mmLeft = 243066
          mmTop = 529
          mmWidth = 16403
          BandType = 5
          GroupNo = 0
          LayerName = Foreground
        end
        object ppDBCalc9: TppDBCalc
          DesignLayer = ppDesignLayer1
          UserName = 'DBCalc9'
          Border.mmPadding = 0
          DataField = 'Nacionalizado'
          DataPipeline = pControle
          DisplayFormat = ',##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 6
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pControle'
          mmHeight = 2646
          mmLeft = 260086
          mmTop = 531
          mmWidth = 16403
          BandType = 5
          GroupNo = 0
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
  object pControle: TppDBPipeline
    DataSource = dstControle
    CloseDataSource = True
    UserName = 'pControle'
    Left = 428
    Top = 115
    object pControleppField1: TppField
      FieldAlias = 'Status'
      FieldName = 'Status'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object pControleppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ordem'
      FieldName = 'Ordem'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object pControleppField3: TppField
      FieldAlias = 'Navio'
      FieldName = 'Navio'
      FieldLength = 30
      DisplayWidth = 30
      Position = 2
    end
    object pControleppField4: TppField
      FieldAlias = 'Porto'
      FieldName = 'Porto'
      FieldLength = 30
      DisplayWidth = 30
      Position = 3
    end
    object pControleppField5: TppField
      FieldAlias = 'Armazem'
      FieldName = 'Armazem'
      FieldLength = 60
      DisplayWidth = 60
      Position = 4
    end
    object pControleppField6: TppField
      FieldAlias = 'Data_Chegada'
      FieldName = 'Data_Chegada'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 5
    end
    object pControleppField7: TppField
      FieldAlias = 'Data_Atracacao'
      FieldName = 'Data_Atracacao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 6
    end
    object pControleppField8: TppField
      FieldAlias = 'Data_Descarga'
      FieldName = 'Data_Descarga'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 7
    end
    object pControleppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Carga_Total'
      FieldName = 'Carga_Total'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object pControleppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Descarregado'
      FieldName = 'Descarregado'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object pControleppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Falta_Descarregar'
      FieldName = 'Falta_Descarregar'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object pControleppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'VariacaoLT'
      FieldName = 'VariacaoLT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object pControleppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'VariacaoPerc'
      FieldName = 'VariacaoPerc'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object pControleppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'Bloqueado'
      FieldName = 'Bloqueado'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object pControleppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'Endossado'
      FieldName = 'Endossado'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object pControleppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nacionalizado'
      FieldName = 'Nacionalizado'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object pControleppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'Falta_Nacionalizar'
      FieldName = 'Falta_Nacionalizar'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
  end
  object dstControle: TDataSource
    DataSet = tControle
    Left = 240
    Top = 166
  end
  object pEmpresas: TppDBPipeline
    DataSource = dstEmpresas
    CloseDataSource = True
    UserName = 'pEmpresas'
    Left = 428
    Top = 165
  end
  object tEmpresas: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'select Ordem, Navio, Status from ControleNavios')
    Left = 330
    Top = 116
  end
  object dstEmpresas: TDataSource
    DataSet = tEmpresas
    Left = 331
    Top = 167
  end
end
