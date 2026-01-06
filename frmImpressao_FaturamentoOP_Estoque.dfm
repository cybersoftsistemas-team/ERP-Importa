object Impressao_FaturamentoOP_Estoque: TImpressao_FaturamentoOP_Estoque
  Left = 474
  Top = 252
  BorderStyle = bsDialog
  Caption = 'Impressao_FaturamentoOP_Estoque'
  ClientHeight = 345
  ClientWidth = 807
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bPesquisaCEP: TSpeedButton
    Left = 771
    Top = 101
    Width = 28
    Height = 25
    Hint = '  Atualiza os dados do endere'#231'o'
    Glyph.Data = {
      26040000424D2604000000000000360000002800000012000000120000000100
      180000000000F003000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFFB9BCBD898D8F5651545C5A5C5D5E605E60635D595D303537474C4EDBDE
      DEEFF0F0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFF9FDFC494548967F81D0B7
      B8FFF3F2FFFFFFFFFFFFFFFFFFFFFFFFD9BEBFB08A8C2316175A61639D9EA1FF
      FFFFFFFFFFFFFFFF0000FFFFFF5D5155D9ADAEF3CED0FFE4E5C3B5B6CBC5C5D2
      D0D1D4D6D7C7C0C2F5D7D8E8B8B9E3A8A9584141545B5D9EA0A0FFFFFFFFFFFF
      0000584E52DBA8A9E1B6B879686B484146939697898C8D8384877B7C80767A7C
      4B4447544245D59EA0ECB0B0543F3F505556D9D9DAFFFFFF0000544045C49496
      565A5EE7EDEDCBD2D3676F76697175636A6D5B64674E5659CCD1D2B7BEBD303A
      3EA475778B64644E53556C6F70FFFFFF00002A1D22919093FFFFFF5F55608D66
      71DBA3ABD59EA4D1989ED29A9CDEA0A34F363A443336A5AEAF696E703F282855
      58595F6162C3C3C4000054575BFFFFFF776A73EDA9B4FFB0C7FFABC1FFA9BEFF
      A4AEFF9FA4FF9DA0FFA6A9FFAAAC5C3E41A4AAAB484A495152535F6061D4D4D4
      0000717376B2BBBFCB7E89FFBBCEF5CDDEFFD2E1FFAFC6FFA9BDFFA5ACFFA5A8
      FAA5A9D39C9C6F32293D464B6868674646486E6E6FFFFFFF00005C5E62FEFFFF
      775366FFB3CAFFEAF3FFFFFFDEB5CDC895AFBB858BB07D7D9C67627A3C323B15
      16959BA15E5B5E464748FFFFFFFFFFFF0000C7C7C9A1A2A4FFFFFF735884A084
      ACFFCDE3E49AB6CE7E99B56469A357507B413E3313179A9EA2808182A7A7A7FF
      FFFFFFFFFFFFFFFF0000FFFFFFBBBCBE919197E5E9ECFFFFFF6D699063618A59
      54706D786740444C6B6974B1B8BD6E797C1A2226939393FFFFFFFFFFFFFFFFFF
      0000FFFFFFFFFFFFD5D6D97F8089535466D0D2D4C8CBCBBCBEBFB2B4B8BABDBD
      8D99A14E606D949A989DA09D171F1A8A8B8AFFFFFFFFFFFF0000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF94949B97989E98989B96999C9D9BA17D858EE5E7E8E9E8
      E98F8D8E0D1711141B1D878687FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7078760000004445433D474109
      12160D0C0C8989880000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF959B97535C5C5D6467313232040404151515
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF8687884E4F4F5352532828290000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF7B7B7B4444432F2F2F1919190000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6
      A6A68F8F8FEAEAEA0000}
    OnClick = bPesquisaCEPClick
  end
  object XPPanel1: TXPPanel
    Left = 0
    Top = 0
    Width = 807
    Height = 46
    Align = alTop
    Direction = xdStretchImage
    Color = clHighlight
    ColorEnd = clWhite
    DesignSize = (
      807
      46)
    object RxLabel1: TRxLabel
      Left = 8
      Top = 3
      Width = 165
      Height = 21
      Caption = 'IMPRESS'#195'O - ESTOQUE'
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
      Width = 191
      Height = 18
      Caption = 'Posi'#231#227'o de estoque detalhado.'
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
    object iJatoTinta: TImage
      Left = 769
      Top = 6
      Width = 34
      Height = 33
      Anchors = [akTop, akRight]
      Picture.Data = {
        055449636F6E0000010001002020100000000000E80200001600000028000000
        2000000040000000010004000000000080020000000000000000000000000000
        0000000000000000000080000080000000808000800000008000800080800000
        C0C0C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
        FFFFFF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000008880000800000000000000000000008880880080
        8000000000000000008800080008880F0800000000000000080880700700807F
        F08000000000000080F00870077007F7FF0800000000000808F7087007707FFF
        7FF080000000008088F70870077077FFFFFF08000000080888F708FF0F70FF7F
        F77FF0000000808888F70FF0FF07FFFFFF77FF000008088888070F0FF07F8FF7
        7FF7FF000000888888F000FF07F8F8FF77FFF0000000888887F800F087FF8F8F
        F7FF0000000088888F778000087FF8F8FFF08000000088887F7878000087FF8F
        8F08080000008887FF878780000877F8F00808800000887FF7F8787800008877
        00F80800000087FF7F7F8787800008800F708000000007F7F7F7F87878000000
        F70800000000087F7F7F7F878780000F7080000000000837F7F7F7F8787800F7
        08000000000008837F7F7F7F87878080000000000000007837F7F7F7F8787088
        0000000000000007837F7F7F7F87078800000000000000007837F7F7F7F80770
        000000000000000007837F7F7F7F80700000000000000000007837F7F7F7F800
        00000000000000000007837F7F7F7000000000000000000000007837F7F70000
        0000000000000000000008087F70000000000000000000000000000008000000
        00000000FFFFFFFFFFFFFFFFFFFF1EFFFFFC0C7FFFC8003FFF80001FFF00000F
        FE000007FC000003F8000003F0000001E0000001E0000003E0000007E0000007
        E0000003E0000001E0000003E0000007E000000FF000001FF000003FF000007F
        F800007FFC00007FFE0000FFFF0000FFFF8001FFFFC003FFFFE007FFFFF00FFF
        FFFE1FFF}
    end
  end
  object StaticText4: TStaticText
    Left = 10
    Top = 80
    Width = 84
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Processo N'#186
    Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
    Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
  end
  object cProcesso: TRxDBLookupCombo
    Left = 96
    Top = 80
    Width = 153
    Height = 21
    DropDownCount = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    LookupField = 'Processo'
    LookupDisplay = 'Processo'
    LookupDisplayIndex = 1
    LookupSource = Dados.dsProcessosDOC
    ParentFont = False
    TabOrder = 2
    OnChange = cProcessoChange
  end
  object Panel1: TPanel
    Left = 0
    Top = 315
    Width = 807
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 13
    DesignSize = (
      807
      30)
    object bSair: TButton
      Left = 740
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
      Left = 674
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
    object bLimpar: TBitBtn
      Left = 599
      Top = 1
      Width = 75
      Height = 28
      Cancel = True
      Caption = '&Limpar'
      TabOrder = 2
      OnClick = bLimparClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object cData: TDateEdit
    Left = 96
    Top = 57
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
  object StaticText5: TStaticText
    Left = 10
    Top = 57
    Width = 84
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Data Final'
    Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
    Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
  end
  object StaticText6: TStaticText
    Left = 10
    Top = 103
    Width = 84
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Produto'
    Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
    Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
  end
  object cProduto: TRxDBLookupCombo
    Left = 187
    Top = 103
    Width = 583
    Height = 21
    DropDownCount = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo;Descricao_Reduzida'
    LookupDisplayIndex = 1
    LookupSource = Dados.dsProdutos
    ParentFont = False
    TabOrder = 4
    OnChange = cProdutoChange
  end
  object cCodigoProduto: TCurrencyEdit
    Left = 96
    Top = 103
    Width = 89
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
    OnChange = cCodigoProdutoChange
  end
  object cANP: TCheckBox
    Left = 10
    Top = 227
    Width = 217
    Height = 17
    Caption = 'Somente Produtos com cadastro na ANP'
    TabOrder = 8
  end
  object cExcel: TCheckBox
    Left = 10
    Top = 284
    Width = 157
    Height = 17
    Caption = 'Enviar dados para o EXCEL.'
    TabOrder = 11
  end
  object cZebrado: TCheckBox
    Left = 10
    Top = 265
    Width = 100
    Height = 17
    Caption = 'Imprimir zebrado.'
    Checked = True
    State = cbChecked
    TabOrder = 10
  end
  object cReciclavel: TCheckBox
    Left = 10
    Top = 246
    Width = 167
    Height = 17
    Caption = 'Somente Produtos Recicl'#225'veis'
    TabOrder = 9
  end
  object StaticText1: TStaticText
    Left = 10
    Top = 126
    Width = 84
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'CFOP'
    Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
    Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
  end
  object cCFOP: TRxDBLookupCombo
    Left = 96
    Top = 126
    Width = 520
    Height = 21
    DropDownCount = 15
    DisplayAllFields = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo; Descricao_NF'
    LookupDisplayIndex = 1
    LookupSource = dsNatureza
    ParentFont = False
    TabOrder = 5
  end
  object StaticText2: TStaticText
    Left = 10
    Top = 149
    Width = 84
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Tipo de Nota'
    Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
    Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
  end
  object cTipoNota: TRxDBLookupCombo
    Left = 96
    Top = 149
    Width = 520
    Height = 21
    DropDownCount = 15
    DisplayAllFields = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo; Descricao'
    LookupDisplayIndex = 1
    LookupSource = Dados.dsTipoNota
    ParentFont = False
    TabOrder = 6
  end
  object StaticText3: TStaticText
    Left = 10
    Top = 172
    Width = 84
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Destinatario'
    Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
    Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
  end
  object cDestinatario: TRxDBLookupCombo
    Left = 96
    Top = 172
    Width = 520
    Height = 21
    DropDownCount = 15
    DisplayAllFields = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    LookupField = 'CNPJ_CPF'
    LookupDisplay = 'CNPJ_CPF; Nome'
    LookupDisplayIndex = 1
    LookupSource = dstDestinatario
    ParentFont = False
    TabOrder = 7
  end
  object cPedidos: TCheckBox
    Left = 10
    Top = 208
    Width = 195
    Height = 17
    Caption = '&Computar os Pedidos de Nota Fiscal.'
    TabOrder = 19
  end
  object rEstoque: TppReport
    AutoStop = False
    DataPipeline = pItens
    NoDataBehaviors = [ndBlankReport]
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Posi'#231#227'o de Estoque'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
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
      'C:\Sistemas\Faturamento\Codigo Fonte\Relatorios\Processos_Estoqu' +
      'e.rtm'
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PDFSettings.EmbedFontOptions = []
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 608
    Top = 8
    Version = '12.03'
    mmColumnWidth = 0
    DataPipelineName = 'pItens'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 21696
      mmPrintPosition = 0
      object ppShape7: TppShape
        UserName = 'Shape7'
        Brush.Color = 8404992
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 2910
        mmLeft = 44450
        mmTop = 18256
        mmWidth = 19315
        BandType = 0
      end
      object lTitulo: TppLabel
        UserName = 'lTitulo'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Posi'#231#227'o de Estoque'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 28311
        mmTop = 7144
        mmWidth = 255853
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = 8404992
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 2910
        mmLeft = 0
        mmTop = 18256
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'NOTA'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 265
        mmTop = 18522
        mmWidth = 11113
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = 8404992
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 2910
        mmLeft = 11377
        mmTop = 18256
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'EMISS'#195'O'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 11906
        mmTop = 18522
        mmWidth = 11377
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Color = 8404992
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 2910
        mmLeft = 35454
        mmTop = 18256
        mmWidth = 8730
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CFOP'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 35720
        mmTop = 18521
        mmWidth = 8730
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'PROCESSO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 44714
        mmTop = 18521
        mmWidth = 19315
        BandType = 0
      end
      object ppDBImage1: TppDBImage
        UserName = 'DBImage1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Logomarca'
        DataPipeline = pEmpresas
        GraphicType = 'Bitmap'
        ParentDataPipeline = False
        DataPipelineName = 'pEmpresas'
        mmHeight = 16933
        mmLeft = 265
        mmTop = 265
        mmWidth = 26988
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        Brush.Color = 8404992
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 2910
        mmLeft = 24077
        mmTop = 18256
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'NF.COMPL'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 24341
        mmTop = 18521
        mmWidth = 11113
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        Brush.Color = 8404992
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 2910
        mmLeft = 142346
        mmTop = 18256
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'ENTRADAS'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 142347
        mmTop = 18521
        mmWidth = 15081
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Brush.Color = 8404992
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 2910
        mmLeft = 157692
        mmTop = 18256
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'ENTRADA DEV.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 157692
        mmTop = 18521
        mmWidth = 13229
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        Brush.Color = 8404992
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 2910
        mmLeft = 217223
        mmTop = 18256
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'VENDAS'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 217223
        mmTop = 18522
        mmWidth = 15081
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        Brush.Color = 8404992
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 2910
        mmLeft = 171186
        mmTop = 18256
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'SA'#205'DA.TERC.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 171186
        mmTop = 18521
        mmWidth = 15081
        BandType = 0
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        Brush.Color = 8404992
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 2910
        mmLeft = 266436
        mmTop = 18256
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'SALDO EMP.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 266436
        mmTop = 18522
        mmWidth = 17727
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape11'
        Brush.Color = 8404992
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 2910
        mmLeft = 64029
        mmTop = 18256
        mmWidth = 47361
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'DESTINAT'#193'RIO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 64295
        mmTop = 18521
        mmWidth = 46831
        BandType = 0
      end
      object ppShape12: TppShape
        UserName = 'Shape12'
        Brush.Color = 8404992
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 2910
        mmLeft = 125677
        mmTop = 18256
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 125677
        mmTop = 18521
        mmWidth = 16403
        BandType = 0
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        Brush.Color = 8404992
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 2910
        mmLeft = 111654
        mmTop = 18256
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UNIT'#193'RIO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 111654
        mmTop = 18521
        mmWidth = 13759
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Razao_Social'
        DataPipeline = pEmpresas
        Ellipsis = False
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
        mmLeft = 28310
        mmTop = 265
        mmWidth = 255853
        BandType = 0
      end
      object ppShape14: TppShape
        UserName = 'Shape14'
        Brush.Color = 8404992
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 2910
        mmLeft = 186532
        mmTop = 18256
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'RET.TERC.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 186532
        mmTop = 18522
        mmWidth = 15081
        BandType = 0
      end
      object ppShape15: TppShape
        UserName = 'Shape101'
        Brush.Color = 8404992
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 2910
        mmLeft = 248444
        mmTop = 18256
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'SALDO TERC.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 248444
        mmTop = 18522
        mmWidth = 17727
        BandType = 0
      end
      object ppShape16: TppShape
        UserName = 'Shape16'
        Brush.Color = 8404992
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 2910
        mmLeft = 201877
        mmTop = 18256
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'SA'#205'DAS DEV.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 201877
        mmTop = 18522
        mmWidth = 15081
        BandType = 0
      end
      object ppShape17: TppShape
        UserName = 'Shape17'
        Brush.Color = 8404992
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 2910
        mmLeft = 232569
        mmTop = 18256
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OUTRAS SAI'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2381
        mmLeft = 232569
        mmTop = 18522
        mmWidth = 15081
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      mmBottomOffset = 0
      mmHeight = 2910
      mmPrintPosition = 0
      object fFaixa: TppShape
        UserName = 'fFaixa'
        Brush.Color = 16771818
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Pen.Style = psClear
        Shape = stRoundRect
        Visible = False
        mmHeight = 2540
        mmLeft = 5292
        mmTop = 0
        mmWidth = 276226
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Data'
        DataPipeline = pItens
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 2159
        mmLeft = 11641
        mmTop = 0
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CFOP'
        DataPipeline = pItens
        DisplayFormat = '#.###;0'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 2159
        mmLeft = 35720
        mmTop = 0
        mmWidth = 8730
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Processo'
        DataPipeline = pItens
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 2159
        mmLeft = 44714
        mmTop = 0
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText201'
        HyperlinkColor = clBlue
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Entrada_Compra'
        DataPipeline = pItens
        DisplayFormat = ',##0.000'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 2646
        mmLeft = 142347
        mmTop = 0
        mmWidth = 15080
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Nota_Compl'
        DataPipeline = pItens
        DisplayFormat = '000000000'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 2381
        mmLeft = 24077
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Entrada_Devol'
        DataPipeline = pItens
        DisplayFormat = ',##0.000'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 2646
        mmLeft = 157691
        mmTop = 0
        mmWidth = 13228
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Entrada_Terceiros'
        DataPipeline = pItens
        DisplayFormat = ',##0.000'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 2646
        mmLeft = 186533
        mmTop = 0
        mmWidth = 15080
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Saida_Venda'
        DataPipeline = pItens
        DisplayFormat = ',##0.000'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 2667
        mmLeft = 217224
        mmTop = 0
        mmWidth = 15080
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText202'
        HyperlinkColor = clBlue
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Destinatario_Nome'
        DataPipeline = pItens
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 2159
        mmLeft = 64295
        mmTop = 0
        mmWidth = 47361
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Total_Item'
        DataPipeline = pItens
        DisplayFormat = ',##0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 2117
        mmLeft = 125677
        mmTop = 0
        mmWidth = 16403
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Valor_Unitario'
        DataPipeline = pItens
        DisplayFormat = ',##0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 2117
        mmLeft = 111654
        mmTop = 0
        mmWidth = 13759
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Saida_Terceiros'
        DataPipeline = pItens
        DisplayFormat = ',##0.000'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 2646
        mmLeft = 171186
        mmTop = 0
        mmWidth = 15080
        BandType = 4
      end
      object lSaldoTerceiros: TppVariable
        UserName = 'lSaldoTerceiros'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = ',##0.000;-,##0.000'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = [fsBold]
        OnCalc = lSaldoTerceirosCalc
        ResetType = veGroupEnd
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2646
        mmLeft = 248443
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
      object lSaldoEmpresa: TppVariable
        UserName = 'lSaldoTerceiros1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtCurrency
        DisplayFormat = ',##0.000;-,##0.000'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = [fsBold]
        OnCalc = lSaldoEmpresaCalc
        ResetType = veGroupEnd
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2159
        mmLeft = 266436
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 2910
        mmLeft = 247915
        mmTop = 0
        mmWidth = 2381
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Style = psDot
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 2910
        mmLeft = 142346
        mmTop = 0
        mmWidth = 2381
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Saida_Devol'
        DataPipeline = pItens
        DisplayFormat = ',##0.000'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 2646
        mmLeft = 201877
        mmTop = 0
        mmWidth = 15080
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Nota'
        DataPipeline = pItens
        DisplayFormat = '000000000'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 2159
        mmLeft = 0
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        BlankWhenZero = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'Saida_Outras'
        DataPipeline = pItens
        DisplayFormat = ',##0.000'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pItens'
        mmHeight = 2646
        mmLeft = 232568
        mmTop = 0
        mmWidth = 15080
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLabel13: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'ERP Importa (Cybersoft Sistemas Ltda.)'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2879
        mmLeft = 0
        mmTop = 265
        mmWidth = 43688
        BandType = 8
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtDocumentName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 129646
        mmTop = 529
        mmWidth = 27781
        BandType = 8
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 157692
        mmTop = 529
        mmWidth = 23813
        BandType = 8
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 44715
        mmTop = 265
        mmWidth = 6085
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 266701
        mmTop = 265
        mmWidth = 15610
        BandType = 8
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 0
        mmWidth = 284163
        BandType = 8
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 266436
        mmTop = 265
        mmWidth = 1852
        BandType = 8
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Codigo_Mercadoria'
      DataPipeline = pItens
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'pItens'
      NewFile = False
      object gCab_Produto: TppGroupHeaderBand
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 5027
        mmPrintPosition = 0
        object ppLabel10: TppLabel
          UserName = 'Label12'
          HyperlinkColor = clBlue
          ReprintOnOverFlow = True
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'PRODUTO:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 2646
          mmLeft = 265
          mmTop = 1058
          mmWidth = 12171
          BandType = 3
          GroupNo = 1
        end
        object ppDBMemo1: TppDBMemo
          UserName = 'DBMemo1'
          ForceJustifyLastLine = True
          KeepTogether = True
          SaveOrder = 0
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          CharWrap = True
          DataField = 'Descricao_Mercadoria'
          DataPipeline = pItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = []
          ReprintOnOverFlow = True
          Transparent = True
          DataPipelineName = 'pItens'
          mmHeight = 3175
          mmLeft = 50006
          mmTop = 1058
          mmWidth = 234157
          BandType = 3
          GroupNo = 1
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          mmLeading = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Pen.Width = 0
          mmHeight = 1058
          mmLeft = 0
          mmTop = 0
          mmWidth = 284163
          BandType = 3
          GroupNo = 1
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Anchors = []
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psDot
          Border.Visible = False
          Pen.Width = 0
          Position = lpBottom
          StretchWithParent = True
          mmHeight = 529
          mmLeft = 0
          mmTop = 4233
          mmWidth = 284163
          BandType = 3
          GroupNo = 1
        end
        object ppDBText19: TppDBText
          UserName = 'DBText102'
          HyperlinkColor = clBlue
          ReprintOnOverFlow = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'Codigo_Fabricante'
          DataPipeline = pItens
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = [fsBold]
          ReprintOnSubsequent = True
          Transparent = True
          DataPipelineName = 'pItens'
          mmHeight = 2910
          mmLeft = 29369
          mmTop = 1058
          mmWidth = 20108
          BandType = 3
          GroupNo = 1
        end
        object ppDBText10: TppDBText
          UserName = 'DBText8'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Codigo_Mercadoria'
          DataPipeline = pItens
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'pItens'
          mmHeight = 2646
          mmLeft = 12700
          mmTop = 1058
          mmWidth = 16140
          BandType = 3
          GroupNo = 0
        end
      end
      object gRodaPeProduto: TppGroupFooterBand
        AfterPrint = gRodaPeProdutoAfterPrint
        BeforePrint = gRodaPeProdutoBeforePrint
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppLabel17: TppLabel
          UserName = 'Label16'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'TOTAIS:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 5
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2159
          mmLeft = 114300
          mmTop = 529
          mmWidth = 7408
          BandType = 5
          GroupNo = 0
        end
        object ppLine7: TppLine
          UserName = 'Line7'
          Anchors = []
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpBottom
          StretchWithParent = True
          mmHeight = 265
          mmLeft = 0
          mmTop = 265
          mmWidth = 284163
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkColor = clBlue
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Total_Item'
          DataPipeline = pItens
          DisplayFormat = ',##0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 5
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pItens'
          mmHeight = 2159
          mmLeft = 125677
          mmTop = 529
          mmWidth = 16403
          BandType = 5
          GroupNo = 0
        end
        object lTotalEntradas: TppDBCalc
          UserName = 'lTotalEntradas'
          HyperlinkColor = clBlue
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Entrada_Compra'
          DataPipeline = pItens
          DisplayFormat = ',##0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 5
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pItens'
          mmHeight = 2159
          mmLeft = 142347
          mmTop = 529
          mmWidth = 15080
          BandType = 5
          GroupNo = 0
        end
        object lTotalEntradasDev: TppDBCalc
          UserName = 'lTotalEntradasDev'
          HyperlinkColor = clBlue
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Entrada_Devol'
          DataPipeline = pItens
          DisplayFormat = ',##0.000'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 5
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pItens'
          mmHeight = 2117
          mmLeft = 157691
          mmTop = 529
          mmWidth = 13228
          BandType = 5
          GroupNo = 0
        end
        object lTotalSaidaTerceiros: TppDBCalc
          UserName = 'lTotalSaidaTerceiros'
          HyperlinkColor = clBlue
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Saida_Terceiros'
          DataPipeline = pItens
          DisplayFormat = ',##0.000'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 5
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pItens'
          mmHeight = 2159
          mmLeft = 171186
          mmTop = 529
          mmWidth = 15080
          BandType = 5
          GroupNo = 0
        end
        object lTotalRetornoTerceiros: TppDBCalc
          UserName = 'lTotalRetornoTerceiros'
          HyperlinkColor = clBlue
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Entrada_Terceiros'
          DataPipeline = pItens
          DisplayFormat = ',##0.000'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 5
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pItens'
          mmHeight = 2159
          mmLeft = 186533
          mmTop = 529
          mmWidth = 15080
          BandType = 5
          GroupNo = 0
        end
        object lTotalVendas: TppDBCalc
          UserName = 'lTotalVendas'
          HyperlinkColor = clBlue
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Saida_Venda'
          DataPipeline = pItens
          DisplayFormat = ',##0.000'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 5
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pItens'
          mmHeight = 2159
          mmLeft = 217224
          mmTop = 529
          mmWidth = 15080
          BandType = 5
          GroupNo = 0
        end
        object lTotalSaldoTerceiro: TppVariable
          UserName = 'lSaldoTerceiros2'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          BlankWhenZero = False
          CalcOrder = 0
          DataType = dtCurrency
          DisplayFormat = ',##0.000;-,##0.000'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 5
          Font.Style = [fsBold]
          OnCalc = lSaldoTerceirosCalc
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2159
          mmLeft = 248443
          mmTop = 529
          mmWidth = 17727
          BandType = 5
          GroupNo = 0
        end
        object lTotalSaldoEmpresa: TppVariable
          UserName = 'lTotalSaldoEmpresa'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          BlankWhenZero = False
          CalcOrder = 1
          DataType = dtCurrency
          DisplayFormat = ',##0.000;-,##0.000'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 5
          Font.Style = [fsBold]
          OnCalc = lSaldoEmpresaCalc
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2159
          mmLeft = 266436
          mmTop = 529
          mmWidth = 17727
          BandType = 5
          GroupNo = 0
        end
        object ppLine8: TppLine
          UserName = 'Line8'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpLeft
          mmHeight = 3440
          mmLeft = 247915
          mmTop = 0
          mmWidth = 2381
          BandType = 5
          GroupNo = 0
        end
        object ppLine10: TppLine
          UserName = 'Line10'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Pen.Style = psDot
          Pen.Width = 0
          Position = lpLeft
          mmHeight = 2910
          mmLeft = 142346
          mmTop = 529
          mmWidth = 2381
          BandType = 5
          GroupNo = 0
        end
        object ppLabel16: TppLabel
          UserName = 'Label17'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'ESTOQUE TOTAL:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 5
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2159
          mmLeft = 106299
          mmTop = 3440
          mmWidth = 15409
          BandType = 5
          GroupNo = 0
        end
        object lTotalGeral: TppVariable
          UserName = 'lTotalSaldoEmpresa1'
          HyperlinkColor = clBlue
          AutoSize = False
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          BlankWhenZero = False
          CalcOrder = 2
          DataType = dtCurrency
          DisplayFormat = ',##0.000;-,##0.000'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 5
          Font.Style = [fsBold]
          ResetType = veGroupEnd
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2159
          mmLeft = 266436
          mmTop = 3440
          mmWidth = 17727
          BandType = 5
          GroupNo = 0
        end
        object lTotalSaidasDev: TppDBCalc
          UserName = 'lTotalRetornoTerceiros1'
          HyperlinkColor = clBlue
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Saida_Devol'
          DataPipeline = pItens
          DisplayFormat = ',##0.000'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 5
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pItens'
          mmHeight = 2117
          mmLeft = 201877
          mmTop = 529
          mmWidth = 15080
          BandType = 5
          GroupNo = 0
        end
        object lTotalOutras: TppDBCalc
          UserName = 'lTotalVendas1'
          HyperlinkColor = clBlue
          BlankWhenZero = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'Saida_Outras'
          DataPipeline = pItens
          DisplayFormat = ',##0.000'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Tahoma'
          Font.Size = 5
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'pItens'
          mmHeight = 2159
          mmLeft = 232568
          mmTop = 529
          mmWidth = 15080
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object pItens: TppDBPipeline
    DataSource = dstItens
    CloseDataSource = True
    UserName = 'pItens'
    Left = 576
    Top = 8
    object pItensppField1: TppField
      FieldAlias = 'Tipo'
      FieldName = 'Tipo'
      FieldLength = 1
      DisplayWidth = 1
      Position = 0
    end
    object pItensppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Sai_Entra'
      FieldName = 'Sai_Entra'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object pItensppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo_Mercadoria'
      FieldName = 'Codigo_Mercadoria'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object pItensppField4: TppField
      FieldAlias = 'Codigo_Fabricante'
      FieldName = 'Codigo_Fabricante'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object pItensppField5: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 4
    end
    object pItensppField6: TppField
      FieldAlias = 'Descricao_Mercadoria'
      FieldName = 'Descricao_Mercadoria'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 5
      Searchable = False
      Sortable = False
    end
    object pItensppField7: TppField
      FieldAlias = 'Data'
      FieldName = 'Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 6
    end
    object pItensppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota'
      FieldName = 'Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object pItensppField9: TppField
      FieldAlias = 'CFOP'
      FieldName = 'CFOP'
      FieldLength = 4
      DisplayWidth = 4
      Position = 8
    end
    object pItensppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Compl'
      FieldName = 'Nota_Compl'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object pItensppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Entrada_Compra'
      FieldName = 'Entrada_Compra'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object pItensppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Entrada_Terceiros'
      FieldName = 'Entrada_Terceiros'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object pItensppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'Entrada_Devol'
      FieldName = 'Entrada_Devol'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object pItensppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'Saida_Devol'
      FieldName = 'Saida_Devol'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object pItensppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'Saida_Venda'
      FieldName = 'Saida_Venda'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object pItensppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'Saida_Terceiros'
      FieldName = 'Saida_Terceiros'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
    object pItensppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'Saida_Outras'
      FieldName = 'Saida_Outras'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object pItensppField18: TppField
      FieldAlias = 'Total_Item'
      FieldName = 'Total_Item'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 17
    end
    object pItensppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_Unitario'
      FieldName = 'Valor_Unitario'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object pItensppField20: TppField
      FieldAlias = 'Destinatario_Nome'
      FieldName = 'Destinatario_Nome'
      FieldLength = 60
      DisplayWidth = 60
      Position = 19
    end
  end
  object tItens: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      '-- NOTA FISCAIS PROPRIAS'
      'SELECT Tipo = '#39'P'#39','
      '       Sai_Entra = NI.Saida_Entrada,'
      '       NI.Codigo_Mercadoria,'
      '       NI.Codigo_Fabricante,'
      '       NI.Processo,'
      '       NI.Descricao_Mercadoria,'
      '       NI.Data,'
      '       NI.Nota,'
      '       CFOP = NF.Natureza_Codigo,'
        '       Nota_Compl        = (SELECT Numero FROM NotasFiscais NF W' +
        'HERE(NF.Nota_referencia = NI.Nota) AND (NF.Data_Referencia = NI.' +
        'Data) AND (Complementar = 1)),'
        '       Entrada_Compra    = CASE WHEN (NI.Saida_Entrada = 0) THEN' +
        ' NI.Quantidade ELSE 0 END,'
        '       Entrada_Terceiros = CASE WHEN (NI.Saida_Entrada = 0) AND ' +
        '((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NF.T' +
        'ipo_Nota)) = 4) THEN NI.Quantidade ELSE 0 END,'
        '       Entrada_Devol     = CASE WHEN (NI.Saida_Entrada = 0) AND ' +
        '(NF.Devolucao = 1) THEN NI.Quantidade ELSE 0 END,'
        '       Saida_Devol       = CASE WHEN (NI.Saida_Entrada = 1) AND ' +
        '((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NF.T' +
        'ipo_Nota)) = 2) THEN NI.Quantidade ELSE 0 END,'
        '       Saida_Venda       = CASE WHEN (NI.Saida_Entrada = 1) AND ' +
        '((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NF.T' +
        'ipo_Nota)) = 0) THEN NI.Quantidade ELSE 0 END,'
        '       Saida_Terceiros   = CASE WHEN (NI.Saida_Entrada = 1) AND ' +
        '((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NF.T' +
        'ipo_Nota)) = 4) THEN NI.Quantidade ELSE 0 END,'
        '       Saida_Outras      = CASE WHEN (NI.Saida_Entrada = 1) AND ' +
        '((SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = NF.T' +
        'ipo_Nota)) = 9) THEN NI.Quantidade ELSE 0 END,'
      '       Total_Item        = Valor_Total,'
      '       Valor_Unitario    = Valor_Unitario,'
      '       Destinatario_Nome'
      'FROM   NotasItens NI, NotasFiscais NF'
        'WHERE  (Movimenta_Estoque = 1) AND (NF.Numero = NI.Nota) AND (NF' +
        '.Data_Emissao = NI.Data)'
        '       AND (SELECT Complementar FROM NotasFiscais NF WHERE(NF.Nu' +
        'mero = NI.Nota) AND (NF.Data_Emissao = NI.Data)) <> 1'
      '       AND YEAR(Data) = 2012 AND MONTH(Data) = 6'
      ''
      '-- NOTA FISCAIS DE TERCEIROS'
      'UNION ALL'
      'SELECT Tipo = '#39'T'#39','
      '       Sai_Entra = 0,'
      '       NI.Codigo_Mercadoria,'
      '       null,'
      '       NI.Processo,'
      '       NI.Descricao_Mercadoria,'
      '       NI.Data_Entrada,'
      '       NI.Nota,'
      '       CFOP = NI.Natureza_Codigo,'
      '       Nota_Compl        = null,'
        '       Entrada_Compra    = CASE WHEN ((SELECT Finalidade_Mercado' +
        'ria FROM ReferenciasFiscais WHERE(Codigo = NT.Referencia_Fiscal)' +
        ') IN(0, 3, 9)) THEN NI.Quantidade ELSE 0 END,'
        '       Entrada_Terceiros = CASE WHEN ((SELECT Finalidade_Mercado' +
        'ria FROM ReferenciasFiscais WHERE(Codigo = NT.Referencia_Fiscal)' +
        ') = 4) THEN NI.Quantidade ELSE 0 END,'
        '       Entrada_Devol     = CASE WHEN ((SELECT Finalidade_Mercado' +
        'ria FROM ReferenciasFiscais WHERE(Codigo = NT.Referencia_Fiscal)' +
        ') = 2) THEN NI.Quantidade ELSE 0 END,'
      '       Saida_Devol       = 0,'
      '       Saida_Venda       = 0,'
      '       Saida_Terceiros   = 0,'
      '       Saida_Outras      = 0,'
      '       Total_Item        = Valor_Liquido,'
      '       Valor_Unitario    = Valor_Unitario,'
        '       Destinatario_Nome = (SELECT Nome FROM Fornecedores WHERE(' +
        'Codigo = NI.Fornecedor))'
      'FROM   NotasTerceirosItens NI, NotasTerceiros NT'
      'WHERE  (Movimenta_Estoque = 1) AND (NT.Nota = NI.Nota)'
        '       AND YEAR(NI.Data_Entrada) = 2012 AND MONTH(NI.Data_Entrad' +
        'a) = 6'
      'ORDER BY Codigo_Mercadoria, Data, Nota')
    FetchRows = 1
    Active = True
    Left = 376
    Top = 8
  end
  object dstItens: TDataSource
    DataSet = tItens
    Left = 408
    Top = 8
  end
  object pEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    CloseDataSource = True
    UserName = 'pEmpresas'
    Left = 544
    Top = 8
    object pEmpresasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 3
      Position = 0
    end
    object pEmpresasppField2: TppField
      FieldAlias = 'Razao_Social'
      FieldName = 'Razao_Social'
      FieldLength = 50
      DisplayWidth = 40
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
      FieldLength = 30
      DisplayWidth = 30
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
      FieldAlias = 'Logomarca'
      FieldName = 'Logomarca'
      FieldLength = 0
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 28
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField30: TppField
      FieldAlias = 'Diretor'
      FieldName = 'Diretor'
      FieldLength = 50
      DisplayWidth = 50
      Position = 29
    end
    object pEmpresasppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Numero'
      FieldName = 'Diario_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object pEmpresasppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Pagina'
      FieldName = 'Diario_Pagina'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 31
    end
    object pEmpresasppField33: TppField
      FieldAlias = 'Ultimo_Encerramento'
      FieldName = 'Ultimo_Encerramento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 32
    end
    object pEmpresasppField34: TppField
      FieldAlias = 'NFServico_Modelo'
      FieldName = 'NFServico_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 33
    end
    object pEmpresasppField35: TppField
      FieldAlias = 'NFServico_Serie'
      FieldName = 'NFServico_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 34
    end
    object pEmpresasppField36: TppField
      FieldAlias = 'NFEntrada_Modelo'
      FieldName = 'NFEntrada_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 35
    end
    object pEmpresasppField37: TppField
      FieldAlias = 'NFEntrada_Serie'
      FieldName = 'NFEntrada_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 36
    end
    object pEmpresasppField38: TppField
      FieldAlias = 'NFSaida_Modelo'
      FieldName = 'NFSaida_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 37
    end
    object pEmpresasppField39: TppField
      FieldAlias = 'NFSaida_Serie'
      FieldName = 'NFSaida_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 38
    end
    object pEmpresasppField40: TppField
      FieldAlias = 'Matriz_Filial'
      FieldName = 'Matriz_Filial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 39
    end
    object pEmpresasppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Filial'
      FieldName = 'Numero_Filial'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 3
      Position = 40
    end
    object pEmpresasppField42: TppField
      FieldAlias = 'NFEletronica_Modelo'
      FieldName = 'NFEletronica_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 41
    end
    object pEmpresasppField43: TppField
      FieldAlias = 'NFEletronica_Serie'
      FieldName = 'NFEletronica_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 42
    end
    object pEmpresasppField44: TppField
      FieldAlias = 'NFEletronica_Layout'
      FieldName = 'NFEletronica_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 43
    end
    object pEmpresasppField45: TppField
      FieldAlias = 'Certificado_Digital'
      FieldName = 'Certificado_Digital'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 44
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Lote'
      FieldName = 'Numero_Lote'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 45
    end
    object pEmpresasppField47: TppField
      FieldAlias = 'Inscricao_SUFRAMA'
      FieldName = 'Inscricao_SUFRAMA'
      FieldLength = 9
      DisplayWidth = 9
      Position = 46
    end
    object pEmpresasppField48: TppField
      FieldAlias = 'Contador_Nome'
      FieldName = 'Contador_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 47
    end
    object pEmpresasppField49: TppField
      FieldAlias = 'Contador_CNPJ'
      FieldName = 'Contador_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 48
    end
    object pEmpresasppField50: TppField
      FieldAlias = 'Contador_CPF'
      FieldName = 'Contador_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 49
    end
    object pEmpresasppField51: TppField
      FieldAlias = 'Contador_CRC'
      FieldName = 'Contador_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 50
    end
    object pEmpresasppField52: TppField
      FieldAlias = 'Contador_CEP'
      FieldName = 'Contador_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 51
    end
    object pEmpresasppField53: TppField
      FieldAlias = 'Contador_Rua'
      FieldName = 'Contador_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 52
    end
    object pEmpresasppField54: TppField
      FieldAlias = 'Contador_Numero'
      FieldName = 'Contador_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 53
    end
    object pEmpresasppField55: TppField
      FieldAlias = 'Contador_Complemento'
      FieldName = 'Contador_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 54
    end
    object pEmpresasppField56: TppField
      FieldAlias = 'Contador_Bairro'
      FieldName = 'Contador_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 55
    end
    object pEmpresasppField57: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Municipio'
      FieldName = 'Contador_Municipio'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 56
    end
    object pEmpresasppField58: TppField
      FieldAlias = 'Contador_Telefone'
      FieldName = 'Contador_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 57
    end
    object pEmpresasppField59: TppField
      FieldAlias = 'Contador_FAX'
      FieldName = 'Contador_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 58
    end
    object pEmpresasppField60: TppField
      FieldAlias = 'Contador_Email'
      FieldName = 'Contador_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 59
    end
    object pEmpresasppField61: TppField
      FieldAlias = 'Contador_Estado'
      FieldName = 'Contador_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 60
    end
    object pEmpresasppField62: TppField
      FieldAlias = 'Data_Constituicao'
      FieldName = 'Data_Constituicao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 61
    end
    object pEmpresasppField63: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tributacao'
      FieldName = 'Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 62
    end
    object pEmpresasppField64: TppField
      Alignment = taRightJustify
      FieldAlias = 'Municipio_Codigo'
      FieldName = 'Municipio_Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 63
    end
    object pEmpresasppField65: TppField
      FieldAlias = 'Diretor_CPF'
      FieldName = 'Diretor_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 64
    end
    object pEmpresasppField66: TppField
      FieldAlias = 'Responsavel_CPF'
      FieldName = 'Responsavel_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 65
    end
    object pEmpresasppField67: TppField
      FieldAlias = 'Responsavel_Funcao'
      FieldName = 'Responsavel_Funcao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 66
    end
    object pEmpresasppField68: TppField
      FieldAlias = 'Banco_Dados'
      FieldName = 'Banco_Dados'
      FieldLength = 50
      DisplayWidth = 50
      Position = 67
    end
    object pEmpresasppField69: TppField
      FieldAlias = 'Banco_Contabilidade'
      FieldName = 'Banco_Contabilidade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 68
    end
    object pEmpresasppField70: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente'
      FieldName = 'Ambiente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 69
    end
    object pEmpresasppField71: TppField
      FieldAlias = 'Licensa_NFE_Util'
      FieldName = 'Licensa_NFE_Util'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 70
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField72: TppField
      FieldAlias = 'Processo_Automatico'
      FieldName = 'Processo_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 71
    end
    object pEmpresasppField73: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 72
    end
    object pEmpresasppField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'Apuracao_IPI'
      FieldName = 'Apuracao_IPI'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 73
    end
    object pEmpresasppField75: TppField
      FieldAlias = 'Perfil_SPED'
      FieldName = 'Perfil_SPED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 74
    end
    object pEmpresasppField76: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Atividade'
      FieldName = 'Tipo_Atividade'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 75
    end
    object pEmpresasppField77: TppField
      FieldAlias = 'Vencimento_Certificado'
      FieldName = 'Vencimento_Certificado'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 76
    end
    object pEmpresasppField78: TppField
      FieldAlias = 'UF_WebService'
      FieldName = 'UF_WebService'
      FieldLength = 10
      DisplayWidth = 10
      Position = 77
    end
    object pEmpresasppField79: TppField
      Alignment = taRightJustify
      FieldAlias = 'Regime_Apuracao'
      FieldName = 'Regime_Apuracao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 78
    end
    object pEmpresasppField80: TppField
      FieldAlias = 'Mascara_Processo'
      FieldName = 'Mascara_Processo'
      FieldLength = 7
      DisplayWidth = 7
      Position = 79
    end
    object pEmpresasppField81: TppField
      FieldAlias = 'Incentivo_Fiscal'
      FieldName = 'Incentivo_Fiscal'
      FieldLength = 20
      DisplayWidth = 20
      Position = 80
    end
    object pEmpresasppField82: TppField
      FieldAlias = 'Email_SMTP'
      FieldName = 'Email_SMTP'
      FieldLength = 80
      DisplayWidth = 80
      Position = 81
    end
    object pEmpresasppField83: TppField
      FieldAlias = 'Email_Senha'
      FieldName = 'Email_Senha'
      FieldLength = 30
      DisplayWidth = 30
      Position = 82
    end
    object pEmpresasppField84: TppField
      FieldAlias = 'Email_MsgEnvioNFE'
      FieldName = 'Email_MsgEnvioNFE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 83
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField85: TppField
      FieldAlias = 'Email_MsgCancelamento'
      FieldName = 'Email_MsgCancelamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 84
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField86: TppField
      Alignment = taRightJustify
      FieldAlias = 'Email_Porta'
      FieldName = 'Email_Porta'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 85
    end
    object pEmpresasppField87: TppField
      FieldAlias = 'Email_ID'
      FieldName = 'Email_ID'
      FieldLength = 80
      DisplayWidth = 80
      Position = 86
    end
    object pEmpresasppField88: TppField
      FieldAlias = 'Distribuidora'
      FieldName = 'Distribuidora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 87
    end
    object pEmpresasppField89: TppField
      FieldAlias = 'Fechamento_Financeiro'
      FieldName = 'Fechamento_Financeiro'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 88
    end
    object pEmpresasppField90: TppField
      FieldAlias = 'Modulo_Comercial'
      FieldName = 'Modulo_Comercial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 89
    end
    object pEmpresasppField91: TppField
      FieldAlias = 'Consolidar'
      FieldName = 'Consolidar'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 90
    end
    object pEmpresasppField92: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pedido_Nota'
      FieldName = 'Pedido_Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 5
      Position = 91
    end
    object pEmpresasppField93: TppField
      FieldAlias = 'Email_Copia'
      FieldName = 'Email_Copia'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 92
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField94: TppField
      FieldAlias = 'Email_SSL'
      FieldName = 'Email_SSL'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 93
    end
    object pEmpresasppField95: TppField
      FieldAlias = 'Email_Autenticacao'
      FieldName = 'Email_Autenticacao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 94
    end
    object pEmpresasppField96: TppField
      FieldAlias = 'Email_Metodo'
      FieldName = 'Email_Metodo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 95
    end
    object pEmpresasppField97: TppField
      FieldAlias = 'CartaCorrecao_Layout'
      FieldName = 'CartaCorrecao_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 96
    end
    object pEmpresasppField98: TppField
      FieldAlias = 'CNAE'
      FieldName = 'CNAE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 97
    end
    object pEmpresasppField99: TppField
      FieldAlias = 'Email_MsgEnvioCCE'
      FieldName = 'Email_MsgEnvioCCE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 98
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField100: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_EletronicaEntrada'
      FieldName = 'Nota_EletronicaEntrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 99
    end
    object pEmpresasppField101: TppField
      FieldAlias = 'NFEletronica_ModeloEntrada'
      FieldName = 'NFEletronica_ModeloEntrada'
      FieldLength = 2
      DisplayWidth = 2
      Position = 100
    end
    object pEmpresasppField102: TppField
      FieldAlias = 'NFEletronica_SerieEntrada'
      FieldName = 'NFEletronica_SerieEntrada'
      FieldLength = 3
      DisplayWidth = 3
      Position = 101
    end
    object pEmpresasppField103: TppField
      FieldAlias = 'NFEletronica_Numeracao'
      FieldName = 'NFEletronica_Numeracao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 102
    end
    object pEmpresasppField104: TppField
      Alignment = taRightJustify
      FieldAlias = 'Logomarca_Largura'
      FieldName = 'Logomarca_Largura'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 103
    end
    object pEmpresasppField105: TppField
      FieldAlias = 'Pagamento'
      FieldName = 'Pagamento'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 104
    end
    object pEmpresasppField106: TppField
      FieldAlias = 'Modulo_Emprestimos'
      FieldName = 'Modulo_Emprestimos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 105
    end
    object pEmpresasppField107: TppField
      FieldAlias = 'Modulo_XMLCTe'
      FieldName = 'Modulo_XMLCTe'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 106
    end
    object pEmpresasppField108: TppField
      FieldAlias = 'Regime'
      FieldName = 'Regime'
      FieldLength = 1
      DisplayWidth = 1
      Position = 107
    end
    object pEmpresasppField109: TppField
      FieldAlias = 'Modulo_Vendas'
      FieldName = 'Modulo_Vendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 108
    end
    object pEmpresasppField110: TppField
      Alignment = taRightJustify
      FieldAlias = 'CTE_Numero'
      FieldName = 'CTE_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 109
    end
    object pEmpresasppField111: TppField
      FieldAlias = 'CTE_Modelo'
      FieldName = 'CTE_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 110
    end
    object pEmpresasppField112: TppField
      FieldAlias = 'CTE_Serie'
      FieldName = 'CTE_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 111
    end
    object pEmpresasppField113: TppField
      FieldAlias = 'CTE_Layout'
      FieldName = 'CTE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 112
    end
    object pEmpresasppField114: TppField
      FieldAlias = 'Modulo_Logistica'
      FieldName = 'Modulo_Logistica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 113
    end
    object pEmpresasppField115: TppField
      FieldAlias = 'Modulo_Boleto'
      FieldName = 'Modulo_Boleto'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 114
    end
    object pEmpresasppField116: TppField
      FieldAlias = 'Telefone1'
      FieldName = 'Telefone1'
      FieldLength = 11
      DisplayWidth = 11
      Position = 115
    end
    object pEmpresasppField117: TppField
      FieldAlias = 'Telefone2'
      FieldName = 'Telefone2'
      FieldLength = 11
      DisplayWidth = 11
      Position = 116
    end
    object pEmpresasppField118: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 11
      DisplayWidth = 11
      Position = 117
    end
  end
  object tNatureza: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * '
      'FROM Cybersoft_Cadastros.dbo.Natureza'
        'WHERE (SELECT COUNT(*) FROM NotasFiscais WHERE(Natureza_Codigo =' +
        ' Codigo))+(SELECT COUNT(*) FROM NotasTerceiros WHERE(Natureza_Co' +
        'digo = Codigo)) > 0'
      'ORDER BY Descricao_NF')
    FetchRows = 1
    Left = 312
    Top = 8
  end
  object dsNatureza: TDataSource
    DataSet = tNatureza
    Left = 342
    Top = 8
  end
  object tDestinatario: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'DROP TABLE #Temp'
        'SELECT CASE WHEN CNPJ <> '#39#39' THEN '#39'J'#39' ELSE '#39'F'#39' END AS Fisica_Juri' +
        'dica,'
        '       CASE WHEN CNPJ <> '#39#39' THEN CAST(CNPJ AS VARCHAR(18)) ELSE ' +
        'CAST(CPF AS VARCHAR(18)) END AS CNPJ_CPF,'
      '       Nome '
      'INTO #Temp'
      'FROM Fornecedores'
      'UNION ALL'
        'SELECT CASE WHEN CNPJ <> '#39#39' THEN '#39'J'#39' ELSE '#39'F'#39' END AS Fisica_Juri' +
        'dica,'
        '       CASE WHEN CNPJ <> '#39#39' THEN CAST(CNPJ AS VARCHAR(18)) ELSE ' +
        'CAST(CPF AS VARCHAR(18)) END AS CNPJ_CPF,'
      '       Nome'
      'FROM Clientes WHERE(CNPJ NOT IN(SELECT CNPJ FROM Fornecedores))'
        'UPDATE #Temp SET CNPJ_CPF = SUBSTRING(CNPJ_CPF,1,2) + '#39'.'#39' + SUBS' +
        'TRING(CNPJ_CPF,3,3) + '#39'.'#39' + SUBSTRING(CNPJ_CPF,6,3) + '#39'/'#39' + SUBS' +
        'TRING(CNPJ_CPF,9,4) + '#39'-'#39' +SUBSTRING(CNPJ_CPF,13,2)'
      'WHERE Fisica_Juridica = '#39'J'#39
        'UPDATE #Temp SET CNPJ_CPF = SUBSTRING(CNPJ_CPF,1,3) + '#39'.'#39' + SUBS' +
        'TRING(CNPJ_CPF,4,3) + '#39'.'#39' + SUBSTRING(CNPJ_CPF,7,3) + '#39'-'#39' + SUBS' +
        'TRING(CNPJ_CPF,10,2)'
      'WHERE Fisica_Juridica = '#39'F'#39
      'SELECT * FROM #TEMP ORDER BY Nome')
    FetchRows = 1
    Left = 440
    Top = 8
    object tDestinatarioFisica_Juridica: TStringField
      FieldName = 'Fisica_Juridica'
      Size = 1
    end
    object tDestinatarioCNPJ_CPF: TStringField
      DisplayWidth = 12
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object tDestinatarioNome: TStringField
      FieldName = 'Nome'
      Size = 60
    end
  end
  object dstDestinatario: TDataSource
    DataSet = tDestinatario
    Left = 470
    Top = 8
  end
  object tPesquisa: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 272
    Top = 8
  end
end
