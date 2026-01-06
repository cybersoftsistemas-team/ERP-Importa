object Cadastro_PlanoContas: TCadastro_PlanoContas
  Left = 392
  Top = 19
  HelpContext = 601
  BorderStyle = bsDialog
  Caption = 'Cadastro_PlanoContas'
  ClientHeight = 639
  ClientWidth = 678
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
    678
    639)
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 678
    Height = 45
    Align = alTop
    Stretch = True
    ExplicitWidth = 676
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 133
    Height = 21
    Caption = 'PLANO DE CONTAS'
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
    Width = 198
    Height = 18
    Caption = 'Manuten'#231#227'o de Plano e Contas.'
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
  object bLimpar: TSpeedButton
    Left = 640
    Top = 583
    Width = 23
    Height = 22
    Anchors = [akBottom]
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
    OnClick = bLimparClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 609
    Width = 678
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      678
      30)
    object bSair: TButton
      Left = 612
      Top = 1
      Width = 65
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 324
      Height = 28
      Cursor = crHandPoint
      DataSource = dmContab.dsPlanoContas
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
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
      TabOrder = 1
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
    object bPesquisa: TButton
      Left = 325
      Top = 1
      Width = 61
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Caption = '&Pesquisa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bPesquisaClick
    end
    object bTerceiros: TButton
      Left = 553
      Top = 2
      Width = 53
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Caption = '&Terceiros'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Visible = False
      OnClick = bTerceirosClick
    end
    object Button2: TButton
      Left = 387
      Top = 1
      Width = 66
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Caption = 'Plano &ECF'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = Button2Click
    end
    object bAnterior: TButton
      Left = 455
      Top = 1
      Width = 83
      Height = 27
      Caption = 'Plano Anterior'
      TabOrder = 5
      OnClick = bAnteriorClick
    end
  end
  object Panel2: TPanel
    Left = 5
    Top = 49
    Width = 668
    Height = 239
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 1
    object SpeedButton2: TSpeedButton
      Left = 293
      Top = 119
      Width = 23
      Height = 22
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
      OnClick = SpeedButton2Click
    end
    object cNaturteza: TDBRadioGroup
      Left = 515
      Top = 5
      Width = 142
      Height = 69
      Caption = 'Natureza da Conta'
      DataField = 'Natureza'
      DataSource = dmContab.dsPlanoContas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      Items.Strings = (
        'Credora'
        'Devedora'
        'Indefinida')
      ParentFont = False
      TabOrder = 7
      Values.Strings = (
        'C'
        'D'
        'I')
    end
    object StaticText1: TStaticText
      Left = 5
      Top = 5
      Width = 85
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Conta'
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
    object StaticText5: TStaticText
      Left = 5
      Top = 74
      Width = 85
      Height = 21
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
    object cDescricao: TDBEdit
      Left = 92
      Top = 74
      Width = 401
      Height = 21
      DataField = 'Descricao'
      DataSource = dmContab.dsPlanoContas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object StaticText6: TStaticText
      Left = 5
      Top = 28
      Width = 85
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'C'#243'digo Reduzido'
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
    object cCodigo: TDBEdit
      Left = 92
      Top = 28
      Width = 72
      Height = 21
      DataField = 'Codigo'
      DataSource = dmContab.dsPlanoContas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
      OnChange = cCodigoChange
    end
    object bSaldo: TButton
      Left = 14
      Top = 163
      Width = 98
      Height = 53
      Caption = 'Saldo &Inicial'
      TabOrder = 8
      OnClick = bSaldoClick
    end
    object StaticText2: TStaticText
      Left = 5
      Top = 97
      Width = 85
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Data Inclus'#227'o'
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
    object cData: TDBDateEdit
      Left = 92
      Top = 97
      Width = 113
      Height = 21
      DataField = 'Data_Inclusao'
      DataSource = dmContab.dsPlanoContas
      CheckOnExit = True
      DialogTitle = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
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
      TabOrder = 5
      YearDigits = dyFour
    end
    object StaticText3: TStaticText
      Left = 238
      Top = 5
      Width = 37
      Height = 21
      Hint = '  D'#234' um duplo click para ajustar o n'#237'vel de todas as contas...'
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Nivel'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      Transparent = False
      StyleElements = []
    end
    object DBEdit1: TDBEdit
      Left = 277
      Top = 5
      Width = 56
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Nivel'
      DataSource = dmContab.dsPlanoContas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnExit = cContaExit
    end
    object StaticText4: TStaticText
      Left = 5
      Top = 120
      Width = 85
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Grupo'
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
    object cNatureza: TRxDBComboBox
      Left = 92
      Top = 120
      Width = 200
      Height = 21
      DataField = 'Origem'
      DataSource = dmContab.dsPlanoContas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Items.Strings = (
        'Contas de ativo'
        'Contas de passivo'
        'Patrim'#244'nio l'#237'quido'
        'Contas de resultado'
        'Contas de compensa'#231#227'o'
        'Outras')
      ParentFont = False
      TabOrder = 6
      Values.Strings = (
        '01'
        '02'
        '03'
        '04'
        '05'
        '09')
    end
    object cConta: TDBEdit
      Left = 92
      Top = 5
      Width = 142
      Height = 21
      Cursor = crIBeam
      DataField = 'Conta'
      DataSource = dmContab.dsPlanoContas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = cContaChange
      OnExit = cContaExit
    end
    object StaticText9: TStaticText
      Left = 5
      Top = 51
      Width = 85
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Conta ECF'
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
    object DBEdit2: TDBEdit
      Left = 92
      Top = 51
      Width = 142
      Height = 21
      Cursor = crIBeam
      DataField = 'Conta_ECF'
      DataSource = dmContab.dsPlanoContas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 13
      ParentFont = False
      TabOrder = 3
      OnExit = cContaExit
    end
    object GroupBox2: TGroupBox
      Left = 515
      Top = 76
      Width = 142
      Height = 156
      Caption = 'Par'#226'metros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      object cSintetica: TToggleSwitch
        Left = 12
        Top = 31
        Width = 123
        Height = 18
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        StateCaptions.CaptionOn = 'Sint'#233'tica'
        StateCaptions.CaptionOff = 'Anal'#237'tica'
        SwitchHeight = 12
        SwitchWidth = 22
        TabOrder = 0
        ThumbWidth = 12
      end
      object cResult: TToggleSwitch
        Left = 12
        Top = 48
        Width = 123
        Height = 18
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        StateCaptions.CaptionOn = 'Conta Normal'
        StateCaptions.CaptionOff = 'Conta de Resultado'
        SwitchHeight = 12
        SwitchWidth = 22
        TabOrder = 1
        ThumbWidth = 12
      end
      object cLALUR: TToggleSwitch
        Left = 12
        Top = 65
        Width = 123
        Height = 18
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        StateCaptions.CaptionOn = 'LALUR'
        StateCaptions.CaptionOff = 'LALUR'
        SwitchHeight = 12
        SwitchWidth = 22
        TabOrder = 2
        ThumbWidth = 12
      end
      object cDRE: TToggleSwitch
        Left = 12
        Top = 82
        Width = 123
        Height = 18
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        StateCaptions.CaptionOn = 'DRE'
        StateCaptions.CaptionOff = 'DRE'
        SwitchHeight = 12
        SwitchWidth = 22
        TabOrder = 3
        ThumbWidth = 12
      end
      object cBalanco: TToggleSwitch
        Left = 12
        Top = 99
        Width = 123
        Height = 18
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        StateCaptions.CaptionOn = 'Mostrar no Balan'#231'o'
        StateCaptions.CaptionOff = 'Mostrar no Balan'#231'o'
        SwitchHeight = 12
        SwitchWidth = 22
        TabOrder = 4
        ThumbWidth = 12
      end
      object cPessoa: TToggleSwitch
        Left = 12
        Top = 116
        Width = 123
        Height = 18
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        StateCaptions.CaptionOn = 'Detalhar Pessoa'
        StateCaptions.CaptionOff = 'Detalhar Pessoa'
        SwitchHeight = 12
        SwitchWidth = 22
        TabOrder = 5
        ThumbWidth = 12
      end
      object cProcesso: TToggleSwitch
        Left = 12
        Top = 133
        Width = 123
        Height = 18
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        StateCaptions.CaptionOn = 'Detalhar Processo'
        StateCaptions.CaptionOff = 'Detalhar Processo'
        SwitchHeight = 12
        SwitchWidth = 22
        TabOrder = 6
        ThumbWidth = 12
      end
      object cTitulo: TToggleSwitch
        Left = 12
        Top = 14
        Width = 123
        Height = 18
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        StateCaptions.CaptionOn = 'Conta T'#237'tulo'
        StateCaptions.CaptionOff = 'Conta T'#237'tulo'
        SwitchHeight = 12
        SwitchWidth = 22
        TabOrder = 7
        ThumbWidth = 12
      end
    end
  end
  object Grade: TDBGrid
    Left = 5
    Top = 291
    Width = 668
    Height = 291
    DataSource = dmContab.dsPlanoContas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Conta'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Conta_ECF'
        Title.Alignment = taCenter
        Title.Caption = 'Conta ECF'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Codigo'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd.Red.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 60
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
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 404
        Visible = True
      end>
  end
  object StaticText8: TStaticText
    Left = 4
    Top = 584
    Width = 70
    Height = 21
    Anchors = [akLeft, akBottom]
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Pesquisar'
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
  object cPesq1: TEdit
    Left = 76
    Top = 584
    Width = 564
    Height = 21
    Anchors = [akLeft, akBottom]
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnChange = cPesq1Change
  end
  object tCodigo: TMSQuery
    SQLRefresh.Strings = (
      
        'SELECT PlanoContas.Conta, PlanoContas.Codigo, PlanoContas.Descri' +
        'cao, PlanoContas.Saldo, PlanoContas.Debito, PlanoContas.Credito ' +
        'FROM PlanoContas'
      'WHERE PlanoContas.Conta = :Conta ')
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 329
    Top = 8
  end
  object tDescricao: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT * FROM PlanoContas')
    FetchRows = 1
    Left = 393
    Top = 8
  end
  object OpenDialog1: TOpenDialog
    Left = 272
    Top = 8
  end
  object tMovimento: TMSQuery
    SQLRefresh.Strings = (
      
        'SELECT PlanoContas.Conta, PlanoContas.Codigo, PlanoContas.Descri' +
        'cao, PlanoContas.Saldo, PlanoContas.Debito, PlanoContas.Credito ' +
        'FROM PlanoContas'
      'WHERE PlanoContas.Conta = :Conta ')
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 457
    Top = 8
  end
end
