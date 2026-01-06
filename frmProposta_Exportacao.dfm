object Proposta_Exportacao: TProposta_Exportacao
  Left = 498
  Top = 209
  BorderStyle = bsDialog
  Caption = 'Proposta_Exportacao'
  ClientHeight = 688
  ClientWidth = 739
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    739
    688)
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 739
    Height = 37
    Align = alTop
    Stretch = True
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 0
    Width = 76
    Height = 21
    Caption = 'PROCESSO'
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
    Top = 17
    Width = 153
    Height = 18
    Caption = 'Proposta de Exporta'#231#227'o.'
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
    Top = 656
    Width = 739
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitTop = 646
    object bSair: TButton
      AlignWithMargins = True
      Left = 664
      Top = 2
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      AlignWithMargins = True
      Left = 2
      Top = 2
      Width = 306
      Height = 28
      Cursor = crHandPoint
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      DataSource = Dados.dsPropostaExp
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
        'Altera o registro atual.'
        'Salvar o registro no banco de dados.'
        'Cancelar as modifica'#231#245'es feitas no registro atual.'
        'Atualizar inform'#231#245'es do banco de dados.')
      ParentCtl3D = False
      ParentShowHint = False
      ConfirmDelete = False
      ShowHint = True
      TabOrder = 1
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
    object bPesquisa: TButton
      AlignWithMargins = True
      Left = 309
      Top = 2
      Width = 72
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Pesquisa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object bImprimir: TButton
      AlignWithMargins = True
      Left = 382
      Top = 2
      Width = 72
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bImprimirClick
    end
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 43
    Width = 723
    Height = 611
    Margins.Bottom = 15
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabHeight = 28
    TabOrder = 1
    ExplicitHeight = 601
    object TabSheet1: TTabSheet
      Caption = 'Dados da Proposta'
      ExplicitHeight = 563
      object Panel2: TPanel
        Left = 2
        Top = 2
        Width = 711
        Height = 583
        BevelOuter = bvLowered
        Ctl3D = True
        Enabled = False
        ParentCtl3D = False
        TabOrder = 0
        object StaticText3: TStaticText
          Left = 475
          Top = 8
          Width = 70
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
          TabOrder = 36
          Transparent = False
          StyleElements = []
        end
        object StaticText35: TStaticText
          Left = 269
          Top = 8
          Width = 60
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Validade'
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
        end
        object cDataAbertura: TDBDateEdit
          Left = 331
          Top = 8
          Width = 141
          Height = 21
          DataField = 'Validade'
          DataSource = Dados.dsPropostaExp
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
          TabOrder = 1
          YearDigits = dyFour
        end
        object StaticText34: TStaticText
          Left = 444
          Top = 145
          Width = 61
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'INCOTERMS'
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
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 507
          Top = 145
          Width = 197
          Height = 21
          DataField = 'INCOTERMS'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsIncoterms
          ParentFont = False
          TabOrder = 10
        end
        object StaticText44: TStaticText
          Left = 6
          Top = 398
          Width = 116
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Quantidade por Pallets'
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
        end
        object StaticText6: TStaticText
          Left = 6
          Top = 145
          Width = 116
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Condi'#231#227'o Cambial'
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
        object StaticText12: TStaticText
          Left = 6
          Top = 168
          Width = 116
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Via de Transporte'
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
        end
        object StaticText10: TStaticText
          Left = 6
          Top = 214
          Width = 116
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Local Embarque'
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
        end
        object DBEdit8: TDBEdit
          Left = 124
          Top = 214
          Width = 581
          Height = 21
          DataField = 'Local_Embarque'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
        end
        object StaticText19: TStaticText
          Left = 6
          Top = 237
          Width = 116
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Local Entrega'
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
        object DBEdit14: TDBEdit
          Left = 124
          Top = 237
          Width = 581
          Height = 21
          DataField = 'Local_Entrega'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
        end
        object lDoc: TStaticText
          Left = 6
          Top = 467
          Width = 116
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Valor Unitario'
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
        object DBEdit10: TDBEdit
          Left = 124
          Top = 467
          Width = 114
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FOB_Unitario'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 30
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 124
          Top = 30
          Width = 581
          Height = 21
          DataField = 'Cliente'
          DataSource = Dados.dsPropostaExp
          DropDownWidth = 500
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Nome'
          ListFieldIndex = 1
          ListSource = Dados.dsClientes
          ParentFont = False
          TabOrder = 2
        end
        object StaticText40: TStaticText
          Left = 6
          Top = 30
          Width = 116
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
          TabOrder = 45
          Transparent = False
          StyleElements = []
        end
        object StaticText46: TStaticText
          Left = 6
          Top = 53
          Width = 116
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Moeda Exporta'#231#227'o'
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
        end
        object StaticText53: TStaticText
          Left = 374
          Top = 168
          Width = 59
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Armador'
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
        end
        object DBEdit20: TDBEdit
          Left = 435
          Top = 168
          Width = 269
          Height = 21
          DataField = 'Armador'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
        end
        object StaticText51: TStaticText
          Left = 6
          Top = 352
          Width = 116
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Unidade'
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
        end
        object DBLookupComboBox9: TDBLookupComboBox
          Left = 124
          Top = 352
          Width = 581
          Height = 21
          DataField = 'Unidade'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsUnidades
          NullValueKey = 46
          ParentFont = False
          TabOrder = 21
        end
        object cVia: TDBLookupComboBox
          Left = 124
          Top = 168
          Width = 245
          Height = 21
          DataField = 'Via_Transporte'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = dmDespacho.dsViaTransporte
          NullValueKey = 46
          ParentFont = False
          TabOrder = 11
        end
        object StaticText1: TStaticText
          Left = 6
          Top = 7
          Width = 116
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Proposta N'#186
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
        object cProposta: TDBEdit
          Left = 124
          Top = 7
          Width = 141
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Proposta'
          DataSource = Dados.dsPropostaExp
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnChange = cPropostaChange
        end
        object StaticText4: TStaticText
          Left = 550
          Top = 53
          Width = 50
          Height = 22
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Cota'#231#227'o'
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
        object DBEdit3: TDBEdit
          Left = 602
          Top = 53
          Width = 103
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Cotacao_Exp'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object StaticText7: TStaticText
          Left = 6
          Top = 76
          Width = 116
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Moeda Importa'#231#227'o'
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
        end
        object StaticText11: TStaticText
          Left = 550
          Top = 76
          Width = 50
          Height = 22
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Cota'#231#227'o'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 52
          Transparent = False
          StyleElements = []
        end
        object DBEdit6: TDBEdit
          Left = 602
          Top = 76
          Width = 103
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Cotacao_Imp'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object StaticText13: TStaticText
          Left = 242
          Top = 421
          Width = 116
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tipo Embalagem'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 53
          Transparent = False
          StyleElements = []
        end
        object DBEdit9: TDBEdit
          Left = 360
          Top = 421
          Width = 345
          Height = 21
          DataField = 'Tipo_Embalagem'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 27
        end
        object StaticText14: TStaticText
          Left = 6
          Top = 260
          Width = 116
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Transbordo'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 54
          Transparent = False
          StyleElements = []
        end
        object DBEdit11: TDBEdit
          Left = 124
          Top = 260
          Width = 581
          Height = 21
          DataField = 'Transbordo'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
        end
        object StaticText17: TStaticText
          Left = 347
          Top = 283
          Width = 67
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Transit Time'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 55
          Transparent = False
          StyleElements = []
        end
        object DBEdit13: TDBEdit
          Left = 416
          Top = 283
          Width = 289
          Height = 21
          DataField = 'Transit_Time'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 18
        end
        object StaticText18: TStaticText
          Left = 6
          Top = 283
          Width = 116
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Frequ'#234'ncia Transporte'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 56
          Transparent = False
          StyleElements = []
        end
        object DBEdit15: TDBEdit
          Left = 124
          Top = 283
          Width = 221
          Height = 21
          DataField = 'Frequencia'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
        end
        object StaticText2: TStaticText
          Left = 6
          Top = 306
          Width = 116
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Container'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 57
          Transparent = False
          StyleElements = []
        end
        object DBEdit7: TDBEdit
          Left = 124
          Top = 306
          Width = 581
          Height = 21
          DataField = 'Container'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
        end
        object StaticText5: TStaticText
          Left = 6
          Top = 329
          Width = 116
          Height = 21
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
          TabOrder = 58
          Transparent = False
          StyleElements = []
        end
        object cQtdePallets: TDBEdit
          Left = 124
          Top = 398
          Width = 114
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Pallets'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 24
          OnChange = cQtdePalletsChange
        end
        object StaticText8: TStaticText
          Left = 6
          Top = 375
          Width = 116
          Height = 21
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
          TabOrder = 59
          Transparent = False
          StyleElements = []
        end
        object DBEdit18: TDBEdit
          Left = 124
          Top = 375
          Width = 114
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Quantidade'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 22
          OnChange = DBEdit18Change
        end
        object StaticText9: TStaticText
          Left = 6
          Top = 444
          Width = 116
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Peso L'#237'quido'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 60
          Transparent = False
          StyleElements = []
        end
        object DBEdit19: TDBEdit
          Left = 124
          Top = 444
          Width = 114
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Peso_Liquido'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 28
        end
        object DBEdit21: TDBEdit
          Left = 360
          Top = 444
          Width = 112
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Peso_Bruto'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 29
        end
        object StaticText20: TStaticText
          Left = 242
          Top = 444
          Width = 116
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Peso Bruto'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 61
          Transparent = False
          StyleElements = []
        end
        object StaticText15: TStaticText
          Left = 6
          Top = 513
          Width = 116
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Comiss'#227'o Recebida'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 62
          Transparent = False
          StyleElements = []
        end
        object DBEdit12: TDBEdit
          Left = 124
          Top = 513
          Width = 114
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Comissao_Recebida'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 34
        end
        object StaticText16: TStaticText
          Left = 6
          Top = 536
          Width = 116
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Comiss'#227'o Paga'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 63
          Transparent = False
          StyleElements = []
        end
        object DBEdit22: TDBEdit
          Left = 124
          Top = 536
          Width = 114
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Comissao_Paga'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 35
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 124
          Top = 53
          Width = 424
          Height = 21
          DataField = 'Moeda_Exp'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Nome'
          ListFieldIndex = 1
          ListSource = Dados.dsMoedas
          ParentFont = False
          TabOrder = 3
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 124
          Top = 76
          Width = 424
          Height = 21
          DataField = 'Moeda_Imp'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Nome'
          ListFieldIndex = 1
          ListSource = Dados.dsMoedas
          ParentFont = False
          TabOrder = 5
        end
        object StaticText21: TStaticText
          Left = 242
          Top = 398
          Width = 116
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Pallets'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 64
          Transparent = False
          StyleElements = []
        end
        object cPallets: TCurrencyEdit
          Left = 360
          Top = 398
          Width = 112
          Height = 21
          AutoSize = False
          DisplayFormat = '0'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 25
        end
        object StaticText23: TStaticText
          Left = 242
          Top = 375
          Width = 116
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Quantidade p/Unidade'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 65
          Transparent = False
          StyleElements = []
        end
        object DBEdit1: TDBEdit
          Left = 360
          Top = 375
          Width = 112
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Quantidade_Unidade'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 23
        end
        object StaticText24: TStaticText
          Left = 6
          Top = 421
          Width = 116
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Volumes'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 66
          Transparent = False
          StyleElements = []
        end
        object DBEdit5: TDBEdit
          Left = 124
          Top = 421
          Width = 114
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Volume_Qtde'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 26
        end
        object StaticText25: TStaticText
          Left = 476
          Top = 490
          Width = 114
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Fator'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 67
          Transparent = False
          StyleElements = []
        end
        object DBEdit17: TDBEdit
          Left = 592
          Top = 490
          Width = 113
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Fator'
          DataSource = Dados.dsPropostaExp
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 33
        end
        object StaticText31: TStaticText
          Left = 6
          Top = 122
          Width = 116
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Frete Internacional'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 68
          Transparent = False
          StyleElements = []
        end
        object DBEdit24: TDBEdit
          Left = 124
          Top = 122
          Width = 114
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Frete_Inter'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object StaticText26: TStaticText
          Left = 6
          Top = 99
          Width = 116
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Moeda Frete'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 69
          Transparent = False
          StyleElements = []
        end
        object StaticText29: TStaticText
          Left = 550
          Top = 99
          Width = 50
          Height = 22
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Cota'#231#227'o'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 70
          Transparent = False
          StyleElements = []
        end
        object DBEdit23: TDBEdit
          Left = 602
          Top = 99
          Width = 103
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Cotacao_Frete'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 124
          Top = 99
          Width = 424
          Height = 21
          DataField = 'Moeda_Frete'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Nome'
          ListFieldIndex = 1
          ListSource = Dados.dsMoedas
          ParentFont = False
          TabOrder = 7
        end
        object StaticText32: TStaticText
          Left = 6
          Top = 490
          Width = 116
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'IRPJ'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 71
          Transparent = False
          StyleElements = []
        end
        object cIRPJ: TDBEdit
          Left = 124
          Top = 490
          Width = 114
          Height = 21
          CharCase = ecUpperCase
          DataField = 'IRPJ'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 31
          OnChange = cIRPJChange
        end
        object DBEdit26: TDBEdit
          Left = 360
          Top = 490
          Width = 112
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CSLL'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 32
          OnChange = cIRPJChange
        end
        object cCSLL: TStaticText
          Left = 242
          Top = 490
          Width = 116
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'CSLL'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 72
          Transparent = False
          StyleElements = []
        end
        object DBRadioGroup4: TDBRadioGroup
          Left = 242
          Top = 514
          Width = 350
          Height = 44
          Caption = 'Base de C'#225'lculo das Comiss'#245'es'
          Columns = 2
          DataField = 'Base_Comissao'
          DataSource = Dados.dsPropostaExp
          Items.Strings = (
            'Produto'
            'Produto + Despesa + Frete')
          TabOrder = 73
          Values.Strings = (
            'P'
            'T')
        end
        object StaticText37: TStaticText
          Left = 6
          Top = 191
          Width = 116
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Pais Destino'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 74
          Transparent = False
          StyleElements = []
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 124
          Top = 191
          Width = 581
          Height = 21
          DataField = 'Pais_Destino'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Nome'
          ListFieldIndex = 1
          ListSource = Dados.dsPaises
          ParentFont = False
          TabOrder = 13
        end
        object cCondicaoCambio: TRxDBLookupCombo
          Left = 124
          Top = 145
          Width = 317
          Height = 21
          DropDownCount = 15
          DisplayAllFields = True
          DataField = 'Condicao_Cambio'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo; Descricao'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsCondicaoCambial
          ParentFont = False
          TabOrder = 75
        end
        object DBLookupComboBox7: TDBLookupComboBox
          Left = 124
          Top = 329
          Width = 581
          Height = 21
          DataField = 'Produto_Codigo'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao_Reduzida'
          ListFieldIndex = 1
          ListSource = Dados.dsProdutos
          NullValueKey = 46
          ParentFont = False
          TabOrder = 20
          OnClick = DBLookupComboBox7Click
        end
        object cProcesso: TDBComboBox
          Left = 547
          Top = 8
          Width = 158
          Height = 21
          DataField = 'Processo'
          DataSource = Dados.dsPropostaExp
          DropDownCount = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 76
        end
        object DBEdit2: TDBEdit
          Left = 323
          Top = 122
          Width = 382
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Condicao_Frete'
          DataSource = Dados.dsPropostaExp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 77
        end
        object StaticText36: TStaticText
          Left = 243
          Top = 122
          Width = 78
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Condi'#231#227'o Frete'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 78
          Transparent = False
          StyleElements = []
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Despesas'
      ImageIndex = 1
      ExplicitHeight = 563
      object Panel4: TPanel
        Left = 2
        Top = 3
        Width = 707
        Height = 587
        BevelOuter = bvLowered
        TabOrder = 0
        object gDesp: TRxDBGrid
          Left = 4
          Top = 113
          Width = 699
          Height = 420
          DataSource = Dados.dsPropostaExpDesp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          OnCellClick = gDespCellClick
          RowColor2 = 16776176
          Columns = <
            item
              Expanded = False
              FieldName = 'Classificacao'
              Title.Alignment = taCenter
              Title.Caption = 'Despesa'
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
              FieldName = 'Descricao'
              Title.Alignment = taCenter
              Title.Caption = 'Descri'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 309
              Visible = True
            end
            item
              Alignment = taRightJustify
              Expanded = False
              FieldName = 'Simbolo'
              Title.Alignment = taCenter
              Title.Caption = 'Moeda'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 44
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cotacao'
              Title.Alignment = taCenter
              Title.Caption = 'Cota'#231#227'o'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 50
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
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Cambio'
              Title.Alignment = taCenter
              Title.Caption = 'C'#226'mbio'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
            end>
        end
        object Panel3: TPanel
          Left = 4
          Top = 80
          Width = 699
          Height = 31
          BevelOuter = bvLowered
          TabOrder = 1
          DesignSize = (
            699
            31)
          object bAdicionar: TButton
            Left = 211
            Top = 1
            Width = 87
            Height = 28
            Anchors = [akTop, akRight]
            Caption = '&Adicionar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = bAdicionarClick
          end
          object bRemoveItem: TButton
            Left = 384
            Top = 1
            Width = 85
            Height = 28
            Anchors = [akTop, akRight]
            Caption = '&Remover'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = bRemoveItemClick
          end
          object bRemoveTudo: TButton
            Left = 469
            Top = 1
            Width = 85
            Height = 28
            Anchors = [akTop, akRight]
            Caption = 'Remover &Tudo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = bRemoveTudoClick
          end
          object bBuscar: TButton
            Left = 554
            Top = 1
            Width = 143
            Height = 28
            Anchors = [akTop, akRight]
            Caption = '&Buscar Processo Existente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = bBuscarClick
          end
          object bAlterar: TButton
            Left = 298
            Top = 1
            Width = 86
            Height = 28
            Anchors = [akTop, akRight]
            Caption = '&Alterar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = bAlterarClick
          end
        end
        object cDespesa: TRxDBLookupCombo
          Left = 68
          Top = 6
          Width = 429
          Height = 21
          DropDownCount = 30
          DropDownWidth = 500
          FieldsDelimiter = '|'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Descricao'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsClassificacaoFinanceira
          ParentFont = False
          TabOrder = 2
        end
        object StaticText22: TStaticText
          Left = 499
          Top = 6
          Width = 61
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
        object StaticText30: TStaticText
          Left = 4
          Top = 536
          Width = 570
          Height = 21
          Alignment = taRightJustify
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Total das Despesas  '
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
        object cTotalDespesas: TCurrencyEdit
          Left = 576
          Top = 536
          Width = 103
          Height = 21
          AutoSize = False
          Color = 16764262
          DisplayFormat = ',0.00;-,0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object StaticText33: TStaticText
          Left = 5
          Top = 6
          Width = 61
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Despesa'
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
        object cDespValor: TCurrencyEdit
          Left = 562
          Top = 6
          Width = 140
          Height = 21
          AutoSize = False
          DisplayFormat = '0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object StaticText27: TStaticText
          Left = 5
          Top = 29
          Width = 61
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Moeda'
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
        object cMoeda2: TRxDBLookupCombo
          Left = 68
          Top = 29
          Width = 429
          Height = 21
          DropDownCount = 30
          DropDownWidth = 500
          FieldsDelimiter = '|'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Nome'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsMoedas
          ParentFont = False
          TabOrder = 9
        end
        object StaticText28: TStaticText
          Left = 499
          Top = 29
          Width = 61
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Cota'#231#227'o'
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
        object cCotacao: TCurrencyEdit
          Left = 562
          Top = 29
          Width = 140
          Height = 21
          AutoSize = False
          DecimalPlaces = 4
          DisplayFormat = ',##0.0000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
      end
    end
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 512
    Top = 5
  end
end
