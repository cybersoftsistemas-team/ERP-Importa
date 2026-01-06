object Impressao_DANFE: TImpressao_DANFE
  Left = 668
  Top = 237
  BorderStyle = bsDialog
  Caption = 'Impressao_DANFE'
  ClientHeight = 642
  ClientWidth = 1033
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
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 1033
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitLeft = 8
    ExplicitTop = 46
    ExplicitWidth = 902
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 183
    Height = 21
    Caption = 'NOTA FISCAL ELETR'#212'NICA'
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
    Width = 134
    Height = 18
    Caption = 'Impress'#227'o do DANFE.'
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
    Width = 1033
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      1033
      30)
    object bSair: TButton
      Left = 966
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
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 168
      Height = 28
      Cursor = crHandPoint
      DataSource = dmFiscal.dsNotas
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
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
    end
    object bDANFE: TButton
      Left = 899
      Top = 1
      Width = 66
      Height = 28
      Cursor = crHandPoint
      Hint = 'Gerar as Notas Fiscais Eletr'#244'nicas e enviar.'
      Anchors = [akTop, akRight]
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bDANFEClick
    end
    object bPesquisar: TButton
      Left = 169
      Top = 1
      Width = 68
      Height = 28
      Caption = '&Pesquisar'
      TabOrder = 3
      OnClick = bPesquisarClick
    end
    object Button2: TButton
      Left = 237
      Top = 1
      Width = 103
      Height = 28
      Caption = 'S&elecionar Todas'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 340
      Top = 1
      Width = 102
      Height = 28
      Caption = '&Desmarcar Todas'
      TabOrder = 5
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 442
      Top = 1
      Width = 98
      Height = 28
      Cursor = crHandPoint
      Hint = 'Gerar as Notas Fiscais Eletr'#244'nicas e enviar.'
      Caption = 'En&viar Armazem'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
  end
  object Grade: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 314
    Width = 1027
    Height = 288
    Hint = 
      '   Pressione (Ctrl + Click) para selecionar as notas desejadas  ' +
      ' '
    Margins.Bottom = 10
    Align = alClient
    DataSource = dmFiscal.dsNotas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentColor = True
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data_Emissao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Emiss'#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 75
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Numero'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' NF'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Processo'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 110
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Saida_EntradaNome'
        Title.Alignment = taCenter
        Title.Caption = 'E/S'
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
        FieldName = 'Tipo_Nota'
        Title.Alignment = taCenter
        Title.Caption = 'Tipo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DI'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_TotalNota'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Destinatario_Nome'
        Title.Alignment = taCenter
        Title.Caption = 'Destinat'#225'rio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 260
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Complementar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Webdings'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Cpl'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Devolucao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Webdings'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Dev'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Cancelada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Webdings'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Canc'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Nfe_Denegada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Webdings'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Den'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DPEC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Webdings'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CCe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Webdings'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 49
    Width = 1027
    Height = 259
    Align = alTop
    Caption = 'Filtros'
    TabOrder = 2
    object Bevel1: TBevel
      AlignWithMargins = True
      Left = 928
      Top = 8
      Width = 2
      Height = 248
    end
    object cTipo: TRadioGroup
      Left = 753
      Top = 16
      Width = 134
      Height = 85
      Caption = 'Tipo de Nota Fiscal'
      ItemIndex = 1
      Items.Strings = (
        'Entradas'
        'Sa'#237'das'
        'Todas')
      TabOrder = 0
      OnClick = cTipoClick
    end
    object cDataIni: TDateEdit
      Left = 93
      Top = 16
      Width = 106
      Height = 21
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
      PopupAlign = epaLeft
      YearDigits = dyFour
      TabOrder = 1
    end
    object StaticText2: TStaticText
      Left = 5
      Top = 16
      Width = 86
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
      TabOrder = 2
      Transparent = False
      StyleElements = []
    end
    object cDataFim: TDateEdit
      Left = 268
      Top = 16
      Width = 106
      Height = 21
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
      PopupAlign = epaLeft
      YearDigits = dyFour
      TabOrder = 3
    end
    object StaticText1: TStaticText
      Left = 201
      Top = 16
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
      TabOrder = 4
      Transparent = False
      StyleElements = []
    end
    object StaticText3: TStaticText
      Left = 5
      Top = 39
      Width = 86
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Processo N'#186
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
    object cProcesso: TRxDBLookupCombo
      Left = 93
      Top = 39
      Width = 194
      Height = 21
      DropDownAlign = daRight
      DropDownCount = 15
      DropDownWidth = 225
      DisplayAllFields = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'Processo'
      LookupDisplay = 'Processo; Numero_Declaracao'
      LookupSource = Dados.dsProcessosDOC
      ParentFont = False
      TabOrder = 6
    end
    object StaticText4: TStaticText
      Left = 5
      Top = 62
      Width = 86
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Destinat'#225'rio'
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
    object cBeneficiario: TRxDBLookupCombo
      Left = 93
      Top = 62
      Width = 496
      Height = 21
      DropDownCount = 15
      DisplayAllFields = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'CNPJ;Nome'
      LookupDisplayIndex = 1
      LookupSource = dstBeneficiario
      ParentFont = False
      TabOrder = 8
    end
    object cPessoa: TRadioGroup
      Left = 603
      Top = 16
      Width = 134
      Height = 85
      Caption = 'Pessoa'
      ItemIndex = 2
      Items.Strings = (
        'Pessoa F'#237'sica'
        'Pessoa Jur'#237'dica'
        'Todos')
      TabOrder = 9
      OnClick = cTipoClick
    end
    object StaticText5: TStaticText
      Left = 5
      Top = 85
      Width = 86
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
      TabOrder = 10
      Transparent = False
      StyleElements = []
    end
    object cTipoNota: TRxDBLookupCombo
      Left = 93
      Top = 85
      Width = 496
      Height = 21
      DropDownCount = 10
      DisplayAllFields = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo;Descricao'
      LookupDisplayIndex = 1
      LookupSource = Dados.dsTipoNota
      ParentFont = False
      TabOrder = 11
    end
    object StaticText6: TStaticText
      Left = 292
      Top = 39
      Width = 40
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
      TabOrder = 12
      Transparent = False
      StyleElements = []
    end
    object cEstado: TRxDBLookupCombo
      Left = 334
      Top = 39
      Width = 255
      Height = 21
      DropDownCount = 8
      DisplayAllFields = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo; Nome'
      LookupDisplayIndex = 1
      LookupSource = Dados.dsEstados
      ParentFont = False
      TabOrder = 13
    end
    object StaticText7: TStaticText
      Left = 5
      Top = 108
      Width = 86
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'CFOP'
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
    object cCFOP: TRxDBLookupCombo
      Left = 93
      Top = 108
      Width = 496
      Height = 21
      DropDownCount = 15
      DisplayAllFields = True
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
      TabOrder = 15
    end
    object StaticText10: TStaticText
      Left = 5
      Top = 154
      Width = 86
      Height = 73
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Ramo Atividade'
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
    object cRamoAtividade: TCheckListBox
      Left = 93
      Top = 154
      Width = 496
      Height = 73
      Columns = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 17
    end
    object bSelecionar: TBitBtn
      Left = 590
      Top = 155
      Width = 98
      Height = 36
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
      TabOrder = 18
      OnClick = bSelecionarClick
    end
    object bDesmarcar: TBitBtn
      Left = 590
      Top = 192
      Width = 98
      Height = 36
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
      TabOrder = 19
      OnClick = bDesmarcarClick
    end
    object cExcel: TCheckBox
      Left = 231
      Top = 233
      Width = 158
      Height = 17
      Caption = 'Exportar nota para o EXCEL.'
      TabOrder = 20
    end
    object cDataHora: TCheckBox
      Left = 7
      Top = 233
      Width = 211
      Height = 17
      Caption = 'Imprimir Data e Hora de Entrada/Sa'#237'da'
      Checked = True
      State = cbChecked
      TabOrder = 21
    end
    object cAgruparFilial: TCheckBox
      Left = 395
      Top = 233
      Width = 205
      Height = 17
      Caption = 'Consolidar Benefic'#225'rio (Raiz do CNPJ)'
      TabOrder = 22
    end
    object bFiltrar: TButton
      Left = 941
      Top = 57
      Width = 76
      Height = 56
      Caption = '&Filtrar'
      TabOrder = 23
      OnClick = bFiltrarClick
    end
    object Button1: TButton
      Left = 941
      Top = 119
      Width = 76
      Height = 56
      Caption = '&Limpar'
      TabOrder = 24
      OnClick = Button1Click
    end
    object StaticText8: TStaticText
      Left = 5
      Top = 131
      Width = 86
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Refer. Cliente'
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
    object cRefCliente: TEdit
      Left = 93
      Top = 131
      Width = 173
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 26
    end
  end
  object DANFE_Reimpressao: TppReport
    AutoStop = False
    DataPipeline = ppNotas
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Cybersoft - DANFE Retrato'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Sistemas\Faturamento\Codigo Fonte\Relatorios\DANFE_RetratoRei' +
      'mpressa.rtm'
    Units = utMillimeters
    AllowPrintToArchive = True
    AllowPrintToFile = True
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = DANFE_ReimpressaoBeforePrint
    CachePages = True
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
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 698
    Top = 6
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppNotas'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 61383
      mmPrintPosition = 0
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape6'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 12965
        mmLeft = 110596
        mmTop = 16404
        mmWidth = 86784
        BandType = 0
        LayerName = Foreground1
      end
      object CodigoBarras: TppDBBarCode
        DesignLayer = ppDesignLayer2
        UserName = 'CodigoBarras'
        AlignBarCode = ahLeft
        AutoEncode = True
        BarCodeType = bcCode128
        BarColor = clWindowText
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NFe_CNF'
        DataPipeline = ppNotas
        PrintHumanReadable = False
        Alignment = taCenter
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppNotas'
        mmHeight = 10319
        mmLeft = 116681
        mmTop = 17992
        mmWidth = 74877
        BandType = 0
        LayerName = Foreground1
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppShape60: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape60'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 110861
        mmTop = 55033
        mmWidth = 86784
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape58: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape58'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 32279
        mmLeft = 79904
        mmTop = 16404
        mmWidth = 30692
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape4'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 7144
        mmLeft = 25400
        mmTop = 7144
        mmWidth = 138377
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape3'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 7144
        mmLeft = 0
        mmTop = 7144
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 7145
        mmLeft = 0
        mmTop = 0
        mmWidth = 163777
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape2'
        Brush.Color = 15987699
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 14023
        mmLeft = 164571
        mmTop = 0
        mmWidth = 32808
        BandType = 0
        LayerName = Foreground1
      end
      object lRazaoSocial: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lRazaoSocial'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 
          'RECEBEMOS DE (RAZ'#195'O SOCIAL DO EMITENTE) OS PRODUTOS CONSTANTES D' +
          'A NOTA FISCAL INDICADA AO LADO.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 1058
        mmTop = 2117
        mmWidth = 161396
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DATA DE RECEBIMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 1941
        mmLeft = 795
        mmTop = 7408
        mmWidth = 21379
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'IDENTIFICA'#199#195'O E ASSINATURA DO RECEBEDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 1941
        mmLeft = 26195
        mmTop = 7408
        mmWidth = 42121
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'NF-e'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 164836
        mmTop = 265
        mmWidth = 32279
        BandType = 0
        LayerName = Foreground1
      end
      object lSerie: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lSerie'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'SERIE 000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 173845
        mmTop = 9260
        mmWidth = 14055
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Style = psDashDotDot
        Pen.Width = 0
        mmHeight = 2117
        mmLeft = 265
        mmTop = 15081
        mmWidth = 197115
        BandType = 0
        LayerName = Foreground1
      end
      object lQuadroEmpresa: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'lQuadroEmpresa'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 32279
        mmLeft = 0
        mmTop = 16404
        mmWidth = 80000
        BandType = 0
        LayerName = Foreground1
      end
      object lEndereco: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lEndereco'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'lEndereco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2910
        mmLeft = 529
        mmTop = 36513
        mmWidth = 79111
        BandType = 0
        LayerName = Foreground1
      end
      object lBairroMunicipio: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lBairroMunicipio'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'lBairroMunicipio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2910
        mmLeft = 529
        mmTop = 39423
        mmWidth = 79111
        BandType = 0
        LayerName = Foreground1
      end
      object lCEP: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lCEP'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'lCEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2910
        mmLeft = 529
        mmTop = 42333
        mmWidth = 79111
        BandType = 0
        LayerName = Foreground1
      end
      object lEmpresa: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lEmpresa'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'lEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 2921
        mmLeft = 529
        mmTop = 33557
        mmWidth = 79111
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DANFE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 16
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 80433
        mmTop = 16404
        mmWidth = 29633
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '0 - ENTRADA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        WordWrap = True
        mmHeight = 2879
        mmLeft = 82021
        mmTop = 31485
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape7: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape7'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4233
        mmLeft = 101071
        mmTop = 32279
        mmWidth = 3969
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Saida_Entrada'
        DataPipeline = ppNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppNotas'
        mmHeight = 3387
        mmLeft = 102394
        mmTop = 32544
        mmWidth = 2117
        BandType = 0
        LayerName = Foreground1
      end
      object lSerie2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lSerie1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'SERIE 000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2498
        mmLeft = 88434
        mmTop = 38894
        mmWidth = 10456
        BandType = 0
        LayerName = Foreground1
      end
      object lNumero_Folha: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lNumero_Folha'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Numero_Folha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2921
        mmLeft = 85110
        mmTop = 41540
        mmWidth = 17103
        BandType = 0
        LayerName = Foreground1
      end
      object lNumero: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lSerie2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'N'#186' 000.000.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4657
        mmLeft = 167495
        mmTop = 3969
        mmWidth = 26966
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape8: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape8'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 0
        mmTop = 48683
        mmWidth = 110861
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'NATUREZA DA OPERA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 1940
        mmLeft = 794
        mmTop = 49213
        mmWidth = 23283
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape9: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape9'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 0
        mmTop = 55033
        mmWidth = 31485
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'INSCRI'#199#195'O ESTADUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 1940
        mmLeft = 794
        mmTop = 55563
        mmWidth = 19897
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape10: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape10'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 31485
        mmTop = 55033
        mmWidth = 42333
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'INSC. ESTADUAL DO SUBST. TRIBUT'#193'RIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 1940
        mmLeft = 32279
        mmTop = 55563
        mmWidth = 38629
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'lIE1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Inscricao_Substituto'
        DataPipeline = ppNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppNotas'
        mmHeight = 3387
        mmLeft = 32015
        mmTop = 57415
        mmWidth = 41010
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape11: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape101'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 73819
        mmTop = 55033
        mmWidth = 37042
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label101'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 1940
        mmLeft = 74877
        mmTop = 55563
        mmWidth = 7408
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CNPJ'
        DataPipeline = ppEmpresas
        DisplayFormat = '##.###.###/####-##;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppEmpresas'
        mmHeight = 3387
        mmLeft = 74613
        mmTop = 57415
        mmWidth = 35190
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel74: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label74'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '1 - SA'#205'DA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        WordWrap = True
        mmHeight = 2879
        mmLeft = 82021
        mmTop = 34396
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Documento Auxiliar da Nota Fiscal Eletr'#244'nica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 6085
        mmLeft = 81756
        mmTop = 22225
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape55: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape55'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 6879
        mmLeft = 110596
        mmTop = 29369
        mmWidth = 86519
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel77: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label77'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CHAVE DE ACESSO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2032
        mmLeft = 111654
        mmTop = 30163
        mmWidth = 16976
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape56: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape56'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 12435
        mmLeft = 110596
        mmTop = 36248
        mmWidth = 86784
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape57: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape57'
        Brush.Style = bsClear
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 110861
        mmTop = 48683
        mmWidth = 86784
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel76: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label76'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DADOS DA NF-e'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 111654
        mmTop = 48948
        mmWidth = 15081
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NFe_cNF'
        DataPipeline = ppNotas
        DisplayFormat = '##.##.##.##.##.###.###/####-##-###.###.###-###-###.###.###-#;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppNotas'
        mmHeight = 3387
        mmLeft = 111125
        mmTop = 32279
        mmWidth = 85990
        BandType = 0
        LayerName = Foreground1
      end
      object lIE: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'lIE'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'IE'
        DataPipeline = ppEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppEmpresas'
        mmHeight = 3387
        mmLeft = 794
        mmTop = 57415
        mmWidth = 30163
        BandType = 0
        LayerName = Foreground1
      end
      object ppMemo1: TppMemo
        DesignLayer = ppDesignLayer2
        UserName = 'Memo1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'bsClear'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Lines.Strings = (
          
            'Consulta de autenticidade no portal nacional da NF-e www.nfe.faz' +
            'enda.gov.br/portal ou no site da Sefaz Autorizadora.')
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        mmHeight = 10054
        mmLeft = 110861
        mmTop = 37571
        mmWidth = 85990
        BandType = 0
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel81: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label81'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'PROTOCOLO DE AUTORIZA'#199#195'O DE USO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 111654
        mmTop = 55563
        mmWidth = 34925
        BandType = 0
        LayerName = Foreground1
      end
      object lProtocolo: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'lProtocolo'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NFe_Protocolo'
        DataPipeline = ppNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppNotas'
        mmHeight = 3440
        mmLeft = 142875
        mmTop = 57415
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground1
      end
      object lDataProtocolo: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'lDataProtocolo'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NFe_DataProtocolo'
        DataPipeline = ppNotas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppNotas'
        mmHeight = 3440
        mmLeft = 169598
        mmTop = 57415
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 85990
        mmTop = 44715
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground1
      end
      object lNatureza: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lNatureza'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'lNatureza'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3387
        mmLeft = 1058
        mmTop = 51065
        mmWidth = 108479
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'lIE2'
        Hyperlink = 'mailto:abrasil@abrasilsc.com.br'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Email'
        DataPipeline = ppEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'ppEmpresas'
        mmHeight = 2498
        mmLeft = 529
        mmTop = 45244
        mmWidth = 79111
        BandType = 0
        LayerName = Foreground1
      end
      object lDPEC: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label31'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 
          'DANFE impresso em conting'#234'ncia - DPEC regularmente recebida pela' +
          ' Receita Federal do Brasil'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        Visible = False
        WordWrap = True
        mmHeight = 5821
        mmLeft = 129117
        mmTop = 48948
        mmWidth = 67998
        BandType = 0
        LayerName = Foreground1
      end
      object lHomologacao: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label32'
        Angle = 15
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '[ HOMOLOGA'#199#195'O ]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16744576
        Font.Name = 'Arial Black'
        Font.Size = 40
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 57028
        mmLeft = 31827
        mmTop = 36706
        mmWidth = 144572
        BandType = 0
        LayerName = Foreground1
        RotatedOriginLeft = -1850
        RotatedOriginTop = 37655
      end
      object iLogo: TppImage
        DesignLayer = ppDesignLayer2
        UserName = 'iLogo'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = True
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 16718
        mmLeft = 21421
        mmTop = 16476
        mmWidth = 36555
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'ppItens'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppItens
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Cybersoft - DANFE Retrato'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '19.04'
          mmColumnWidth = 0
          DataPipelineName = 'ppItens'
          object ppDetailBand2: TppDetailBand
            BeforePrint = ppDetailBand2BeforePrint
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 4010
            mmPrintPosition = 0
            object ppLine6: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line6'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 4010
              mmLeft = 76994
              mmTop = 0
              mmWidth = 1323
              BandType = 4
              LayerName = Foreground
            end
            object ppLine8: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line8'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 4010
              mmLeft = 14552
              mmTop = 0
              mmWidth = 5556
              BandType = 4
              LayerName = Foreground
            end
            object ppLine9: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line9'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 4010
              mmLeft = 0
              mmTop = 0
              mmWidth = 4233
              BandType = 4
              LayerName = Foreground
            end
            object ppLine10: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line10'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 4010
              mmLeft = 92340
              mmTop = 0
              mmWidth = 3175
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText27: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText27'
              Anchors = [atBottom]
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Codigo'
              DataPipeline = ppNatureza
              DisplayFormat = '#.###;0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              DataPipelineName = 'ppNatureza'
              mmHeight = 1986
              mmLeft = 93134
              mmTop = 331
              mmWidth = 5027
              BandType = 4
              LayerName = Foreground
            end
            object ppLine12: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line12'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 4010
              mmLeft = 98425
              mmTop = 0
              mmWidth = 7144
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText28: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText28'
              Anchors = [atBottom]
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Unidade_Medida'
              DataPipeline = ppItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              DataPipelineName = 'ppItens'
              mmHeight = 1986
              mmLeft = 98954
              mmTop = 331
              mmWidth = 3969
              BandType = 4
              LayerName = Foreground
            end
            object ppLine14: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line14'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 4010
              mmLeft = 103188
              mmTop = 0
              mmWidth = 4763
              BandType = 4
              LayerName = Foreground
            end
            object ppLine16: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line16'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 4010
              mmLeft = 115623
              mmTop = 0
              mmWidth = 5027
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText30: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText30'
              Anchors = [atBottom]
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Valor_Unitario'
              DataPipeline = ppItens
              DisplayFormat = '###,###,##0.00000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              DataPipelineName = 'ppItens'
              mmHeight = 1986
              mmLeft = 116417
              mmTop = 331
              mmWidth = 14817
              BandType = 4
              LayerName = Foreground
            end
            object ppLine18: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line18'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 4010
              mmLeft = 131763
              mmTop = 0
              mmWidth = 7144
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText31: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText301'
              Anchors = [atBottom]
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Valor_Total'
              DataPipeline = ppItens
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              DataPipelineName = 'ppItens'
              mmHeight = 1986
              mmLeft = 132027
              mmTop = 331
              mmWidth = 12700
              BandType = 4
              LayerName = Foreground
            end
            object ppLine20: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line20'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 4010
              mmLeft = 144992
              mmTop = 0
              mmWidth = 6350
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText32: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText32'
              Anchors = [atBottom]
              BlankWhenZero = True
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Valor_BCICMSOper'
              DataPipeline = ppItens
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              DataPipelineName = 'ppItens'
              mmHeight = 1986
              mmLeft = 145257
              mmTop = 331
              mmWidth = 12435
              BandType = 4
              LayerName = Foreground
            end
            object ppLine22: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line201'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 4010
              mmLeft = 157957
              mmTop = 0
              mmWidth = 5556
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText33: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText33'
              Anchors = [atBottom]
              BlankWhenZero = True
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Valor_ICMSOper'
              DataPipeline = ppItens
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              DataPipelineName = 'ppItens'
              mmHeight = 1986
              mmLeft = 158221
              mmTop = 331
              mmWidth = 12171
              BandType = 4
              LayerName = Foreground
            end
            object ppLine24: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line24'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 4010
              mmLeft = 170921
              mmTop = 0
              mmWidth = 4498
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText34: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText34'
              Anchors = [atBottom]
              BlankWhenZero = True
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Total_IPI'
              DataPipeline = ppItens
              DisplayFormat = '###,###,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              DataPipelineName = 'ppItens'
              mmHeight = 1986
              mmLeft = 171715
              mmTop = 331
              mmWidth = 11642
              BandType = 4
              LayerName = Foreground
            end
            object ppLine26: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line26'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 4010
              mmLeft = 183886
              mmTop = 0
              mmWidth = 3440
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText35: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText35'
              Anchors = [atBottom]
              BlankWhenZero = True
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Aliquota_IPI'
              DataPipeline = ppItens
              DisplayFormat = '#0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppItens'
              mmHeight = 1986
              mmLeft = 191294
              mmTop = 331
              mmWidth = 5556
              BandType = 4
              LayerName = Foreground
            end
            object ppLine31: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line31'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 4010
              mmLeft = 190500
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText36: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText36'
              Anchors = [atBottom]
              BlankWhenZero = True
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Aliquota_ICMSOper'
              DataPipeline = ppItens
              DisplayFormat = '#0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppItens'
              mmHeight = 1986
              mmLeft = 184415
              mmTop = 331
              mmWidth = 5556
              BandType = 4
              LayerName = Foreground
            end
            object ppLine32: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line32'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 4010
              mmLeft = 197115
              mmTop = 0
              mmWidth = 2381
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText25: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText25'
              Anchors = [atBottom]
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'NCM'
              DataPipeline = ppItens
              DisplayFormat = '####.##.##;0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              ParentDataPipeline = False
              ReprintOnSubsequent = True
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              DataPipelineName = 'ppItens'
              mmHeight = 2646
              mmLeft = 77523
              mmTop = 463
              mmWidth = 10319
              BandType = 4
              LayerName = Foreground
            end
            object lItem_CST: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label11'
              Anchors = [atBottom]
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'Label11'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 1986
              mmLeft = 88636
              mmTop = 331
              mmWidth = 3704
              BandType = 4
              LayerName = Foreground
            end
            object ppLine7: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line7'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              ReprintOnOverFlow = True
              StretchWithParent = True
              mmHeight = 4010
              mmLeft = 88106
              mmTop = 0
              mmWidth = 794
              BandType = 4
              LayerName = Foreground
            end
            object ppDBMemo1: TppDBMemo
              DesignLayer = ppDesignLayer1
              UserName = 'DBMemo1'
              ForceJustifyLastLine = True
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              CharWrap = True
              DataField = 'Descricao_Mercadoria'
              DataPipeline = ppItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              RemoveEmptyLines = False
              Stretch = True
              Transparent = True
              DataPipelineName = 'ppItens'
              mmHeight = 2515
              mmLeft = 15081
              mmTop = 792
              mmWidth = 61648
              BandType = 4
              LayerName = Foreground
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeading = 0
            end
            object lCodigo: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'lCodigo'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Codigo_Mercadoria'
              DataPipeline = ppItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              ParentDataPipeline = False
              ReprintOnSubsequent = True
              Transparent = True
              DataPipelineName = 'ppItens'
              mmHeight = 2515
              mmLeft = 529
              mmTop = 792
              mmWidth = 13494
              BandType = 4
              LayerName = Foreground
            end
            object lQuantidade: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'lQuantidade'
              Anchors = [atBottom]
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Quantidade'
              DataPipeline = ppItens
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              ParentDataPipeline = False
              ReprintOnSubsequent = True
              TextAlignment = taRightJustified
              WordWrap = True
              DataPipelineName = 'ppItens'
              mmHeight = 1986
              mmLeft = 103717
              mmTop = 331
              mmWidth = 11642
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 33338
            mmPrintPosition = 0
            object ppLine28: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line28'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = -49
              mmTop = 67
              mmWidth = 197218
              BandType = 7
              LayerName = Foreground
            end
            object ppShape63: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape63'
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 6350
              mmLeft = 119
              mmTop = 6451
              mmWidth = 47890
              BandType = 7
              LayerName = Foreground
            end
            object ppShape64: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape64'
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 6350
              mmLeft = 48273
              mmTop = 6451
              mmWidth = 49742
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel79: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label79'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'VALOR TOTAL DOS SERVI'#199'OS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 1852
              mmLeft = 49742
              mmTop = 6716
              mmWidth = 29898
              BandType = 7
              LayerName = Foreground
            end
            object ppShape65: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape65'
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 6350
              mmLeft = 98015
              mmTop = 6451
              mmWidth = 49742
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel82: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label82'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'BASE DE C'#193'LCULO DO ISSQN'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 1852
              mmLeft = 99748
              mmTop = 6716
              mmWidth = 29369
              BandType = 7
              LayerName = Foreground
            end
            object ppShape66: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape66'
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 6350
              mmLeft = 147757
              mmTop = 6451
              mmWidth = 49742
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel83: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label1002'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'VALOR DO ISSQN'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 1852
              mmLeft = 149490
              mmTop = 6716
              mmWidth = 16404
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel86: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label86'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'INSCRI'#199#195'O MUN'#205'CIPAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 5
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 2117
              mmLeft = 1588
              mmTop = 6716
              mmWidth = 20108
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel87: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label87'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'C'#193'LCULO DO ISSQN'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 2910
              mmLeft = 529
              mmTop = 3011
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground
            end
            object ppShape80: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape80'
              Anchors = [atLeft, atTop, atRight]
              Brush.Style = bsClear
              Pen.Width = 0
              StretchWithParent = True
              mmHeight = 15346
              mmLeft = 135467
              mmTop = 17828
              mmWidth = 61648
              BandType = 7
              LayerName = Foreground
            end
            object ppDBMemo2: TppDBMemo
              DesignLayer = ppDesignLayer1
              UserName = 'DBMemo2'
              ForceJustifyLastLine = True
              Anchors = [atLeft, atTop, atRight]
              Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
              Border.Visible = True
              Border.mmPadding = 0
              CharWrap = True
              DataField = 'Inf_Compl'
              DataPipeline = ppNotas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Courier New'
              Font.Size = 6
              Font.Style = []
              RemoveEmptyLines = False
              Stretch = True
              Transparent = True
              DataPipelineName = 'ppNotas'
              mmHeight = 15346
              mmLeft = 119
              mmTop = 17727
              mmWidth = 133086
              BandType = 7
              LayerName = Foreground
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeading = 0
            end
            object ppLabel89: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label89'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'RESERVADO AO FISCO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 2910
              mmLeft = 135732
              mmTop = 14653
              mmWidth = 27517
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel113: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label1101'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'DADOS ADICIONAIS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 2910
              mmLeft = 265
              mmTop = 14389
              mmWidth = 23283
              BandType = 7
              LayerName = Foreground
            end
          end
          object raCodeModule1: TraCodeModule
          end
          object ppDesignLayers1: TppDesignLayers
            object ppDesignLayer1: TppDesignLayer
              UserName = 'Foreground'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object Rodape: TppFooterBand
      Visible = False
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
    end
    object ppGroup2: TppGroup
      BreakName = 'NFe_cNF'
      DataPipeline = ppNotas
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      ResetPageNo = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppNotas'
      NewFile = False
      object gDadosNF: TppGroupHeaderBand
        BeforePrint = gDadosNFBeforePrint
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 118004
        mmPrintPosition = 0
        object ppShape28: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape28'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 43565
          mmTop = 75375
          mmWidth = 21696
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape45: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape45'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 98161
          mmTop = 97896
          mmWidth = 56092
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape40: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape40'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 107686
          mmTop = 91546
          mmWidth = 27781
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel13: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label13'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'DESTINAT'#193'RIO / REMETENTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2910
          mmLeft = 265
          mmTop = 0
          mmWidth = 35190
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape13: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape13'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 265
          mmTop = 2646
          mmWidth = 132557
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel14: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label14'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'NOME / RAZ'#195'O SOCIAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 1058
          mmTop = 3175
          mmWidth = 19579
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape14: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape14'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 133086
          mmTop = 2646
          mmWidth = 38365
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel15: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label15'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'CNPJ / CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 133879
          mmTop = 3175
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape15: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape15'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 172244
          mmTop = 2646
          mmWidth = 25135
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel16: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label16'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'DATA DA EMISS'#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 173038
          mmTop = 2910
          mmWidth = 23283
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lData_Emissao: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'lData_Emissao'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Data_Emissao'
          DataPipeline = ppNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 173302
          mmTop = 5292
          mmWidth = 23548
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape16: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape16'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 265
          mmTop = 8996
          mmWidth = 98425
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDestinatario_Endereco: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDestinatario_Endereco'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'ENDERE'#199'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 1058
          mmTop = 9525
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDestinatario_Rua: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDestinatario_Rua'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDestinatario_Rua'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3440
          mmLeft = 1058
          mmTop = 11642
          mmWidth = 96838
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape17: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape17'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 98690
          mmTop = 8996
          mmWidth = 47361
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape18: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape18'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 146050
          mmTop = 8996
          mmWidth = 25400
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel20: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDestinatario_Endereco1'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'BAIRRO / DISTRITO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 99484
          mmTop = 9525
          mmWidth = 16140
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel21: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label21'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'CEP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 146844
          mmTop = 9525
          mmWidth = 3704
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape19: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape19'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 172244
          mmTop = 8996
          mmWidth = 25135
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel17: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label17'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'DATA ENTRADA/SA'#205'DA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2117
          mmLeft = 173038
          mmTop = 9260
          mmWidth = 23283
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lData_EntradaSaida: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'lData_Emissao1'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Data_EntradaSaida'
          DataPipeline = ppNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 173567
          mmTop = 11642
          mmWidth = 23548
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape20: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape20'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6085
          mmLeft = 265
          mmTop = 15346
          mmWidth = 75406
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel18: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDestinatario_Endereco2'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'MUNIC'#205'PIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 1323
          mmTop = 15610
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape21: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape201'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6085
          mmLeft = 75671
          mmTop = 15346
          mmWidth = 52917
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel19: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label19'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'TELEFONE / FAX'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 76729
          mmTop = 15875
          mmWidth = 14288
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape22: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape22'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6085
          mmLeft = 128588
          mmTop = 15346
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel22: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label22'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 129646
          mmTop = 15875
          mmWidth = 2381
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape23: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape23'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6085
          mmLeft = 136261
          mmTop = 15346
          mmWidth = 35190
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel24: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label24'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'INSCRI'#199#195'O ESTADUAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 137054
          mmTop = 15875
          mmWidth = 19844
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape24: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape24'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 172244
          mmTop = 15346
          mmWidth = 25135
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel25: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label25'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'HORA DE SA'#205'DA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 173038
          mmTop = 15610
          mmWidth = 23283
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lHora_Saida: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'lHora_Saida'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Hora_EntradaSaida'
          DataPipeline = ppNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 176477
          mmTop = 17727
          mmWidth = 20638
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel26: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label26'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'FATURA / DUPLICATA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2910
          mmLeft = 265
          mmTop = 44450
          mmWidth = 26194
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape37: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape37'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 265
          mmTop = 91546
          mmWidth = 83873
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel39: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label39'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'RAZ'#195'O SOCIAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 1323
          mmTop = 92075
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lTransportador_Nome: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lTransportador_Nome'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lTransportador_Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3440
          mmLeft = 1058
          mmTop = 94192
          mmWidth = 82286
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape38: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape38'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 84138
          mmTop = 91546
          mmWidth = 23813
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel40: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label40'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'FRETE POR CONTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 85196
          mmTop = 92075
          mmWidth = 16669
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel41: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lTransportador_Nome1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = '0 - EMITENTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2117
          mmLeft = 84931
          mmTop = 94192
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel42: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label42'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = '1 - DESTINATARIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2117
          mmLeft = 84931
          mmTop = 95779
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape39: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape39'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 3704
          mmLeft = 103188
          mmTop = 93663
          mmWidth = 3440
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText17: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText17'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Modalidade_Frete'
          DataPipeline = ppNotas
          DisplayFormat = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 103717
          mmTop = 93663
          mmWidth = 2646
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel43: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label401'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'C'#211'DIGO ANTT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 109538
          mmTop = 92075
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape41: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape401'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 135732
          mmTop = 91546
          mmWidth = 21960
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel44: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label44'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'PLACA DO VE'#205'CULO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 137054
          mmTop = 92075
          mmWidth = 17463
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape42: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape42'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 157692
          mmTop = 91546
          mmWidth = 7938
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel46: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label46'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 159279
          mmTop = 92075
          mmWidth = 2381
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape43: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape43'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 165629
          mmTop = 91546
          mmWidth = 31750
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel45: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label45'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'CNPJ / CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 166688
          mmTop = 92075
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape44: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape44'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 234
          mmTop = 98103
          mmWidth = 98052
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel47: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label47'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'ENDERE'#199'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 1323
          mmTop = 98425
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lTransportador_Endereco: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lTransportador_Nome3'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lTransportador_Endereco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3440
          mmLeft = 1058
          mmTop = 100542
          mmWidth = 96309
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel49: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label49'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'MUNIC'#205'PIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 99219
          mmTop = 98425
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lTransportador_Municipio: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lTransportador_Municipio'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lTransportador_Municipio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3440
          mmLeft = 98954
          mmTop = 100542
          mmWidth = 54504
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape46: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape46'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 154252
          mmTop = 97896
          mmWidth = 7938
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel51: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label51'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 155840
          mmTop = 98425
          mmWidth = 2381
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lTransportador_UF: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lTransportador_UF1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 155311
          mmTop = 100542
          mmWidth = 6085
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape47: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape47'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 162190
          mmTop = 97896
          mmWidth = 35190
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel52: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label52'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'INSCRI'#199#195'O ESTADUAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 162984
          mmTop = 98425
          mmWidth = 26723
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lTransportador_CNPJ: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lTransportador_Municipio1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lTransportador_Municipio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 166688
          mmTop = 94192
          mmWidth = 29898
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lTransportador_IE: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lTransportador_IE'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lTransportador_Municipio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 163248
          mmTop = 100542
          mmWidth = 33338
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape48: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape48'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 265
          mmTop = 104246
          mmWidth = 22754
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel48: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label48'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'QUANTIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 1323
          mmTop = 104775
          mmWidth = 14552
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText18: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText18'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Volume_Quantidade'
          DataPipeline = ppNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 1058
          mmTop = 106892
          mmWidth = 21167
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape49: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape49'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 23019
          mmTop = 104246
          mmWidth = 37571
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel50: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label50'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'ESP'#201'CIE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 24077
          mmTop = 104775
          mmWidth = 9790
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText19: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText19'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Volume_Especie'
          DataPipeline = ppNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 23813
          mmTop = 106892
          mmWidth = 36248
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape50: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape50'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 60590
          mmTop = 104246
          mmWidth = 37571
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel53: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label501'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'MARCA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 61648
          mmTop = 104775
          mmWidth = 6615
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText20: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText20'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Volume_Marca'
          DataPipeline = ppNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 61383
          mmTop = 106892
          mmWidth = 36248
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape51: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape501'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 98161
          mmTop = 104246
          mmWidth = 29369
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel54: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label54'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'NUMERA'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 99219
          mmTop = 104775
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText21: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText201'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Volume_Numero'
          DataPipeline = ppNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 98954
          mmTop = 106892
          mmWidth = 28046
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape52: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape52'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 127529
          mmTop = 104246
          mmWidth = 34925
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel55: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label55'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'PESO BRUTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 128588
          mmTop = 104775
          mmWidth = 11642
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText22: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText22'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Volume_PesoBruto'
          DataPipeline = ppNotas
          DisplayFormat = '###,###,##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 128323
          mmTop = 106892
          mmWidth = 33602
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape53: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape53'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 162454
          mmTop = 104246
          mmWidth = 34925
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel56: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label56'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'PESO L'#205'QUIDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 163513
          mmTop = 104775
          mmWidth = 12435
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText23: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText23'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Volume_PesoLiquido'
          DataPipeline = ppNotas
          DisplayFormat = '###,###,##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 162984
          mmTop = 106892
          mmWidth = 33602
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText38: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText202'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Transporte_CodigoANTT'
          DataPipeline = ppNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 108744
          mmTop = 94192
          mmWidth = 25929
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText39: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText39'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Transporte_Placa'
          DataPipeline = ppNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 137054
          mmTop = 94192
          mmWidth = 18785
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText40: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText40'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Transporte_PlacaUF'
          DataPipeline = ppNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 158750
          mmTop = 94192
          mmWidth = 5556
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText14: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText1'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Destinatario_Nome'
          DataPipeline = ppNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 1323
          mmTop = 5292
          mmWidth = 130704
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object cDestinatario_CNPJ_CPF: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'cDestinatario_CNPJ_CPF'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Destinatario_CNPJ_CPF'
          DataPipeline = ppNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 133879
          mmTop = 5292
          mmWidth = 36513
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText26: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText6'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Destinatario_Bairro'
          DataPipeline = ppNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 98954
          mmTop = 11642
          mmWidth = 46302
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText37: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText12'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Destinatario_CEP'
          DataPipeline = ppNotas
          DisplayFormat = '99.999-999;0; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 146579
          mmTop = 11642
          mmWidth = 23813
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText42: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText42'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Destinatario_Telefone1'
          DataPipeline = ppNotas
          DisplayFormat = '(99) 999999999;0; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 76200
          mmTop = 17727
          mmWidth = 51594
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText85: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText85'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Destinatario_Estado'
          DataPipeline = ppNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 129646
          mmTop = 17727
          mmWidth = 5821
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDestinatario_IE: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'lDestinatario_IE'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Destinatario_IE'
          DataPipeline = ppNotas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 136790
          mmTop = 17727
          mmWidth = 33073
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDestinatario_Municipio: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDestinatario_Municipio'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'lDestinatario_Municipio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3440
          mmLeft = 1058
          mmTop = 17992
          mmWidth = 73025
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape59: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape59'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 23813
          mmLeft = 131763
          mmTop = 47625
          mmWidth = 65617
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape12: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape12'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 23813
          mmLeft = 65881
          mmTop = 47625
          mmWidth = 65617
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape25: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape25'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 23813
          mmLeft = 0
          mmTop = 47625
          mmWidth = 65617
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel12: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label12'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'N'#218'MERO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 1588
          mmTop = 47890
          mmWidth = 18256
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine33: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line33'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          mmHeight = 23548
          mmLeft = 20108
          mmTop = 47890
          mmWidth = 794
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel75: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label75'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'VENCIMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 21167
          mmTop = 47890
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel78: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label78'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'VALOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 39688
          mmTop = 47890
          mmWidth = 24871
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine34: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line34'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          mmHeight = 23548
          mmLeft = 169863
          mmTop = 47890
          mmWidth = 794
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl1: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 1852
          mmTop = 49742
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl1: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 20638
          mmTop = 49742
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl1: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label802'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 39952
          mmTop = 49742
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel90: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label90'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'N'#218'MERO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2032
          mmLeft = 67469
          mmTop = 47890
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine35: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line35'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          mmHeight = 23548
          mmLeft = 151342
          mmTop = 47890
          mmWidth = 794
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel91: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label91'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'VENCIMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2032
          mmLeft = 87048
          mmTop = 47890
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel92: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label92'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'VALOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2032
          mmLeft = 105569
          mmTop = 47890
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine36: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line36'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          mmHeight = 23548
          mmLeft = 38629
          mmTop = 47890
          mmWidth = 794
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel96: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label96'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'N'#218'MERO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2032
          mmLeft = 133350
          mmTop = 47890
          mmWidth = 17463
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine37: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line37'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          mmHeight = 23548
          mmLeft = 85725
          mmTop = 47890
          mmWidth = 794
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel97: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label97'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'VENCIMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2032
          mmLeft = 152665
          mmTop = 48154
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel98: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label98'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'VALOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2032
          mmLeft = 170657
          mmTop = 47890
          mmWidth = 24342
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine38: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line38'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          mmHeight = 23548
          mmLeft = 104246
          mmTop = 47890
          mmWidth = 794
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl2: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 1852
          mmTop = 52388
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl3: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl3'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 1852
          mmTop = 55033
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl2: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 20638
          mmTop = 52388
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl2: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl2'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 39952
          mmTop = 52388
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl3: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl3'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 39952
          mmTop = 55033
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl4: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl4'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 1852
          mmTop = 57679
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl5: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl5'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 1852
          mmTop = 60325
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl6: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl6'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 1852
          mmTop = 62971
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl4: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl4'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 20638
          mmTop = 57679
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl5: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl5'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 20638
          mmTop = 60325
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl6: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl6'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 20638
          mmTop = 62971
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl4: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl4'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 39952
          mmTop = 57679
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl5: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl5'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 39952
          mmTop = 60325
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl6: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label7'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 39952
          mmTop = 62971
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl7: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl7'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 1852
          mmTop = 65617
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl8: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl8'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 1852
          mmTop = 68263
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl9: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl9'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 67469
          mmTop = 49742
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl7: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl7'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 20638
          mmTop = 65617
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl8: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl8'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 20638
          mmTop = 68263
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl9: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl9'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 86254
          mmTop = 49742
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl7: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl7'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 39952
          mmTop = 65617
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl8: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl8'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 39952
          mmTop = 68263
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl9: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label18'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 105569
          mmTop = 49742
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl10: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl10'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 67469
          mmTop = 52388
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl10: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl10'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 86254
          mmTop = 52388
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl11: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl11'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 67469
          mmTop = 55033
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl11: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl11'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 86254
          mmTop = 55033
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl11: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl11'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 105569
          mmTop = 55033
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl12: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl12'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 67469
          mmTop = 57679
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl12: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label20'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 86254
          mmTop = 57679
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl12: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl12'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 105569
          mmTop = 57679
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl10: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl10'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 105569
          mmTop = 52388
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl3: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl3'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 20638
          mmTop = 55033
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl13: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl13'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 67469
          mmTop = 60325
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl14: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl14'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lNumDupl14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 67469
          mmTop = 62971
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl15: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl15'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lNumDupl15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 67469
          mmTop = 65617
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl13: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl101'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDataDupl101'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 86254
          mmTop = 60325
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl14: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl14'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDataDupl14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 86254
          mmTop = 62971
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl15: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label201'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Label201'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 86254
          mmTop = 65617
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl13: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl101'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 105569
          mmTop = 60325
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl14: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl14'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lValorDupl14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 105569
          mmTop = 62971
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl15: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl15'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lValorDupl15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 105569
          mmTop = 65617
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl17: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl16'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lNumDupl16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 133086
          mmTop = 49742
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl18: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl17'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lNumDupl17'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 133086
          mmTop = 52388
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl19: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl18'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lNumDupl18'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 133086
          mmTop = 55033
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl20: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl19'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lNumDupl19'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 133086
          mmTop = 57679
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl21: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl20'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lNumDupl20'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 133086
          mmTop = 60325
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl22: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl21'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lNumDupl14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 133086
          mmTop = 62971
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl23: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl22'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lNumDupl15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 133086
          mmTop = 65617
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl17: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl17'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDataDupl17'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 151871
          mmTop = 49742
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl18: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl102'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDataDupl102'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 151871
          mmTop = 52388
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl19: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl19'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDataDupl19'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 151871
          mmTop = 55033
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl20: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label202'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'Label202'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 151871
          mmTop = 57679
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl21: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl21'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDataDupl101'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 151871
          mmTop = 60325
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl22: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl22'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDataDupl14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 151871
          mmTop = 62971
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl23: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl23'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDataDupl23'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 151871
          mmTop = 65617
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl17: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl17'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lValorDupl17'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 171186
          mmTop = 49742
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl18: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl102'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lValorDupl102'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 171186
          mmTop = 52388
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl19: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl19'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lValorDupl19'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 171186
          mmTop = 55033
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl20: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl20'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lValorDupl20'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 171186
          mmTop = 57679
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl21: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl21'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lValorDupl21'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 171186
          mmTop = 60325
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl22: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl22'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lValorDupl14'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 171186
          mmTop = 62971
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl23: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl23'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lValorDupl15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 171186
          mmTop = 65617
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl16: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label53'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lNumDupl15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 67469
          mmTop = 68263
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl16: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl16'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDataDupl16'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 86254
          mmTop = 68263
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl16: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl16'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lValorDupl15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 105569
          mmTop = 68263
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lNumDupl24: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lNumDupl24'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lNumDupl15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2646
          mmLeft = 133086
          mmTop = 68263
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lDataDupl24: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDataDupl24'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDataDupl24'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2646
          mmLeft = 151871
          mmTop = 68263
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lValorDupl24: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lValorDupl24'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lValorDupl15'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 2646
          mmLeft = 171186
          mmTop = 68263
          mmWidth = 24606
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape74: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape74'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 98161
          mmTop = 31485
          mmWidth = 73290
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lTituloEntrega_Retirada: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lTituloEntrega_Retirada'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'INFORMA'#199#213'ES DO LOCAL DE ENTREGA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2963
          mmLeft = 0
          mmTop = 22225
          mmWidth = 48006
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape75: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape75'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 0
          mmTop = 25135
          mmWidth = 132821
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel103: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label103'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'NOME / RAZ'#195'O SOCIAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 529
          mmTop = 25665
          mmWidth = 19579
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lEntregaNome: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lEntregaNome'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDestinatario_Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3175
          mmLeft = 794
          mmTop = 27781
          mmWidth = 130969
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape76: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape76'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 132821
          mmTop = 25135
          mmWidth = 38629
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel105: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label105'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'CNPJ / CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 133350
          mmTop = 25665
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape77: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape77'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 172244
          mmTop = 25135
          mmWidth = 25135
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel106: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label106'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'INSCRI'#199#195'O ESTADUAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2117
          mmLeft = 172773
          mmTop = 25400
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lEntregaCNPJ: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lEntregaCNPJ'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lEntregaCNPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 133350
          mmTop = 27781
          mmWidth = 37571
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape78: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape78'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 0
          mmTop = 31485
          mmWidth = 98425
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel108: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label1001'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'ENDERE'#199'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 529
          mmTop = 32015
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lEntregaRua: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDestinatario_Rua3'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDestinatario_Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3175
          mmLeft = 529
          mmTop = 34131
          mmWidth = 96838
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lEntregaBairro: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDestinatario_Bairro1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDestinatario_Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3175
          mmLeft = 98954
          mmTop = 34131
          mmWidth = 71702
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape79: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape79'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 172244
          mmTop = 31485
          mmWidth = 25135
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel111: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label111'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'BAIRRO / DISTRITO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 98954
          mmTop = 32015
          mmWidth = 16140
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel112: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label112'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'CEP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 173038
          mmTop = 32015
          mmWidth = 3704
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape81: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape202'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6085
          mmLeft = 0
          mmTop = 37835
          mmWidth = 163248
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel114: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label114'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'MUNIC'#205'PIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 794
          mmTop = 38100
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lEntregaMunicipio: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lEntregaMunicipio'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDestinatario_Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3175
          mmLeft = 529
          mmTop = 40217
          mmWidth = 161925
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape82: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape82'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6085
          mmLeft = 163248
          mmTop = 37835
          mmWidth = 8202
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel117: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label117'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1852
          mmLeft = 164307
          mmTop = 38365
          mmWidth = 2381
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lEntregaUF: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lEntregaUF'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'ES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 164042
          mmTop = 40217
          mmWidth = 6350
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape84: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape84'
          Brush.Style = bsClear
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 172244
          mmTop = 37835
          mmWidth = 25135
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel120: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label120'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'FONE/FAX'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2117
          mmLeft = 172773
          mmTop = 38100
          mmWidth = 8636
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lEntregaCEP: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lDestinatario_CEP1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDestinatario_Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 172773
          mmTop = 34131
          mmWidth = 24077
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lEntregaIE: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lEntregaCNPJ1'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lEntregaCNPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 173832
          mmTop = 27252
          mmWidth = 22490
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lEntregaTelefone: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lEntregaTelefone'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'lDestinatario_Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 173302
          mmTop = 40217
          mmWidth = 22754
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lCancelada: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lCancelada'
          Angle = 15
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = '[ CANCELADA ]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 33023
          Font.Name = 'Arial Black'
          Font.Size = 40
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 49490
          mmLeft = 40481
          mmTop = 20896
          mmWidth = 116457
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
          RotatedOriginLeft = -1636
          RotatedOriginTop = 30117
        end
        object ppLabel27: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label27'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'C'#193'LCULO DO IMPOSTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2910
          mmLeft = 265
          mmTop = 71882
          mmWidth = 28046
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel57: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label57'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'DADOS DO PRODUTO / SERVI'#199'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2910
          mmLeft = 0
          mmTop = 113242
          mmWidth = 38629
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape54: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape54'
          Brush.Color = cl3DDkShadow
          Pen.Width = 0
          ReprintOnOverFlow = True
          Shape = stRoundRect
          mmHeight = 5292
          mmLeft = 0
          mmTop = 112712
          mmWidth = 197380
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel58: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label58'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'C'#211'D.PROD.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 2381
          mmTop = 114168
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine2: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line2'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5027
          mmLeft = 14552
          mmTop = 112977
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine3: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line3'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5027
          mmLeft = 76994
          mmTop = 112977
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel59: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label59'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'DESCRI'#199#195'O DO PRODUTO / SERVI'#199'OS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 14552
          mmTop = 114168
          mmWidth = 62177
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine4: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line4'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5027
          mmLeft = 88106
          mmTop = 112977
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel60: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label60'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'NCM/SH'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 78581
          mmTop = 114168
          mmWidth = 8202
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel61: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label601'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'CST'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 88636
          mmTop = 114168
          mmWidth = 3440
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine5: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line5'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5292
          mmLeft = 92340
          mmTop = 112712
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel62: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label62'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'CFOP'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 93134
          mmTop = 114168
          mmWidth = 5027
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine11: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line11'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5292
          mmLeft = 98425
          mmTop = 112712
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel63: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label63'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'UM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 99484
          mmTop = 114168
          mmWidth = 2646
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine13: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line13'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5292
          mmLeft = 103188
          mmTop = 112712
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel64: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label64'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'QTDE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 107156
          mmTop = 114168
          mmWidth = 5027
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine15: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line15'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5292
          mmLeft = 115623
          mmTop = 112712
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel65: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label65'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'V.UNITARIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 119063
          mmTop = 114168
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine17: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line17'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5292
          mmLeft = 131763
          mmTop = 112712
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel66: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label66'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'V.TOTAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 134938
          mmTop = 114168
          mmWidth = 7144
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine19: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line19'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5292
          mmLeft = 144992
          mmTop = 112712
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel67: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label67'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'BC ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 147902
          mmTop = 114168
          mmWidth = 7408
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine21: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line21'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5292
          mmLeft = 157957
          mmTop = 112712
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel68: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label68'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'V.ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 161661
          mmTop = 114168
          mmWidth = 5821
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine23: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line23'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5292
          mmLeft = 170921
          mmTop = 112712
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel69: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label69'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'V.IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 175684
          mmTop = 114168
          mmWidth = 3440
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine25: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line25'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5292
          mmLeft = 183886
          mmTop = 112712
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel70: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label70'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'ALIQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 185209
          mmTop = 115359
          mmWidth = 4233
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel71: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label701'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 185209
          mmTop = 113373
          mmWidth = 4233
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine29: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line29'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Pen.Width = 0
          Position = lpLeft
          ReprintOnOverFlow = True
          mmHeight = 5292
          mmLeft = 190500
          mmTop = 112712
          mmWidth = 1323
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel72: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label702'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'ALIQ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 192088
          mmTop = 115359
          mmWidth = 4233
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel73: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label73'
          ReprintOnOverFlow = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2117
          mmLeft = 193146
          mmTop = 113373
          mmWidth = 2117
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel38: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label38'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'TRANSPORTADOR / VOLUMES TRANSPORTADOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2910
          mmLeft = 265
          mmTop = 88636
          mmWidth = 58738
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape31: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape31'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 107134
          mmTop = 81788
          mmWidth = 21660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape27: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape27'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 21960
          mmTop = 75406
          mmWidth = 21768
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape26: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape26'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 265
          mmTop = 75406
          mmWidth = 21768
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel28: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label28'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'B.C ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2000
          mmLeft = 794
          mmTop = 75936
          mmWidth = 20710
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel23: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label23'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'VALOR DO ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2000
          mmLeft = 22490
          mmTop = 75936
          mmWidth = 20710
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel29: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label29'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'B.C.ICMS ST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2000
          mmLeft = 44450
          mmTop = 75936
          mmWidth = 20710
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText8: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText8'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'BCICMS_Substitutivo'
          DataPipeline = ppNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 44450
          mmTop = 78052
          mmWidth = 20710
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape29: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape29'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 65352
          mmTop = 75406
          mmWidth = 21660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel30: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label30'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'VALOR ICMS ST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2000
          mmLeft = 65881
          mmTop = 75936
          mmWidth = 20710
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText9: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText9'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'ValorICMS_Substitutivo'
          DataPipeline = ppNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 65881
          mmTop = 78052
          mmWidth = 20710
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape30: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape30'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 168540
          mmTop = 75438
          mmWidth = 28480
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel31: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label301'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'TOTAL PRODUTOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2117
          mmLeft = 169069
          mmTop = 75967
          mmWidth = 27546
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText10: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText10'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Valor_TotalProdutos'
          DataPipeline = ppNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 169069
          mmTop = 78084
          mmWidth = 27546
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel32: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label302'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2117
          mmLeft = 107663
          mmTop = 82052
          mmWidth = 20660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText11: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText11'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Valor_TotalIPI'
          DataPipeline = ppNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 107663
          mmTop = 84434
          mmWidth = 20660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape32: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape301'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 168540
          mmTop = 81788
          mmWidth = 28480
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel33: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label33'
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'TOTAL DA NOTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2032
          mmLeft = 168805
          mmTop = 82052
          mmWidth = 27546
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText12: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText101'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Valor_TotalNota'
          DataPipeline = ppNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 168805
          mmTop = 84169
          mmWidth = 27546
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape33: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape33'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 65352
          mmTop = 81756
          mmWidth = 21660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel34: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label34'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'OUTRAS DESP.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1914
          mmLeft = 65881
          mmTop = 82021
          mmWidth = 20710
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText13: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText13'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Valor_OutrasDespesas'
          DataPipeline = ppNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 65881
          mmTop = 84402
          mmWidth = 20710
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape34: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape34'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 43921
          mmTop = 81756
          mmWidth = 21660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object pDescontos: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'pDescontos'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Total_Descontos'
          DataPipeline = ppNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 44450
          mmTop = 84402
          mmWidth = 20710
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel35: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label35'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'DESCONTOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1914
          mmLeft = 44450
          mmTop = 82021
          mmWidth = 20660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape35: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape35'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 21960
          mmTop = 81756
          mmWidth = 21746
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText15: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText15'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Valor_Seguro'
          DataPipeline = ppNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 22490
          mmTop = 84402
          mmWidth = 20660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel36: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label36'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'SEGURO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1914
          mmLeft = 22490
          mmTop = 82021
          mmWidth = 20660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape36: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape36'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 265
          mmTop = 81756
          mmWidth = 21660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText16: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText16'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Total_Frete'
          DataPipeline = ppNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 794
          mmTop = 84402
          mmWidth = 20660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel37: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label37'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'FRETE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 1914
          mmLeft = 794
          mmTop = 82021
          mmWidth = 20660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText6: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText3'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'BCICMS'
          DataPipeline = ppNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 794
          mmTop = 78052
          mmWidth = 20660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText7: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText7'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Valor_ICMS'
          DataPipeline = ppNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 22490
          mmTop = 78052
          mmWidth = 20660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape5: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape5'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 107134
          mmTop = 75438
          mmWidth = 21660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel7: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label61'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'IMP.IMPORT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2000
          mmLeft = 107663
          mmTop = 75967
          mmWidth = 20710
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lII: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText14'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Valor_TotalII'
          DataPipeline = ppNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 107663
          mmTop = 78084
          mmWidth = 20660
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape68: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape68'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 87030
          mmTop = 75438
          mmWidth = 20112
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel80: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label80'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'ICMS UF REMET'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2117
          mmLeft = 87559
          mmTop = 75967
          mmWidth = 19112
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText29: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText29'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'DIFAL_ValorOrig'
          DataPipeline = ppNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 87559
          mmTop = 78084
          mmWidth = 19112
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape67: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape67'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 87030
          mmTop = 81788
          mmWidth = 20112
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel93: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label93'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'ICMS UF DEST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2117
          mmLeft = 87559
          mmTop = 82052
          mmWidth = 19112
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText41: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText24'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'DIFAL_ValorDest'
          DataPipeline = ppNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 87559
          mmTop = 84434
          mmWidth = 19112
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape69: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape69'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 128852
          mmTop = 75438
          mmWidth = 20034
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel94: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label94'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'AFRMM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2117
          mmLeft = 129382
          mmTop = 75967
          mmWidth = 19112
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object cAFRMM: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText41'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Valor_AFRMM'
          DataPipeline = ppNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 129382
          mmTop = 78084
          mmWidth = 19112
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape70: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape70'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 128852
          mmTop = 81788
          mmWidth = 20034
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel95: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label95'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'TOTAL TRIBUTOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2032
          mmLeft = 129382
          mmTop = 82317
          mmWidth = 19112
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText44: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText44'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Total_Impostos'
          DataPipeline = ppNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 129382
          mmTop = 84434
          mmWidth = 19112
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape71: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape71'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 148696
          mmTop = 75438
          mmWidth = 19854
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel99: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label99'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'PIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2117
          mmLeft = 149225
          mmTop = 75967
          mmWidth = 18854
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText45: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText43'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Valor_PIS'
          DataPipeline = ppNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 149225
          mmTop = 78084
          mmWidth = 18854
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape72: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape701'
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 6350
          mmLeft = 148696
          mmTop = 81788
          mmWidth = 19854
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel101: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label71'
          AutoSize = False
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          Caption = 'COFINS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 5
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2032
          mmLeft = 148961
          mmTop = 82052
          mmWidth = 18854
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText46: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText46'
          BlankWhenZero = True
          Border.Weight = 1.000000000000000000
          Border.mmPadding = 0
          DataField = 'Valor_COFINS'
          DataPipeline = ppNotas
          DisplayFormat = '###,###,###,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppNotas'
          mmHeight = 3440
          mmLeft = 148961
          mmTop = 84169
          mmWidth = 18854
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 4498
        mmPrintPosition = 0
      end
    end
    object raCodeModule2: TraCodeModule
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppNotas: TppDBPipeline
    DataSource = dsNotas
    CloseDataSource = True
    OpenDataSource = False
    UserName = 'ppNotas'
    Left = 402
    Top = 6
    object ppNotasppField1: TppField
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppNotasppField2: TppField
      FieldAlias = 'Natureza_Codigo'
      FieldName = 'Natureza_Codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppNotasppField3: TppField
      FieldAlias = 'Pedido'
      FieldName = 'Pedido'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppNotasppField4: TppField
      FieldAlias = 'Saida_Entrada'
      FieldName = 'Saida_Entrada'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppNotasppField5: TppField
      FieldAlias = 'Data_Emissao'
      FieldName = 'Data_Emissao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppNotasppField6: TppField
      FieldAlias = 'Data_EntradaSaida'
      FieldName = 'Data_EntradaSaida'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppNotasppField7: TppField
      FieldAlias = 'Hora_EntradaSaida'
      FieldName = 'Hora_EntradaSaida'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppNotasppField8: TppField
      FieldAlias = 'Tipo_Nota'
      FieldName = 'Tipo_Nota'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppNotasppField9: TppField
      FieldAlias = 'Serie'
      FieldName = 'Serie'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppNotasppField10: TppField
      FieldAlias = 'Modelo'
      FieldName = 'Modelo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppNotasppField11: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppNotasppField12: TppField
      FieldAlias = 'FUNDAP'
      FieldName = 'FUNDAP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppNotasppField13: TppField
      FieldAlias = 'Lucro'
      FieldName = 'Lucro'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppNotasppField14: TppField
      FieldAlias = 'DI'
      FieldName = 'DI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppNotasppField15: TppField
      FieldAlias = 'Data_DI'
      FieldName = 'Data_DI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppNotasppField16: TppField
      FieldAlias = 'Inscricao_Substituto'
      FieldName = 'Inscricao_Substituto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppNotasppField17: TppField
      FieldAlias = 'Inf_Complementares'
      FieldName = 'Inf_Complementares'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppNotasppField18: TppField
      FieldAlias = 'Cliente_Codigo'
      FieldName = 'Cliente_Codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppNotasppField19: TppField
      FieldAlias = 'Fornecedor_Codigo'
      FieldName = 'Fornecedor_Codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppNotasppField20: TppField
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppNotasppField21: TppField
      FieldAlias = 'Transportador_Codigo'
      FieldName = 'Transportador_Codigo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppNotasppField22: TppField
      FieldAlias = 'Modalidade_Frete'
      FieldName = 'Modalidade_Frete'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppNotasppField23: TppField
      FieldAlias = 'Volume_Quantidade'
      FieldName = 'Volume_Quantidade'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppNotasppField24: TppField
      FieldAlias = 'Volume_Especie'
      FieldName = 'Volume_Especie'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppNotasppField25: TppField
      FieldAlias = 'Volume_Marca'
      FieldName = 'Volume_Marca'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppNotasppField26: TppField
      FieldAlias = 'Volume_Numero'
      FieldName = 'Volume_Numero'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppNotasppField27: TppField
      FieldAlias = 'Volume_PesoLiquido'
      FieldName = 'Volume_PesoLiquido'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppNotasppField28: TppField
      FieldAlias = 'Volume_PesoBruto'
      FieldName = 'Volume_PesoBruto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppNotasppField29: TppField
      FieldAlias = 'Valor_PIS'
      FieldName = 'Valor_PIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppNotasppField30: TppField
      FieldAlias = 'Valor_COFINS'
      FieldName = 'Valor_COFINS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppNotasppField31: TppField
      FieldAlias = 'Aliquota_ICMSOper'
      FieldName = 'Aliquota_ICMSOper'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppNotasppField32: TppField
      FieldAlias = 'BCICMS'
      FieldName = 'BCICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppNotasppField33: TppField
      FieldAlias = 'Valor_ICMS'
      FieldName = 'Valor_ICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppNotasppField34: TppField
      FieldAlias = 'Aliquota_ICMSSub'
      FieldName = 'Aliquota_ICMSSub'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppNotasppField35: TppField
      FieldAlias = 'BCICMS_Substitutivo'
      FieldName = 'BCICMS_Substitutivo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppNotasppField36: TppField
      FieldAlias = 'ValorICMS_Substitutivo'
      FieldName = 'ValorICMS_Substitutivo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppNotasppField37: TppField
      FieldAlias = 'Valor_TotalProdutos'
      FieldName = 'Valor_TotalProdutos'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppNotasppField38: TppField
      FieldAlias = 'Total_Frete'
      FieldName = 'Total_Frete'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppNotasppField39: TppField
      FieldAlias = 'Valor_Seguro'
      FieldName = 'Valor_Seguro'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppNotasppField40: TppField
      FieldAlias = 'Valor_OutrasDespesas'
      FieldName = 'Valor_OutrasDespesas'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppNotasppField41: TppField
      FieldAlias = 'BCIPI'
      FieldName = 'BCIPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppNotasppField42: TppField
      FieldAlias = 'Valor_TotalIPI'
      FieldName = 'Valor_TotalIPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppNotasppField43: TppField
      FieldAlias = 'Valor_TotalNota'
      FieldName = 'Valor_TotalNota'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppNotasppField44: TppField
      FieldAlias = 'Rateio_Despesas'
      FieldName = 'Rateio_Despesas'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppNotasppField45: TppField
      FieldAlias = 'Valor_TotalMVA'
      FieldName = 'Valor_TotalMVA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppNotasppField46: TppField
      FieldAlias = 'Valor_ICMSReducao'
      FieldName = 'Valor_ICMSReducao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppNotasppField47: TppField
      FieldAlias = 'Valor_TotalII'
      FieldName = 'Valor_TotalII'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppNotasppField48: TppField
      FieldAlias = 'Modalidade_Pgto'
      FieldName = 'Modalidade_Pgto'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppNotasppField49: TppField
      FieldAlias = 'Desconto_Percentual'
      FieldName = 'Desconto_Percentual'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppNotasppField50: TppField
      FieldAlias = 'Desconto_Tipo'
      FieldName = 'Desconto_Tipo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppNotasppField51: TppField
      FieldAlias = 'Total_Descontos'
      FieldName = 'Total_Descontos'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppNotasppField52: TppField
      FieldAlias = 'Cancelada'
      FieldName = 'Cancelada'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppNotasppField53: TppField
      FieldAlias = 'Motivo_Cancelamento'
      FieldName = 'Motivo_Cancelamento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppNotasppField54: TppField
      FieldAlias = 'Complementar'
      FieldName = 'Complementar'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppNotasppField55: TppField
      FieldAlias = 'Devolucao'
      FieldName = 'Devolucao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppNotasppField56: TppField
      FieldAlias = 'Ajuste'
      FieldName = 'Ajuste'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
    object ppNotasppField57: TppField
      FieldAlias = 'Nota_Referencia'
      FieldName = 'Nota_Referencia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppNotasppField58: TppField
      FieldAlias = 'Data_Referencia'
      FieldName = 'Data_Referencia'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 57
      Searchable = False
      Sortable = False
    end
    object ppNotasppField59: TppField
      FieldAlias = 'NFe_cNF'
      FieldName = 'NFe_cNF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 58
      Searchable = False
      Sortable = False
    end
    object ppNotasppField60: TppField
      FieldAlias = 'Nfe_cNFRef'
      FieldName = 'Nfe_cNFRef'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 59
      Searchable = False
      Sortable = False
    end
    object ppNotasppField61: TppField
      FieldAlias = 'NFe_Lote'
      FieldName = 'NFe_Lote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 60
      Searchable = False
      Sortable = False
    end
    object ppNotasppField62: TppField
      FieldAlias = 'NFe_Recibo'
      FieldName = 'NFe_Recibo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 61
      Searchable = False
      Sortable = False
    end
    object ppNotasppField63: TppField
      FieldAlias = 'Nfe_DataRecibo'
      FieldName = 'Nfe_DataRecibo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 62
      Searchable = False
      Sortable = False
    end
    object ppNotasppField64: TppField
      FieldAlias = 'NFe_Protocolo'
      FieldName = 'NFe_Protocolo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 63
      Searchable = False
      Sortable = False
    end
    object ppNotasppField65: TppField
      FieldAlias = 'NFe_DataProtocolo'
      FieldName = 'NFe_DataProtocolo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 64
      Searchable = False
      Sortable = False
    end
    object ppNotasppField66: TppField
      FieldAlias = 'Nfe_Denegada'
      FieldName = 'Nfe_Denegada'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 65
      Searchable = False
      Sortable = False
    end
    object ppNotasppField67: TppField
      FieldAlias = 'Imprimir_DANFE'
      FieldName = 'Imprimir_DANFE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 66
      Searchable = False
      Sortable = False
    end
    object ppNotasppField68: TppField
      FieldAlias = 'DPEC'
      FieldName = 'DPEC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 67
      Searchable = False
      Sortable = False
    end
    object ppNotasppField69: TppField
      FieldAlias = 'Operacao_Veiculo'
      FieldName = 'Operacao_Veiculo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 68
      Searchable = False
      Sortable = False
    end
    object ppNotasppField70: TppField
      FieldAlias = 'Transporte_Placa'
      FieldName = 'Transporte_Placa'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 69
      Searchable = False
      Sortable = False
    end
    object ppNotasppField71: TppField
      FieldAlias = 'Transporte_PlacaUF'
      FieldName = 'Transporte_PlacaUF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 70
      Searchable = False
      Sortable = False
    end
    object ppNotasppField72: TppField
      FieldAlias = 'Transporte_RGMotorista'
      FieldName = 'Transporte_RGMotorista'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 71
      Searchable = False
      Sortable = False
    end
    object ppNotasppField73: TppField
      FieldAlias = 'Transporte_CodigoANTT'
      FieldName = 'Transporte_CodigoANTT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 72
      Searchable = False
      Sortable = False
    end
    object ppNotasppField74: TppField
      FieldAlias = 'Transporte_NomeMotorista'
      FieldName = 'Transporte_NomeMotorista'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 73
      Searchable = False
      Sortable = False
    end
    object ppNotasppField75: TppField
      FieldAlias = 'Lucro_Valor'
      FieldName = 'Lucro_Valor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 74
      Searchable = False
      Sortable = False
    end
    object ppNotasppField76: TppField
      FieldAlias = 'Taxa_Cambio'
      FieldName = 'Taxa_Cambio'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 75
      Searchable = False
      Sortable = False
    end
    object ppNotasppField77: TppField
      FieldAlias = 'Valor_IsentasICMS'
      FieldName = 'Valor_IsentasICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 76
      Searchable = False
      Sortable = False
    end
    object ppNotasppField78: TppField
      FieldAlias = 'Valor_OutrasICMS'
      FieldName = 'Valor_OutrasICMS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 77
      Searchable = False
      Sortable = False
    end
    object ppNotasppField79: TppField
      FieldAlias = 'Valor_IsentasIPI'
      FieldName = 'Valor_IsentasIPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 78
      Searchable = False
      Sortable = False
    end
    object ppNotasppField80: TppField
      FieldAlias = 'Valor_OutrasIPI'
      FieldName = 'Valor_OutrasIPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 79
      Searchable = False
      Sortable = False
    end
    object ppNotasppField81: TppField
      FieldAlias = 'Incentivo_Fiscal'
      FieldName = 'Incentivo_Fiscal'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 80
      Searchable = False
      Sortable = False
    end
    object ppNotasppField82: TppField
      FieldAlias = 'DPEC_Protocolo'
      FieldName = 'DPEC_Protocolo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 81
      Searchable = False
      Sortable = False
    end
    object ppNotasppField83: TppField
      FieldAlias = 'DPEC_DataProtocolo'
      FieldName = 'DPEC_DataProtocolo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 82
      Searchable = False
      Sortable = False
    end
    object ppNotasppField84: TppField
      FieldAlias = 'Representante'
      FieldName = 'Representante'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 83
      Searchable = False
      Sortable = False
    end
    object ppNotasppField85: TppField
      FieldAlias = 'Representante_Comissao'
      FieldName = 'Representante_Comissao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 84
      Searchable = False
      Sortable = False
    end
    object ppNotasppField86: TppField
      FieldAlias = 'Importacao'
      FieldName = 'Importacao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 85
      Searchable = False
      Sortable = False
    end
    object ppNotasppField87: TppField
      FieldAlias = 'Data_Cancelamento'
      FieldName = 'Data_Cancelamento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 86
      Searchable = False
      Sortable = False
    end
    object ppNotasppField88: TppField
      FieldAlias = 'Protocolo_Cancelamento'
      FieldName = 'Protocolo_Cancelamento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 87
      Searchable = False
      Sortable = False
    end
    object ppNotasppField89: TppField
      FieldAlias = 'Calcula_Volumes'
      FieldName = 'Calcula_Volumes'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 88
      Searchable = False
      Sortable = False
    end
    object ppNotasppField90: TppField
      FieldAlias = 'Valor_BCMVA'
      FieldName = 'Valor_BCMVA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 89
      Searchable = False
      Sortable = False
    end
    object ppNotasppField91: TppField
      FieldAlias = 'Destinatario_CNPJ_CPF'
      FieldName = 'Destinatario_CNPJ_CPF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 90
      Searchable = False
      Sortable = False
    end
    object ppNotasppField92: TppField
      FieldAlias = 'Destinatario_Nome'
      FieldName = 'Destinatario_Nome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 91
      Searchable = False
      Sortable = False
    end
    object ppNotasppField93: TppField
      FieldAlias = 'Destinatario_Rua'
      FieldName = 'Destinatario_Rua'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 92
      Searchable = False
      Sortable = False
    end
    object ppNotasppField94: TppField
      FieldAlias = 'Destinatario_RuaNumero'
      FieldName = 'Destinatario_RuaNumero'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 93
      Searchable = False
      Sortable = False
    end
    object ppNotasppField95: TppField
      FieldAlias = 'Destinatario_Bairro'
      FieldName = 'Destinatario_Bairro'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 94
      Searchable = False
      Sortable = False
    end
    object ppNotasppField96: TppField
      FieldAlias = 'Destinatario_Municipio'
      FieldName = 'Destinatario_Municipio'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 95
      Searchable = False
      Sortable = False
    end
    object ppNotasppField97: TppField
      FieldAlias = 'Destinatario_Estado'
      FieldName = 'Destinatario_Estado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 96
      Searchable = False
      Sortable = False
    end
    object ppNotasppField98: TppField
      FieldAlias = 'Destinatario_CEP'
      FieldName = 'Destinatario_CEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 97
      Searchable = False
      Sortable = False
    end
    object ppNotasppField99: TppField
      FieldAlias = 'Destinatario_Telefone1'
      FieldName = 'Destinatario_Telefone1'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 98
      Searchable = False
      Sortable = False
    end
    object ppNotasppField100: TppField
      FieldAlias = 'Destinatario_IE'
      FieldName = 'Destinatario_IE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 99
      Searchable = False
      Sortable = False
    end
    object ppNotasppField101: TppField
      FieldAlias = 'Destinatario_Complemento'
      FieldName = 'Destinatario_Complemento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 100
      Searchable = False
      Sortable = False
    end
    object ppNotasppField102: TppField
      FieldAlias = 'Destinatario_Juridica'
      FieldName = 'Destinatario_Juridica'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 101
      Searchable = False
      Sortable = False
    end
    object ppNotasppField103: TppField
      FieldAlias = 'Valor_DUMPING'
      FieldName = 'Valor_DUMPING'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 102
      Searchable = False
      Sortable = False
    end
    object ppNotasppField104: TppField
      FieldAlias = 'Pedido_Nota'
      FieldName = 'Pedido_Nota'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 103
      Searchable = False
      Sortable = False
    end
    object ppNotasppField105: TppField
      FieldAlias = 'Reducao_ICMSOper'
      FieldName = 'Reducao_ICMSOper'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 104
      Searchable = False
      Sortable = False
    end
    object ppNotasppField106: TppField
      FieldAlias = 'Apuracao_PISCOFINS'
      FieldName = 'Apuracao_PISCOFINS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 105
      Searchable = False
      Sortable = False
    end
    object ppNotasppField107: TppField
      FieldAlias = 'Inf_Complementares2'
      FieldName = 'Inf_Complementares2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 106
      Searchable = False
      Sortable = False
    end
    object ppNotasppField108: TppField
      FieldAlias = 'Destinatario_Pais'
      FieldName = 'Destinatario_Pais'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 107
      Searchable = False
      Sortable = False
    end
    object ppNotasppField109: TppField
      FieldAlias = 'Destinatario_MunicipioNome'
      FieldName = 'Destinatario_MunicipioNome'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 108
      Searchable = False
      Sortable = False
    end
    object ppNotasppField110: TppField
      FieldAlias = 'BCICMS_Apuracao'
      FieldName = 'BCICMS_Apuracao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 109
      Searchable = False
      Sortable = False
    end
    object ppNotasppField111: TppField
      FieldAlias = 'Valor_ICMSApuracao'
      FieldName = 'Valor_ICMSApuracao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 110
      Searchable = False
      Sortable = False
    end
    object ppNotasppField112: TppField
      FieldAlias = 'Media_BCR'
      FieldName = 'Media_BCR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 111
      Searchable = False
      Sortable = False
    end
    object ppNotasppField113: TppField
      FieldAlias = 'Valor_PIS2'
      FieldName = 'Valor_PIS2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 112
      Searchable = False
      Sortable = False
    end
    object ppNotasppField114: TppField
      FieldAlias = 'Valor_COFINS2'
      FieldName = 'Valor_COFINS2'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 113
      Searchable = False
      Sortable = False
    end
    object ppNotasppField115: TppField
      FieldAlias = 'Baixa_Estoque'
      FieldName = 'Baixa_Estoque'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 114
      Searchable = False
      Sortable = False
    end
    object ppNotasppField116: TppField
      FieldAlias = 'Valor_DespesasOutros'
      FieldName = 'Valor_DespesasOutros'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 115
      Searchable = False
      Sortable = False
    end
    object ppNotasppField117: TppField
      FieldAlias = 'ICMS_Destacar'
      FieldName = 'ICMS_Destacar'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 116
      Searchable = False
      Sortable = False
    end
    object ppNotasppField118: TppField
      FieldAlias = 'Valor_BCPIS'
      FieldName = 'Valor_BCPIS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 117
      Searchable = False
      Sortable = False
    end
    object ppNotasppField119: TppField
      FieldAlias = 'Total_Impostos'
      FieldName = 'Total_Impostos'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 118
      Searchable = False
      Sortable = False
    end
    object ppNotasppField120: TppField
      FieldAlias = 'Aliquota_IRPJ'
      FieldName = 'Aliquota_IRPJ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 119
      Searchable = False
      Sortable = False
    end
    object ppNotasppField121: TppField
      FieldAlias = 'Valor_IRPJ'
      FieldName = 'Valor_IRPJ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 120
      Searchable = False
      Sortable = False
    end
    object ppNotasppField122: TppField
      FieldAlias = 'Aliquota_CSLL'
      FieldName = 'Aliquota_CSLL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 121
      Searchable = False
      Sortable = False
    end
    object ppNotasppField123: TppField
      FieldAlias = 'Valor_CSLL'
      FieldName = 'Valor_CSLL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 122
      Searchable = False
      Sortable = False
    end
    object ppNotasppField124: TppField
      FieldAlias = 'Comissao'
      FieldName = 'Comissao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 123
      Searchable = False
      Sortable = False
    end
    object ppNotasppField125: TppField
      FieldAlias = 'Comissao_Valor'
      FieldName = 'Comissao_Valor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 124
      Searchable = False
      Sortable = False
    end
    object ppNotasppField126: TppField
      FieldAlias = 'Pedido_Representante'
      FieldName = 'Pedido_Representante'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 125
      Searchable = False
      Sortable = False
    end
    object ppNotasppField127: TppField
      FieldAlias = 'Manifesto_Protocolo'
      FieldName = 'Manifesto_Protocolo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 126
      Searchable = False
      Sortable = False
    end
    object ppNotasppField128: TppField
      FieldAlias = 'Manifesto_DataProtocolo'
      FieldName = 'Manifesto_DataProtocolo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 127
      Searchable = False
      Sortable = False
    end
    object ppNotasppField129: TppField
      FieldAlias = 'Manifesto_Motivo'
      FieldName = 'Manifesto_Motivo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 128
      Searchable = False
      Sortable = False
    end
    object ppNotasppField130: TppField
      FieldAlias = 'Manifesto_Justificativa'
      FieldName = 'Manifesto_Justificativa'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 129
      Searchable = False
      Sortable = False
    end
    object ppNotasppField131: TppField
      FieldAlias = 'Natureza_Correcao'
      FieldName = 'Natureza_Correcao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 130
      Searchable = False
      Sortable = False
    end
    object ppNotasppField132: TppField
      FieldAlias = 'Atendente'
      FieldName = 'Atendente'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 131
      Searchable = False
      Sortable = False
    end
    object ppNotasppField133: TppField
      FieldAlias = 'Atendente_Comissao'
      FieldName = 'Atendente_Comissao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 132
      Searchable = False
      Sortable = False
    end
    object ppNotasppField134: TppField
      FieldAlias = 'Valor_Inventario'
      FieldName = 'Valor_Inventario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 133
      Searchable = False
      Sortable = False
    end
    object ppNotasppField135: TppField
      FieldAlias = 'Indicador_Presenca'
      FieldName = 'Indicador_Presenca'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 134
      Searchable = False
      Sortable = False
    end
    object ppNotasppField136: TppField
      FieldAlias = 'Veiculo_Restricao'
      FieldName = 'Veiculo_Restricao'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 135
      Searchable = False
      Sortable = False
    end
    object ppNotasppField137: TppField
      FieldAlias = 'Ratear_Despesa'
      FieldName = 'Ratear_Despesa'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 136
      Searchable = False
      Sortable = False
    end
    object ppNotasppField138: TppField
      FieldAlias = 'NFE_Estorno'
      FieldName = 'NFE_Estorno'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 137
      Searchable = False
      Sortable = False
    end
    object ppNotasppField139: TppField
      FieldAlias = 'Representante_ComissaoGer'
      FieldName = 'Representante_ComissaoGer'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 138
      Searchable = False
      Sortable = False
    end
    object ppNotasppField140: TppField
      FieldAlias = 'Vendedor'
      FieldName = 'Vendedor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 139
      Searchable = False
      Sortable = False
    end
    object ppNotasppField141: TppField
      FieldAlias = 'Valor_BCICMSDest'
      FieldName = 'Valor_BCICMSDest'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 140
      Searchable = False
      Sortable = False
    end
    object ppNotasppField142: TppField
      FieldAlias = 'Valor_ICMSDest'
      FieldName = 'Valor_ICMSDest'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 141
      Searchable = False
      Sortable = False
    end
    object ppNotasppField143: TppField
      FieldAlias = 'DIFAL_Valor'
      FieldName = 'DIFAL_Valor'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 142
      Searchable = False
      Sortable = False
    end
    object ppNotasppField144: TppField
      FieldAlias = 'DIFAL_ValorOrig'
      FieldName = 'DIFAL_ValorOrig'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 143
      Searchable = False
      Sortable = False
    end
    object ppNotasppField145: TppField
      FieldAlias = 'DIFAL_ValorDest'
      FieldName = 'DIFAL_ValorDest'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 144
      Searchable = False
      Sortable = False
    end
    object ppNotasppField146: TppField
      FieldAlias = 'FCP_ValorDest'
      FieldName = 'FCP_ValorDest'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 145
      Searchable = False
      Sortable = False
    end
    object ppNotasppField147: TppField
      FieldAlias = 'FCP_ICMSDest'
      FieldName = 'FCP_ICMSDest'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 146
      Searchable = False
      Sortable = False
    end
    object ppNotasppField148: TppField
      FieldAlias = 'FCP_ICMSORIG'
      FieldName = 'FCP_ICMSORIG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 147
      Searchable = False
      Sortable = False
    end
    object ppNotasppField149: TppField
      FieldAlias = 'DIFAL_AliqInterna'
      FieldName = 'DIFAL_AliqInterna'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 148
      Searchable = False
      Sortable = False
    end
    object ppNotasppField150: TppField
      FieldAlias = 'Valor_BCFCPST'
      FieldName = 'Valor_BCFCPST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 149
      Searchable = False
      Sortable = False
    end
    object ppNotasppField151: TppField
      FieldAlias = 'Valor_FCPST'
      FieldName = 'Valor_FCPST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 150
      Searchable = False
      Sortable = False
    end
    object ppNotasppField152: TppField
      FieldAlias = 'Aliquota_FCPST'
      FieldName = 'Aliquota_FCPST'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 151
      Searchable = False
      Sortable = False
    end
    object ppNotasppField153: TppField
      FieldAlias = 'Valor_BCFCP'
      FieldName = 'Valor_BCFCP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 152
      Searchable = False
      Sortable = False
    end
    object ppNotasppField154: TppField
      FieldAlias = 'Aliquota_FCP'
      FieldName = 'Aliquota_FCP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 153
      Searchable = False
      Sortable = False
    end
    object ppNotasppField155: TppField
      FieldAlias = 'Valor_FCP'
      FieldName = 'Valor_FCP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 154
      Searchable = False
      Sortable = False
    end
    object ppNotasppField156: TppField
      FieldAlias = 'Tipo_Pagamento'
      FieldName = 'Tipo_Pagamento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 155
      Searchable = False
      Sortable = False
    end
    object ppNotasppField157: TppField
      FieldAlias = 'Forma_Pagamento'
      FieldName = 'Forma_Pagamento'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 156
      Searchable = False
      Sortable = False
    end
    object ppNotasppField158: TppField
      FieldAlias = 'Valor_ICMSDesonerado'
      FieldName = 'Valor_ICMSDesonerado'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 157
      Searchable = False
      Sortable = False
    end
    object ppNotasppField159: TppField
      FieldAlias = 'Lote'
      FieldName = 'Lote'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 158
      Searchable = False
      Sortable = False
    end
    object ppNotasppField160: TppField
      FieldAlias = 'Reboque_Placa'
      FieldName = 'Reboque_Placa'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 159
      Searchable = False
      Sortable = False
    end
    object ppNotasppField161: TppField
      FieldAlias = 'Reboque_UF'
      FieldName = 'Reboque_UF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 160
      Searchable = False
      Sortable = False
    end
    object ppNotasppField162: TppField
      FieldAlias = 'Reboque_ANTT'
      FieldName = 'Reboque_ANTT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 161
      Searchable = False
      Sortable = False
    end
    object ppNotasppField163: TppField
      FieldAlias = 'Entrega_Retirada'
      FieldName = 'Entrega_Retirada'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 162
      Searchable = False
      Sortable = False
    end
    object ppNotasppField164: TppField
      FieldAlias = 'Valor_CIF'
      FieldName = 'Valor_CIF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 163
      Searchable = False
      Sortable = False
    end
    object ppNotasppField165: TppField
      FieldAlias = 'CTE'
      FieldName = 'CTE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 164
      Searchable = False
      Sortable = False
    end
    object ppNotasppField166: TppField
      FieldAlias = 'Tipo_Processo'
      FieldName = 'Tipo_Processo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 165
      Searchable = False
      Sortable = False
    end
    object ppNotasppField167: TppField
      FieldAlias = 'Valor_AFRMM'
      FieldName = 'Valor_AFRMM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 166
      Searchable = False
      Sortable = False
    end
    object ppNotasppField168: TppField
      FieldAlias = 'Indicador_Intermediario'
      FieldName = 'Indicador_Intermediario'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 167
      Searchable = False
      Sortable = False
    end
    object ppNotasppField169: TppField
      FieldAlias = 'Descricao_Forma'
      FieldName = 'Descricao_Forma'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 168
      Searchable = False
      Sortable = False
    end
    object ppNotasppField170: TppField
      FieldAlias = 'Intermediador'
      FieldName = 'Intermediador'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 169
      Searchable = False
      Sortable = False
    end
    object ppNotasppField171: TppField
      FieldAlias = 'Envio_Armazem'
      FieldName = 'Envio_Armazem'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 170
      Searchable = False
      Sortable = False
    end
    object ppNotasppField172: TppField
      FieldAlias = 'Cancelada_ForaPrazo'
      FieldName = 'Cancelada_ForaPrazo'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 171
      Searchable = False
      Sortable = False
    end
    object ppNotasppField173: TppField
      FieldAlias = 'Valor_BCDIFAL'
      FieldName = 'Valor_BCDIFAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 172
      Searchable = False
      Sortable = False
    end
    object ppNotasppField174: TppField
      FieldAlias = 'Valor_ICMSDif'
      FieldName = 'Valor_ICMSDif'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 173
      Searchable = False
      Sortable = False
    end
    object ppNotasppField175: TppField
      FieldAlias = 'Valor_ICMSMono'
      FieldName = 'Valor_ICMSMono'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 174
      Searchable = False
      Sortable = False
    end
    object ppNotasppField176: TppField
      FieldAlias = 'Valor_ICMSMonoRet'
      FieldName = 'Valor_ICMSMonoRet'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 175
      Searchable = False
      Sortable = False
    end
    object ppNotasppField177: TppField
      FieldAlias = 'Valor_BCICMSMono'
      FieldName = 'Valor_BCICMSMono'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 176
      Searchable = False
      Sortable = False
    end
    object ppNotasppField178: TppField
      FieldAlias = 'Valor_BCICMSMonoRet'
      FieldName = 'Valor_BCICMSMonoRet'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 177
      Searchable = False
      Sortable = False
    end
    object ppNotasppField179: TppField
      FieldAlias = 'Inf_Compl'
      FieldName = 'Inf_Compl'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 178
      Searchable = False
      Sortable = False
    end
  end
  object ppItens: TppDBPipeline
    DataSource = dsItens
    CloseDataSource = True
    UserName = 'ppItens'
    Left = 456
    Top = 6
  end
  object tbItens: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Nota,'
      '       Data,'
      '       Codigo_Mercadoria,'
      '       Codigo_Fabricante,'
      '       CASE WHEN Total_Impostos > 0 THEN'
      
        '            CAST(Descricao_Mercadoria AS VARCHAR(5000))+ CHAR(13' +
        ')+CHAR(13)+'#39'                              TRIBUTOS : R$ '#39'+ CONVE' +
        'RT(VARCHAR, CAST(Total_Impostos AS money),-1)+ '#39'  ('#39'+CONVERT(VAR' +
        'CHAR, CAST( ROUND((Total_Impostos/Valor_Total)*100,2) AS money),' +
        '-1)+'#39'%)'#39
      '       ELSE    '
      '            CAST(Descricao_Mercadoria AS VARCHAR(5000))'
      '       END AS Descricao_Mercadoria,'
      '       NCM,'
      '       Unidade_Medida,'
      '       CodigoTrib_TabA,'
      '       CodigoTrib_TabB,'
      '       CSTIPI,'
      '       CSTPIS,'
      '       CSTCOFINS,'
      '       Quantidade,'
      '       Valor_Unitario,'
      '       Valor_Total,'
      '       Aliquota_IPI,'
      '       Valor_IPI,'
      '       Total_IPI,'
      '       Aliquota_ICMSOper,'
      '       Valor_BCICMSOper,'
      '       Valor_ICMSOper,'
      '       Valor_BCICMSSub,'
      '       Aliquota_ICMSSub,'
      '       Valor_ICMSSub,'
      '       Aliquota_PIS,'
      '       Valor_PIS,'
      '       Aliquota_COFINS,'
      '       Valor_COFINS,'
      '       Total_Item,'
      '       Total_Impostos'
      'FROM  NotasItens'
      'WHERE Nota = 1')
    FetchRows = 1
    DetailFields = 'Nota;Data'
    Left = 342
    Top = 366
  end
  object dsItens: TDataSource
    DataSet = tbItens
    Left = 342
    Top = 422
  end
  object ppEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    CloseDataSource = True
    UserName = 'Empresas'
    Left = 518
    Top = 6
    object ppEmpresasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 2
      Position = 0
    end
    object ppEmpresasppField2: TppField
      FieldAlias = 'Razao_Social'
      FieldName = 'Razao_Social'
      FieldLength = 50
      DisplayWidth = 28
      Position = 1
    end
    object ppEmpresasppField3: TppField
      FieldAlias = 'Nome_Fantasia'
      FieldName = 'Nome_Fantasia'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppEmpresasppField4: TppField
      FieldAlias = 'Rua'
      FieldName = 'Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object ppEmpresasppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Rua_Numero'
      FieldName = 'Rua_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppEmpresasppField6: TppField
      FieldAlias = 'Complemento'
      FieldName = 'Complemento'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object ppEmpresasppField7: TppField
      FieldAlias = 'Bairro'
      FieldName = 'Bairro'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object ppEmpresasppField8: TppField
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 7
    end
    object ppEmpresasppField9: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 8
    end
    object ppEmpresasppField10: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 12
      Position = 9
    end
    object ppEmpresasppField11: TppField
      FieldAlias = 'IE'
      FieldName = 'IE'
      FieldLength = 14
      DisplayWidth = 14
      Position = 10
    end
    object ppEmpresasppField12: TppField
      FieldAlias = 'IM'
      FieldName = 'IM'
      FieldLength = 14
      DisplayWidth = 14
      Position = 11
    end
    object ppEmpresasppField13: TppField
      FieldAlias = 'Junta_Codigo'
      FieldName = 'Junta_Codigo'
      FieldLength = 12
      DisplayWidth = 12
      Position = 12
    end
    object ppEmpresasppField14: TppField
      FieldAlias = 'Junta_Data'
      FieldName = 'Junta_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
    object ppEmpresasppField15: TppField
      FieldAlias = 'Ramo_Atividade'
      FieldName = 'Ramo_Atividade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object ppEmpresasppField16: TppField
      FieldAlias = 'Codigo_Atividade'
      FieldName = 'Codigo_Atividade'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
    object ppEmpresasppField17: TppField
      FieldAlias = 'Responsavel'
      FieldName = 'Responsavel'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object ppEmpresasppField18: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 17
    end
    object ppEmpresasppField19: TppField
      FieldAlias = 'Site'
      FieldName = 'Site'
      FieldLength = 60
      DisplayWidth = 60
      Position = 18
    end
    object ppEmpresasppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'Duplicata'
      FieldName = 'Duplicata'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppEmpresasppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Saida'
      FieldName = 'Nota_Saida'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object ppEmpresasppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Entrada'
      FieldName = 'Nota_Entrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object ppEmpresasppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Servico'
      FieldName = 'Nota_Servico'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object ppEmpresasppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Eletronica'
      FieldName = 'Nota_Eletronica'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object ppEmpresasppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'Memorando_Exportacao'
      FieldName = 'Memorando_Exportacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object ppEmpresasppField26: TppField
      FieldAlias = 'Sincronizar_NumeroNF'
      FieldName = 'Sincronizar_NumeroNF'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 25
    end
    object ppEmpresasppField27: TppField
      FieldAlias = 'Mascara_PlanoContas'
      FieldName = 'Mascara_PlanoContas'
      FieldLength = 20
      DisplayWidth = 20
      Position = 26
    end
    object ppEmpresasppField28: TppField
      FieldAlias = 'Codigo_Reduzido'
      FieldName = 'Codigo_Reduzido'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 27
    end
    object ppEmpresasppField29: TppField
      FieldAlias = 'Diretor'
      FieldName = 'Diretor'
      FieldLength = 50
      DisplayWidth = 50
      Position = 28
    end
    object ppEmpresasppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Numero'
      FieldName = 'Diario_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object ppEmpresasppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Pagina'
      FieldName = 'Diario_Pagina'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object ppEmpresasppField32: TppField
      FieldAlias = 'Ultimo_Encerramento'
      FieldName = 'Ultimo_Encerramento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 31
    end
    object ppEmpresasppField33: TppField
      FieldAlias = 'NFServico_Modelo'
      FieldName = 'NFServico_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 32
    end
    object ppEmpresasppField34: TppField
      FieldAlias = 'NFServico_Serie'
      FieldName = 'NFServico_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 33
    end
    object ppEmpresasppField35: TppField
      FieldAlias = 'NFEntrada_Modelo'
      FieldName = 'NFEntrada_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 34
    end
    object ppEmpresasppField36: TppField
      FieldAlias = 'NFEntrada_Serie'
      FieldName = 'NFEntrada_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 35
    end
    object ppEmpresasppField37: TppField
      FieldAlias = 'NFSaida_Modelo'
      FieldName = 'NFSaida_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 36
    end
    object ppEmpresasppField38: TppField
      FieldAlias = 'NFSaida_Serie'
      FieldName = 'NFSaida_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 37
    end
    object ppEmpresasppField39: TppField
      FieldAlias = 'Matriz_Filial'
      FieldName = 'Matriz_Filial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 38
    end
    object ppEmpresasppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Filial'
      FieldName = 'Numero_Filial'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 2
      Position = 39
    end
    object ppEmpresasppField41: TppField
      FieldAlias = 'NFEletronica_Modelo'
      FieldName = 'NFEletronica_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 40
    end
    object ppEmpresasppField42: TppField
      FieldAlias = 'NFEletronica_Serie'
      FieldName = 'NFEletronica_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 41
    end
    object ppEmpresasppField43: TppField
      FieldAlias = 'NFEletronica_Layout'
      FieldName = 'NFEletronica_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 42
    end
    object ppEmpresasppField44: TppField
      FieldAlias = 'Certificado_Digital'
      FieldName = 'Certificado_Digital'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Lote'
      FieldName = 'Numero_Lote'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 44
    end
    object ppEmpresasppField46: TppField
      FieldAlias = 'Inscricao_SUFRAMA'
      FieldName = 'Inscricao_SUFRAMA'
      FieldLength = 9
      DisplayWidth = 9
      Position = 45
    end
    object ppEmpresasppField47: TppField
      FieldAlias = 'Contador_Nome'
      FieldName = 'Contador_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 46
    end
    object ppEmpresasppField48: TppField
      FieldAlias = 'Contador_CNPJ'
      FieldName = 'Contador_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 47
    end
    object ppEmpresasppField49: TppField
      FieldAlias = 'Contador_CPF'
      FieldName = 'Contador_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 48
    end
    object ppEmpresasppField50: TppField
      FieldAlias = 'Contador_CRC'
      FieldName = 'Contador_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 49
    end
    object ppEmpresasppField51: TppField
      FieldAlias = 'Contador_CEP'
      FieldName = 'Contador_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 50
    end
    object ppEmpresasppField52: TppField
      FieldAlias = 'Contador_Rua'
      FieldName = 'Contador_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 51
    end
    object ppEmpresasppField53: TppField
      FieldAlias = 'Contador_Numero'
      FieldName = 'Contador_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 52
    end
    object ppEmpresasppField54: TppField
      FieldAlias = 'Contador_Complemento'
      FieldName = 'Contador_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 53
    end
    object ppEmpresasppField55: TppField
      FieldAlias = 'Contador_Bairro'
      FieldName = 'Contador_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 54
    end
    object ppEmpresasppField56: TppField
      FieldAlias = 'Contador_Telefone'
      FieldName = 'Contador_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 55
    end
    object ppEmpresasppField57: TppField
      FieldAlias = 'Contador_FAX'
      FieldName = 'Contador_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 56
    end
    object ppEmpresasppField58: TppField
      FieldAlias = 'Contador_Email'
      FieldName = 'Contador_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 57
    end
    object ppEmpresasppField59: TppField
      FieldAlias = 'Contador_Estado'
      FieldName = 'Contador_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 58
    end
    object ppEmpresasppField60: TppField
      FieldAlias = 'Data_Constituicao'
      FieldName = 'Data_Constituicao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 59
    end
    object ppEmpresasppField61: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tributacao'
      FieldName = 'Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 60
    end
    object ppEmpresasppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'Municipio_Codigo'
      FieldName = 'Municipio_Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 61
    end
    object ppEmpresasppField63: TppField
      FieldAlias = 'Diretor_CPF'
      FieldName = 'Diretor_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 62
    end
    object ppEmpresasppField64: TppField
      FieldAlias = 'Responsavel_CPF'
      FieldName = 'Responsavel_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 63
    end
    object ppEmpresasppField65: TppField
      FieldAlias = 'Responsavel_Funcao'
      FieldName = 'Responsavel_Funcao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 64
    end
    object ppEmpresasppField66: TppField
      FieldAlias = 'Banco_Dados'
      FieldName = 'Banco_Dados'
      FieldLength = 50
      DisplayWidth = 50
      Position = 65
    end
    object ppEmpresasppField67: TppField
      FieldAlias = 'Banco_Contabilidade'
      FieldName = 'Banco_Contabilidade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 66
    end
    object ppEmpresasppField68: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente'
      FieldName = 'Ambiente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 67
    end
    object ppEmpresasppField69: TppField
      FieldAlias = 'Licensa_NFE_Util'
      FieldName = 'Licensa_NFE_Util'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 68
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField70: TppField
      FieldAlias = 'Processo_Automatico'
      FieldName = 'Processo_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 69
    end
    object ppEmpresasppField71: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 70
    end
    object ppEmpresasppField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'Apuracao_IPI'
      FieldName = 'Apuracao_IPI'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 71
    end
    object ppEmpresasppField73: TppField
      FieldAlias = 'Perfil_SPED'
      FieldName = 'Perfil_SPED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 72
    end
    object ppEmpresasppField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Atividade'
      FieldName = 'Tipo_Atividade'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 73
    end
    object ppEmpresasppField75: TppField
      FieldAlias = 'Vencimento_Certificado'
      FieldName = 'Vencimento_Certificado'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 74
    end
    object ppEmpresasppField76: TppField
      FieldAlias = 'UF_WebService'
      FieldName = 'UF_WebService'
      FieldLength = 10
      DisplayWidth = 10
      Position = 75
    end
    object ppEmpresasppField77: TppField
      Alignment = taRightJustify
      FieldAlias = 'Regime_Apuracao'
      FieldName = 'Regime_Apuracao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 76
    end
    object ppEmpresasppField78: TppField
      FieldAlias = 'Mascara_Processo'
      FieldName = 'Mascara_Processo'
      FieldLength = 7
      DisplayWidth = 7
      Position = 77
    end
    object ppEmpresasppField79: TppField
      FieldAlias = 'Incentivo_Fiscal'
      FieldName = 'Incentivo_Fiscal'
      FieldLength = 20
      DisplayWidth = 20
      Position = 78
    end
    object ppEmpresasppField80: TppField
      FieldAlias = 'Email_SMTP'
      FieldName = 'Email_SMTP'
      FieldLength = 80
      DisplayWidth = 80
      Position = 79
    end
    object ppEmpresasppField81: TppField
      FieldAlias = 'Email_Senha'
      FieldName = 'Email_Senha'
      FieldLength = 30
      DisplayWidth = 30
      Position = 80
    end
    object ppEmpresasppField82: TppField
      FieldAlias = 'Email_MsgEnvioNFE'
      FieldName = 'Email_MsgEnvioNFE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 81
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField83: TppField
      FieldAlias = 'Email_MsgCancelamento'
      FieldName = 'Email_MsgCancelamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 82
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField84: TppField
      Alignment = taRightJustify
      FieldAlias = 'Email_Porta'
      FieldName = 'Email_Porta'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 83
    end
    object ppEmpresasppField85: TppField
      FieldAlias = 'Email_ID'
      FieldName = 'Email_ID'
      FieldLength = 80
      DisplayWidth = 80
      Position = 84
    end
    object ppEmpresasppField86: TppField
      FieldAlias = 'Distribuidora'
      FieldName = 'Distribuidora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 85
    end
    object ppEmpresasppField87: TppField
      FieldAlias = 'Fechamento_Financeiro'
      FieldName = 'Fechamento_Financeiro'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 86
    end
    object ppEmpresasppField88: TppField
      FieldAlias = 'Modulo_Comercial'
      FieldName = 'Modulo_Comercial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 87
    end
    object ppEmpresasppField89: TppField
      FieldAlias = 'Consolidar'
      FieldName = 'Consolidar'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 88
    end
    object ppEmpresasppField90: TppField
      FieldAlias = 'Email_Copia'
      FieldName = 'Email_Copia'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 89
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField91: TppField
      FieldAlias = 'Email_SSL'
      FieldName = 'Email_SSL'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 90
    end
    object ppEmpresasppField92: TppField
      FieldAlias = 'Email_Autenticacao'
      FieldName = 'Email_Autenticacao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 91
    end
    object ppEmpresasppField93: TppField
      FieldAlias = 'Email_Metodo'
      FieldName = 'Email_Metodo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 92
    end
    object ppEmpresasppField94: TppField
      FieldAlias = 'CartaCorrecao_Layout'
      FieldName = 'CartaCorrecao_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 93
    end
    object ppEmpresasppField95: TppField
      FieldAlias = 'CNAE'
      FieldName = 'CNAE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 94
    end
    object ppEmpresasppField96: TppField
      FieldAlias = 'Email_MsgEnvioCCE'
      FieldName = 'Email_MsgEnvioCCE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 95
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField97: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_EletronicaEntrada'
      FieldName = 'Nota_EletronicaEntrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 96
    end
    object ppEmpresasppField98: TppField
      FieldAlias = 'NFEletronica_ModeloEntrada'
      FieldName = 'NFEletronica_ModeloEntrada'
      FieldLength = 2
      DisplayWidth = 2
      Position = 97
    end
    object ppEmpresasppField99: TppField
      FieldAlias = 'NFEletronica_SerieEntrada'
      FieldName = 'NFEletronica_SerieEntrada'
      FieldLength = 3
      DisplayWidth = 3
      Position = 98
    end
    object ppEmpresasppField100: TppField
      FieldAlias = 'NFEletronica_Numeracao'
      FieldName = 'NFEletronica_Numeracao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 99
    end
    object ppEmpresasppField101: TppField
      Alignment = taRightJustify
      FieldAlias = 'Logomarca_Largura'
      FieldName = 'Logomarca_Largura'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 100
    end
    object ppEmpresasppField102: TppField
      FieldAlias = 'Pagamento'
      FieldName = 'Pagamento'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 101
    end
    object ppEmpresasppField103: TppField
      FieldAlias = 'Modulo_Emprestimos'
      FieldName = 'Modulo_Emprestimos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 102
    end
    object ppEmpresasppField104: TppField
      FieldAlias = 'Modulo_XMLCTe'
      FieldName = 'Modulo_XMLCTe'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 103
    end
    object ppEmpresasppField105: TppField
      FieldAlias = 'Regime'
      FieldName = 'Regime'
      FieldLength = 1
      DisplayWidth = 1
      Position = 104
    end
    object ppEmpresasppField106: TppField
      FieldAlias = 'Modulo_Vendas'
      FieldName = 'Modulo_Vendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 105
    end
    object ppEmpresasppField107: TppField
      Alignment = taRightJustify
      FieldAlias = 'CTE_Numero'
      FieldName = 'CTE_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 106
    end
    object ppEmpresasppField108: TppField
      FieldAlias = 'CTE_Modelo'
      FieldName = 'CTE_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 107
    end
    object ppEmpresasppField109: TppField
      FieldAlias = 'CTE_Serie'
      FieldName = 'CTE_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 108
    end
    object ppEmpresasppField110: TppField
      FieldAlias = 'CTE_Layout'
      FieldName = 'CTE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 109
    end
    object ppEmpresasppField111: TppField
      FieldAlias = 'Modulo_Logistica'
      FieldName = 'Modulo_Logistica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 110
    end
    object ppEmpresasppField112: TppField
      FieldAlias = 'Modulo_Boleto'
      FieldName = 'Modulo_Boleto'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 111
    end
    object ppEmpresasppField113: TppField
      FieldAlias = 'Telefone1'
      FieldName = 'Telefone1'
      FieldLength = 11
      DisplayWidth = 11
      Position = 112
    end
    object ppEmpresasppField114: TppField
      FieldAlias = 'Telefone2'
      FieldName = 'Telefone2'
      FieldLength = 11
      DisplayWidth = 11
      Position = 113
    end
    object ppEmpresasppField115: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 11
      DisplayWidth = 11
      Position = 114
    end
    object ppEmpresasppField116: TppField
      FieldAlias = 'Modulo_SISCOMEXWEB'
      FieldName = 'Modulo_SISCOMEXWEB'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 115
    end
    object ppEmpresasppField117: TppField
      FieldAlias = 'Modulo_ECommerce'
      FieldName = 'Modulo_ECommerce'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 116
    end
    object ppEmpresasppField118: TppField
      FieldAlias = 'Modulo_ManifestoDest'
      FieldName = 'Modulo_ManifestoDest'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 117
    end
    object ppEmpresasppField119: TppField
      FieldAlias = 'Manifesto_LayOut'
      FieldName = 'Manifesto_LayOut'
      FieldLength = 10
      DisplayWidth = 10
      Position = 118
    end
    object ppEmpresasppField120: TppField
      FieldAlias = 'UF_WebServiceManifesto'
      FieldName = 'UF_WebServiceManifesto'
      FieldLength = 10
      DisplayWidth = 10
      Position = 119
    end
    object ppEmpresasppField121: TppField
      FieldAlias = 'Modulo_Televendas'
      FieldName = 'Modulo_Televendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 120
    end
    object ppEmpresasppField122: TppField
      FieldAlias = 'Email_MsgOrcamento'
      FieldName = 'Email_MsgOrcamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 121
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField123: TppField
      FieldAlias = 'Email_MsgBoleto'
      FieldName = 'Email_MsgBoleto'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 122
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField124: TppField
      FieldAlias = 'PISCOFINS_F100'
      FieldName = 'PISCOFINS_F100'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 123
    end
    object ppEmpresasppField125: TppField
      FieldAlias = 'Logo'
      FieldName = 'Logo'
      FieldLength = 120
      DisplayWidth = 120
      Position = 124
    end
    object ppEmpresasppField126: TppField
      FieldAlias = 'Modulo_ConsultaProdutos'
      FieldName = 'Modulo_ConsultaProdutos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 125
    end
    object ppEmpresasppField127: TppField
      FieldAlias = 'Modulo_Contabil'
      FieldName = 'Modulo_Contabil'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 126
    end
    object ppEmpresasppField128: TppField
      FieldAlias = 'Modulo_EnviarArmazem'
      FieldName = 'Modulo_EnviarArmazem'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 127
    end
    object ppEmpresasppField129: TppField
      FieldAlias = 'Versao_DLL'
      FieldName = 'Versao_DLL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 128
    end
    object ppEmpresasppField130: TppField
      FieldAlias = 'Desativada'
      FieldName = 'Desativada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 129
    end
    object ppEmpresasppField131: TppField
      FieldAlias = 'Menu_Inventario'
      FieldName = 'Menu_Inventario'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 130
    end
    object ppEmpresasppField132: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_GNRE'
      FieldName = 'Ambiente_GNRE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 131
    end
    object ppEmpresasppField133: TppField
      FieldAlias = 'GNRE_Layout'
      FieldName = 'GNRE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 132
    end
    object ppEmpresasppField134: TppField
      FieldAlias = 'Modulo_GNRE'
      FieldName = 'Modulo_GNRE'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 133
    end
    object ppEmpresasppField135: TppField
      FieldAlias = 'Modulo_DadosDI'
      FieldName = 'Modulo_DadosDI'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 134
    end
    object ppEmpresasppField136: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Qualificacao'
      FieldName = 'Contador_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 135
    end
    object ppEmpresasppField137: TppField
      FieldAlias = 'Contador_CRCUF'
      FieldName = 'Contador_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 136
    end
    object ppEmpresasppField138: TppField
      FieldAlias = 'Contador_CRCData'
      FieldName = 'Contador_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 137
    end
    object ppEmpresasppField139: TppField
      FieldAlias = 'NIRE'
      FieldName = 'NIRE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 138
    end
    object ppEmpresasppField140: TppField
      FieldAlias = 'Fechamento_FinanceiroFinal'
      FieldName = 'Fechamento_FinanceiroFinal'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 139
    end
    object ppEmpresasppField141: TppField
      Alignment = taRightJustify
      FieldAlias = 'SPED_CTAPlanoRef'
      FieldName = 'SPED_CTAPlanoRef'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 140
    end
    object ppEmpresasppField142: TppField
      FieldAlias = 'Contador_CRCSequencial'
      FieldName = 'Contador_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 141
    end
    object ppEmpresasppField143: TppField
      FieldAlias = 'Refis'
      FieldName = 'Refis'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 142
    end
    object ppEmpresasppField144: TppField
      FieldAlias = 'Paes'
      FieldName = 'Paes'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 143
    end
    object ppEmpresasppField145: TppField
      Alignment = taRightJustify
      FieldAlias = 'Forma_Tributacao'
      FieldName = 'Forma_Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 144
    end
    object ppEmpresasppField146: TppField
      FieldAlias = 'Extincao_RTT'
      FieldName = 'Extincao_RTT'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 145
    end
    object ppEmpresasppField147: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtde_SCP'
      FieldName = 'Qtde_SCP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 146
    end
    object ppEmpresasppField148: TppField
      FieldAlias = 'Natureza_Juridica'
      FieldName = 'Natureza_Juridica'
      FieldLength = 10
      DisplayWidth = 10
      Position = 147
    end
    object ppEmpresasppField149: TppField
      FieldAlias = 'NIRE_Data'
      FieldName = 'NIRE_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 148
    end
    object ppEmpresasppField150: TppField
      FieldAlias = 'Representante_Bairro'
      FieldName = 'Representante_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 149
    end
    object ppEmpresasppField151: TppField
      FieldAlias = 'Representante_CEP'
      FieldName = 'Representante_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 150
    end
    object ppEmpresasppField152: TppField
      FieldAlias = 'Representante_CNPJ'
      FieldName = 'Representante_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 151
    end
    object ppEmpresasppField153: TppField
      FieldAlias = 'Representante_Complemento'
      FieldName = 'Representante_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 152
    end
    object ppEmpresasppField154: TppField
      FieldAlias = 'Representante_CPF'
      FieldName = 'Representante_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 153
    end
    object ppEmpresasppField155: TppField
      FieldAlias = 'Representante_CRC'
      FieldName = 'Representante_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 154
    end
    object ppEmpresasppField156: TppField
      FieldAlias = 'Representante_CRCData'
      FieldName = 'Representante_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 155
    end
    object ppEmpresasppField157: TppField
      FieldAlias = 'Representante_CRCSequencial'
      FieldName = 'Representante_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 156
    end
    object ppEmpresasppField158: TppField
      FieldAlias = 'Representante_CRCUF'
      FieldName = 'Representante_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 157
    end
    object ppEmpresasppField159: TppField
      FieldAlias = 'Representante_Email'
      FieldName = 'Representante_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 158
    end
    object ppEmpresasppField160: TppField
      FieldAlias = 'Representante_Estado'
      FieldName = 'Representante_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 159
    end
    object ppEmpresasppField161: TppField
      FieldAlias = 'Representante_FAX'
      FieldName = 'Representante_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 160
    end
    object ppEmpresasppField162: TppField
      FieldAlias = 'Representante_Nome'
      FieldName = 'Representante_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 161
    end
    object ppEmpresasppField163: TppField
      FieldAlias = 'Representante_Numero'
      FieldName = 'Representante_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 162
    end
    object ppEmpresasppField164: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Qualificacao'
      FieldName = 'Representante_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 163
    end
    object ppEmpresasppField165: TppField
      FieldAlias = 'Representante_Rua'
      FieldName = 'Representante_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 164
    end
    object ppEmpresasppField166: TppField
      FieldAlias = 'Representante_Telefone'
      FieldName = 'Representante_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 165
    end
    object ppEmpresasppField167: TppField
      FieldAlias = 'Contador_SignatarioResp'
      FieldName = 'Contador_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 166
    end
    object ppEmpresasppField168: TppField
      FieldAlias = 'Representante_SignatarioResp'
      FieldName = 'Representante_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 167
    end
    object ppEmpresasppField169: TppField
      FieldAlias = 'Autorizacao_NFECNPJ'
      FieldName = 'Autorizacao_NFECNPJ'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 168
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField170: TppField
      FieldAlias = 'Autorizacao_NFECPF'
      FieldName = 'Autorizacao_NFECPF'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 169
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField171: TppField
      Alignment = taRightJustify
      FieldAlias = 'Encerramento_Contabil'
      FieldName = 'Encerramento_Contabil'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 170
    end
    object ppEmpresasppField172: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Municipio'
      FieldName = 'Contador_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 171
    end
    object ppEmpresasppField173: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Municipio'
      FieldName = 'Representante_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 172
    end
    object ppEmpresasppField174: TppField
      FieldAlias = 'Classificacao_Tributaria'
      FieldName = 'Classificacao_Tributaria'
      FieldLength = 2
      DisplayWidth = 2
      Position = 173
    end
    object ppEmpresasppField175: TppField
      Alignment = taRightJustify
      FieldAlias = 'Obrigada_ECD'
      FieldName = 'Obrigada_ECD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 174
    end
    object ppEmpresasppField176: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desoneracao_Folha'
      FieldName = 'Desoneracao_Folha'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 175
    end
    object ppEmpresasppField177: TppField
      Alignment = taRightJustify
      FieldAlias = 'Isencao_Multa'
      FieldName = 'Isencao_Multa'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 176
    end
    object ppEmpresasppField178: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_REINF'
      FieldName = 'Ambiente_REINF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 177
    end
    object ppEmpresasppField179: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_Sequencia'
      FieldName = 'REINF_Sequencia'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 178
    end
    object ppEmpresasppField180: TppField
      FieldAlias = 'REINF_ModoLancamento'
      FieldName = 'REINF_ModoLancamento'
      FieldLength = 10
      DisplayWidth = 10
      Position = 179
    end
    object ppEmpresasppField181: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_ProcEmi'
      FieldName = 'REINF_ProcEmi'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 180
    end
    object ppEmpresasppField182: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_tpInsc'
      FieldName = 'REINF_tpInsc'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 181
    end
    object ppEmpresasppField183: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_indSitPJ'
      FieldName = 'REINF_indSitPJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 182
    end
    object ppEmpresasppField184: TppField
      FieldAlias = 'REINF_ideEFR'
      FieldName = 'REINF_ideEFR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 183
    end
    object ppEmpresasppField185: TppField
      FieldAlias = 'REINF_VerProc'
      FieldName = 'REINF_VerProc'
      FieldLength = 5
      DisplayWidth = 5
      Position = 184
    end
    object ppEmpresasppField186: TppField
      FieldAlias = 'REINF_iniValid'
      FieldName = 'REINF_iniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 185
    end
    object ppEmpresasppField187: TppField
      FieldAlias = 'REINF_fimValid'
      FieldName = 'REINF_fimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 186
    end
    object ppEmpresasppField188: TppField
      FieldAlias = 'REINF_AltiniValid'
      FieldName = 'REINF_AltiniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 187
    end
    object ppEmpresasppField189: TppField
      FieldAlias = 'REINF_AltfimValid'
      FieldName = 'REINF_AltfimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 188
    end
    object ppEmpresasppField190: TppField
      FieldAlias = 'Versao_REINF'
      FieldName = 'Versao_REINF'
      FieldLength = 10
      DisplayWidth = 10
      Position = 189
    end
    object ppEmpresasppField191: TppField
      FieldAlias = 'EmissaoNFE_Bloqueada'
      FieldName = 'EmissaoNFE_Bloqueada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 190
    end
    object ppEmpresasppField192: TppField
      FieldAlias = 'EmissaoNFE_BloqueadaUsuario'
      FieldName = 'EmissaoNFE_BloqueadaUsuario'
      FieldLength = 80
      DisplayWidth = 80
      Position = 191
    end
    object ppEmpresasppField193: TppField
      FieldAlias = 'MOdulo_Despacho'
      FieldName = 'MOdulo_Despacho'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 192
    end
    object ppEmpresasppField194: TppField
      Alignment = taRightJustify
      FieldAlias = 'Processo_Exp'
      FieldName = 'Processo_Exp'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 193
    end
    object ppEmpresasppField195: TppField
      Alignment = taRightJustify
      FieldAlias = 'PO'
      FieldName = 'PO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 194
    end
    object ppEmpresasppField196: TppField
      FieldAlias = 'PO_Automatico'
      FieldName = 'PO_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 195
    end
    object ppEmpresasppField197: TppField
      FieldAlias = 'Mascara_ProcessoExp'
      FieldName = 'Mascara_ProcessoExp'
      FieldLength = 7
      DisplayWidth = 7
      Position = 196
    end
    object ppEmpresasppField198: TppField
      FieldAlias = 'Mascara_PO'
      FieldName = 'Mascara_PO'
      FieldLength = 7
      DisplayWidth = 7
      Position = 197
    end
    object ppEmpresasppField199: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_CTe'
      FieldName = 'Ambiente_CTe'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 198
    end
    object ppEmpresasppField200: TppField
      FieldAlias = 'Transportadora'
      FieldName = 'Transportadora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 199
    end
    object ppEmpresasppField201: TppField
      FieldAlias = 'RNTRC'
      FieldName = 'RNTRC'
      FieldLength = 8
      DisplayWidth = 8
      Position = 200
    end
    object ppEmpresasppField202: TppField
      FieldAlias = 'Assinatura'
      FieldName = 'Assinatura'
      FieldLength = 120
      DisplayWidth = 120
      Position = 201
    end
    object ppEmpresasppField203: TppField
      FieldAlias = 'Classificacao_ContribIPI'
      FieldName = 'Classificacao_ContribIPI'
      FieldLength = 2
      DisplayWidth = 2
      Position = 202
    end
    object ppEmpresasppField204: TppField
      FieldAlias = 'Envio_Backup'
      FieldName = 'Envio_Backup'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 203
    end
    object ppEmpresasppField205: TppField
      FieldAlias = 'ECommerce_Data'
      FieldName = 'ECommerce_Data'
      FieldLength = 10
      DisplayWidth = 10
      Position = 204
    end
    object ppEmpresasppField206: TppField
      FieldAlias = 'Processo_AutomaticoExp'
      FieldName = 'Processo_AutomaticoExp'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 205
    end
    object ppEmpresasppField207: TppField
      FieldAlias = 'ECommerce_Hora'
      FieldName = 'ECommerce_Hora'
      FieldLength = 10
      DisplayWidth = 10
      Position = 206
    end
    object ppEmpresasppField208: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_Armazem'
      FieldName = 'Ambiente_Armazem'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 207
    end
    object ppEmpresasppField209: TppField
      FieldAlias = 'Lancamento_Contabil'
      FieldName = 'Lancamento_Contabil'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 208
    end
    object ppEmpresasppField210: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pedido_Nota'
      FieldName = 'Pedido_Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 209
    end
    object ppEmpresasppField211: TppField
      Alignment = taRightJustify
      FieldAlias = 'Layout_Estoque'
      FieldName = 'Layout_Estoque'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 210
    end
    object ppEmpresasppField212: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ultimo_NSU'
      FieldName = 'Ultimo_NSU'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 211
    end
    object ppEmpresasppField213: TppField
      FieldAlias = 'UF_WEBServiceEPEC'
      FieldName = 'UF_WEBServiceEPEC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 212
    end
    object ppEmpresasppField214: TppField
      FieldAlias = 'Licensa_CTE_Util'
      FieldName = 'Licensa_CTE_Util'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 213
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField215: TppField
      FieldAlias = 'UF_WebServiceCTe'
      FieldName = 'UF_WebServiceCTe'
      FieldLength = 10
      DisplayWidth = 10
      Position = 214
    end
    object ppEmpresasppField216: TppField
      FieldAlias = 'Email_Criptografia'
      FieldName = 'Email_Criptografia'
      FieldLength = 20
      DisplayWidth = 20
      Position = 215
    end
    object ppEmpresasppField217: TppField
      FieldAlias = 'Email_MsgFollowUp'
      FieldName = 'Email_MsgFollowUp'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 216
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField218: TppField
      FieldAlias = 'FCP_Interno'
      FieldName = 'FCP_Interno'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 217
    end
  end
  object tbNotas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * '
      
        '      ,Inf_Compl = concat(Inf_Complementares, Inf_Complementares' +
        '2)'
      'FROM NotasFiscais '
      'where Numero = 4324')
    FetchRows = 1
    AfterScroll = tbNotasAfterScroll
    DetailFields = 'Nota;Data'
    Left = 278
    Top = 366
    object tbNotasNumero: TIntegerField
      FieldName = 'Numero'
      Origin = 'NotasFiscais.Numero'
    end
    object tbNotasNatureza_Codigo: TStringField
      FieldName = 'Natureza_Codigo'
      Origin = 'NotasFiscais.Natureza_Codigo'
      Size = 4
    end
    object tbNotasPedido: TIntegerField
      FieldName = 'Pedido'
      Origin = 'NotasFiscais.Pedido'
    end
    object tbNotasSaida_Entrada: TSmallintField
      FieldName = 'Saida_Entrada'
      Origin = 'NotasFiscais.Saida_Entrada'
    end
    object tbNotasData_Emissao: TDateTimeField
      FieldName = 'Data_Emissao'
      Origin = 'NotasFiscais.Data_Emissao'
    end
    object tbNotasData_EntradaSaida: TDateTimeField
      FieldName = 'Data_EntradaSaida'
      Origin = 'NotasFiscais.Data_EntradaSaida'
    end
    object tbNotasHora_EntradaSaida: TStringField
      FieldName = 'Hora_EntradaSaida'
      Origin = 'NotasFiscais.Hora_EntradaSaida'
      FixedChar = True
      Size = 5
    end
    object tbNotasTipo_Nota: TSmallintField
      FieldName = 'Tipo_Nota'
      Origin = 'NotasFiscais.Tipo_Nota'
    end
    object tbNotasSerie: TStringField
      FieldName = 'Serie'
      Origin = 'NotasFiscais.Serie'
      FixedChar = True
      Size = 2
    end
    object tbNotasModelo: TStringField
      FieldName = 'Modelo'
      Origin = 'NotasFiscais.Modelo'
      FixedChar = True
      Size = 2
    end
    object tbNotasProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'NotasFiscais.Processo'
      Size = 15
    end
    object tbNotasFUNDAP: TBooleanField
      FieldName = 'FUNDAP'
      Origin = 'NotasFiscais.FUNDAP'
    end
    object tbNotasLucro: TFloatField
      FieldName = 'Lucro'
      Origin = 'NotasFiscais.Lucro'
    end
    object tbNotasDI: TStringField
      FieldName = 'DI'
      Origin = 'NotasFiscais.DI'
      Size = 15
    end
    object tbNotasData_DI: TDateTimeField
      FieldName = 'Data_DI'
      Origin = 'NotasFiscais.Data_DI'
    end
    object tbNotasInscricao_Substituto: TStringField
      FieldName = 'Inscricao_Substituto'
      Origin = 'NotasFiscais.Inscricao_Substituto'
      Size = 15
    end
    object tbNotasInf_Complementares: TMemoField
      FieldName = 'Inf_Complementares'
      Origin = 'NotasFiscais.Inf_Complementares'
      BlobType = ftMemo
    end
    object tbNotasCliente_Codigo: TIntegerField
      FieldName = 'Cliente_Codigo'
      Origin = 'NotasFiscais.Cliente_Codigo'
    end
    object tbNotasFornecedor_Codigo: TIntegerField
      FieldName = 'Fornecedor_Codigo'
      Origin = 'NotasFiscais.Fornecedor_Codigo'
    end
    object tbNotasEstado: TStringField
      FieldName = 'Estado'
      Origin = 'NotasFiscais.Estado'
      FixedChar = True
      Size = 2
    end
    object tbNotasTransportador_Codigo: TIntegerField
      FieldName = 'Transportador_Codigo'
      Origin = 'NotasFiscais.Transportador_Codigo'
    end
    object tbNotasModalidade_Frete: TSmallintField
      FieldName = 'Modalidade_Frete'
      Origin = 'NotasFiscais.Modalidade_Frete'
    end
    object tbNotasVolume_Quantidade: TFloatField
      FieldName = 'Volume_Quantidade'
      Origin = 'NotasFiscais.Volume_Quantidade'
    end
    object tbNotasVolume_Especie: TStringField
      FieldName = 'Volume_Especie'
      Origin = 'NotasFiscais.Volume_Especie'
    end
    object tbNotasVolume_Marca: TStringField
      FieldName = 'Volume_Marca'
      Origin = 'NotasFiscais.Volume_Marca'
    end
    object tbNotasVolume_Numero: TStringField
      FieldName = 'Volume_Numero'
      Origin = 'NotasFiscais.Volume_Numero'
    end
    object tbNotasVolume_PesoLiquido: TFloatField
      FieldName = 'Volume_PesoLiquido'
      Origin = 'NotasFiscais.Volume_PesoLiquido'
    end
    object tbNotasVolume_PesoBruto: TFloatField
      FieldName = 'Volume_PesoBruto'
      Origin = 'NotasFiscais.Volume_PesoBruto'
    end
    object tbNotasValor_PIS: TCurrencyField
      FieldName = 'Valor_PIS'
      Origin = 'NotasFiscais.Valor_PIS'
    end
    object tbNotasValor_COFINS: TCurrencyField
      FieldName = 'Valor_COFINS'
      Origin = 'NotasFiscais.Valor_COFINS'
    end
    object tbNotasAliquota_ICMSOper: TFloatField
      FieldName = 'Aliquota_ICMSOper'
      Origin = 'NotasFiscais.Aliquota_ICMSOper'
    end
    object tbNotasBCICMS: TCurrencyField
      FieldName = 'BCICMS'
      Origin = 'NotasFiscais.BCICMS'
    end
    object tbNotasValor_ICMS: TCurrencyField
      FieldName = 'Valor_ICMS'
      Origin = 'NotasFiscais.Valor_ICMS'
    end
    object tbNotasAliquota_ICMSSub: TFloatField
      FieldName = 'Aliquota_ICMSSub'
      Origin = 'NotasFiscais.Aliquota_ICMSSub'
    end
    object tbNotasBCICMS_Substitutivo: TCurrencyField
      FieldName = 'BCICMS_Substitutivo'
      Origin = 'NotasFiscais.BCICMS_Substitutivo'
    end
    object tbNotasValorICMS_Substitutivo: TCurrencyField
      FieldName = 'ValorICMS_Substitutivo'
      Origin = 'NotasFiscais.ValorICMS_Substitutivo'
    end
    object tbNotasValor_TotalProdutos: TCurrencyField
      FieldName = 'Valor_TotalProdutos'
      Origin = 'NotasFiscais.Valor_TotalProdutos'
    end
    object tbNotasTotal_Frete: TCurrencyField
      FieldName = 'Total_Frete'
      Origin = 'NotasFiscais.Total_Frete'
    end
    object tbNotasValor_Seguro: TCurrencyField
      FieldName = 'Valor_Seguro'
      Origin = 'NotasFiscais.Valor_Seguro'
    end
    object tbNotasValor_OutrasDespesas: TCurrencyField
      FieldName = 'Valor_OutrasDespesas'
      Origin = 'NotasFiscais.Valor_OutrasDespesas'
    end
    object tbNotasBCIPI: TCurrencyField
      FieldName = 'BCIPI'
      Origin = 'NotasFiscais.BCIPI'
    end
    object tbNotasValor_TotalIPI: TCurrencyField
      FieldName = 'Valor_TotalIPI'
      Origin = 'NotasFiscais.Valor_TotalIPI'
    end
    object tbNotasValor_TotalNota: TCurrencyField
      FieldName = 'Valor_TotalNota'
      Origin = 'NotasFiscais.Valor_TotalNota'
    end
    object tbNotasRateio_Despesas: TFloatField
      FieldName = 'Rateio_Despesas'
      Origin = 'NotasFiscais.Rateio_Despesas'
    end
    object tbNotasValor_TotalMVA: TCurrencyField
      FieldName = 'Valor_TotalMVA'
      Origin = 'NotasFiscais.Valor_TotalMVA'
    end
    object tbNotasValor_ICMSReducao: TCurrencyField
      FieldName = 'Valor_ICMSReducao'
      Origin = 'NotasFiscais.Valor_ICMSReducao'
    end
    object tbNotasValor_TotalII: TCurrencyField
      FieldName = 'Valor_TotalII'
      Origin = 'NotasFiscais.Valor_TotalII'
    end
    object tbNotasModalidade_Pgto: TSmallintField
      FieldName = 'Modalidade_Pgto'
      Origin = 'NotasFiscais.Modalidade_Pgto'
    end
    object tbNotasDesconto_Percentual: TFloatField
      FieldName = 'Desconto_Percentual'
      Origin = 'NotasFiscais.Desconto_Percentual'
    end
    object tbNotasDesconto_Tipo: TStringField
      FieldName = 'Desconto_Tipo'
      Origin = 'NotasFiscais.Desconto_Tipo'
      Size = 30
    end
    object tbNotasTotal_Descontos: TCurrencyField
      FieldName = 'Total_Descontos'
      Origin = 'NotasFiscais.Total_Descontos'
    end
    object tbNotasCancelada: TBooleanField
      FieldName = 'Cancelada'
      Origin = 'NotasFiscais.Cancelada'
    end
    object tbNotasMotivo_Cancelamento: TStringField
      FieldName = 'Motivo_Cancelamento'
      Origin = 'NotasFiscais.Motivo_Cancelamento'
      Size = 60
    end
    object tbNotasComplementar: TBooleanField
      FieldName = 'Complementar'
      Origin = 'NotasFiscais.Complementar'
    end
    object tbNotasDevolucao: TBooleanField
      FieldName = 'Devolucao'
      Origin = 'NotasFiscais.Devolucao'
    end
    object tbNotasAjuste: TBooleanField
      FieldName = 'Ajuste'
      Origin = 'NotasFiscais.Ajuste'
    end
    object tbNotasNota_Referencia: TSmallintField
      FieldName = 'Nota_Referencia'
      Origin = 'NotasFiscais.Nota_Referencia'
    end
    object tbNotasData_Referencia: TDateTimeField
      FieldName = 'Data_Referencia'
      Origin = 'NotasFiscais.Data_Referencia'
    end
    object tbNotasNFe_cNF: TStringField
      FieldName = 'NFe_cNF'
      Origin = 'NotasFiscais.NFe_cNF'
      Size = 50
    end
    object tbNotasNfe_cNFRef: TStringField
      FieldName = 'Nfe_cNFRef'
      Origin = 'NotasFiscais.Nfe_cNFRef'
      Size = 50
    end
    object tbNotasNFe_Lote: TFloatField
      FieldName = 'NFe_Lote'
      Origin = 'NotasFiscais.NFe_Lote'
    end
    object tbNotasNFe_Recibo: TStringField
      FieldName = 'NFe_Recibo'
      Origin = 'NotasFiscais.NFe_Recibo'
      Size = 15
    end
    object tbNotasNfe_DataRecibo: TDateTimeField
      FieldName = 'Nfe_DataRecibo'
      Origin = 'NotasFiscais.Nfe_DataRecibo'
    end
    object tbNotasNFe_Protocolo: TStringField
      FieldName = 'NFe_Protocolo'
      Origin = 'NotasFiscais.NFe_Protocolo'
      FixedChar = True
      Size = 15
    end
    object tbNotasNFe_DataProtocolo: TDateTimeField
      FieldName = 'NFe_DataProtocolo'
      Origin = 'NotasFiscais.NFe_DataProtocolo'
    end
    object tbNotasNfe_Denegada: TBooleanField
      FieldName = 'Nfe_Denegada'
      Origin = 'NotasFiscais.Nfe_Denegada'
    end
    object tbNotasImprimir_DANFE: TBooleanField
      FieldName = 'Imprimir_DANFE'
      Origin = 'NotasFiscais.Imprimir_DANFE'
    end
    object tbNotasDPEC: TBooleanField
      FieldName = 'DPEC'
      Origin = 'NotasFiscais.DPEC'
    end
    object tbNotasOperacao_Veiculo: TStringField
      FieldName = 'Operacao_Veiculo'
      Origin = 'NotasFiscais.Operacao_Veiculo'
      FixedChar = True
      Size = 1
    end
    object tbNotasTransporte_Placa: TStringField
      FieldName = 'Transporte_Placa'
      Origin = 'NotasFiscais.Transporte_Placa'
      FixedChar = True
      Size = 10
    end
    object tbNotasTransporte_PlacaUF: TStringField
      FieldName = 'Transporte_PlacaUF'
      Origin = 'NotasFiscais.Transporte_PlacaUF'
      FixedChar = True
      Size = 2
    end
    object tbNotasTransporte_RGMotorista: TStringField
      FieldName = 'Transporte_RGMotorista'
      Origin = 'NotasFiscais.Transporte_RGMotorista'
    end
    object tbNotasTransporte_CodigoANTT: TStringField
      FieldName = 'Transporte_CodigoANTT'
      Origin = 'NotasFiscais.Transporte_CodigoANTT'
      FixedChar = True
      Size = 15
    end
    object tbNotasTransporte_NomeMotorista: TStringField
      FieldName = 'Transporte_NomeMotorista'
      Origin = 'NotasFiscais.Transporte_NomeMotorista'
      Size = 40
    end
    object tbNotasLucro_Valor: TCurrencyField
      FieldName = 'Lucro_Valor'
      Origin = 'NotasFiscais.Lucro_Valor'
    end
    object tbNotasTaxa_Cambio: TFloatField
      FieldName = 'Taxa_Cambio'
      Origin = 'NotasFiscais.Taxa_Cambio'
    end
    object tbNotasValor_IsentasICMS: TCurrencyField
      FieldName = 'Valor_IsentasICMS'
      Origin = 'NotasFiscais.Valor_IsentasICMS'
    end
    object tbNotasValor_OutrasICMS: TCurrencyField
      FieldName = 'Valor_OutrasICMS'
      Origin = 'NotasFiscais.Valor_OutrasICMS'
    end
    object tbNotasValor_IsentasIPI: TCurrencyField
      FieldName = 'Valor_IsentasIPI'
      Origin = 'NotasFiscais.Valor_IsentasIPI'
    end
    object tbNotasValor_OutrasIPI: TCurrencyField
      FieldName = 'Valor_OutrasIPI'
      Origin = 'NotasFiscais.Valor_OutrasIPI'
    end
    object tbNotasIncentivo_Fiscal: TStringField
      FieldName = 'Incentivo_Fiscal'
      Origin = 'NotasFiscais.Incentivo_Fiscal'
      Size = 15
    end
    object tbNotasDPEC_Protocolo: TStringField
      FieldName = 'DPEC_Protocolo'
      Origin = 'NotasFiscais.DPEC_Protocolo'
      Size = 15
    end
    object tbNotasDPEC_DataProtocolo: TDateTimeField
      FieldName = 'DPEC_DataProtocolo'
      Origin = 'NotasFiscais.DPEC_DataProtocolo'
    end
    object tbNotasRepresentante: TSmallintField
      FieldName = 'Representante'
      Origin = 'NotasFiscais.Representante'
    end
    object tbNotasRepresentante_Comissao: TFloatField
      FieldName = 'Representante_Comissao'
      Origin = 'NotasFiscais.Representante_Comissao'
    end
    object tbNotasImportacao: TBooleanField
      FieldName = 'Importacao'
      Origin = 'NotasFiscais.Importacao'
    end
    object tbNotasData_Cancelamento: TDateTimeField
      FieldName = 'Data_Cancelamento'
      Origin = 'NotasFiscais.Data_Cancelamento'
    end
    object tbNotasProtocolo_Cancelamento: TStringField
      FieldName = 'Protocolo_Cancelamento'
      Origin = 'NotasFiscais.Protocolo_Cancelamento'
      Size = 15
    end
    object tbNotasCalcula_Volumes: TBooleanField
      FieldName = 'Calcula_Volumes'
      Origin = 'NotasFiscais.Calcula_Volumes'
    end
    object tbNotasValor_BCMVA: TFloatField
      FieldName = 'Valor_BCMVA'
      Origin = 'NotasFiscais.Valor_BCMVA'
    end
    object tbNotasDestinatario_CNPJ_CPF: TStringField
      FieldName = 'Destinatario_CNPJ_CPF'
      Origin = 'NotasFiscais.Destinatario_CNPJ_CPF'
      Size = 14
    end
    object tbNotasDestinatario_Nome: TStringField
      FieldName = 'Destinatario_Nome'
      Origin = 'NotasFiscais.Destinatario_Nome'
      Size = 60
    end
    object tbNotasDestinatario_Rua: TStringField
      FieldName = 'Destinatario_Rua'
      Origin = 'NotasFiscais.Destinatario_Rua'
      Size = 40
    end
    object tbNotasDestinatario_RuaNumero: TStringField
      FieldName = 'Destinatario_RuaNumero'
      Origin = 'NotasFiscais.Destinatario_RuaNumero'
      Size = 10
    end
    object tbNotasDestinatario_Bairro: TStringField
      FieldName = 'Destinatario_Bairro'
      Origin = 'NotasFiscais.Destinatario_Bairro'
      Size = 40
    end
    object tbNotasDestinatario_Municipio: TFloatField
      FieldName = 'Destinatario_Municipio'
      Origin = 'NotasFiscais.Destinatario_Municipio'
    end
    object tbNotasDestinatario_Estado: TStringField
      FieldName = 'Destinatario_Estado'
      Origin = 'NotasFiscais.Destinatario_Estado'
      Size = 2
    end
    object tbNotasDestinatario_CEP: TStringField
      FieldName = 'Destinatario_CEP'
      Origin = 'NotasFiscais.Destinatario_CEP'
      Size = 8
    end
    object tbNotasDestinatario_Telefone1: TStringField
      FieldName = 'Destinatario_Telefone1'
      Origin = 'NotasFiscais.Destinatario_Telefone1'
      Size = 15
    end
    object tbNotasDestinatario_IE: TStringField
      FieldName = 'Destinatario_IE'
      Origin = 'NotasFiscais.Destinatario_IE'
      Size = 18
    end
    object tbNotasDestinatario_Complemento: TStringField
      FieldName = 'Destinatario_Complemento'
      Origin = 'NotasFiscais.Destinatario_Complemento'
    end
    object tbNotasDestinatario_Juridica: TBooleanField
      FieldName = 'Destinatario_Juridica'
      Origin = 'NotasFiscais.Destinatario_Juridica'
    end
    object tbNotasValor_DUMPING: TCurrencyField
      FieldName = 'Valor_DUMPING'
      Origin = 'NotasFiscais.Valor_DUMPING'
    end
    object tbNotasPedido_Nota: TIntegerField
      FieldName = 'Pedido_Nota'
      Origin = 'NotasFiscais.Pedido_Nota'
    end
    object tbNotasReducao_ICMSOper: TFloatField
      FieldName = 'Reducao_ICMSOper'
      Origin = 'NotasFiscais.Reducao_ICMSOper'
    end
    object tbNotasApuracao_PISCOFINS: TBooleanField
      FieldName = 'Apuracao_PISCOFINS'
      Origin = 'NotasFiscais.Apuracao_PISCOFINS'
    end
    object tbNotasInf_Complementares2: TMemoField
      FieldName = 'Inf_Complementares2'
      Origin = 'NotasFiscais.Inf_Complementares2'
      BlobType = ftMemo
    end
    object tbNotasDestinatario_Pais: TStringField
      FieldName = 'Destinatario_Pais'
      Origin = 'NotasFiscais.Destinatario_Pais'
      Size = 4
    end
    object tbNotasDestinatario_MunicipioNome: TStringField
      FieldName = 'Destinatario_MunicipioNome'
      Origin = 'NotasFiscais.Destinatario_MunicipioNome'
      Size = 40
    end
    object tbNotasBCICMS_Apuracao: TCurrencyField
      FieldName = 'BCICMS_Apuracao'
      Origin = 'NotasFiscais.BCICMS_Apuracao'
    end
    object tbNotasValor_ICMSApuracao: TCurrencyField
      FieldName = 'Valor_ICMSApuracao'
      Origin = 'NotasFiscais.Valor_ICMSApuracao'
    end
    object tbNotasMedia_BCR: TCurrencyField
      FieldName = 'Media_BCR'
      Origin = 'NotasFiscais.Media_BCR'
    end
    object tbNotasValor_PIS2: TFloatField
      FieldName = 'Valor_PIS2'
      Origin = 'NotasFiscais.Valor_PIS2'
    end
    object tbNotasValor_COFINS2: TFloatField
      FieldName = 'Valor_COFINS2'
      Origin = 'NotasFiscais.Valor_COFINS2'
    end
    object tbNotasBaixa_Estoque: TBooleanField
      FieldName = 'Baixa_Estoque'
      Origin = 'NotasFiscais.Baixa_Estoque'
    end
    object tbNotasValor_DespesasOutros: TCurrencyField
      FieldName = 'Valor_DespesasOutros'
      Origin = 'NotasFiscais.Valor_DespesasOutros'
    end
    object tbNotasICMS_Destacar: TBooleanField
      FieldName = 'ICMS_Destacar'
      Origin = 'NotasFiscais.ICMS_Destacar'
    end
    object tbNotasValor_BCPIS: TCurrencyField
      FieldName = 'Valor_BCPIS'
      Origin = 'NotasFiscais.Valor_BCPIS'
    end
    object tbNotasTotal_Impostos: TCurrencyField
      FieldName = 'Total_Impostos'
      Origin = 'NotasFiscais.Total_Impostos'
    end
    object tbNotasAliquota_IRPJ: TFloatField
      FieldName = 'Aliquota_IRPJ'
      Origin = 'NotasFiscais.Aliquota_IRPJ'
    end
    object tbNotasValor_IRPJ: TCurrencyField
      FieldName = 'Valor_IRPJ'
      Origin = 'NotasFiscais.Valor_IRPJ'
    end
    object tbNotasAliquota_CSLL: TFloatField
      FieldName = 'Aliquota_CSLL'
      Origin = 'NotasFiscais.Aliquota_CSLL'
    end
    object tbNotasValor_CSLL: TCurrencyField
      FieldName = 'Valor_CSLL'
      Origin = 'NotasFiscais.Valor_CSLL'
    end
    object tbNotasComissao: TFloatField
      FieldName = 'Comissao'
      Origin = 'NotasFiscais.Comissao'
    end
    object tbNotasComissao_Valor: TCurrencyField
      FieldName = 'Comissao_Valor'
      Origin = 'NotasFiscais.Comissao_Valor'
    end
    object tbNotasPedido_Representante: TStringField
      FieldName = 'Pedido_Representante'
      Origin = 'NotasFiscais.Pedido_Representante'
      Size = 10
    end
    object tbNotasManifesto_Protocolo: TStringField
      FieldName = 'Manifesto_Protocolo'
      Origin = 'NotasFiscais.Manifesto_Protocolo'
      FixedChar = True
      Size = 15
    end
    object tbNotasManifesto_DataProtocolo: TDateTimeField
      FieldName = 'Manifesto_DataProtocolo'
      Origin = 'NotasFiscais.Manifesto_DataProtocolo'
    end
    object tbNotasManifesto_Motivo: TSmallintField
      FieldName = 'Manifesto_Motivo'
      Origin = 'NotasFiscais.Manifesto_Motivo'
    end
    object tbNotasManifesto_Justificativa: TMemoField
      FieldName = 'Manifesto_Justificativa'
      Origin = 'NotasFiscais.Manifesto_Justificativa'
      BlobType = ftMemo
    end
    object tbNotasNatureza_Correcao: TStringField
      FieldName = 'Natureza_Correcao'
      Origin = 'NotasFiscais.Natureza_Correcao'
      Size = 4
    end
    object tbNotasAtendente: TSmallintField
      FieldName = 'Atendente'
      Origin = 'NotasFiscais.Atendente'
    end
    object tbNotasAtendente_Comissao: TFloatField
      FieldName = 'Atendente_Comissao'
      Origin = 'NotasFiscais.Atendente_Comissao'
    end
    object tbNotasValor_Inventario: TFloatField
      FieldName = 'Valor_Inventario'
      Origin = 'NotasFiscais.Valor_Inventario'
    end
    object tbNotasIndicador_Presenca: TSmallintField
      FieldName = 'Indicador_Presenca'
      Origin = 'NotasFiscais.Indicador_Presenca'
    end
    object tbNotasVeiculo_Restricao: TStringField
      FieldName = 'Veiculo_Restricao'
      Origin = 'NotasFiscais.Veiculo_Restricao'
      Size = 1
    end
    object tbNotasRatear_Despesa: TBooleanField
      FieldName = 'Ratear_Despesa'
      Origin = 'NotasFiscais.Ratear_Despesa'
    end
    object tbNotasNFE_Estorno: TBooleanField
      FieldName = 'NFE_Estorno'
      Origin = 'NotasFiscais.NFE_Estorno'
    end
    object tbNotasRepresentante_ComissaoGer: TFloatField
      FieldName = 'Representante_ComissaoGer'
      Origin = 'NotasFiscais.Representante_ComissaoGer'
    end
    object tbNotasVendedor: TStringField
      FieldName = 'Vendedor'
      Origin = 'NotasFiscais.Vendedor'
      Size = 50
    end
    object tbNotasValor_BCICMSDest: TCurrencyField
      FieldName = 'Valor_BCICMSDest'
      Origin = 'NotasFiscais.Valor_BCICMSDest'
    end
    object tbNotasValor_ICMSDest: TCurrencyField
      FieldName = 'Valor_ICMSDest'
      Origin = 'NotasFiscais.Valor_ICMSDest'
    end
    object tbNotasDIFAL_Valor: TCurrencyField
      FieldName = 'DIFAL_Valor'
      Origin = 'NotasFiscais.DIFAL_Valor'
    end
    object tbNotasDIFAL_ValorOrig: TCurrencyField
      FieldName = 'DIFAL_ValorOrig'
      Origin = 'NotasFiscais.DIFAL_ValorOrig'
    end
    object tbNotasDIFAL_ValorDest: TCurrencyField
      FieldName = 'DIFAL_ValorDest'
      Origin = 'NotasFiscais.DIFAL_ValorDest'
    end
    object tbNotasFCP_ValorDest: TCurrencyField
      FieldName = 'FCP_ValorDest'
      Origin = 'NotasFiscais.FCP_ValorDest'
    end
    object tbNotasFCP_ICMSDest: TCurrencyField
      FieldName = 'FCP_ICMSDest'
      Origin = 'NotasFiscais.FCP_ICMSDest'
    end
    object tbNotasFCP_ICMSORIG: TCurrencyField
      FieldName = 'FCP_ICMSORIG'
      Origin = 'NotasFiscais.FCP_ICMSORIG'
    end
    object tbNotasDIFAL_AliqInterna: TFloatField
      FieldName = 'DIFAL_AliqInterna'
      Origin = 'NotasFiscais.DIFAL_AliqInterna'
    end
    object tbNotasValor_BCFCPST: TCurrencyField
      FieldName = 'Valor_BCFCPST'
      Origin = 'NotasFiscais.Valor_BCFCPST'
    end
    object tbNotasValor_FCPST: TCurrencyField
      FieldName = 'Valor_FCPST'
      Origin = 'NotasFiscais.Valor_FCPST'
    end
    object tbNotasAliquota_FCPST: TFloatField
      FieldName = 'Aliquota_FCPST'
      Origin = 'NotasFiscais.Aliquota_FCPST'
    end
    object tbNotasValor_BCFCP: TCurrencyField
      FieldName = 'Valor_BCFCP'
      Origin = 'NotasFiscais.Valor_BCFCP'
    end
    object tbNotasAliquota_FCP: TFloatField
      FieldName = 'Aliquota_FCP'
      Origin = 'NotasFiscais.Aliquota_FCP'
    end
    object tbNotasValor_FCP: TCurrencyField
      FieldName = 'Valor_FCP'
      Origin = 'NotasFiscais.Valor_FCP'
    end
    object tbNotasTipo_Pagamento: TSmallintField
      FieldName = 'Tipo_Pagamento'
      Origin = 'NotasFiscais.Tipo_Pagamento'
    end
    object tbNotasForma_Pagamento: TSmallintField
      FieldName = 'Forma_Pagamento'
      Origin = 'NotasFiscais.Forma_Pagamento'
    end
    object tbNotasValor_ICMSDesonerado: TCurrencyField
      FieldName = 'Valor_ICMSDesonerado'
      Origin = 'NotasFiscais.Valor_ICMSDesonerado'
    end
    object tbNotasLote: TStringField
      FieldName = 'Lote'
      Origin = 'NotasFiscais.Lote'
      Size = 15
    end
    object tbNotasReboque_Placa: TStringField
      FieldName = 'Reboque_Placa'
      Origin = 'NotasFiscais.Reboque_Placa'
      FixedChar = True
      Size = 10
    end
    object tbNotasReboque_UF: TStringField
      FieldName = 'Reboque_UF'
      Origin = 'NotasFiscais.Reboque_UF'
      FixedChar = True
      Size = 2
    end
    object tbNotasReboque_ANTT: TStringField
      FieldName = 'Reboque_ANTT'
      Origin = 'NotasFiscais.Reboque_ANTT'
      FixedChar = True
      Size = 15
    end
    object tbNotasEntrega_Retirada: TStringField
      FieldName = 'Entrega_Retirada'
      Origin = 'NotasFiscais.Entrega_Retirada'
      FixedChar = True
      Size = 1
    end
    object tbNotasValor_CIF: TCurrencyField
      FieldName = 'Valor_CIF'
      Origin = 'NotasFiscais.Valor_CIF'
    end
    object tbNotasCTE: TBooleanField
      FieldName = 'CTE'
      Origin = 'NotasFiscais.CTE'
    end
    object tbNotasTipo_Processo: TStringField
      FieldName = 'Tipo_Processo'
      Origin = 'NotasFiscais.Tipo_Processo'
      FixedChar = True
      Size = 1
    end
    object tbNotasValor_AFRMM: TCurrencyField
      FieldName = 'Valor_AFRMM'
      Origin = 'NotasFiscais.Valor_AFRMM'
    end
    object tbNotasIndicador_Intermediario: TSmallintField
      FieldName = 'Indicador_Intermediario'
    end
    object tbNotasDescricao_Forma: TStringField
      FieldName = 'Descricao_Forma'
      Size = 60
    end
    object tbNotasIntermediador: TSmallintField
      FieldName = 'Intermediador'
    end
    object tbNotasEnvio_Armazem: TBooleanField
      FieldName = 'Envio_Armazem'
    end
    object tbNotasCancelada_ForaPrazo: TBooleanField
      FieldName = 'Cancelada_ForaPrazo'
    end
    object tbNotasValor_BCDIFAL: TCurrencyField
      FieldName = 'Valor_BCDIFAL'
    end
    object tbNotasValor_ICMSDif: TCurrencyField
      FieldName = 'Valor_ICMSDif'
    end
    object tbNotasValor_ICMSMono: TCurrencyField
      FieldName = 'Valor_ICMSMono'
    end
    object tbNotasValor_ICMSMonoRet: TCurrencyField
      FieldName = 'Valor_ICMSMonoRet'
    end
    object tbNotasValor_BCICMSMono: TCurrencyField
      FieldName = 'Valor_BCICMSMono'
    end
    object tbNotasValor_BCICMSMonoRet: TCurrencyField
      FieldName = 'Valor_BCICMSMonoRet'
    end
    object tbNotasInf_Compl: TMemoField
      FieldName = 'Inf_Compl'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object dsNotas: TDataSource
    DataSet = tbNotas
    Left = 278
    Top = 422
  end
  object ppNatureza: TppDBPipeline
    DataSource = Dados.dsNatureza
    CloseDataSource = True
    UserName = 'Natureza'
    Left = 596
    Top = 6
    MasterDataPipelineName = 'ppNotas'
    object ppNaturezappField1: TppField
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 4
      DisplayWidth = 5
      Position = 0
    end
    object ppNaturezappField2: TppField
      FieldAlias = 'Ativo'
      FieldName = 'Ativo'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 1
    end
    object ppNaturezappField3: TppField
      FieldAlias = 'Descricao_NF'
      FieldName = 'Descricao_NF'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppNaturezappField4: TppField
      FieldAlias = 'Observacao'
      FieldName = 'Observacao'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppNaturezappField5: TppField
      FieldAlias = 'Codigo'
      FieldName = 'Codigo_Devolucao'
      FieldLength = 4
      DisplayWidth = 5
      Position = 4
    end
    object ppNaturezappField6: TppField
      FieldAlias = 'Servico'
      FieldName = 'Servico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 5
    end
    object ppNaturezappField7: TppField
      FieldAlias = 'Imobilizado'
      FieldName = 'Imobilizado'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 6
    end
    object ppNaturezappField8: TppField
      FieldAlias = 'Diferencial_ICMS'
      FieldName = 'Diferencial_ICMS'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 7
    end
    object ppNaturezappField9: TppField
      FieldAlias = 'Apuracao_PISCOFINS'
      FieldName = 'Apuracao_PISCOFINS'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 8
    end
    object ppNaturezappField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Prazo_Retorno'
      FieldName = 'Prazo_Retorno'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppNaturezappField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Saida_Entrada'
      FieldName = 'Saida_Entrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppNaturezappField12: TppField
      FieldAlias = 'Codigo_Estorno'
      FieldName = 'Codigo_Estorno'
      FieldLength = 4
      DisplayWidth = 4
      Position = 11
    end
    object ppNaturezappMasterFieldLink1: TppMasterFieldLink
      MasterFieldName = 'Natureza_Codigo'
      GuidCollationType = gcString
      DetailFieldName = 'Codigo'
      DetailSortOrder = soAscending
      IgnoreTrailingSpaces = False
    end
  end
  object tBeneficiario: TMSQuery
    SQLRefresh.Strings = (
      'SELECT Fornecedores.Nome, Fornecedores.CNPJ FROM Fornecedores'
      'WHERE Fornecedores.Nome = :Nome ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT CAST(Codigo AS VARCHAR(10)) AS Codigo, '
      '       Codigo AS Codigo_Fornecedor,'
      '       0 AS Codigo_Cliente,'
      '       CAST('#39#39' AS VARCHAR(10)) AS Codigo_Orgao,'
      '       Nome,'
      '       CNPJ,'
      '       '#39'F'#39' AS Tipo'
      'FROM Fornecedores'
      'UNION ALL'
      'SELECT CAST(Codigo AS VARCHAR(10)), '
      '       0,'
      '       Codigo,'
      '       '#39#39','
      '       Nome,'
      '       CNPJ,'
      '       '#39'C'#39
      'FROM CLIENTES'
      'UNION ALL'
      'SELECT Codigo,'
      '       0,'
      '       0, '
      '       Codigo,'
      '       Nome,'
      '       '#39#39','
      '       '#39'F'#39
      'FROM Cybersoft_Cadastros.dbo.OrgaosPublicos'
      'ORDER BY Nome')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Filtered = True
    Left = 405
    Top = 366
    object tBeneficiarioCodigo: TStringField
      FieldName = 'Codigo'
      Origin = '.'
      ReadOnly = True
      Size = 10
    end
    object tBeneficiarioCodigo_Fornecedor: TIntegerField
      FieldName = 'Codigo_Fornecedor'
      Origin = '.'
      ReadOnly = True
    end
    object tBeneficiarioCodigo_Cliente: TIntegerField
      FieldName = 'Codigo_Cliente'
      Origin = '.'
      ReadOnly = True
    end
    object tBeneficiarioCodigo_Orgao: TStringField
      FieldName = 'Codigo_Orgao'
      Origin = '.'
      ReadOnly = True
      Size = 10
    end
    object tBeneficiarioNome: TStringField
      FieldName = 'Nome'
      Origin = '.'
      ReadOnly = True
      Size = 60
    end
    object tBeneficiarioCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = '.'
      ReadOnly = True
      Size = 14
    end
    object tBeneficiarioTipo: TStringField
      FieldName = 'Tipo'
      Origin = '.'
      ReadOnly = True
      Size = 1
    end
  end
  object dstBeneficiario: TDataSource
    DataSet = tBeneficiario
    Left = 403
    Top = 422
  end
  object tTemp: TMSQuery
    SQLRefresh.Strings = (
      'SELECT Fornecedores.Nome, Fornecedores.CNPJ FROM Fornecedores'
      'WHERE Fornecedores.Nome = :Nome ')
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Filtered = True
    Left = 481
    Top = 366
  end
  object tNavios: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    DetailFields = 'Nota;Data'
    Left = 342
    Top = 481
  end
end
