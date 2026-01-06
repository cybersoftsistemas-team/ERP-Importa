object Fiscal_AberturaEstoque: TFiscal_AberturaEstoque
  Left = 282
  Top = 161
  BorderStyle = bsDialog
  Caption = 'Fiscal_AberturaEstoque'
  ClientHeight = 565
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    779
    565)
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 779
    Height = 48
    Align = alTop
    Stretch = True
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 68
    Height = 21
    Caption = 'ESTOQUE'
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
    Width = 186
    Height = 18
    Caption = 'Saldo de abertura de estoque.'
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
    Top = 535
    Width = 779
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      779
      30)
    object bSair: TButton
      Left = 703
      Top = 1
      Width = 75
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
      Width = 441
      Height = 29
      Cursor = crHandPoint
      DataSource = dmFiscal.dsProdutosTransferencia
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
  end
  object Panel2: TPanel
    Left = 4
    Top = 52
    Width = 772
    Height = 240
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 1
    object StaticText6: TStaticText
      Left = 5
      Top = 29
      Width = 121
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Produto'
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
    object cProdutoOrigem: TRxDBLookupCombo
      Left = 231
      Top = 29
      Width = 536
      Height = 21
      DropDownCount = 10
      DataField = 'Produto_Entrada'
      DataSource = dmFiscal.dsProdutosTransferencia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo; Descricao'
      LookupDisplayIndex = 1
      LookupSource = Dados.dsProdutos
      ParentFont = False
      TabOrder = 3
      OnChange = cCodigoOrigemExit
    end
    object StaticText2: TStaticText
      Left = 5
      Top = 98
      Width = 121
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Quantidade'
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
    object cSaldoOrigem: TCurrencyEdit
      Left = 128
      Top = 52
      Width = 102
      Height = 21
      AutoSize = False
      Color = 14145535
      DecimalPlaces = 4
      DisplayFormat = ',0.000'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object StaticText3: TStaticText
      Left = 5
      Top = 52
      Width = 121
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Saldo'
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
    object StaticText7: TStaticText
      Left = 5
      Top = 75
      Width = 121
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Data Entrada'
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
    object StaticText9: TStaticText
      Left = 5
      Top = 144
      Width = 121
      Height = 70
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Observa'#231#227'o'
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
      Left = 128
      Top = 75
      Width = 102
      Height = 21
      DataField = 'Data_Transferencia'
      DataSource = dmFiscal.dsProdutosTransferencia
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
    object cQuantidade: TDBEdit
      Left = 128
      Top = 98
      Width = 102
      Height = 21
      DataField = 'Quantidade'
      DataSource = dmFiscal.dsProdutosTransferencia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object cObs: TDBMemo
      Left = 128
      Top = 144
      Width = 639
      Height = 71
      DataField = 'Observacao'
      DataSource = dmFiscal.dsProdutosTransferencia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object DBCheckBox1: TDBCheckBox
      Left = 6
      Top = 220
      Width = 126
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Movimenta inventario'
      DataField = 'Inventario'
      DataSource = dmFiscal.dsProdutosTransferencia
      TabOrder = 9
    end
    object cCodigoOrigem: TDBEdit
      Left = 128
      Top = 29
      Width = 102
      Height = 21
      DataField = 'Produto_Entrada'
      DataSource = dmFiscal.dsProdutosTransferencia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnExit = cCodigoOrigemExit
    end
    object DBCheckBox2: TDBCheckBox
      Left = 158
      Top = 220
      Width = 116
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Movimenta Estoque'
      DataField = 'Estoque'
      DataSource = dmFiscal.dsProdutosTransferencia
      TabOrder = 10
    end
    object StaticText4: TStaticText
      Left = 5
      Top = 6
      Width = 121
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
      TabOrder = 15
      Transparent = False
      StyleElements = []
    end
    object cProcessoOrigem: TRxDBLookupCombo
      Left = 128
      Top = 6
      Width = 145
      Height = 21
      DropDownCount = 10
      DataField = 'Processo_Entrada'
      DataSource = dmFiscal.dsProdutosTransferencia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      LookupField = 'Processo'
      LookupDisplay = 'Processo'
      LookupSource = Dados.dsProcessosDOC
      ParentFont = False
      TabOrder = 1
      OnChange = cCodigoOrigemExit
    end
    object StaticText1: TStaticText
      Left = 5
      Top = 121
      Width = 121
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Unit'#225'rio Entrada'
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
    object DBEdit1: TDBEdit
      Left = 128
      Top = 121
      Width = 102
      Height = 21
      DataField = 'Valor_Unitario'
      DataSource = dmFiscal.dsProdutosTransferencia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
  end
  object DBGrid2: TDBGrid
    Left = 4
    Top = 294
    Width = 772
    Height = 201
    DataSource = dmFiscal.dsProdutosTransferencia
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
        FieldName = 'Produto_Entrada'
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 92
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data_Transferencia'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 89
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Inventario'
        Title.Alignment = taCenter
        Title.Caption = 'Inv'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 38
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Estoque'
        Title.Alignment = taCenter
        Title.Caption = 'Est'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 38
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Observacao'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 425
        Visible = True
      end>
  end
  object cFiltroProd: TEdit
    Left = 81
    Top = 503
    Width = 144
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object StaticText5: TStaticText
    Left = 9
    Top = 505
    Width = 69
    Height = 17
    Caption = 'Filtrar Produto'
    TabOrder = 4
  end
  object cFiltroproc: TEdit
    Left = 313
    Top = 503
    Width = 144
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object StaticText8: TStaticText
    Left = 233
    Top = 505
    Width = 76
    Height = 17
    Caption = 'Filtrar Processo'
    TabOrder = 6
  end
  object Button1: TButton
    Left = 460
    Top = 499
    Width = 53
    Height = 28
    Hint = 'Fecha a janela atual e cancela os processos pendentes.'
    Anchors = [akTop, akRight]
    Caption = '&Filtrar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = Button1Click
  end
  object tSaldo: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 505
    Top = 7
  end
  object tRegistro: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      
        'SELECT ISNULL(MAX(Registro),0) AS Registro FROM ProdutosTransfer' +
        'encia')
    FetchRows = 1
    Left = 449
    Top = 7
  end
  object tProdutosDest: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Codigo, '
      '       Descricao,'
      
        '       (ISNULL((SELECT SUM(Quantidade) FROM NotasItens          ' +
        '  WHERE(Codigo_Mercadoria = PD.Codigo) AND (Saida_Entrada = 0) A' +
        'ND (Movimenta_Estoque = 1) AND (Cancelada <> 1)), 0) + '
      
        '        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens ' +
        '  WHERE(Codigo_Mercadoria = PD.Codigo) AND (Movimenta_Estoque = ' +
        '1)), 0) + '
      
        '        ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferenci' +
        'a WHERE(Produto_Entrada   = PD.Codigo) ), 0) - '
      
        '        ISNULL((SELECT SUM(Quantidade) FROM NotasItens          ' +
        '  WHERE(Codigo_Mercadoria = PD.Codigo) AND (Saida_Entrada = 1) A' +
        'ND (Movimenta_Estoque = 1) AND (Cancelada <> 1)), 0) - '
      
        '        ISNULL((SELECT SUM(Quantidade) FROM PedidosItens        ' +
        '  WHERE(Codigo_Mercadoria = PD.Codigo) AND (Saida_Entrada = 1) A' +
        'ND (Movimenta_Estoque = 1) ), 0)) -'
      
        '        ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferenci' +
        'a WHERE(Produto_Saida     = PD.Codigo) ), 0)'
      '        AS Disponivel'
      'FROM Produtos PD'
      
        'WHERE  (ISNULL((SELECT SUM(Quantidade) FROM NotasItens          ' +
        '  WHERE(Codigo_Mercadoria = PD.Codigo) AND (Saida_Entrada = 0) A' +
        'ND (Movimenta_Estoque = 1) AND (Cancelada <> 1)), 0) + '
      
        '        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens ' +
        '  WHERE(Codigo_Mercadoria = PD.Codigo) AND (Movimenta_Estoque = ' +
        '1)), 0) +'
      
        '        ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferenci' +
        'a WHERE(Produto_Entrada   = PD.Codigo) ), 0) - '
      
        '        ISNULL((SELECT SUM(Quantidade) FROM NotasItens          ' +
        '  WHERE(Codigo_Mercadoria = PD.Codigo) AND (Saida_Entrada = 1) A' +
        'ND (Movimenta_Estoque = 1) AND (Cancelada <> 1)), 0) - '
      
        '        ISNULL((SELECT SUM(Quantidade) FROM PedidosItens        ' +
        '  WHERE(Codigo_Mercadoria = PD.Codigo) AND (Saida_Entrada = 1) A' +
        'ND (Movimenta_Estoque = 1) ), 0)) -'
      
        '        ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferenci' +
        'a WHERE(Produto_Saida     = PD.Codigo) ), 0)'
      '        > 0')
    FetchRows = 1
    Left = 193
    Top = 8
    object tProdutosDestCodigo: TIntegerField
      Alignment = taLeftJustify
      DisplayWidth = 8
      FieldName = 'Codigo'
    end
    object tProdutosDestDescricao: TStringField
      FieldName = 'Descricao'
      Size = 5000
    end
    object tProdutosDestDisponivel: TFloatField
      FieldName = 'Disponivel'
      ReadOnly = True
    end
  end
  object dstProdutosDest: TDataSource
    DataSet = tProdutosDest
    Left = 256
    Top = 8
  end
  object dstProdutosOrig: TDataSource
    DataSet = tProdutosOrig
    Left = 376
    Top = 8
  end
  object tProdutosOrig: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Codigo, '
      '       Descricao,'
      
        '       (ISNULL((SELECT SUM(Quantidade) FROM NotasItens          ' +
        '  WHERE(Codigo_Mercadoria = PD.Codigo) AND (Saida_Entrada = 0) A' +
        'ND (Movimenta_Estoque = 1) AND (Cancelada <> 1)), 0) + '
      
        '        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens ' +
        '  WHERE(Codigo_Mercadoria = PD.Codigo) AND (Movimenta_Estoque = ' +
        '1)), 0) + '
      
        '        ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferenci' +
        'a WHERE(Produto_Entrada   = PD.Codigo) ), 0) - '
      
        '        ISNULL((SELECT SUM(Quantidade) FROM NotasItens          ' +
        '  WHERE(Codigo_Mercadoria = PD.Codigo) AND (Saida_Entrada = 1) A' +
        'ND (Movimenta_Estoque = 1) AND (Cancelada <> 1)), 0) - '
      
        '        ISNULL((SELECT SUM(Quantidade) FROM PedidosItens        ' +
        '  WHERE(Codigo_Mercadoria = PD.Codigo) AND (Saida_Entrada = 1) A' +
        'ND (Movimenta_Estoque = 1) ), 0)) -'
      
        '        ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferenci' +
        'a WHERE(Produto_Saida     = PD.Codigo) ), 0)'
      '        AS Disponivel'
      'FROM Produtos PD'
      
        'WHERE  (ISNULL((SELECT SUM(Quantidade) FROM NotasItens          ' +
        '  WHERE(Codigo_Mercadoria = PD.Codigo) AND (Saida_Entrada = 0) A' +
        'ND (Movimenta_Estoque = 1) AND (Cancelada <> 1)), 0) + '
      
        '        ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens ' +
        '  WHERE(Codigo_Mercadoria = PD.Codigo) AND (Movimenta_Estoque = ' +
        '1)), 0) +'
      
        '        ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferenci' +
        'a WHERE(Produto_Entrada   = PD.Codigo) ), 0) - '
      
        '        ISNULL((SELECT SUM(Quantidade) FROM NotasItens          ' +
        '  WHERE(Codigo_Mercadoria = PD.Codigo) AND (Saida_Entrada = 1) A' +
        'ND (Movimenta_Estoque = 1) AND (Cancelada <> 1)), 0) - '
      
        '        ISNULL((SELECT SUM(Quantidade) FROM PedidosItens        ' +
        '  WHERE(Codigo_Mercadoria = PD.Codigo) AND (Saida_Entrada = 1) A' +
        'ND (Movimenta_Estoque = 1) ), 0)) -'
      
        '        ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferenci' +
        'a WHERE(Produto_Saida     = PD.Codigo) ), 0)'
      '        > 0')
    FetchRows = 1
    Left = 305
    Top = 8
    object tProdutosOrigCodigo: TIntegerField
      Alignment = taLeftJustify
      DisplayWidth = 8
      FieldName = 'Codigo'
    end
    object tProdutosOrigDescricao: TStringField
      FieldName = 'Descricao'
      Size = 5000
    end
    object tProdutosOrigDisponivel: TFloatField
      FieldName = 'Disponivel'
      ReadOnly = True
    end
  end
  object tItem: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 553
    Top = 7
  end
end
