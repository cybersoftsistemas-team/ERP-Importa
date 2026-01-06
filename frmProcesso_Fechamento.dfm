object Processo_Fechamento: TProcesso_Fechamento
  Left = 309
  Top = 16
  BorderStyle = bsDialog
  Caption = 'Processo_Fechamento'
  ClientHeight = 658
  ClientWidth = 754
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
    Width = 754
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitLeft = 8
    ExplicitTop = 46
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
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
  object lTitulo: TRxLabel
    Left = 8
    Top = 22
    Width = 163
    Height = 18
    Caption = 'Fechamento de processos.'
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
    Top = 626
    Width = 754
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      754
      32)
    object bTodosTotais: TSpeedButton
      AlignWithMargins = True
      Left = 520
      Top = 2
      Width = 32
      Height = 28
      Cursor = crHandPoint
      Hint = '  Recalcula todos os totais  '
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      BiDiMode = bdRightToLeft
      Enabled = False
      Glyph.Data = {
        76020000424D7602000000000000760000002800000020000000200000000100
        0400000000000002000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888800
        0000000888888888888888888888888008888808888888888888888888888888
        0088888888888888888888888888888880088888888888888888888888888888
        8700888888888888888888888888888880088888888888888888888888888888
        0088888888888888888888888888888008888808888888888888888888888800
        0000000888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888}
      Layout = blGlyphBottom
      ParentShowHint = False
      ParentBiDiMode = False
      ShowHint = True
      Spacing = 0
      OnClick = bTodosTotaisClick
      ExplicitLeft = 527
      ExplicitTop = -3
    end
    object bSair: TButton
      Left = 690
      Top = 1
      Width = 64
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
    object Navega: TDBNavigator
      AlignWithMargins = True
      Left = 2
      Top = 2
      Width = 330
      Height = 28
      Cursor = crHandPoint
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      DataSource = Dados.dsProcessosFechamento
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
    object bPesquisar: TButton
      AlignWithMargins = True
      Left = 333
      Top = 2
      Width = 64
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Pesquisar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bPesquisarClick
    end
    object bDuplic: TButton
      AlignWithMargins = True
      Left = 398
      Top = 2
      Width = 121
      Height = 28
      Cursor = crHandPoint
      Hint = 'Duplicar fechamento do processo'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Duplicar Fechamento'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bDuplicClick
    end
  end
  object cPaginas: TPageControl
    Left = 5
    Top = 51
    Width = 744
    Height = 568
    ActivePage = TabSheet4
    TabHeight = 24
    TabOrder = 1
    TabWidth = 110
    object TabSheet1: TTabSheet
      Caption = '&Principal'
      object Grade: TDBGrid
        Left = 3
        Top = 205
        Width = 731
        Height = 326
        Color = clWhite
        Ctl3D = True
        DataSource = Dados.dsProcessosFechamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlue
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Data'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Processo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome_Cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 307
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Saldo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Rentabilidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 3
        Top = 2
        Width = 731
        Height = 200
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 1
        object StaticText1: TStaticText
          Left = 6
          Top = 5
          Width = 119
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'C'#243'digo'
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
        object cCodigo: TDBEdit
          Left = 127
          Top = 5
          Width = 142
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Codigo'
          DataSource = Dados.dsProcessosFechamento
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnChange = cCodigoChange
        end
        object StaticText5: TStaticText
          Left = 6
          Top = 51
          Width = 119
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
          TabOrder = 9
          Transparent = False
          StyleElements = []
        end
        object StaticText2: TStaticText
          Left = 6
          Top = 28
          Width = 119
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
          TabOrder = 10
          Transparent = False
          StyleElements = []
        end
        object cData: TDBDateEdit
          Left = 127
          Top = 51
          Width = 142
          Height = 21
          DataField = 'Data'
          DataSource = Dados.dsProcessosFechamento
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
          TabOrder = 4
          YearDigits = dyFour
        end
        object cProcesso: TDBLookupComboBox
          Left = 127
          Top = 28
          Width = 142
          Height = 21
          DataField = 'Processo'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Processo'
          ListField = 'Processo'
          ListSource = Dados.dsProcessosDOC
          NullValueKey = 46
          ParentFont = False
          TabOrder = 3
          OnExit = cProcessoExit
        end
        object StaticText3: TStaticText
          Left = 6
          Top = 143
          Width = 119
          Height = 52
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = '                                Observa'#231#227'o'
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
        object DBMemo1: TDBMemo
          Left = 127
          Top = 143
          Width = 598
          Height = 52
          DataField = 'Observacao'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object StaticText52: TStaticText
          Left = 6
          Top = 74
          Width = 119
          Height = 21
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
        object DBEdit1: TDBEdit
          Left = 127
          Top = 74
          Width = 142
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Saldo'
          DataSource = Dados.dsProcessosFechamento
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object StaticText53: TStaticText
          Left = 6
          Top = 97
          Width = 119
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Rentabilidade'
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
        object DBEdit18: TDBEdit
          Left = 127
          Top = 97
          Width = 142
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Rentabilidade'
          DataSource = Dados.dsProcessosFechamento
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object DBCheckBox1: TDBCheckBox
          Left = 272
          Top = 6
          Width = 131
          Height = 17
          Caption = 'Fechamento Provis'#243'rio'
          DataField = 'Fechamento_Provisorio'
          DataSource = Dados.dsProcessosFechamento
          TabOrder = 2
          OnClick = DBCheckBox1Click
        end
        object StaticText59: TStaticText
          Left = 6
          Top = 120
          Width = 119
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Desconto/Juros Financ.'
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
        object DBEdit35: TDBEdit
          Left = 127
          Top = 120
          Width = 142
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Valor_DescontoJuros'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object Trava1: TRxSwitch
          Left = 271
          Top = 120
          Width = 18
          Height = 21
          Hint = 
            'Trava o valor do Desconto/Juros Financeiros, n'#227'o efetuando o c'#225'l' +
            'culo autom'#225'tico.'
          Caption = 'Trava2'
          GlyphOff.Data = {
            16030000424D1603000000000000160200002800000010000000100000000100
            08000000000000010000120B0000120B0000780000007800000000000000FFFF
            FF00FF00FF008AF5FB0087F0F8007AECF8007BE0EC00CFF8FD00CAF5FB0055D7
            EC005CCCDF0077DEEE00B6F4FF00B3ECF50047C2DC0058CDE4006BD1E60094DF
            EF00B1EEFA00ECFAFD0024B6DA003ABFE0003CB6D10045C2DF0046BEDB004AB5
            CD006ECFE700B1E5F1000C9BC4000EA5D100119DC4001DAFD8001CA9D00020AF
            D80020A7CD0025ABD20028B1D7002BB1D8002EB7DE002FAECF0037B7D90040B8
            D70044C1E2003DAAC8004AC2E20052C0E00060C7E2005EC0DB0062C8E2006BCF
            EA006CC8E00083D8EE0086D8EE000091BF00049DCA00069DCC0008A1CE000994
            BF000A95C0000B99C6000B96C0000C9DC8000C94C1000D96C20013A8D400199B
            C3001FA7D20025AAD4002DB5DD002EB3DB0033B0D90034B1DA0039BBE3003FBE
            E4003BA6C60048C1E8004ABCE0004FC3E60063A9BF0083C9DE009AE1F800A2E7
            FD000C8AB500148AB6001898C3002A9DC6003DB2DC00369BC00048B7E00049B7
            E0004DB9E10054BCE3007FD2F1008BCFE8009DE2F900A0E3FB00C5E8F400287F
            A10059BBE00060C1E8006FC7EB0069BDE00064B2D10073CAEE007CCDEF0086D4
            F40076CBF00082D0F2008FD7F70094DBFC0093DAF90095DAFA0099DFFE009ADC
            FB00A2E1FE0093D9FA0095DAFB0094D8FA0097DAFB00A0DFFE00020202020202
            020202020202020202020202023759635B565A020202020202020202381D5C77
            767368675802020202020202401F335F6E6B626C716A02020202020221261112
            51665764747147020202020244491B070C4F61656D6F460202020202484B6013
            080D4E5D7075460202020202452A2F32302E1A345E72470202020202250F2918
            17282C315069430202020202240A1C1603091436232D420202020202023E3527
            04050E3C1E2002020202020202023B410215223A3F0202020202020202024D55
            02020239520202020202020202024A0B2B02533D020202020202020202020219
            06104C5402020202020202020202020202020202020202020202}
          GlyphOn.Data = {
            12030000424D1203000000000000120200002800000010000000100000000100
            08000000000000010000120B0000120B0000770000007700000000000000FFFF
            FF00FF00FF0080FCFF0066EDF800C1F6FC004ED8EB005AD1E0005DD5E50059CB
            DA00BBF2FA009FE6F20036C1DE009DE9F800A3F0FF002CBDE00031BBDC003AC1
            E00035A9C4003BAFCA003BADC70041B4CE007BD5EA009DDDED00E6F8FC002DB0
            D30035A6C70047B8D9004DC2E30053C1E00011A1CE00169FCC002CB0D9002382
            9F0035A7CC0045B7D90043AFD00051B8D70069CCE9006CCCE90069BAD4008BE0
            FC00078FC200078AB8000995C6000E9ACC00109ACC0019A1D300189ACA001AA4
            D4001A9FD0001C9ECA0023A9DA0028ACDC001D728F0033A1C9005EC2E7004893
            AD0086D9F700B5E1F000017FB2000286BD00038AC0000384B8000382B6000381
            B500058FC4000684B5000680B100078BC1000892C700088EC1000782B2000B8F
            C2000E90C4000F88BB001A9CCF001E9CCE001F9DCF00219FCF002799C5002FB0
            E10065C5ED0072C1E10089DAFA00016D9F000273A500037BAF000379AC000479
            AB000478AA0016658A00269ED1002083AF002FA4D70030A4D70034A6D8003AAA
            DA003FA9D70045B0E10054B7E500499EC40058BBE90062BFEA007ACFF7004EAB
            D7005BBCEB0068C2EE0076CBF4007BD0FB007ACEF8007DCFF80081D5FE0082D1
            FA008BD8FE007BCCF8007DCFFA007FCFFA0089D5FE000202023D5F63615C6002
            02020202020202023E425276756E67665E02020202020202462D2654686B626C
            716A0202020202022E31160D29655D6474714E02020202022F3517050E285B69
            6D6F4D020202020234513B180A0B395370734D0202020202322024251B231D27
            3A724E02020202021F073621060F1E2C30384F02020202020233120903040C2B
            3C474902020202020202020211101948442A4502020202020202020202020243
            570202020202020202025655020202405A0202020202020202024C4B0202023F
            59020202020202020202371C02020241580202020202020202020215081A504A
            02020202020202020202020214132202020202020202}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 15
          OnClick = Trava1Click
          Data = {03}
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = '&Despesas'
      Enabled = False
      object GradeDespesas: TDBGrid
        Left = 0
        Top = 1
        Width = 735
        Height = 477
        Ctl3D = True
        DataSource = Dados.dsProcessosFechamentoItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Calibri'
        TitleFont.Style = []
        OnCellClick = GradeDespesasCellClick
        OnDrawColumnCell = GradeDespesasDrawColumnCell
        OnExit = GradeDespesasExit
        OnKeyDown = GradeDespesasKeyDown
        OnKeyUp = GradeDespesasKeyUp
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Tipo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'TP'
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
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Classifica'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 209
            Visible = True
          end
          item
            Color = cl3DLight
            Expanded = False
            FieldName = 'Baixa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Caption = 'BX'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Alignment = taCenter
            Color = clBtnFace
            Expanded = False
            FieldName = 'Custo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'CT'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 18
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Data_BaixaVenc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Dt Venc'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 62
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Data_CorrecaoDespesa'
            Title.Alignment = taCenter
            Title.Caption = 'Dt Corr'
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
            FieldName = 'Observacao'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Observa'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 209
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Fechamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 99
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 504
        Width = 736
        Height = 30
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 1
        DesignSize = (
          736
          30)
        object Button1: TButton
          Left = 1007
          Top = 1
          Width = 64
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
        object NavegaItens: TDBNavigator
          Left = 1
          Top = 1
          Width = 210
          Height = 28
          Cursor = crHandPoint
          DataSource = Dados.dsProcessosFechamentoItens
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete, nbPost, nbCancel]
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
          ParentShowHint = False
          ConfirmDelete = False
          ShowHint = True
          TabOrder = 1
          BeforeAction = NavegaItensBeforeAction
          OnClick = NavegaItensClick
        end
        object bAdicionar: TButton
          Left = 211
          Top = 1
          Width = 111
          Height = 28
          Cursor = crHandPoint
          Hint = 'Fecha a janela atual e cancela os processos pendentes.'
          Caption = '&Adicionar Despesas'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = bAdicionarClick
        end
        object bExcluir: TButton
          Left = 322
          Top = 1
          Width = 155
          Height = 28
          Cursor = crHandPoint
          Hint = 'Fecha a janela atual e cancela os processos pendentes.'
          Caption = '&Remover todas as Despesas'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = bExcluirClick
        end
      end
      object cTotalDespesas: TCurrencyEdit
        Left = 616
        Top = 480
        Width = 102
        Height = 21
        TabStop = False
        AutoSize = False
        Color = 16765650
        DisplayFormat = ',0.00;-,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object StaticText51: TStaticText
        Left = 0
        Top = 480
        Width = 615
        Height = 21
        Alignment = taRightJustify
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'TOTAL '
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
    object TabSheet2: TTabSheet
      Caption = '&Fechamento'
      Enabled = False
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 1
        Top = 0
        Width = 417
        Height = 156
        Caption = 'C'#226'mbio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object GradeContratos: TDBGrid
          Left = 2
          Top = 15
          Width = 413
          Height = 92
          Align = alClient
          Ctl3D = False
          DataSource = dstContratos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Calibri'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Contrato'
              Width = 86
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Data'
              Title.Alignment = taCenter
              Width = 66
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Taxa_Cambial'
              Title.Alignment = taCenter
              Title.Caption = 'Taxa'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor_ME'
              Title.Alignment = taCenter
              Title.Caption = 'Valor ME'
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor_Real'
              Title.Alignment = taCenter
              Title.Caption = 'Valor R$'
              Width = 94
              Visible = True
            end>
        end
        object Panel7: TPanel
          Left = 2
          Top = 107
          Width = 413
          Height = 47
          Align = alBottom
          BevelOuter = bvLowered
          TabOrder = 1
          object bCalculoCambio: TSpeedButton
            Left = 390
            Top = 24
            Width = 20
            Height = 21
            Cursor = crHandPoint
            Hint = '  Soma os Contratos de C'#226'mbio  '
            BiDiMode = bdRightToLeft
            Glyph.Data = {
              76020000424D7602000000000000760000002800000020000000200000000100
              0400000000000002000000000000000000001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
              8888888888888888888888888888888888888888888888888888888888888888
              8888888888888888888888888888888888888888888888888888888888888888
              8888888888888888888888888888888888888888888888888888888888888888
              8888888888888888888888888888888888888888888888888888888888888888
              8888888888888888888888888888888888888888888888888888888888888800
              0000000888888888888888888888888008888808888888888888888888888888
              0088888888888888888888888888888880088888888888888888888888888888
              8700888888888888888888888888888880088888888888888888888888888888
              0088888888888888888888888888888008888808888888888888888888888800
              0000000888888888888888888888888888888888888888888888888888888888
              8888888888888888888888888888888888888888888888888888888888888888
              8888888888888888888888888888888888888888888888888888888888888888
              8888888888888888888888888888888888888888888888888888888888888888
              8888888888888888888888888888888888888888888888888888888888888888
              8888888888888888888888888888888888888888888888888888888888888888
              8888888888888888888888888888888888888888888888888888}
            Layout = blGlyphBottom
            ParentShowHint = False
            ParentBiDiMode = False
            ShowHint = True
            Spacing = 0
            OnClick = bCalculoCambioClick
          end
          object StaticText4: TStaticText
            Left = 4
            Top = 24
            Width = 192
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'TOTAL'
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
          object DBEdit19: TDBEdit
            Left = 198
            Top = 24
            Width = 102
            Height = 21
            DataField = 'Total_CambioME'
            DataSource = Dados.dsProcessosFechamento
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnChange = cMargemLucroChange
          end
          object DBEdit20: TDBEdit
            Left = 304
            Top = 24
            Width = 86
            Height = 21
            DataField = 'Total_CambioReal'
            DataSource = Dados.dsProcessosFechamento
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnChange = cMargemLucroChange
          end
          object StaticText11: TStaticText
            Left = 4
            Top = 2
            Width = 192
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'TOTAL PAGO PELO CLIENTE'
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
          object lCambioCliME: TCurrencyEdit
            Left = 198
            Top = 2
            Width = 102
            Height = 21
            TabStop = False
            AutoSize = False
            Color = 16765650
            DisplayFormat = ',0.00;-,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object lCambioCliReal: TCurrencyEdit
            Left = 304
            Top = 2
            Width = 86
            Height = 21
            TabStop = False
            AutoSize = False
            Color = 16765650
            DisplayFormat = ',0.00;-,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 482
        Top = 158
        Width = 248
        Height = 40
        Caption = 'Nacionaliza'#231#227'o (Despesas)'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object StaticText6: TStaticText
          Left = 5
          Top = 14
          Width = 146
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'TOTAL'
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
        object cDespesasCusto: TCurrencyEdit
          Left = 153
          Top = 14
          Width = 90
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 16765650
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
      end
      object GroupBox6: TGroupBox
        Left = 1
        Top = 379
        Width = 478
        Height = 130
        Caption = 'Dados das Notas Fiscais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object bTotalNotas: TSpeedButton
          Left = 456
          Top = 106
          Width = 20
          Height = 21
          Cursor = crHandPoint
          Hint = '  Soma as notas fiscais de Sa'#237'da  '
          BiDiMode = bdRightToLeft
          Glyph.Data = {
            76020000424D7602000000000000760000002800000020000000200000000100
            0400000000000002000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888800
            0000000888888888888888888888888008888808888888888888888888888888
            0088888888888888888888888888888880088888888888888888888888888888
            8700888888888888888888888888888880088888888888888888888888888888
            0088888888888888888888888888888008888808888888888888888888888800
            0000000888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888}
          Layout = blGlyphBottom
          ParentShowHint = False
          ParentBiDiMode = False
          ShowHint = True
          Spacing = 0
          OnClick = bTotalNotasClick
        end
        object GradeNotas: TDBGrid
          Left = 3
          Top = 15
          Width = 470
          Height = 89
          BorderStyle = bsNone
          Ctl3D = False
          DataSource = dmFiscal.dsNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Calibri'
          TitleFont.Style = []
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Numero'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186' NF'
              Width = 60
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Data_Emissao'
              Title.Alignment = taCenter
              Title.Caption = 'Emiss'#227'o'
              Width = 65
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Saida_EntradaNome'
              Title.Alignment = taCenter
              Title.Caption = 'Tipo'
              Width = 48
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BCICMS'
              Title.Alignment = taCenter
              Title.Caption = 'B.C.ICMS'
              Width = 138
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor_TotalNota'
              Title.Alignment = taCenter
              Title.Caption = 'Total Nota'
              Width = 138
              Visible = True
            end>
        end
        object StaticText54: TStaticText
          Left = 3
          Top = 106
          Width = 175
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'TOTAL'
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
        object cTotalNotas: TDBEdit
          Left = 317
          Top = 106
          Width = 140
          Height = 21
          DataField = 'Total_Notas'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnChange = cMargemLucroChange
        end
        object cTotalBCICMS: TCurrencyEdit
          Left = 178
          Top = 106
          Width = 139
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 16765650
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
      end
      object GroupBox8: TGroupBox
        Left = 1
        Top = 158
        Width = 478
        Height = 221
        Caption = 'Impostos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object bTotalImpostos: TSpeedButton
          Left = 160
          Top = 195
          Width = 20
          Height = 21
          Cursor = crHandPoint
          Hint = '  Soma as notas fiscais de Sa'#237'da  '
          BiDiMode = bdRightToLeft
          Glyph.Data = {
            76020000424D7602000000000000760000002800000020000000200000000100
            0400000000000002000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888800
            0000000888888888888888888888888008888808888888888888888888888888
            0088888888888888888888888888888880088888888888888888888888888888
            8700888888888888888888888888888880088888888888888888888888888888
            0088888888888888888888888888888008888808888888888888888888888800
            0000000888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888}
          Layout = blGlyphBottom
          ParentShowHint = False
          ParentBiDiMode = False
          ShowHint = True
          Spacing = 0
          OnClick = bTotalImpostosClick
        end
        object StaticText12: TStaticText
          Left = 5
          Top = 34
          Width = 52
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'II '
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
        object DBEdit2: TDBEdit
          Left = 59
          Top = 34
          Width = 100
          Height = 21
          DataField = 'II'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object StaticText15: TStaticText
          Left = 5
          Top = 103
          Width = 52
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'IPI'
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
        object DBEdit3: TDBEdit
          Left = 59
          Top = 103
          Width = 100
          Height = 21
          DataField = 'IPI_Entrada'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object StaticText17: TStaticText
          Left = 5
          Top = 126
          Width = 52
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'PIS'
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
        object DBEdit4: TDBEdit
          Left = 59
          Top = 126
          Width = 100
          Height = 21
          DataField = 'PIS_Entrada'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object StaticText19: TStaticText
          Left = 5
          Top = 149
          Width = 52
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'COFINS'
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
        object DBEdit5: TDBEdit
          Left = 59
          Top = 149
          Width = 100
          Height = 21
          DataField = 'COFINS_Entrada'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
        end
        object StaticText8: TStaticText
          Left = 5
          Top = 57
          Width = 52
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ICMS OP'
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
        object DBEdit6: TDBEdit
          Left = 59
          Top = 57
          Width = 100
          Height = 21
          DataField = 'ICMS_Entrada'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object StaticText32: TStaticText
          Left = 5
          Top = 172
          Width = 52
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'TOTAL'
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
        object cTotalImpostosEntrada: TCurrencyEdit
          Left = 59
          Top = 172
          Width = 100
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 16765650
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 17
        end
        object StaticText20: TStaticText
          Left = 5
          Top = 15
          Width = 154
          Height = 18
          Alignment = taCenter
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Entrada'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 26
          Transparent = False
          StyleElements = []
        end
        object StaticText22: TStaticText
          Left = 162
          Top = 15
          Width = 154
          Height = 18
          Alignment = taCenter
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Sa'#237'da'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 27
          Transparent = False
          StyleElements = []
        end
        object StaticText23: TStaticText
          Left = 162
          Top = 57
          Width = 52
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ICMS'
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
        object StaticText26: TStaticText
          Left = 162
          Top = 103
          Width = 52
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'IPI'
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
        end
        object StaticText28: TStaticText
          Left = 162
          Top = 126
          Width = 52
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'PIS'
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
        end
        object StaticText30: TStaticText
          Left = 162
          Top = 149
          Width = 52
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'COFINS'
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
        object StaticText9: TStaticText
          Left = 162
          Top = 172
          Width = 52
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'TOTAL'
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
        object cTotalImpostosSaida: TCurrencyEdit
          Left = 216
          Top = 172
          Width = 100
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 16765650
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 18
        end
        object StaticText24: TStaticText
          Left = 319
          Top = 15
          Width = 154
          Height = 18
          Alignment = taCenter
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Diferen'#231'a'
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
        object StaticText34: TStaticText
          Left = 319
          Top = 103
          Width = 52
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'IPI'
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
        object StaticText36: TStaticText
          Left = 319
          Top = 126
          Width = 52
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'PIS'
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
        object StaticText38: TStaticText
          Left = 319
          Top = 149
          Width = 52
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'COFINS'
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
        object cDiferIPIReal: TCurrencyEdit
          Left = 373
          Top = 103
          Width = 100
          Height = 21
          TabStop = False
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object cDiferPISReal: TCurrencyEdit
          Left = 373
          Top = 126
          Width = 100
          Height = 21
          TabStop = False
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
        object cDiferCOFINSReal: TCurrencyEdit
          Left = 373
          Top = 149
          Width = 100
          Height = 21
          TabStop = False
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
        end
        object StaticText7: TStaticText
          Left = 319
          Top = 57
          Width = 52
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ICMS'
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
        object StaticText41: TStaticText
          Left = 319
          Top = 172
          Width = 52
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'TOTAL'
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
        object cTotalDiferReal: TCurrencyEdit
          Left = 373
          Top = 172
          Width = 100
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 16765650
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 19
        end
        object cDiferICMSReal: TCurrencyEdit
          Left = 373
          Top = 57
          Width = 100
          Height = 21
          TabStop = False
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object StaticText10: TStaticText
          Left = 5
          Top = 195
          Width = 52
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'TOTAL'
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
        object cTotalImpostos: TDBEdit
          Left = 59
          Top = 195
          Width = 100
          Height = 21
          DataField = 'Total_Impostos'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 20
          OnChange = cMargemLucroChange
        end
        object DBEdit21: TDBEdit
          Left = 216
          Top = 126
          Width = 100
          Height = 21
          DataField = 'PIS_Saida'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
        end
        object DBEdit22: TDBEdit
          Left = 216
          Top = 149
          Width = 100
          Height = 21
          DataField = 'COFINS_Saida'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
        end
        object StaticText60: TStaticText
          Left = 5
          Top = 80
          Width = 52
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ICMS ST'
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
        object StaticText61: TStaticText
          Left = 162
          Top = 80
          Width = 52
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ICMS ST'
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
        object StaticText62: TStaticText
          Left = 319
          Top = 80
          Width = 52
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ICMS ST'
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
        object cICMSSTDif: TCurrencyEdit
          Left = 373
          Top = 80
          Width = 100
          Height = 21
          TabStop = False
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit13: TDBEdit
          Left = 59
          Top = 80
          Width = 100
          Height = 21
          DataField = 'ICMS_EntradaST'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit16: TDBEdit
          Left = 216
          Top = 57
          Width = 100
          Height = 21
          DataField = 'ICMS_Saida'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit33: TDBEdit
          Left = 216
          Top = 80
          Width = 100
          Height = 21
          DataField = 'ICMS_SaidaST'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit34: TDBEdit
          Left = 216
          Top = 103
          Width = 100
          Height = 21
          DataField = 'IPI_Saida'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
      end
      object GroupBox7: TGroupBox
        Left = 482
        Top = 208
        Width = 248
        Height = 108
        Caption = 'Financeiros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object StaticText14: TStaticText
          Left = 5
          Top = 14
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Margem Lucro'
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
        object StaticText16: TStaticText
          Left = 5
          Top = 37
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Desc.Comercial'
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
        object StaticText18: TStaticText
          Left = 5
          Top = 60
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Desc.Adicional'
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
        object cMargemLucro: TDBEdit
          Left = 92
          Top = 14
          Width = 59
          Height = 21
          DataField = 'Margem_Lucro'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnChange = cMargemLucroChange
        end
        object cDescontoCom: TDBEdit
          Left = 92
          Top = 37
          Width = 59
          Height = 21
          DataField = 'Desconto_Operacional'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnChange = cMargemLucroChange
        end
        object cDescontoAdic: TDBEdit
          Left = 92
          Top = 60
          Width = 59
          Height = 21
          DataField = 'Desconto_Adicional'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnChange = cMargemLucroChange
        end
        object StaticText48: TStaticText
          Left = 5
          Top = 83
          Width = 146
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'TOTAL'
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
        object cTotalFinanceiro: TCurrencyEdit
          Left = 153
          Top = 83
          Width = 91
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 16765650
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit29: TDBEdit
          Left = 153
          Top = 14
          Width = 91
          Height = 21
          DataField = 'Margem_LucroValor'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnChange = cMargemLucroChange
        end
        object DBEdit31: TDBEdit
          Left = 153
          Top = 37
          Width = 91
          Height = 21
          DataField = 'Desconto_ComercialValor'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnChange = cMargemLucroChange
        end
        object DBEdit32: TDBEdit
          Left = 153
          Top = 60
          Width = 91
          Height = 21
          DataField = 'Desconto_AdicionalValor'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnChange = cMargemLucroChange
        end
      end
      object GroupBox9: TGroupBox
        Left = 482
        Top = 322
        Width = 248
        Height = 187
        Caption = 'Pagamentos do Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object bCalculoCliente: TSpeedButton
          Left = 225
          Top = 162
          Width = 20
          Height = 21
          Cursor = crHandPoint
          Hint = '  Soma os Pagamentos do Cliente'
          BiDiMode = bdRightToLeft
          Glyph.Data = {
            76020000424D7602000000000000760000002800000020000000200000000100
            0400000000000002000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888800
            0000000888888888888888888888888008888808888888888888888888888888
            0088888888888888888888888888888880088888888888888888888888888888
            8700888888888888888888888888888880088888888888888888888888888888
            0088888888888888888888888888888008888808888888888888888888888800
            0000000888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888}
          Layout = blGlyphBottom
          ParentShowHint = False
          ParentBiDiMode = False
          ShowHint = True
          Spacing = 0
          OnClick = bCalculoClienteClick
        end
        object RxDBGrid3: TRxDBGrid
          Left = 2
          Top = 15
          Width = 244
          Height = 141
          Align = alTop
          BorderStyle = bsNone
          Ctl3D = False
          DataSource = dstPagamentos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Calibri'
          TitleFont.Style = []
          RowColor2 = 16776176
          Columns = <
            item
              Expanded = False
              FieldName = 'Registro'
              Title.Alignment = taCenter
              Title.Caption = 'Baixa'
              Width = 54
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Data'
              Title.Alignment = taCenter
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Title.Alignment = taCenter
              Width = 99
              Visible = True
            end>
        end
        object StaticText44: TStaticText
          Left = 2
          Top = 162
          Width = 125
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'TOTAL'
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
        object cTotalCliente: TDBEdit
          Left = 129
          Top = 162
          Width = 96
          Height = 21
          DataField = 'Pagamento_Cliente'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnChange = cMargemLucroChange
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 514
        Width = 736
        Height = 20
        Align = alBottom
        BevelOuter = bvLowered
        ParentColor = True
        TabOrder = 7
        object Shape1: TShape
          Left = 1
          Top = 1
          Width = 734
          Height = 18
          Align = alClient
          Brush.Color = 7293440
        end
        object lSaldo: TRxLabel
          Left = 1
          Top = 1
          Width = 734
          Height = 18
          Align = alClient
          Alignment = taCenter
          Caption = 'SALDO A FAVOR DA A.BRASIL R$   1.223.345,77'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
          ShadowColor = 5308416
          ShadowPos = spRightBottom
          Transparent = True
        end
      end
      object GroupBox10: TGroupBox
        Left = 420
        Top = 0
        Width = 313
        Height = 108
        Caption = 'Atualiza'#231#227'o Financeira'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object StaticText55: TStaticText
          Left = 4
          Top = 14
          Width = 153
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Despesas'
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
        object StaticText56: TStaticText
          Left = 4
          Top = 37
          Width = 51
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'C'#226'mbio'
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
        object StaticText57: TStaticText
          Left = 4
          Top = 60
          Width = 51
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Impostos'
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
        object cCorrecaoDespesas: TCurrencyEdit
          Left = 218
          Top = 14
          Width = 90
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object cCorrecaoCambio: TCurrencyEdit
          Left = 218
          Top = 37
          Width = 90
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object cCorrecaoImpostos: TCurrencyEdit
          Left = 218
          Top = 60
          Width = 90
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object StaticText58: TStaticText
          Left = 4
          Top = 83
          Width = 212
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'TOTAL'
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
        object cTotalCorrecao: TCurrencyEdit
          Left = 218
          Top = 83
          Width = 90
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 16765650
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
          OnChange = cTotalCorrecaoChange
        end
        object cDataCambio: TDBDateEdit
          Left = 57
          Top = 37
          Width = 100
          Height = 21
          DataField = 'Data_CorrecaoCambio'
          DataSource = Dados.dsProcessosFechamento
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
          TabOrder = 2
          YearDigits = dyFour
          OnExit = cDataCambioExit
        end
        object DBDateEdit3: TDBDateEdit
          Left = 57
          Top = 60
          Width = 100
          Height = 21
          DataField = 'Data_CorrecaoImpostos'
          DataSource = Dados.dsProcessosFechamento
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
          TabOrder = 5
          YearDigits = dyFour
          OnExit = DBDateEdit3Exit
        end
        object DBEdit30: TDBEdit
          Left = 159
          Top = 60
          Width = 57
          Height = 21
          DataField = 'Taxa_CorrecaoImpostos'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnChange = DBEdit30Change
        end
        object cTaxaCambio: TDBEdit
          Left = 159
          Top = 37
          Width = 57
          Height = 21
          DataField = 'Taxa_CorrecaoCambio'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnChange = cTaxaCambioChange
        end
        object cTaxaDespesas: TDBEdit
          Left = 159
          Top = 14
          Width = 57
          Height = 21
          DataField = 'Taxa_CorrecaoDespesas'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnChange = cTaxaDespesasChange
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = '&Rentabilidade'
      Enabled = False
      ImageIndex = 2
      object GroupBox4: TGroupBox
        Left = 2
        Top = 7
        Width = 413
        Height = 156
        Caption = 'ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object StaticText21: TStaticText
          Left = 6
          Top = 14
          Width = 283
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Entrada'
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
        object cICMSEntrada: TDBEdit
          Left = 291
          Top = 14
          Width = 100
          Height = 21
          DataField = 'ICMS_Entrada'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnChange = cMargemLucroChange
        end
        object DBEdit10: TDBEdit
          Left = 291
          Top = 60
          Width = 100
          Height = 21
          DataField = 'ICMS_Pagar'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnChange = cMargemLucroChange
        end
        object DBEdit11: TDBEdit
          Left = 291
          Top = 83
          Width = 100
          Height = 21
          DataField = 'ICMS_FDE'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnChange = cMargemLucroChange
        end
        object DBEdit12: TDBEdit
          Left = 291
          Top = 106
          Width = 100
          Height = 21
          DataField = 'ICMS_GLME'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnChange = cMargemLucroChange
        end
        object StaticText25: TStaticText
          Left = 6
          Top = 60
          Width = 212
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Sa'#237'da (Efetivo)'
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
        object StaticText27: TStaticText
          Left = 6
          Top = 83
          Width = 212
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'FDE'
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
        object StaticText29: TStaticText
          Left = 6
          Top = 106
          Width = 283
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'GLME'
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
        object StaticText42: TStaticText
          Left = 6
          Top = 129
          Width = 283
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'TOTAL'
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
        object cRentTotalICMS: TCurrencyEdit
          Left = 291
          Top = 129
          Width = 100
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 16765650
          Ctl3D = True
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit23: TDBEdit
          Left = 220
          Top = 60
          Width = 69
          Height = 21
          DataField = 'ICMS_PagarPercentual'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnChange = cMargemLucroChange
        end
        object DBEdit9: TDBEdit
          Left = 220
          Top = 83
          Width = 69
          Height = 21
          DataField = 'ICMS_FDEPercentual'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnChange = DBEdit9Change
        end
        object StaticText31: TStaticText
          Left = 6
          Top = 37
          Width = 283
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ICMS Nota Fiscal (Sa'#237'da)'
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
        object DBEdit24: TDBEdit
          Left = 291
          Top = 37
          Width = 100
          Height = 21
          DataField = 'ICMS_Saida'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnChange = cMargemLucroChange
        end
      end
      object GroupBox5: TGroupBox
        Left = 2
        Top = 177
        Width = 413
        Height = 248
        Caption = 'Rentabilidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object bCalculoComissao: TSpeedButton
          Left = 198
          Top = 106
          Width = 20
          Height = 21
          Cursor = crHandPoint
          Hint = 'Recalcula a comiss'#227'o.'
          BiDiMode = bdRightToLeft
          Glyph.Data = {
            76020000424D7602000000000000760000002800000020000000200000000100
            0400000000000002000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888800
            0000000888888888888888888888888008888808888888888888888888888888
            0088888888888888888888888888888880088888888888888888888888888888
            8700888888888888888888888888888880088888888888888888888888888888
            0088888888888888888888888888888008888808888888888888888888888800
            0000000888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888888888888888
            8888888888888888888888888888888888888888888888888888}
          Layout = blGlyphBottom
          ParentShowHint = False
          ParentBiDiMode = False
          ShowHint = True
          Spacing = 0
          OnClick = bCalculoComissaoClick
        end
        object StaticText33: TStaticText
          Left = 6
          Top = 37
          Width = 283
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Margem de Lucro'
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
        object StaticText35: TStaticText
          Left = 6
          Top = 60
          Width = 283
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Desconto Extra'
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
        object StaticText37: TStaticText
          Left = 6
          Top = 83
          Width = 283
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Desconto Comercial'
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
        object StaticText39: TStaticText
          Left = 6
          Top = 106
          Width = 190
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Comiss'#227'o Participa'#231#227'o (Trader)'
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
        object StaticText40: TStaticText
          Left = 6
          Top = 129
          Width = 116
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Assessoria Aduaneira'
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
        object DBEdit17: TDBEdit
          Left = 291
          Top = 129
          Width = 100
          Height = 21
          DataField = 'Assessoria_Total'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnChange = cMargemLucroChange
        end
        object StaticText45: TStaticText
          Left = 6
          Top = 14
          Width = 283
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ICMS'
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
        object StaticText46: TStaticText
          Left = 6
          Top = 152
          Width = 283
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'TOTAL'
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
        object cTotalRent: TCurrencyEdit
          Left = 291
          Top = 152
          Width = 100
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 16765650
          Ctl3D = True
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object StaticText47: TStaticText
          Left = 6
          Top = 198
          Width = 212
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
          TabOrder = 22
          Transparent = False
          StyleElements = []
        end
        object StaticText49: TStaticText
          Left = 6
          Top = 175
          Width = 212
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
          TabOrder = 23
          Transparent = False
          StyleElements = []
        end
        object StaticText50: TStaticText
          Left = 6
          Top = 221
          Width = 283
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'TOTAL'
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
        object cTotalRentImp: TCurrencyEdit
          Left = 291
          Top = 221
          Width = 100
          Height = 21
          TabStop = False
          AutoSize = False
          Color = 16765650
          Ctl3D = True
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
        end
        object DBEdit25: TDBEdit
          Left = 291
          Top = 175
          Width = 100
          Height = 21
          DataField = 'CSLL_Valor'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          OnChange = cMargemLucroChange
        end
        object DBEdit26: TDBEdit
          Left = 291
          Top = 198
          Width = 100
          Height = 21
          DataField = 'IRPJ_Valor'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          OnChange = cMargemLucroChange
        end
        object DBEdit27: TDBEdit
          Left = 220
          Top = 175
          Width = 69
          Height = 21
          DataField = 'CSLL_Percentual'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnChange = cMargemLucroChange
        end
        object DBEdit28: TDBEdit
          Left = 220
          Top = 198
          Width = 69
          Height = 21
          DataField = 'IRPJ_Percentual'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          OnChange = cMargemLucroChange
        end
        object cRentICMS: TCurrencyEdit
          Left = 291
          Top = 14
          Width = 100
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnChange = cMargemLucroChange
        end
        object cRentMargemLucro: TCurrencyEdit
          Left = 291
          Top = 37
          Width = 100
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object cRentDescAdic: TCurrencyEdit
          Left = 291
          Top = 60
          Width = 100
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object cRentDescCom: TCurrencyEdit
          Left = 291
          Top = 83
          Width = 100
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit14: TDBEdit
          Left = 220
          Top = 129
          Width = 69
          Height = 21
          DataField = 'Assessoria_Percentual'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnChange = cMargemLucroChange
        end
        object DBEdit15: TDBEdit
          Left = 124
          Top = 129
          Width = 94
          Height = 21
          DataField = 'Assessoria_Valor'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnChange = cMargemLucroChange
        end
        object cComissaoValor: TCurrencyEdit
          Left = 291
          Top = 106
          Width = 100
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnExit = cComissaoValorExit
        end
        object cComissaoAliq: TCurrencyEdit
          Left = 220
          Top = 106
          Width = 69
          Height = 21
          AutoSize = False
          DisplayFormat = ',0.00;-,0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object Trava2: TRxSwitch
          Left = 392
          Top = 107
          Width = 18
          Height = 21
          Hint = 
            'Trava o valor do Desconto/Juros Financeiros, n'#227'o efetuando o c'#225'l' +
            'culo autom'#225'tico.'
          Caption = 'Trava2'
          GlyphOff.Data = {
            16030000424D1603000000000000160200002800000010000000100000000100
            08000000000000010000120B0000120B0000780000007800000000000000FFFF
            FF00FF00FF008AF5FB0087F0F8007AECF8007BE0EC00CFF8FD00CAF5FB0055D7
            EC005CCCDF0077DEEE00B6F4FF00B3ECF50047C2DC0058CDE4006BD1E60094DF
            EF00B1EEFA00ECFAFD0024B6DA003ABFE0003CB6D10045C2DF0046BEDB004AB5
            CD006ECFE700B1E5F1000C9BC4000EA5D100119DC4001DAFD8001CA9D00020AF
            D80020A7CD0025ABD20028B1D7002BB1D8002EB7DE002FAECF0037B7D90040B8
            D70044C1E2003DAAC8004AC2E20052C0E00060C7E2005EC0DB0062C8E2006BCF
            EA006CC8E00083D8EE0086D8EE000091BF00049DCA00069DCC0008A1CE000994
            BF000A95C0000B99C6000B96C0000C9DC8000C94C1000D96C20013A8D400199B
            C3001FA7D20025AAD4002DB5DD002EB3DB0033B0D90034B1DA0039BBE3003FBE
            E4003BA6C60048C1E8004ABCE0004FC3E60063A9BF0083C9DE009AE1F800A2E7
            FD000C8AB500148AB6001898C3002A9DC6003DB2DC00369BC00048B7E00049B7
            E0004DB9E10054BCE3007FD2F1008BCFE8009DE2F900A0E3FB00C5E8F400287F
            A10059BBE00060C1E8006FC7EB0069BDE00064B2D10073CAEE007CCDEF0086D4
            F40076CBF00082D0F2008FD7F70094DBFC0093DAF90095DAFA0099DFFE009ADC
            FB00A2E1FE0093D9FA0095DAFB0094D8FA0097DAFB00A0DFFE00020202020202
            020202020202020202020202023759635B565A020202020202020202381D5C77
            767368675802020202020202401F335F6E6B626C716A02020202020221261112
            51665764747147020202020244491B070C4F61656D6F460202020202484B6013
            080D4E5D7075460202020202452A2F32302E1A345E72470202020202250F2918
            17282C315069430202020202240A1C1603091436232D420202020202023E3527
            04050E3C1E2002020202020202023B410215223A3F0202020202020202024D55
            02020239520202020202020202024A0B2B02533D020202020202020202020219
            06104C5402020202020202020202020202020202020202020202}
          GlyphOn.Data = {
            12030000424D1203000000000000120200002800000010000000100000000100
            08000000000000010000120B0000120B0000770000007700000000000000FFFF
            FF00FF00FF0080FCFF0066EDF800C1F6FC004ED8EB005AD1E0005DD5E50059CB
            DA00BBF2FA009FE6F20036C1DE009DE9F800A3F0FF002CBDE00031BBDC003AC1
            E00035A9C4003BAFCA003BADC70041B4CE007BD5EA009DDDED00E6F8FC002DB0
            D30035A6C70047B8D9004DC2E30053C1E00011A1CE00169FCC002CB0D9002382
            9F0035A7CC0045B7D90043AFD00051B8D70069CCE9006CCCE90069BAD4008BE0
            FC00078FC200078AB8000995C6000E9ACC00109ACC0019A1D300189ACA001AA4
            D4001A9FD0001C9ECA0023A9DA0028ACDC001D728F0033A1C9005EC2E7004893
            AD0086D9F700B5E1F000017FB2000286BD00038AC0000384B8000382B6000381
            B500058FC4000684B5000680B100078BC1000892C700088EC1000782B2000B8F
            C2000E90C4000F88BB001A9CCF001E9CCE001F9DCF00219FCF002799C5002FB0
            E10065C5ED0072C1E10089DAFA00016D9F000273A500037BAF000379AC000479
            AB000478AA0016658A00269ED1002083AF002FA4D70030A4D70034A6D8003AAA
            DA003FA9D70045B0E10054B7E500499EC40058BBE90062BFEA007ACFF7004EAB
            D7005BBCEB0068C2EE0076CBF4007BD0FB007ACEF8007DCFF80081D5FE0082D1
            FA008BD8FE007BCCF8007DCFFA007FCFFA0089D5FE000202023D5F63615C6002
            02020202020202023E425276756E67665E02020202020202462D2654686B626C
            716A0202020202022E31160D29655D6474714E02020202022F3517050E285B69
            6D6F4D020202020234513B180A0B395370734D0202020202322024251B231D27
            3A724E02020202021F073621060F1E2C30384F02020202020233120903040C2B
            3C474902020202020202020211101948442A4502020202020202020202020243
            570202020202020202025655020202405A0202020202020202024C4B0202023F
            59020202020202020202371C02020241580202020202020202020215081A504A
            02020202020202020202020214132202020202020202}
          ParentShowHint = False
          ShowHint = True
          TabOrder = 25
          OnClick = Trava1Click
          Data = {03}
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 514
        Width = 736
        Height = 20
        Align = alBottom
        BevelOuter = bvLowered
        ParentColor = True
        TabOrder = 2
        object Shape2: TShape
          Left = 1
          Top = 1
          Width = 734
          Height = 18
          Align = alClient
          Brush.Color = 7293440
          Pen.Color = clNavy
        end
        object lRentabilidade: TRxLabel
          Left = 1
          Top = 1
          Width = 734
          Height = 18
          Align = alClient
          Alignment = taCenter
          Caption = 'RENTABILIDADE DO PROCESSO R$   1.223.345,77'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -16
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Layout = tlCenter
          ParentFont = False
          ShadowColor = 5308416
          ShadowPos = spRightBottom
          Transparent = True
          ExplicitWidth = 327
          ExplicitHeight = 19
        end
      end
      object GroupBox3: TGroupBox
        Left = 434
        Top = 7
        Width = 255
        Height = 96
        Caption = 'Transfer'#234'ncias /Devolu'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object StaticText13: TStaticText
          Left = 8
          Top = 20
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Transfer'#234'ncias Efetuadas'
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
        object StaticText43: TStaticText
          Left = 8
          Top = 43
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Transfer'#234'ncias Recebidas'
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
        object StaticText63: TStaticText
          Left = 8
          Top = 66
          Width = 120
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Devolu'#231#245'es a Clientes'
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
        object DBEdit7: TDBEdit
          Left = 134
          Top = 20
          Width = 100
          Height = 21
          DataField = 'Transferencia_Efetuada'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnChange = cMargemLucroChange
        end
        object DBEdit8: TDBEdit
          Left = 134
          Top = 43
          Width = 100
          Height = 21
          DataField = 'Transferencia_Recebida'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnChange = cMargemLucroChange
        end
        object DBEdit36: TDBEdit
          Left = 134
          Top = 66
          Width = 100
          Height = 21
          DataField = 'Devolucoes'
          DataSource = Dados.dsProcessosFechamento
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnChange = cMargemLucroChange
        end
      end
    end
  end
  object tCodigo: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM ProcessosFechamento')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 119
    Top = 402
    object tCodigoCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = '.'
      ReadOnly = True
    end
  end
  object tHistorico: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Numero) AS Numero FROM ProcessosHistorico')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 119
    Top = 466
  end
  object PopupMenu1: TPopupMenu
    Left = 480
    Top = 2
    object RemoverosItensSelecionados1: TMenuItem
      Caption = 'Remover os Itens &Selecionados'
      OnClick = RemoverosItensSelecionados1Click
    end
    object RemoverosItensnoSelecionados1: TMenuItem
      Caption = 'Remover os Itens &n'#227'o Selecionados'
      OnClick = RemoverosItensnoSelecionados1Click
    end
    object RemoverTodos1: TMenuItem
      Caption = 'Remover &Todas as Despesas'
      OnClick = RemoverTodos1Click
    end
    object AdicionarDespesas1: TMenuItem
      Caption = 'Adicionar &Despesas'
      OnClick = AdicionarDespesas1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object CopiardescriodaClassificao1: TMenuItem
      Caption = 'Copiar Descri'#231#227'o da Classifica'#231#227'o para Observa'#231#227'o'
      OnClick = CopiardescriodaClassificao1Click
    end
    object CopiarDatadeCorreoparatodasasdespesas2: TMenuItem
      Caption = '&Copiar Data de Corre'#231#227'o para todas as despesas'
    end
    object CopiardatadeCorreoparatodasasdespesas1: TMenuItem
      Caption = '&Copiar Data de Corre'#231#227'o para  as despesas sem data'
    end
  end
  object tTotalFecha: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT SUM(Valor) AS Total_Pgto'
      'FROM   PagarReceberBaixas, PagarReceber'
      'WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero)')
    FetchRows = 1
    Left = 198
    Top = 338
  end
  object tTotalSaida: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      
        'SELECT SUM(Valor_Fechamento) AS Total FROM ProcessosFechamentoIt' +
        'ens')
    Left = 286
    Top = 338
  end
  object tContratos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'USE CYBERSOFT_ROTTA'
      'SELECT Contrato,'
      '       Data,'
      '       Valor_ME,'
      '       Taxa_Cambial,'
      '       (Valor_ME * Taxa_Cambial) AS Valor_Real'
      'FROM ContratoCambioItens'
      'UNION'
      'SELECT Contrato,'
      '       Data,'
      '       Valor_ME,'
      '       Taxa_Cambial,'
      '       (Valor_ME * Taxa_Cambial) AS Valor_Real'
      'FROM ContratoCambioItens'
      'UNION'
      'SELECT Contrato,'
      '       Data,'
      '       Valor_ME,'
      '       Taxa_Cambial,'
      '       (Valor_ME * Taxa_Cambial) AS Valor_Real'
      'FROM ContratoCambioItens')
    Left = 286
    Top = 402
    object tContratosData: TDateTimeField
      DisplayWidth = 10
      FieldName = 'Data'
      Origin = 'ContratoCambioItens.Data'
    end
    object tContratosTaxa_Cambial: TFloatField
      FieldName = 'Taxa_Cambial'
      Origin = 'ContratoCambioItens.Taxa_Cambial'
      DisplayFormat = ',##0.0000'
      EditFormat = ',##0.0000'
    end
    object tContratosValor_Real: TFloatField
      FieldName = 'Valor_Real'
      Origin = '.'
      ReadOnly = True
      DisplayFormat = ',##0.00'
      EditFormat = '##0.00'
    end
    object tContratosContrato: TStringField
      FieldName = 'Contrato'
      Origin = 'ContratoCambioItens.Contrato'
      Size = 15
    end
    object tContratosValor_ME: TCurrencyField
      FieldName = 'Valor_ME'
      Origin = 'ContratoCambioItens.Valor_ME'
      DisplayFormat = ',##0.00'
    end
  end
  object dstContratos: TDataSource
    DataSet = tContratos
    Left = 286
    Top = 466
  end
  object tPagamentos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      
        'SELECT PagarReceberBaixas.Registro, PagarReceberBaixas.Data,Paga' +
        'rReceberBaixas.Valor '
      'FROM PagarReceber, PagarReceberBaixas'
      'WHERE (PagarReceber.Numero = PagarReceberBaixas.Numero)'
      '      AND (Classificacao = '#39'SALDO'#39' )'
      '')
    Left = 366
    Top = 338
    object tPagamentosRegistro: TLargeintField
      FieldName = 'Registro'
      Origin = 'PagarReceberBaixas.Registro'
    end
    object tPagamentosData: TDateTimeField
      FieldName = 'Data'
      Origin = 'PagarReceberBaixas.Data'
    end
    object tPagamentosValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'PagarReceberBaixas.Valor'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
  end
  object dstPagamentos: TDataSource
    DataSet = tPagamentos
    Left = 366
    Top = 402
  end
  object tTotalBaixas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT SUM(Valor) AS Total_Pgto'
      'FROM   PagarReceberBaixas, PagarReceber'
      'WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero)')
    FetchRows = 1
    Left = 198
    Top = 402
  end
  object tTotalCambio: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT SUM(Valor) AS Total_Pgto'
      'FROM   PagarReceberBaixas, PagarReceber'
      'WHERE(PagarReceberBaixas.Numero = PagarReceber.Numero)')
    FetchRows = 1
    Left = 198
    Top = 466
  end
  object tCorrecao: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 366
    Top = 466
  end
  object tRegistro: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Registro) AS Registro FROM ProcessosFechamentoItens')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 442
    Top = 338
    object tRegistroRegistro: TIntegerField
      FieldName = 'Registro'
      ReadOnly = True
    end
  end
  object tProcesso: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 119
    Top = 338
  end
  object tICMSST: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 442
    Top = 402
  end
  object tData: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 442
    Top = 466
  end
  object tTransfer: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      
        'SELECT PagarReceberBaixas.Registro, PagarReceberBaixas.Data,Paga' +
        'rReceberBaixas.Valor '
      'FROM PagarReceber, PagarReceberBaixas'
      'WHERE (PagarReceber.Numero = PagarReceberBaixas.Numero)'
      '      AND (Classificacao = '#39'SALDO'#39' )'
      '')
    Left = 506
    Top = 339
  end
  object tTotalEntrada: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 286
    Top = 295
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 502
    Top = 402
  end
end
