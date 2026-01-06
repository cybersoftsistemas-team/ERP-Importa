object Pedido_Compra: TPedido_Compra
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pedido_Compra'
  ClientHeight = 659
  ClientWidth = 609
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
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 609
    Height = 45
    Align = alTop
    Stretch = True
    ExplicitWidth = 621
  end
  object RxLabel2: TRxLabel
    Left = 8
    Top = 22
    Width = 232
    Height = 18
    Caption = 'Manuten'#231#227'o dos Pedidos de Compra.'
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
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 148
    Height = 21
    Caption = 'PEDIDO DE COMPRA'
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
  object Panel1: TPanel
    Left = 0
    Top = 629
    Width = 609
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      609
      30)
    object bSair: TButton
      Left = 542
      Top = 2
      Width = 67
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
      Top = 2
      Width = 360
      Height = 28
      Cursor = crHandPoint
      DataSource = dmComercial.dsPedidoCompra
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
    object bItens: TButton
      Left = 362
      Top = 2
      Width = 67
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Caption = '&Itens'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bItensClick
    end
    object bImprimir: TButton
      Left = 429
      Top = 2
      Width = 67
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bImprimirClick
    end
  end
  object Panel2: TPanel
    Left = 7
    Top = 51
    Width = 593
    Height = 329
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 1
    object StaticText1: TStaticText
      Left = 5
      Top = 5
      Width = 100
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
      TabOrder = 8
      Transparent = False
      StyleElements = []
    end
    object StaticText5: TStaticText
      Left = 198
      Top = 5
      Width = 38
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Data'
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
    object StaticText2: TStaticText
      Left = 5
      Top = 143
      Width = 100
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
      TabOrder = 11
      Transparent = False
      StyleElements = []
    end
    object StaticText4: TStaticText
      Left = 5
      Top = 97
      Width = 100
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Diretor'
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
    object StaticText6: TStaticText
      Left = 5
      Top = 28
      Width = 100
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Solicitante'
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
    object cPedido: TDBEdit
      Left = 107
      Top = 5
      Width = 86
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Pedido'
      DataSource = dmComercial.dsPedidoCompra
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object StaticText7: TStaticText
      Left = 5
      Top = 166
      Width = 100
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Condi'#231#227'o Pgto.'
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
    object cData: TDBDateEdit
      Left = 238
      Top = 5
      Width = 107
      Height = 21
      DataField = 'Data_Pedido'
      DataSource = dmComercial.dsPedidoCompra
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
    end
    object cDiretor: TDBLookupComboBox
      Left = 107
      Top = 97
      Width = 478
      Height = 21
      DataField = 'Diretor'
      DataSource = dmComercial.dsPedidoCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Matricula'
      ListField = 'Matricula;Nome'
      ListFieldIndex = 1
      ListSource = dstDiretor
      NullValueKey = 46
      ParentFont = False
      TabOrder = 4
    end
    object cSolicitante: TDBLookupComboBox
      Left = 107
      Top = 28
      Width = 474
      Height = 21
      DataField = 'Solicitante'
      DataSource = dmComercial.dsPedidoCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Matricula'
      ListField = 'Matricula;Nome'
      ListFieldIndex = 1
      ListSource = Dados.dsUsuarios
      NullValueKey = 46
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 107
      Top = 143
      Width = 478
      Height = 21
      DataField = 'Descricao'
      DataSource = dmComercial.dsPedidoCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object StaticText9: TStaticText
      Left = 5
      Top = 189
      Width = 100
      Height = 65
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = '                      Observa'#231#245'e Pedido'
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
    object DBMemo1: TDBMemo
      Left = 107
      Top = 189
      Width = 478
      Height = 65
      DataField = 'Obs_Pedido'
      DataSource = dmComercial.dsPedidoCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object StaticText10: TStaticText
      Left = 5
      Top = 256
      Width = 100
      Height = 65
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = '                      Observa'#231#245'e Entrega'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 16
      Transparent = False
      StyleElements = []
    end
    object DBMemo2: TDBMemo
      Left = 107
      Top = 256
      Width = 478
      Height = 65
      DataField = 'Obs_Entrega'
      DataSource = dmComercial.dsPedidoCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object cFormaPgto: TDBLookupComboBox
      Left = 106
      Top = 166
      Width = 479
      Height = 21
      DataField = 'Condicao_Pgto'
      DataSource = dmComercial.dsPedidoCompra
      DropDownRows = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao'
      ListFieldIndex = 1
      ListSource = Dados.dsModalidadesPgto
      ParentFont = False
      TabOrder = 6
    end
    object StaticText3: TStaticText
      Left = 5
      Top = 51
      Width = 100
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Comprador'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 17
      Transparent = False
      StyleElements = []
    end
    object cComprador: TDBLookupComboBox
      Left = 107
      Top = 51
      Width = 478
      Height = 21
      DataField = 'Comprador'
      DataSource = dmComercial.dsPedidoCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Matricula'
      ListField = 'Matricula;Nome'
      ListFieldIndex = 1
      ListSource = dstComprador
      NullValueKey = 46
      ParentFont = False
      TabOrder = 3
    end
    object StaticText11: TStaticText
      Left = 5
      Top = 74
      Width = 100
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Gerente'
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
    object cGerente: TDBLookupComboBox
      Left = 107
      Top = 74
      Width = 478
      Height = 21
      DataField = 'Gerente'
      DataSource = dmComercial.dsPedidoCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Matricula'
      ListField = 'Matricula;Nome'
      ListFieldIndex = 1
      ListSource = dstGerente
      NullValueKey = 46
      ParentFont = False
      TabOrder = 19
    end
    object StaticText8: TStaticText
      Left = 5
      Top = 120
      Width = 100
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
      TabOrder = 20
      Transparent = False
      StyleElements = []
    end
    object cFornecedor: TDBLookupComboBox
      Left = 107
      Top = 120
      Width = 478
      Height = 21
      DataField = 'Fornecedor'
      DataSource = dmComercial.dsPedidoCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo;Nome'
      ListFieldIndex = 1
      ListSource = Dados.dsFornecedores
      NullValueKey = 46
      ParentFont = False
      TabOrder = 21
    end
    object StaticText12: TStaticText
      Left = 349
      Top = 5
      Width = 92
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Refer'#234'ncia Cliente'
      Color = 7293440
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
    object DBEdit1: TDBEdit
      Left = 443
      Top = 5
      Width = 142
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Referencia_Cliente'
      DataSource = dmComercial.dsPedidoCompra
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 23
    end
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 384
    Width = 592
    Height = 193
    DataSource = dmComercial.dsPedidoCompra
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Pedido'
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
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data_Pedido'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 68
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
        Width = 335
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total_Geral'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 110
        Visible = True
      end>
  end
  object cFiltro: TRadioGroup
    Left = 8
    Top = 580
    Width = 592
    Height = 42
    Caption = 'Filtro'
    Columns = 4
    Items.Strings = (
      'Pedidos Aberto'
      'Pedidos Fechados'
      'Pedidos Cancelados'
      'Todos')
    TabOrder = 3
    OnClick = cFiltroClick
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 192
  end
  object rPedido: TppReport
    AutoStop = False
    DataPipeline = pPedido
    NoDataBehaviors = [ndBlankReport]
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Pedido de Compra Interno'
    PrinterSetup.Duplex = dpVertical
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 2540
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Sistemas\Faturamento\Codigo Fonte\Relatorios\FinanceirosVenda' +
      'sRepresentante.rtm'
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
    Left = 472
    Top = 8
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pPedido'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 106892
      mmPrintPosition = 0
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 18
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 7676
        mmLeft = 82
        mmTop = 12700
        mmWidth = 197504
        BandType = 0
        LayerName = Foreground
      end
      object lCNPJ_IE: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTitulo1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CNPJ: 11.760.744/0001-20      I.E:407.376.729.113'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avBottom
        mmHeight = 3283
        mmLeft = 79
        mmTop = 31600
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground
      end
      object lEndereco1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lEndereco1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 
          'Av Benedicto Castilho de Andrade 1320 Terreo - CEP 13212-070, Ju' +
          'ndiai (SP)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avBottom
        mmHeight = 3283
        mmLeft = 273
        mmTop = 20638
        mmWidth = 197504
        BandType = 0
        LayerName = Foreground
      end
      object lTelefones: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTelefones'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '(11)4525-6550 Jundiai 3879-6870 SP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avBottom
        mmHeight = 3283
        mmLeft = 83
        mmTop = 27936
        mmWidth = 197504
        BandType = 0
        LayerName = Foreground
      end
      object lEmail: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTelefones1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'www.chavesgold.com.br'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avBottom
        mmHeight = 3283
        mmLeft = 83
        mmTop = 35179
        mmWidth = 197504
        BandType = 0
        LayerName = Foreground
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        Brush.Color = 16770995
        Pen.Style = psClear
        mmHeight = 24937
        mmLeft = 0
        mmTop = 44494
        mmWidth = 197791
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PEDIDO N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4498
        mmLeft = 1643
        mmTop = 44763
        mmWidth = 20409
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'Pedido'
        DataPipeline = pPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pPedido'
        mmHeight = 3439
        mmLeft = 25135
        mmTop = 44715
        mmWidth = 46798
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DATA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4498
        mmLeft = 1643
        mmTop = 49565
        mmWidth = 20409
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'Data_Pedido'
        DataPipeline = pPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedido'
        mmHeight = 4498
        mmLeft = 25179
        mmTop = 49565
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Color = clWhite
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 24441
        mmLeft = 22908
        mmTop = 44523
        mmWidth = 1282
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'FEITO POR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4498
        mmLeft = 91831
        mmTop = 45077
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'Feito_Por'
        DataPipeline = pPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedido'
        mmHeight = 4498
        mmLeft = 115215
        mmTop = 45077
        mmWidth = 81280
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'Comprador_Email'
        DataPipeline = pPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedido'
        mmHeight = 4498
        mmLeft = 115215
        mmTop = 49565
        mmWidth = 81280
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'E-MAIL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4498
        mmLeft = 91831
        mmTop = 49565
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'SOLICITANTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4646
        mmLeft = 91831
        mmTop = 54325
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'Solicitante'
        DataPipeline = pPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedido'
        mmHeight = 4646
        mmLeft = 115215
        mmTop = 54325
        mmWidth = 81280
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Color = clWhite
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 14717
        mmLeft = 89518
        mmTop = 44494
        mmWidth = 1282
        BandType = 0
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Pen.Color = clWhite
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 14717
        mmLeft = 113327
        mmTop = 44440
        mmWidth = 1133
        BandType = 0
        LayerName = Foreground
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        Brush.Color = 16770995
        Pen.Style = psClear
        mmHeight = 20938
        mmLeft = 0
        mmTop = 75036
        mmWidth = 197643
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'RAZ'#195'O SOCIAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3810
        mmLeft = 1643
        mmTop = 75564
        mmWidth = 20409
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        Border.mmPadding = 0
        DataField = 'Fornecedor'
        DataPipeline = pPedido
        DisplayFormat = '00000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedido'
        mmHeight = 3810
        mmLeft = 25179
        mmTop = 75564
        mmWidth = 63493
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ENDERE'#199'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3810
        mmLeft = 1643
        mmTop = 79493
        mmWidth = 20409
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'Fornecedor_Endereco'
        DataPipeline = pPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedido'
        mmHeight = 3810
        mmLeft = 25179
        mmTop = 79493
        mmWidth = 63493
        BandType = 0
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Pen.Color = clWhite
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 21997
        mmLeft = 22925
        mmTop = 74444
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CNPJ/CPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3810
        mmLeft = 91831
        mmTop = 75564
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'Fornecedor_CNPJCPF'
        DataPipeline = pPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedido'
        mmHeight = 3810
        mmLeft = 115215
        mmTop = 75564
        mmWidth = 81280
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'Fornecedor_Telefone'
        DataPipeline = pPedido
        DisplayFormat = '(00) 00000-0000;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedido'
        mmHeight = 3810
        mmLeft = 115215
        mmTop = 79493
        mmWidth = 81280
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TELEFONE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3810
        mmLeft = 91831
        mmTop = 79493
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ESTADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3810
        mmLeft = 91831
        mmTop = 83428
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'Fornecedor_Estado'
        DataPipeline = pPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedido'
        mmHeight = 3810
        mmLeft = 115215
        mmTop = 83428
        mmWidth = 81280
        BandType = 0
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Pen.Color = clWhite
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 21997
        mmLeft = 89572
        mmTop = 74444
        mmWidth = 1282
        BandType = 0
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Pen.Color = clWhite
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 21997
        mmLeft = 113327
        mmTop = 74444
        mmWidth = 1133
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PEDIDO'
        Color = 15724527
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 54
        mmTop = 40266
        mmWidth = 12053
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3810
        mmLeft = 1643
        mmTop = 83428
        mmWidth = 20409
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        Border.mmPadding = 0
        DataField = 'Fornecedor_CEP'
        DataPipeline = pPedido
        DisplayFormat = '00000-000;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedido'
        mmHeight = 3810
        mmLeft = 25179
        mmTop = 83428
        mmWidth = 23519
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'BAIRRO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3810
        mmLeft = 1643
        mmTop = 87400
        mmWidth = 20409
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
        Border.mmPadding = 0
        DataField = 'Fornecedor_Bairro'
        DataPipeline = pPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedido'
        mmHeight = 3810
        mmLeft = 25179
        mmTop = 87400
        mmWidth = 63493
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CIDADE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3810
        mmLeft = 91831
        mmTop = 87400
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText18'
        Border.mmPadding = 0
        DataField = 'Fornecedor_Cidade'
        DataPipeline = pPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedido'
        mmHeight = 3810
        mmLeft = 115215
        mmTop = 87400
        mmWidth = 81280
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'FORNECEDOR'
        Color = 15724527
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 70809
        mmWidth = 21314
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CONTATO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3810
        mmLeft = 1643
        mmTop = 91371
        mmWidth = 20409
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText19'
        Border.mmPadding = 0
        DataField = 'Fornecedor_Contato'
        DataPipeline = pPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedido'
        mmHeight = 3810
        mmLeft = 25179
        mmTop = 91371
        mmWidth = 63493
        BandType = 0
        LayerName = Foreground
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        Brush.Color = 16770995
        Pen.Style = psClear
        mmHeight = 4702
        mmLeft = 48
        mmTop = 101848
        mmWidth = 197644
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3810
        mmLeft = 640
        mmTop = 102505
        mmWidth = 82756
        BandType = 0
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Pen.Color = clWhite
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 4763
        mmLeft = 101817
        mmTop = 101787
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ENTREGA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 84877
        mmTop = 102657
        mmWidth = 16452
        BandType = 0
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Pen.Color = clWhite
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 4763
        mmLeft = 118104
        mmTop = 101787
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'QTDE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 103023
        mmTop = 102657
        mmWidth = 15080
        BandType = 0
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Pen.Color = clWhite
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 4763
        mmLeft = 127567
        mmTop = 101787
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'UM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 119162
        mmTop = 102657
        mmWidth = 8232
        BandType = 0
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line101'
        Border.mmPadding = 0
        Pen.Color = clWhite
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 4763
        mmLeft = 150447
        mmTop = 101787
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label201'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'VLR UNIT'#193'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 128687
        mmTop = 102773
        mmWidth = 21148
        BandType = 0
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Pen.Color = clWhite
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 4763
        mmLeft = 161586
        mmTop = 101787
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'IPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 151707
        mmTop = 102773
        mmWidth = 9553
        BandType = 0
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Pen.Color = clWhite
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 4763
        mmLeft = 172390
        mmTop = 101787
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 162362
        mmTop = 102657
        mmWidth = 9553
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'VLR TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 173449
        mmTop = 102657
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText23'
        Border.mmPadding = 0
        DataField = 'Comprador'
        DataPipeline = pPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedido'
        mmHeight = 4646
        mmLeft = 25179
        mmTop = 54325
        mmWidth = 63493
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'COMPRADOR(A):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4646
        mmLeft = 1643
        mmTop = 54325
        mmWidth = 20409
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label26'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'E-MAIL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3810
        mmLeft = 91831
        mmTop = 91384
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText24'
        Border.mmPadding = 0
        DataField = 'Fornecedor_Email'
        DataPipeline = pPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedido'
        mmHeight = 3810
        mmLeft = 115215
        mmTop = 91384
        mmWidth = 81280
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label27'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ITENS'
        Color = 15724527
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 97691
        mmWidth = 9554
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label29'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DESCRI'#199#195'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4054
        mmLeft = 1643
        mmTop = 59704
        mmWidth = 20409
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText25'
        Border.mmPadding = 0
        DataField = 'Descricao'
        DataPipeline = pPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedido'
        mmHeight = 4054
        mmLeft = 25135
        mmTop = 59704
        mmWidth = 171686
        BandType = 0
        LayerName = Foreground
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Pen.Color = clWhite
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1470
        mmLeft = -24
        mmTop = 58793
        mmWidth = 197851
        BandType = 0
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Pen.Color = clWhite
        Pen.Width = 2
        Position = lpLeft
        Weight = 1.500000000000000000
        mmHeight = 4763
        mmLeft = 83650
        mmTop = 101811
        mmWidth = 1588
        BandType = 0
        LayerName = Foreground
      end
      object lEndereco2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lEndereco2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 
          'Av Benedicto Castilho de Andrade 1320 Terreo - CEP 13212-070, Ju' +
          'ndiai (SP)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avBottom
        mmHeight = 3283
        mmLeft = 190
        mmTop = 24240
        mmWidth = 197504
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
        mmHeight = 12171
        mmLeft = 95295
        mmTop = 233
        mmWidth = 20033
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label39'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CONDI'#199#195'O PGTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4054
        mmLeft = 1643
        mmTop = 64071
        mmWidth = 20409
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText30'
        Border.mmPadding = 0
        DataField = 'Condicao'
        DataPipeline = pPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedido'
        mmHeight = 4054
        mmLeft = 25260
        mmTop = 64071
        mmWidth = 171686
        BandType = 0
        LayerName = Foreground
      end
    end
    object pDetalhe: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object Itens: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'Itens'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'pItens'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = pItens
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Pedido de Compra Interno'
          PrinterSetup.Duplex = dpVertical
          PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 2540
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Version = '19.04'
          mmColumnWidth = 0
          DataPipelineName = 'pItens'
          object ppTitleBand1: TppTitleBand
            Visible = False
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
          end
          object ppDetailBand1: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 3440
            mmPrintPosition = 0
            object ppDBText1: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText1'
              Border.mmPadding = 0
              DataField = 'Data_Entrega'
              DataPipeline = pItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3386
              mmLeft = 84931
              mmTop = 0
              mmWidth = 16452
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText2: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText3'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'Valor_Unitario'
              DataPipeline = pItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3386
              mmLeft = 128588
              mmTop = 0
              mmWidth = 21148
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText4: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText5'
              Border.mmPadding = 0
              DataField = 'Descricao'
              DataPipeline = pItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3386
              mmLeft = 529
              mmTop = 0
              mmWidth = 82756
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText15: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText301'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'Quantidade'
              DataPipeline = pItens
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3386
              mmLeft = 102923
              mmTop = 0
              mmWidth = 15080
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText20: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText20'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'Unidade'
              DataPipeline = pItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3386
              mmLeft = 119063
              mmTop = 0
              mmWidth = 8232
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText21: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText21'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'Aliquota_IPI'
              DataPipeline = pItens
              DisplayFormat = ',##0.00%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3440
              mmLeft = 151607
              mmTop = 0
              mmWidth = 9553
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText22: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText22'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'Aliquota_ICMS'
              DataPipeline = pItens
              DisplayFormat = ',##0.00%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3440
              mmLeft = 162454
              mmTop = 0
              mmWidth = 9553
              BandType = 4
              LayerName = Foreground1
            end
            object ppDBText26: TppDBText
              DesignLayer = ppDesignLayer2
              UserName = 'DBText26'
              BlankWhenZero = True
              Border.mmPadding = 0
              DataField = 'Valor_Total'
              DataPipeline = pItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 3386
              mmLeft = 173567
              mmTop = 0
              mmWidth = 23073
              BandType = 4
              LayerName = Foreground1
            end
          end
          object ppSummaryBand2: TppSummaryBand
            BeforeGenerate = ppSummaryBand2BeforeGenerate
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 21960
            mmPrintPosition = 0
            object ppShape4: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape4'
              Brush.Color = 16770995
              Pen.Style = psClear
              mmHeight = 20630
              mmLeft = 136261
              mmTop = 1058
              mmWidth = 61031
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel28: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label21'
              Border.mmPadding = 0
              Caption = 'TOTAL DE ITENS:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 4031
              mmLeft = 138642
              mmTop = 2117
              mmWidth = 31930
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel30: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label30'
              Border.mmPadding = 0
              Caption = 'TOTAL DAS MERCADORIAS:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 4031
              mmLeft = 138642
              mmTop = 5821
              mmWidth = 31930
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel31: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label301'
              Border.mmPadding = 0
              Caption = 'TOTAL DO IPI:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 4032
              mmLeft = 138642
              mmTop = 9260
              mmWidth = 16140
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel32: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label32'
              Border.mmPadding = 0
              Caption = 'TOTAL DO ICMS:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 4032
              mmLeft = 138642
              mmTop = 12965
              mmWidth = 19050
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBCalc4: TppDBCalc
              DesignLayer = ppDesignLayer2
              UserName = 'DBCalc4'
              Border.mmPadding = 0
              DataField = 'Valor_ICMS'
              DataPipeline = pItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 4031
              mmLeft = 173567
              mmTop = 12965
              mmWidth = 23073
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel33: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label33'
              Border.mmPadding = 0
              Caption = 'TOTAL DO PEDIDO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3439
              mmLeft = 138642
              mmTop = 17463
              mmWidth = 32103
              BandType = 7
              LayerName = Foreground1
            end
            object ppShape7: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape7'
              Brush.Color = 16770995
              Pen.Style = psClear
              mmHeight = 708
              mmLeft = 0
              mmTop = 794
              mmWidth = 197380
              BandType = 7
              LayerName = Foreground1
            end
            object ppLine18: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line18'
              Border.mmPadding = 0
              Pen.Color = clWhite
              Pen.Width = 2
              Position = lpLeft
              Weight = 1.500000000000000000
              mmHeight = 22996
              mmLeft = 172509
              mmTop = 0
              mmWidth = 1588
              BandType = 7
              LayerName = Foreground1
            end
            object ppLine19: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line19'
              Border.mmPadding = 0
              Pen.Color = clWhite
              Pen.Width = 2
              Weight = 1.500000000000000000
              mmHeight = 1588
              mmLeft = 135467
              mmTop = 16669
              mmWidth = 62442
              BandType = 7
              LayerName = Foreground1
            end
            object TotalPed: TppVariable
              DesignLayer = ppDesignLayer2
              UserName = 'TotalPed'
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 0
              DataType = dtCurrency
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 173500
              mmTop = 17426
              mmWidth = 23071
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBCalc1: TppDBCalc
              DesignLayer = ppDesignLayer2
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              DataField = 'Item'
              DataPipeline = pItens
              DisplayFormat = '0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'pItens'
              mmHeight = 4031
              mmLeft = 173567
              mmTop = 2117
              mmWidth = 23073
              BandType = 7
              LayerName = Foreground1
            end
            object TotalMerc: TppDBCalc
              DesignLayer = ppDesignLayer2
              UserName = 'TotalMerc'
              Border.mmPadding = 0
              DataField = 'Valor_Total'
              DataPipeline = pItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 4031
              mmLeft = 173567
              mmTop = 5821
              mmWidth = 23073
              BandType = 7
              LayerName = Foreground1
            end
            object TotalIPI: TppDBCalc
              DesignLayer = ppDesignLayer2
              UserName = 'TotalIPI'
              Border.mmPadding = 0
              DataField = 'Valor_IPI'
              DataPipeline = pItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pItens'
              mmHeight = 4031
              mmLeft = 173567
              mmTop = 9260
              mmWidth = 23073
              BandType = 7
              LayerName = Foreground1
            end
          end
          object ppDesignLayers2: TppDesignLayers
            object ppDesignLayer2: TppDesignLayer
              UserName = 'Foreground1'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      Visible = False
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3703
      mmPrintPosition = 0
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
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
        mmHeight = 2879
        mmLeft = 444
        mmTop = 529
        mmWidth = 43519
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
        mmLeft = 87019
        mmTop = 529
        mmWidth = 32632
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
        mmLeft = 119548
        mmTop = 511
        mmWidth = 24077
        BandType = 8
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3704
        mmLeft = 48154
        mmTop = 0
        mmWidth = 5821
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
        mmLeft = 180162
        mmTop = 529
        mmWidth = 15610
        BandType = 8
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1588
        mmLeft = 0
        mmTop = 0
        mmWidth = 197287
        BandType = 8
        LayerName = Foreground
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3704
        mmLeft = 179721
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 74613
      mmPrintPosition = 0
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape6'
        Brush.Color = 16770995
        Pen.Style = psClear
        mmHeight = 19690
        mmLeft = 155
        mmTop = 30627
        mmWidth = 197442
        BandType = 7
        LayerName = Foreground
      end
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape5'
        Brush.Color = 16770995
        Pen.Style = psClear
        mmHeight = 19690
        mmLeft = 155
        mmTop = 5827
        mmWidth = 197442
        BandType = 7
        LayerName = Foreground
      end
      object ppDBMemo1: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo1'
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'Obs_Pedido'
        DataPipeline = pPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'pPedido'
        mmHeight = 16690
        mmLeft = 1260
        mmTop = 7121
        mmWidth = 194467
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBMemo2: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo2'
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'Obs_Entrega'
        DataPipeline = pPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'pPedido'
        mmHeight = 16690
        mmLeft = 1411
        mmTop = 32318
        mmWidth = 194467
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label34'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'OBSERVA'#199#195'O DO PEDIDO'
        Color = 15724527
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4561
        mmLeft = 0
        mmTop = 2295
        mmWidth = 38071
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label35'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'OBSERVA'#199#195'O DA ENTREGA'
        Color = 15724527
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 26897
        mmWidth = 40425
        BandType = 7
        LayerName = Foreground
      end
      object ppShape8: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape8'
        Brush.Color = 16770995
        Pen.Style = psClear
        mmHeight = 794
        mmLeft = 4057
        mmTop = 63634
        mmWidth = 57980
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label36'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'COMPRADOR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3703
        mmLeft = 3792
        mmTop = 63813
        mmWidth = 17196
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText27'
        Border.mmPadding = 0
        DataField = 'Comprador'
        DataPipeline = pPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedido'
        mmHeight = 3703
        mmLeft = 21288
        mmTop = 63813
        mmWidth = 40217
        BandType = 7
        LayerName = Foreground
      end
      object ppShape9: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape9'
        Brush.Color = 16770995
        Pen.Style = psClear
        mmHeight = 794
        mmLeft = 69850
        mmTop = 63675
        mmWidth = 57942
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label37'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'GERENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 69850
        mmTop = 63810
        mmWidth = 11903
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText28'
        Border.mmPadding = 0
        DataField = 'Gerente'
        DataPipeline = pPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedido'
        mmHeight = 3704
        mmLeft = 82154
        mmTop = 63810
        mmWidth = 45507
        BandType = 7
        LayerName = Foreground
      end
      object ppShape10: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape10'
        Brush.Color = 16770995
        Pen.Style = psClear
        mmHeight = 794
        mmLeft = 136437
        mmTop = 63105
        mmWidth = 57942
        BandType = 7
        LayerName = Foreground
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label38'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DIRETOR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 136437
        mmTop = 63810
        mmWidth = 11832
        BandType = 7
        LayerName = Foreground
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText29'
        Border.mmPadding = 0
        DataField = 'Diretor'
        DataPipeline = pPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPedido'
        mmHeight = 3704
        mmLeft = 148873
        mmTop = 63810
        mmWidth = 45507
        BandType = 7
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object pPedido: TppDBPipeline
    DataSource = dstPedido
    CloseDataSource = True
    UserName = 'pPedido'
    Left = 416
    Top = 8
    object pPedidoppField1: TppField
      FieldAlias = 'Pedido'
      FieldName = 'Pedido'
      FieldLength = 15
      DisplayWidth = 15
      Position = 0
    end
    object pPedidoppField2: TppField
      FieldAlias = 'Referencia_Cliente'
      FieldName = 'Referencia_Cliente'
      FieldLength = 15
      DisplayWidth = 15
      Position = 1
    end
    object pPedidoppField3: TppField
      FieldAlias = 'Data_Pedido'
      FieldName = 'Data_Pedido'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object pPedidoppField4: TppField
      FieldAlias = 'Feito_Por'
      FieldName = 'Feito_Por'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object pPedidoppField5: TppField
      FieldAlias = 'Solicitante'
      FieldName = 'Solicitante'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object pPedidoppField6: TppField
      FieldAlias = 'Comprador'
      FieldName = 'Comprador'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object pPedidoppField7: TppField
      FieldAlias = 'Comprador_Email'
      FieldName = 'Comprador_Email'
      FieldLength = 120
      DisplayWidth = 120
      Position = 6
    end
    object pPedidoppField8: TppField
      FieldAlias = 'Gerente'
      FieldName = 'Gerente'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object pPedidoppField9: TppField
      FieldAlias = 'Diretor'
      FieldName = 'Diretor'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object pPedidoppField10: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 120
      DisplayWidth = 120
      Position = 9
    end
    object pPedidoppField11: TppField
      FieldAlias = 'Condicao'
      FieldName = 'Condicao'
      FieldLength = 40
      DisplayWidth = 40
      Position = 10
    end
    object pPedidoppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Parcelas'
      FieldName = 'Parcelas'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object pPedidoppField13: TppField
      FieldAlias = 'Obs_Pedido'
      FieldName = 'Obs_Pedido'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 12
      Searchable = False
      Sortable = False
    end
    object pPedidoppField14: TppField
      FieldAlias = 'Obs_Entrega'
      FieldName = 'Obs_Entrega'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 13
      Searchable = False
      Sortable = False
    end
    object pPedidoppField15: TppField
      FieldAlias = 'Fornecedor'
      FieldName = 'Fornecedor'
      FieldLength = 60
      DisplayWidth = 60
      Position = 14
    end
    object pPedidoppField16: TppField
      FieldAlias = 'Fornecedor_Contato'
      FieldName = 'Fornecedor_Contato'
      FieldLength = 60
      DisplayWidth = 60
      Position = 15
    end
    object pPedidoppField17: TppField
      FieldAlias = 'Fornecedor_CNPJCPF'
      FieldName = 'Fornecedor_CNPJCPF'
      FieldLength = 14
      DisplayWidth = 14
      Position = 16
    end
    object pPedidoppField18: TppField
      FieldAlias = 'Fornecedor_Endereco'
      FieldName = 'Fornecedor_Endereco'
      FieldLength = 52
      DisplayWidth = 52
      Position = 17
    end
    object pPedidoppField19: TppField
      FieldAlias = 'Fornecedor_Bairro'
      FieldName = 'Fornecedor_Bairro'
      FieldLength = 40
      DisplayWidth = 40
      Position = 18
    end
    object pPedidoppField20: TppField
      FieldAlias = 'Fornecedor_CEP'
      FieldName = 'Fornecedor_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 19
    end
    object pPedidoppField21: TppField
      FieldAlias = 'Fornecedor_Cidade'
      FieldName = 'Fornecedor_Cidade'
      FieldLength = 20
      DisplayWidth = 20
      Position = 20
    end
    object pPedidoppField22: TppField
      FieldAlias = 'Fornecedor_Estado'
      FieldName = 'Fornecedor_Estado'
      FieldLength = 35
      DisplayWidth = 35
      Position = 21
    end
    object pPedidoppField23: TppField
      FieldAlias = 'Fornecedor_Telefone'
      FieldName = 'Fornecedor_Telefone'
      FieldLength = 33
      DisplayWidth = 33
      Position = 22
    end
    object pPedidoppField24: TppField
      FieldAlias = 'Fornecedor_Email'
      FieldName = 'Fornecedor_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 23
    end
  end
  object pEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    UserName = 'pEmpresas'
    Left = 288
    Top = 8
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
      DisplayWidth = 25
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
      DisplayWidth = 14
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
      Alignment = taRightJustify
      FieldAlias = 'Pedido_Nota'
      FieldName = 'Pedido_Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 5
      Position = 89
    end
    object pEmpresasppField91: TppField
      FieldAlias = 'Email_Copia'
      FieldName = 'Email_Copia'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 90
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField92: TppField
      FieldAlias = 'Email_SSL'
      FieldName = 'Email_SSL'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 91
    end
    object pEmpresasppField93: TppField
      FieldAlias = 'Email_Autenticacao'
      FieldName = 'Email_Autenticacao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 92
    end
    object pEmpresasppField94: TppField
      FieldAlias = 'Email_Metodo'
      FieldName = 'Email_Metodo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 93
    end
    object pEmpresasppField95: TppField
      FieldAlias = 'CartaCorrecao_Layout'
      FieldName = 'CartaCorrecao_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 94
    end
    object pEmpresasppField96: TppField
      FieldAlias = 'CNAE'
      FieldName = 'CNAE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 95
    end
    object pEmpresasppField97: TppField
      FieldAlias = 'Email_MsgEnvioCCE'
      FieldName = 'Email_MsgEnvioCCE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 96
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField98: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_EletronicaEntrada'
      FieldName = 'Nota_EletronicaEntrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 97
    end
    object pEmpresasppField99: TppField
      FieldAlias = 'NFEletronica_ModeloEntrada'
      FieldName = 'NFEletronica_ModeloEntrada'
      FieldLength = 2
      DisplayWidth = 2
      Position = 98
    end
    object pEmpresasppField100: TppField
      FieldAlias = 'NFEletronica_SerieEntrada'
      FieldName = 'NFEletronica_SerieEntrada'
      FieldLength = 3
      DisplayWidth = 3
      Position = 99
    end
    object pEmpresasppField101: TppField
      FieldAlias = 'NFEletronica_Numeracao'
      FieldName = 'NFEletronica_Numeracao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 100
    end
    object pEmpresasppField102: TppField
      Alignment = taRightJustify
      FieldAlias = 'Logomarca_Largura'
      FieldName = 'Logomarca_Largura'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 101
    end
    object pEmpresasppField103: TppField
      FieldAlias = 'Pagamento'
      FieldName = 'Pagamento'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 102
    end
    object pEmpresasppField104: TppField
      FieldAlias = 'Modulo_Emprestimos'
      FieldName = 'Modulo_Emprestimos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 103
    end
    object pEmpresasppField105: TppField
      FieldAlias = 'Modulo_XMLCTe'
      FieldName = 'Modulo_XMLCTe'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 104
    end
    object pEmpresasppField106: TppField
      FieldAlias = 'Regime'
      FieldName = 'Regime'
      FieldLength = 1
      DisplayWidth = 1
      Position = 105
    end
    object pEmpresasppField107: TppField
      FieldAlias = 'Modulo_Vendas'
      FieldName = 'Modulo_Vendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 106
    end
    object pEmpresasppField108: TppField
      Alignment = taRightJustify
      FieldAlias = 'CTE_Numero'
      FieldName = 'CTE_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 107
    end
    object pEmpresasppField109: TppField
      FieldAlias = 'CTE_Modelo'
      FieldName = 'CTE_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 108
    end
    object pEmpresasppField110: TppField
      FieldAlias = 'CTE_Serie'
      FieldName = 'CTE_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 109
    end
    object pEmpresasppField111: TppField
      FieldAlias = 'CTE_Layout'
      FieldName = 'CTE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 110
    end
    object pEmpresasppField112: TppField
      FieldAlias = 'Modulo_Logistica'
      FieldName = 'Modulo_Logistica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 111
    end
    object pEmpresasppField113: TppField
      FieldAlias = 'Modulo_Boleto'
      FieldName = 'Modulo_Boleto'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 112
    end
    object pEmpresasppField114: TppField
      FieldAlias = 'Telefone1'
      FieldName = 'Telefone1'
      FieldLength = 11
      DisplayWidth = 11
      Position = 113
    end
    object pEmpresasppField115: TppField
      FieldAlias = 'Telefone2'
      FieldName = 'Telefone2'
      FieldLength = 11
      DisplayWidth = 11
      Position = 114
    end
    object pEmpresasppField116: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 11
      DisplayWidth = 11
      Position = 115
    end
    object pEmpresasppField117: TppField
      FieldAlias = 'Modulo_SISCOMEXWEB'
      FieldName = 'Modulo_SISCOMEXWEB'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 116
    end
    object pEmpresasppField118: TppField
      FieldAlias = 'Modulo_ECommerce'
      FieldName = 'Modulo_ECommerce'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 117
    end
    object pEmpresasppField119: TppField
      FieldAlias = 'Modulo_ManifestoDest'
      FieldName = 'Modulo_ManifestoDest'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 118
    end
    object pEmpresasppField120: TppField
      FieldAlias = 'Manifesto_LayOut'
      FieldName = 'Manifesto_LayOut'
      FieldLength = 10
      DisplayWidth = 10
      Position = 119
    end
    object pEmpresasppField121: TppField
      FieldAlias = 'UF_WebServiceManifesto'
      FieldName = 'UF_WebServiceManifesto'
      FieldLength = 10
      DisplayWidth = 10
      Position = 120
    end
    object pEmpresasppField122: TppField
      FieldAlias = 'Modulo_Televendas'
      FieldName = 'Modulo_Televendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 121
    end
    object pEmpresasppField123: TppField
      FieldAlias = 'Email_MsgOrcamento'
      FieldName = 'Email_MsgOrcamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 122
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField124: TppField
      FieldAlias = 'Email_MsgBoleto'
      FieldName = 'Email_MsgBoleto'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 123
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField125: TppField
      FieldAlias = 'PISCOFINS_F100'
      FieldName = 'PISCOFINS_F100'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 124
    end
    object pEmpresasppField126: TppField
      FieldAlias = 'Logo'
      FieldName = 'Logo'
      FieldLength = 120
      DisplayWidth = 120
      Position = 125
    end
    object pEmpresasppField127: TppField
      FieldAlias = 'Modulo_ConsultaProdutos'
      FieldName = 'Modulo_ConsultaProdutos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 126
    end
    object pEmpresasppField128: TppField
      FieldAlias = 'Modulo_Contabil'
      FieldName = 'Modulo_Contabil'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 127
    end
    object pEmpresasppField129: TppField
      FieldAlias = 'Modulo_EnviarArmazem'
      FieldName = 'Modulo_EnviarArmazem'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 128
    end
    object pEmpresasppField130: TppField
      FieldAlias = 'Versao_DLL'
      FieldName = 'Versao_DLL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 129
    end
    object pEmpresasppField131: TppField
      FieldAlias = 'Desativada'
      FieldName = 'Desativada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 130
    end
    object pEmpresasppField132: TppField
      FieldAlias = 'Menu_Inventario'
      FieldName = 'Menu_Inventario'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 131
    end
    object pEmpresasppField133: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_GNRE'
      FieldName = 'Ambiente_GNRE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 132
    end
    object pEmpresasppField134: TppField
      FieldAlias = 'GNRE_Layout'
      FieldName = 'GNRE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 133
    end
    object pEmpresasppField135: TppField
      FieldAlias = 'Modulo_GNRE'
      FieldName = 'Modulo_GNRE'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 134
    end
    object pEmpresasppField136: TppField
      FieldAlias = 'Modulo_DadosDI'
      FieldName = 'Modulo_DadosDI'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 135
    end
    object pEmpresasppField137: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Qualificacao'
      FieldName = 'Contador_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 136
    end
    object pEmpresasppField138: TppField
      FieldAlias = 'Contador_CRCUF'
      FieldName = 'Contador_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 137
    end
    object pEmpresasppField139: TppField
      FieldAlias = 'Contador_CRCData'
      FieldName = 'Contador_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 138
    end
    object pEmpresasppField140: TppField
      FieldAlias = 'NIRE'
      FieldName = 'NIRE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 139
    end
    object pEmpresasppField141: TppField
      FieldAlias = 'Fechamento_FinanceiroFinal'
      FieldName = 'Fechamento_FinanceiroFinal'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 140
    end
    object pEmpresasppField142: TppField
      Alignment = taRightJustify
      FieldAlias = 'SPED_CTAPlanoRef'
      FieldName = 'SPED_CTAPlanoRef'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 141
    end
    object pEmpresasppField143: TppField
      FieldAlias = 'Contador_CRCSequencial'
      FieldName = 'Contador_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 142
    end
    object pEmpresasppField144: TppField
      FieldAlias = 'Refis'
      FieldName = 'Refis'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 143
    end
    object pEmpresasppField145: TppField
      FieldAlias = 'Paes'
      FieldName = 'Paes'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 144
    end
    object pEmpresasppField146: TppField
      Alignment = taRightJustify
      FieldAlias = 'Forma_Tributacao'
      FieldName = 'Forma_Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 145
    end
    object pEmpresasppField147: TppField
      FieldAlias = 'Extincao_RTT'
      FieldName = 'Extincao_RTT'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 146
    end
    object pEmpresasppField148: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtde_SCP'
      FieldName = 'Qtde_SCP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 147
    end
    object pEmpresasppField149: TppField
      FieldAlias = 'Natureza_Juridica'
      FieldName = 'Natureza_Juridica'
      FieldLength = 10
      DisplayWidth = 10
      Position = 148
    end
    object pEmpresasppField150: TppField
      FieldAlias = 'NIRE_Data'
      FieldName = 'NIRE_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 149
    end
    object pEmpresasppField151: TppField
      FieldAlias = 'Representante_Bairro'
      FieldName = 'Representante_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 150
    end
    object pEmpresasppField152: TppField
      FieldAlias = 'Representante_CEP'
      FieldName = 'Representante_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 151
    end
    object pEmpresasppField153: TppField
      FieldAlias = 'Representante_CNPJ'
      FieldName = 'Representante_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 152
    end
    object pEmpresasppField154: TppField
      FieldAlias = 'Representante_Complemento'
      FieldName = 'Representante_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 153
    end
    object pEmpresasppField155: TppField
      FieldAlias = 'Representante_CPF'
      FieldName = 'Representante_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 154
    end
    object pEmpresasppField156: TppField
      FieldAlias = 'Representante_CRC'
      FieldName = 'Representante_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 155
    end
    object pEmpresasppField157: TppField
      FieldAlias = 'Representante_CRCData'
      FieldName = 'Representante_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 156
    end
    object pEmpresasppField158: TppField
      FieldAlias = 'Representante_CRCSequencial'
      FieldName = 'Representante_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 157
    end
    object pEmpresasppField159: TppField
      FieldAlias = 'Representante_CRCUF'
      FieldName = 'Representante_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 158
    end
    object pEmpresasppField160: TppField
      FieldAlias = 'Representante_Email'
      FieldName = 'Representante_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 159
    end
    object pEmpresasppField161: TppField
      FieldAlias = 'Representante_Estado'
      FieldName = 'Representante_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 160
    end
    object pEmpresasppField162: TppField
      FieldAlias = 'Representante_FAX'
      FieldName = 'Representante_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 161
    end
    object pEmpresasppField163: TppField
      FieldAlias = 'Representante_Nome'
      FieldName = 'Representante_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 162
    end
    object pEmpresasppField164: TppField
      FieldAlias = 'Representante_Numero'
      FieldName = 'Representante_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 163
    end
    object pEmpresasppField165: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Qualificacao'
      FieldName = 'Representante_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 164
    end
    object pEmpresasppField166: TppField
      FieldAlias = 'Representante_Rua'
      FieldName = 'Representante_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 165
    end
    object pEmpresasppField167: TppField
      FieldAlias = 'Representante_Telefone'
      FieldName = 'Representante_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 166
    end
    object pEmpresasppField168: TppField
      FieldAlias = 'Contador_SignatarioResp'
      FieldName = 'Contador_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 167
    end
    object pEmpresasppField169: TppField
      FieldAlias = 'Representante_SignatarioResp'
      FieldName = 'Representante_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 168
    end
    object pEmpresasppField170: TppField
      FieldAlias = 'Autorizacao_NFECNPJ'
      FieldName = 'Autorizacao_NFECNPJ'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 169
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField171: TppField
      FieldAlias = 'Autorizacao_NFECPF'
      FieldName = 'Autorizacao_NFECPF'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 170
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField172: TppField
      Alignment = taRightJustify
      FieldAlias = 'Encerramento_Contabil'
      FieldName = 'Encerramento_Contabil'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 171
    end
    object pEmpresasppField173: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Municipio'
      FieldName = 'Contador_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 172
    end
    object pEmpresasppField174: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Municipio'
      FieldName = 'Representante_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 173
    end
    object pEmpresasppField175: TppField
      FieldAlias = 'Classificacao_Tributaria'
      FieldName = 'Classificacao_Tributaria'
      FieldLength = 2
      DisplayWidth = 2
      Position = 174
    end
    object pEmpresasppField176: TppField
      Alignment = taRightJustify
      FieldAlias = 'Obrigada_ECD'
      FieldName = 'Obrigada_ECD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 175
    end
    object pEmpresasppField177: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desoneracao_Folha'
      FieldName = 'Desoneracao_Folha'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 176
    end
    object pEmpresasppField178: TppField
      Alignment = taRightJustify
      FieldAlias = 'Isencao_Multa'
      FieldName = 'Isencao_Multa'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 177
    end
    object pEmpresasppField179: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_REINF'
      FieldName = 'Ambiente_REINF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 178
    end
    object pEmpresasppField180: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_Sequencia'
      FieldName = 'REINF_Sequencia'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 179
    end
    object pEmpresasppField181: TppField
      FieldAlias = 'REINF_ModoLancamento'
      FieldName = 'REINF_ModoLancamento'
      FieldLength = 10
      DisplayWidth = 10
      Position = 180
    end
    object pEmpresasppField182: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_ProcEmi'
      FieldName = 'REINF_ProcEmi'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 181
    end
    object pEmpresasppField183: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_tpInsc'
      FieldName = 'REINF_tpInsc'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 182
    end
    object pEmpresasppField184: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_indSitPJ'
      FieldName = 'REINF_indSitPJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 183
    end
    object pEmpresasppField185: TppField
      FieldAlias = 'REINF_ideEFR'
      FieldName = 'REINF_ideEFR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 184
    end
    object pEmpresasppField186: TppField
      FieldAlias = 'REINF_VerProc'
      FieldName = 'REINF_VerProc'
      FieldLength = 5
      DisplayWidth = 5
      Position = 185
    end
    object pEmpresasppField187: TppField
      FieldAlias = 'REINF_iniValid'
      FieldName = 'REINF_iniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 186
    end
    object pEmpresasppField188: TppField
      FieldAlias = 'REINF_fimValid'
      FieldName = 'REINF_fimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 187
    end
    object pEmpresasppField189: TppField
      FieldAlias = 'REINF_AltiniValid'
      FieldName = 'REINF_AltiniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 188
    end
    object pEmpresasppField190: TppField
      FieldAlias = 'REINF_AltfimValid'
      FieldName = 'REINF_AltfimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 189
    end
    object pEmpresasppField191: TppField
      FieldAlias = 'Versao_REINF'
      FieldName = 'Versao_REINF'
      FieldLength = 10
      DisplayWidth = 10
      Position = 190
    end
    object pEmpresasppField192: TppField
      FieldAlias = 'EmissaoNFE_Bloqueada'
      FieldName = 'EmissaoNFE_Bloqueada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 191
    end
    object pEmpresasppField193: TppField
      FieldAlias = 'EmissaoNFE_BloqueadaUsuario'
      FieldName = 'EmissaoNFE_BloqueadaUsuario'
      FieldLength = 80
      DisplayWidth = 80
      Position = 192
    end
    object pEmpresasppField194: TppField
      FieldAlias = 'MOdulo_Despacho'
      FieldName = 'MOdulo_Despacho'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 193
    end
    object pEmpresasppField195: TppField
      Alignment = taRightJustify
      FieldAlias = 'Processo_Exp'
      FieldName = 'Processo_Exp'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 194
    end
    object pEmpresasppField196: TppField
      Alignment = taRightJustify
      FieldAlias = 'PO'
      FieldName = 'PO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 195
    end
    object pEmpresasppField197: TppField
      FieldAlias = 'PO_Automatico'
      FieldName = 'PO_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 196
    end
    object pEmpresasppField198: TppField
      FieldAlias = 'Mascara_ProcessoExp'
      FieldName = 'Mascara_ProcessoExp'
      FieldLength = 7
      DisplayWidth = 7
      Position = 197
    end
    object pEmpresasppField199: TppField
      FieldAlias = 'Mascara_PO'
      FieldName = 'Mascara_PO'
      FieldLength = 7
      DisplayWidth = 7
      Position = 198
    end
    object pEmpresasppField200: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_CTe'
      FieldName = 'Ambiente_CTe'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 199
    end
    object pEmpresasppField201: TppField
      FieldAlias = 'Transportadora'
      FieldName = 'Transportadora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 200
    end
    object pEmpresasppField202: TppField
      FieldAlias = 'RNTRC'
      FieldName = 'RNTRC'
      FieldLength = 8
      DisplayWidth = 8
      Position = 201
    end
    object pEmpresasppField203: TppField
      FieldAlias = 'Assinatura'
      FieldName = 'Assinatura'
      FieldLength = 120
      DisplayWidth = 120
      Position = 202
    end
    object pEmpresasppField204: TppField
      FieldAlias = 'Classificacao_ContribIPI'
      FieldName = 'Classificacao_ContribIPI'
      FieldLength = 2
      DisplayWidth = 2
      Position = 203
    end
    object pEmpresasppField205: TppField
      FieldAlias = 'Envio_Backup'
      FieldName = 'Envio_Backup'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
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
      FieldAlias = 'ECommerce_Data'
      FieldName = 'ECommerce_Data'
      FieldLength = 10
      DisplayWidth = 10
      Position = 206
    end
    object pEmpresasppField208: TppField
      FieldAlias = 'ECommerce_Hora'
      FieldName = 'ECommerce_Hora'
      FieldLength = 10
      DisplayWidth = 10
      Position = 207
    end
    object pEmpresasppField209: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_Armazem'
      FieldName = 'Ambiente_Armazem'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 208
    end
  end
  object pItens: TppDBPipeline
    DataSource = dsItens
    CloseDataSource = True
    UserName = 'pItens'
    Left = 352
    Top = 8
    object pItensppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Item'
      FieldName = 'Item'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object pItensppField2: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 120
      DisplayWidth = 120
      Position = 1
    end
    object pItensppField3: TppField
      FieldAlias = 'Data_Entrega'
      FieldName = 'Data_Entrega'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object pItensppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade'
      FieldName = 'Quantidade'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object pItensppField5: TppField
      FieldAlias = 'Unidade'
      FieldName = 'Unidade'
      FieldLength = 3
      DisplayWidth = 3
      Position = 4
    end
    object pItensppField6: TppField
      FieldAlias = 'Valor_Unitario'
      FieldName = 'Valor_Unitario'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 5
    end
    object pItensppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_Total'
      FieldName = 'Valor_Total'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object pItensppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_IPI'
      FieldName = 'Aliquota_IPI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object pItensppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_IPI'
      FieldName = 'Valor_IPI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object pItensppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_ICMS'
      FieldName = 'Aliquota_ICMS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object pItensppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_ICMS'
      FieldName = 'Valor_ICMS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
  end
  object tComprador: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'select Matricula, Nome from usuarios where Comprador = 1')
    FetchRows = 1
    Left = 48
    Top = 456
  end
  object dstComprador: TDataSource
    DataSet = tComprador
    Left = 50
    Top = 507
  end
  object dstGerente: TDataSource
    DataSet = tGerente
    Left = 122
    Top = 507
  end
  object tGerente: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'select Matricula, Nome from usuarios where gerente = 1')
    FetchRows = 1
    Left = 120
    Top = 456
  end
  object dstDiretor: TDataSource
    DataSet = tDiretor
    Left = 186
    Top = 507
  end
  object tDiretor: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'select Matricula, Nome from usuarios where diretor = 1')
    FetchRows = 1
    Left = 184
    Top = 456
  end
  object tPedido: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      
        'select Pedido = Case when isnull(Referencia_Cliente, '#39#39#39#39') = '#39#39#39 +
        #39' then CAST(Pedido as VARCHAR(15)) else Referencia_Cliente end'
      '      ,Referencia_Cliente'
      '      ,Data_Pedido'
      
        #9'  ,Feito_Por   = (select Nome from Cybersoft_Cadastros.dbo.Usua' +
        'rios where Matricula = PC.Usuario)'
      
        #9'  ,Solicitante = (select Nome from Cybersoft_Cadastros.dbo.Usua' +
        'rios where Matricula = PC.Solicitante) '
      
        #9'  ,Comprador   = (select Nome from Cybersoft_Cadastros.dbo.Usua' +
        'rios where Matricula = PC.Comprador)'
      
        #9'  ,Comprador_Email = (select Email from Cybersoft_Cadastros.dbo' +
        '.Usuarios where Matricula = PC.Comprador)'
      
        #9'  ,Gerente     = (select Nome from Cybersoft_Cadastros.dbo.Usua' +
        'rios where Matricula = PC.Gerente)'
      
        #9'  ,Diretor     = (select Nome from Cybersoft_Cadastros.dbo.Usua' +
        'rios where Matricula = PC.Diretor)'
      #9'  ,Descricao'
      
        #9'  ,Condicao    = (select Descricao from Cybersoft_Cadastros.dbo' +
        '.ModalidadesPagamento where Codigo = PC.Condicao_Pgto)'
      #9'  ,Parcelas'
      #9'  ,Obs_Pedido'
      #9'  ,Obs_Entrega'
      ''
      
        #9'  ,Fornecedor         = (select Nome from Fornecedores where Co' +
        'digo = Fornecedor) '
      
        #9'  ,Fornecedor_Contato = (select Contato from Fornecedores where' +
        ' Codigo = Fornecedor) '
      
        #9'  ,Fornecedor_CNPJCPF = case when (select isnull(CNPJ, '#39#39') from' +
        ' Fornecedores where Codigo = Fornecedor) <> '#39#39' then'
      
        '                                (select CNPJ from Fornecedores w' +
        'here Codigo = Fornecedor)'#9'   '
      #9#9#9#9#9#9#9'else'
      
        '                                (select CPF from Fornecedores wh' +
        'ere Codigo = Fornecedor)'
      #9#9#9#9#9#9#9'end'
      
        '      ,Fornecedor_Endereco = (select ISNULL(Rua, '#39#39')+'#39', '#39'+ISNULL' +
        '(Rua_Numero, '#39#39') from Fornecedores where Codigo = Fornecedor) '
      
        #9'  ,Fornecedor_Bairro   = (select Bairro from Fornecedores where' +
        ' Codigo = Fornecedor) '
      
        #9'  ,Fornecedor_CEP      = (select CEP from Fornecedores where Co' +
        'digo = Fornecedor) '
      
        #9'  ,Fornecedor_Cidade   = (select Municipio from Fornecedores wh' +
        'ere Codigo = Fornecedor) '
      
        #9'  ,Fornecedor_Estado   = (select Nome from Cybersoft_Cadastros.' +
        'dbo.Estados where Codigo = (select Estado from Fornecedores wher' +
        'e Codigo = Fornecedor)) + (select '#39' ('#39'+Estado+'#39')'#39' from Fornecedo' +
        'res where Codigo = Fornecedor)'
      
        #9'  ,Fornecedor_Telefone = (select isnull(Telefone1, '#39#39') + case w' +
        'hen isnull(Telefone2, '#39#39') <> '#39#39' then '#39' / '#39'+isnull(Telefone2, '#39#39')' +
        ' else '#39#39' end from Fornecedores where Codigo = Fornecedor) '
      
        #9'  ,Fornecedor_Email     = (select Email from Fornecedores where' +
        ' Codigo = Fornecedor) '
      'from PedidoCompra PC'
      'where pedido = 1')
    FetchRows = 1
    Active = True
    Left = 256
    Top = 456
  end
  object dstPedido: TDataSource
    DataSet = tPedido
    Left = 258
    Top = 507
  end
  object tItens: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Item'
      '     , Descricao'
      '     , Data_Entrega'
      '     , Quantidade'
      '     , Unidade'
      '     , Valor_Unitario'
      '     , Valor_Total = Valor_Unitario * Quantidade'
      '     , Aliquota_IPI'
      
        '     , Valor_IPI = (Valor_Unitario * Quantidade) * (Aliquota_IPI' +
        '/100)'
      '     , Aliquota_ICMS'
      
        '     , Valor_ICMS = (Valor_Unitario * Quantidade) * (Aliquota_IC' +
        'MS/100)'
      'from pedidoCompraitens'
      'where pedido = 1')
    FetchRows = 1
    Active = True
    Left = 320
    Top = 456
  end
  object dsItens: TDataSource
    DataSet = tItens
    Left = 322
    Top = 507
  end
end
