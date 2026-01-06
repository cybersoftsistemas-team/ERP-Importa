object Fiscal_GNRE: TFiscal_GNRE
  Left = 406
  Top = 245
  BorderStyle = bsDialog
  Caption = 'Fiscal_GNRE'
  ClientHeight = 489
  ClientWidth = 1143
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
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 1143
    Height = 49
    Align = alTop
    Stretch = True
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 49
    Height = 21
    Caption = 'FISCAL'
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
    Width = 37
    Height = 18
    Caption = 'GNRE'
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
  object lAmbiente: TRxLabel
    Left = 80
    Top = 22
    Width = 187
    Height = 18
    Caption = '(Ambiente - HOMOLOGA'#199#195'O)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ShadowColor = 4194304
    ShadowPos = spRightBottom
    Transparent = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 459
    Width = 1143
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      1143
      30)
    object bSair: TButton
      Left = 1067
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
      Width = 184
      Height = 29
      Cursor = crHandPoint
      DataSource = dmFiscal.dsGNRE
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
    object bSelTodos: TButton
      Left = 185
      Top = 1
      Width = 100
      Height = 29
      Caption = '&Selecionar Todos'
      TabOrder = 2
      OnClick = bSelTodosClick
    end
    object bDesTodos: TButton
      Left = 285
      Top = 1
      Width = 100
      Height = 29
      Caption = '&Desmarcar Todos'
      TabOrder = 3
      OnClick = bDesTodosClick
    end
    object bEnviar: TButton
      Left = 385
      Top = 1
      Width = 80
      Height = 29
      Caption = '&Enviar GNRE'
      TabOrder = 4
      OnClick = bEnviarClick
    end
    object bConsultar: TButton
      Left = 465
      Top = 1
      Width = 94
      Height = 29
      Caption = '&Consultar GNRE'
      TabOrder = 5
      OnClick = bConsultarClick
    end
    object bImprimir: TButton
      Left = 559
      Top = 1
      Width = 58
      Height = 29
      Caption = '&Imprimir'
      TabOrder = 6
      OnClick = bImprimirClick
    end
  end
  object PageControl1: TPageControl
    Left = 244
    Top = 122
    Width = 881
    Height = 322
    ActivePage = TabSheet2
    TabHeight = 24
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Pend'#234'ntes'
      DesignSize = (
        873
        288)
      object Grade: TDBGrid
        Left = 1
        Top = -1
        Width = 871
        Height = 287
        Anchors = [akLeft, akTop, akBottom]
        DataSource = dmFiscal.dsGNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = GradeCellClick
        OnDrawColumnCell = GradeDrawColumnCell
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Selecao'
            Title.Alignment = taCenter
            Title.Caption = 'Sel'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 24
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Nota'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Data_Nota'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'UF_Favorecido'
            Title.Alignment = taCenter
            Title.Caption = 'UF'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Destinatario_RazaoSocial'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 278
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Codigo_Receita'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Rec.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 89
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Data_Vencimento'
            Title.Alignment = taCenter
            Title.Caption = 'Vento.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Protocolo_Numero'
            Title.Alignment = taCenter
            Title.Caption = 'Protocolo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Protocolo_Data'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Autorizadas'
      ImageIndex = 1
      DesignSize = (
        873
        288)
      object Grade2: TDBGrid
        Left = 1
        Top = 0
        Width = 871
        Height = 287
        Anchors = [akLeft, akTop, akBottom]
        Color = 16772033
        DataSource = dsGNREEnv
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = Grade2CellClick
        OnDrawColumnCell = Grade2DrawColumnCell
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Selecao'
            Title.Alignment = taCenter
            Title.Caption = 'Sel'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 24
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Nota'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Data_Nota'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'UF_Favorecido'
            Title.Alignment = taCenter
            Title.Caption = 'UF'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 22
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Destinatario_RazaoSocial'
            Title.Alignment = taCenter
            Title.Caption = 'Cliente'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 278
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Codigo_Receita'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Rec.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 89
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Data_Vencimento'
            Title.Alignment = taCenter
            Title.Caption = 'Vento.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Protocolo_Numero'
            Title.Alignment = taCenter
            Title.Caption = 'Protocolo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Protocolo_Data'
            Title.Alignment = taCenter
            Title.Caption = 'Data'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Enviando...'
      ImageIndex = 2
      DesignSize = (
        873
        288)
      object cMensagens: TMemo
        Left = 136
        Top = 1
        Width = 736
        Height = 287
        Anchors = [akLeft, akTop, akBottom]
        BevelOuter = bvRaised
        Color = 16768667
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        WantReturns = False
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 135
        Height = 289
        Anchors = [akLeft, akTop, akBottom]
        BevelOuter = bvLowered
        BorderStyle = bsSingle
        TabOrder = 1
        object lTempo: TLabel
          Left = 37
          Top = 180
          Width = 63
          Height = 13
          AutoSize = False
          Caption = 'Aguardando:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          Visible = False
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Pend'#234'ncias'
      ImageIndex = 3
      DesignSize = (
        873
        288)
      object cPendencias: TMemo
        Left = 0
        Top = 1
        Width = 872
        Height = 287
        Anchors = [akLeft, akTop, akBottom]
        BevelOuter = bvRaised
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Pitch = fpFixed
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        WantReturns = False
      end
    end
  end
  object cDataVenc: TDateEdit
    Left = 355
    Top = 66
    Width = 110
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
    TabOrder = 2
  end
  object StaticText2: TStaticText
    Left = 246
    Top = 66
    Width = 107
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Data de Vencimento'
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
  object cDataPag: TDateEdit
    Left = 355
    Top = 89
    Width = 110
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
    TabOrder = 4
  end
  object StaticText1: TStaticText
    Left = 246
    Top = 89
    Width = 107
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Data de Pagamento'
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
  object cEstados: TRxDBLookupList
    Left = 16
    Top = 66
    Width = 222
    Height = 379
    Ctl3D = True
    FieldsDelimiter = '|'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 15
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo; Nome; Codigo_GNRE'
    LookupDisplayIndex = 1
    LookupSource = dstEstados
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 6
    OnClick = cEstadosClick
  end
  object pProg: TPanel
    Left = 560
    Top = 61
    Width = 442
    Height = 52
    TabOrder = 7
    Visible = False
    object lProg: TLabel
      Left = 12
      Top = 5
      Width = 101
      Height = 13
      Caption = 'Enviando GNRE'#39's. . .'
    end
    object bProg: TProgressBar
      Left = 12
      Top = 25
      Width = 421
      Height = 17
      TabOrder = 0
    end
  end
  object GNREEnv: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO GNRE'
      
        '  (Registro, Empresa, Nota, Chave, Data_Nota, UF_Favorecido, UF_' +
        'FavorecidoCod, Destinatario_CNPJ_CPF, Destinatario_IE, Destinata' +
        'rio_RazaoSocial, Destinatario_Municipio, Numero_Convenio, Codigo' +
        '_Receita, Valor, Data_Vencimento, Destinatario_MunicipioCod, Pro' +
        'tocolo_Numero, Protocolo_Data, Selecao)'
      'VALUES'
      
        '  (:Registro, :Empresa, :Nota, :Chave, :Data_Nota, :UF_Favorecid' +
        'o, :UF_FavorecidoCod, :Destinatario_CNPJ_CPF, :Destinatario_IE, ' +
        ':Destinatario_RazaoSocial, :Destinatario_Municipio, :Numero_Conv' +
        'enio, :Codigo_Receita, :Valor, :Data_Vencimento, :Destinatario_M' +
        'unicipioCod, :Protocolo_Numero, :Protocolo_Data, :Selecao)')
    SQLDelete.Strings = (
      'DELETE FROM GNRE'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE GNRE'
      'SET'
      
        '  Registro = :Registro, Empresa = :Empresa, Nota = :Nota, Chave ' +
        '= :Chave, Data_Nota = :Data_Nota, UF_Favorecido = :UF_Favorecido' +
        ', UF_FavorecidoCod = :UF_FavorecidoCod, Destinatario_CNPJ_CPF = ' +
        ':Destinatario_CNPJ_CPF, Destinatario_IE = :Destinatario_IE, Dest' +
        'inatario_RazaoSocial = :Destinatario_RazaoSocial, Destinatario_M' +
        'unicipio = :Destinatario_Municipio, Numero_Convenio = :Numero_Co' +
        'nvenio, Codigo_Receita = :Codigo_Receita, Valor = :Valor, Data_V' +
        'encimento = :Data_Vencimento, Destinatario_MunicipioCod = :Desti' +
        'natario_MunicipioCod, Protocolo_Numero = :Protocolo_Numero, Prot' +
        'ocolo_Data = :Protocolo_Data, Selecao = :Selecao'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT GNRE.Registro, GNRE.Empresa, GNRE.Nota, GNRE.Chave, GNRE.' +
        'Data_Nota, GNRE.UF_Favorecido, GNRE.UF_FavorecidoCod, GNRE.Desti' +
        'natario_CNPJ_CPF, GNRE.Destinatario_IE, GNRE.Destinatario_RazaoS' +
        'ocial, GNRE.Destinatario_Municipio, GNRE.Numero_Convenio, GNRE.C' +
        'odigo_Receita, GNRE.Valor, GNRE.Data_Vencimento, GNRE.Destinatar' +
        'io_MunicipioCod, GNRE.Protocolo_Numero, GNRE.Protocolo_Data, GNR' +
        'E.Selecao FROM GNRE'
      'WHERE GNRE.Registro = :Registro ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM GNRE')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 379
    Top = 10
    object GNREEnvRegistro: TIntegerField
      FieldName = 'Registro'
    end
    object GNREEnvEmpresa: TSmallintField
      FieldName = 'Empresa'
    end
    object GNREEnvNota: TIntegerField
      FieldName = 'Nota'
    end
    object GNREEnvChave: TStringField
      FieldName = 'Chave'
      Size = 44
    end
    object GNREEnvData_Nota: TDateTimeField
      FieldName = 'Data_Nota'
    end
    object GNREEnvUF_Favorecido: TStringField
      FieldName = 'UF_Favorecido'
      Size = 2
    end
    object GNREEnvUF_FavorecidoCod: TStringField
      FieldName = 'UF_FavorecidoCod'
      Size = 5
    end
    object GNREEnvDestinatario_CNPJ_CPF: TStringField
      FieldName = 'Destinatario_CNPJ_CPF'
      Size = 14
    end
    object GNREEnvDestinatario_IE: TStringField
      FieldName = 'Destinatario_IE'
      Size = 14
    end
    object GNREEnvDestinatario_RazaoSocial: TStringField
      FieldName = 'Destinatario_RazaoSocial'
      Size = 60
    end
    object GNREEnvDestinatario_Municipio: TStringField
      FieldName = 'Destinatario_Municipio'
      Size = 50
    end
    object GNREEnvNumero_Convenio: TStringField
      FieldName = 'Numero_Convenio'
      Size = 60
    end
    object GNREEnvCodigo_Receita: TStringField
      FieldName = 'Codigo_Receita'
      Size = 6
    end
    object GNREEnvValor: TCurrencyField
      FieldName = 'Valor'
      DisplayFormat = ',##0.00'
    end
    object GNREEnvData_Vencimento: TDateTimeField
      FieldName = 'Data_Vencimento'
    end
    object GNREEnvDestinatario_MunicipioCod: TStringField
      FieldName = 'Destinatario_MunicipioCod'
      Size = 5
    end
    object GNREEnvProtocolo_Numero: TStringField
      FieldName = 'Protocolo_Numero'
      Size = 15
    end
    object GNREEnvProtocolo_Data: TDateTimeField
      FieldName = 'Protocolo_Data'
    end
    object GNREEnvSelecao: TBooleanField
      FieldName = 'Selecao'
    end
    object GNREEnvAutorizada: TBooleanField
      FieldName = 'Autorizada'
    end
    object GNREEnvData_Pagamento: TDateTimeField
      FieldName = 'Data_Pagamento'
    end
    object GNREEnvCodigo_Barras: TStringField
      FieldName = 'Codigo_Barras'
      Size = 48
    end
    object GNREEnvNumero_Controle: TStringField
      FieldName = 'Numero_Controle'
    end
    object GNREEnvFinanceiro_Numero: TIntegerField
      FieldName = 'Financeiro_Numero'
    end
  end
  object dsGNREEnv: TDataSource
    DataSet = GNREEnv
    Left = 408
    Top = 10
  end
  object pGNRE: TppDBPipeline
    DataSource = dstGNRE
    UserName = 'pGNRE'
    Left = 677
    Top = 8
    object pGNREppField1: TppField
      FieldAlias = 'UF_Favorecido'
      FieldName = 'UF_Favorecido'
      FieldLength = 2
      DisplayWidth = 2
      Position = 0
    end
    object pGNREppField2: TppField
      FieldAlias = 'UF_FavorecidoCod'
      FieldName = 'UF_FavorecidoCod'
      FieldLength = 5
      DisplayWidth = 5
      Position = 1
    end
    object pGNREppField3: TppField
      FieldAlias = 'Nome_UF'
      FieldName = 'Nome_UF'
      FieldLength = 30
      DisplayWidth = 30
      Position = 2
    end
    object pGNREppField4: TppField
      FieldAlias = 'Vencimento'
      FieldName = 'Vencimento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object pGNREppField5: TppField
      FieldAlias = 'Numero_Convenio'
      FieldName = 'Numero_Convenio'
      FieldLength = 60
      DisplayWidth = 60
      Position = 4
    end
    object pGNREppField6: TppField
      FieldAlias = 'Razao_Social'
      FieldName = 'Razao_Social'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object pGNREppField7: TppField
      FieldAlias = 'Inscricao_UF'
      FieldName = 'Inscricao_UF'
      FieldLength = 18
      DisplayWidth = 18
      Position = 6
    end
    object pGNREppField8: TppField
      FieldAlias = 'Endereco'
      FieldName = 'Endereco'
      FieldLength = 97
      DisplayWidth = 97
      Position = 7
    end
    object pGNREppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'Municipio'
      FieldName = 'Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object pGNREppField10: TppField
      FieldAlias = 'Municipio_Nome'
      FieldName = 'Municipio_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object pGNREppField11: TppField
      FieldAlias = 'UF'
      FieldName = 'UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 10
    end
    object pGNREppField12: TppField
      FieldAlias = 'Telefone'
      FieldName = 'Telefone'
      FieldLength = 11
      DisplayWidth = 11
      Position = 11
    end
    object pGNREppField13: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 12
    end
    object pGNREppField14: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 13
    end
    object pGNREppField15: TppField
      FieldAlias = 'Chave'
      FieldName = 'Chave'
      FieldLength = 44
      DisplayWidth = 44
      Position = 14
    end
    object pGNREppField16: TppField
      FieldAlias = 'Codigo_Receita'
      FieldName = 'Codigo_Receita'
      FieldLength = 6
      DisplayWidth = 6
      Position = 15
    end
    object pGNREppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'Doc_Origem'
      FieldName = 'Doc_Origem'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object pGNREppField18: TppField
      FieldAlias = 'Periodo_Ref'
      FieldName = 'Periodo_Ref'
      FieldLength = 9
      DisplayWidth = 9
      Position = 17
    end
    object pGNREppField19: TppField
      FieldAlias = 'Valor'
      FieldName = 'Valor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 18
    end
    object pGNREppField20: TppField
      FieldAlias = 'Total_Recolher'
      FieldName = 'Total_Recolher'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 19
    end
    object pGNREppField21: TppField
      FieldAlias = 'Codigo_Barras'
      FieldName = 'Codigo_Barras'
      FieldLength = 48
      DisplayWidth = 48
      Position = 20
    end
    object pGNREppField22: TppField
      FieldAlias = 'Numero_Controle'
      FieldName = 'Numero_Controle'
      FieldLength = 20
      DisplayWidth = 20
      Position = 21
    end
    object pGNREppField23: TppField
      FieldAlias = 'Destinatario_CNPJ_CPF'
      FieldName = 'Destinatario_CNPJ_CPF'
      FieldLength = 14
      DisplayWidth = 14
      Position = 22
    end
    object pGNREppField24: TppField
      FieldAlias = 'Destinatario_Municipio'
      FieldName = 'Destinatario_Municipio'
      FieldLength = 50
      DisplayWidth = 50
      Position = 23
    end
  end
  object rGNRE: TppReport
    AutoStop = False
    DataPipeline = pGNRE
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 10160
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Sistemas\Faturamento\Codigo_Fonte\Relatorios\GNRE.rtm'
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
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
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
    Left = 712
    Top = 8
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pGNRE'
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 268288
      mmPrintPosition = 0
      object ppDBBarCode1: TppDBBarCode
        DesignLayer = ppDesignLayer1
        UserName = 'DBBarCode1'
        AlignBarCode = ahLeft
        BarCodeType = bcInt2of5
        BarColor = clBlack
        Border.mmPadding = 0
        DataField = 'Codigo_Barras'
        DataPipeline = pGNRE
        PrintHumanReadable = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 12700
        mmLeft = 0
        mmTop = 80963
        mmWidth = 111125
        BandType = 4
        LayerName = Foreground
        mmBarWidth = 239
        mmWideBarRatio = 76200
      end
      object ppShape20: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape20'
        Brush.Color = 15658734
        Brush.Style = bsBDiagonal
        mmHeight = 76729
        mmLeft = 0
        mmTop = 0
        mmWidth = 196850
        BandType = 4
        LayerName = Foreground
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape201'
        Brush.Color = 15658734
        Brush.Style = bsBDiagonal
        mmHeight = 76729
        mmLeft = 0
        mmTop = 134409
        mmWidth = 196850
        BandType = 4
        LayerName = Foreground
      end
      object lCarimbo: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Angle = 45
        AutoSize = False
        Border.mmPadding = 0
        Caption = '[ HOMOLOGA'#199#195'O ]'
        Font.Charset = ANSI_CHARSET
        Font.Color = 16744576
        Font.Name = 'LLRubberGrotesque'
        Font.Size = 70
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 151871
        mmLeft = 23019
        mmTop = 58208
        mmWidth = 151342
        BandType = 4
        LayerName = Foreground
        RotatedOriginLeft = 5795
        RotatedOriginTop = 123067
      end
      object ppLine23: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line23'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 61119
        mmLeft = 139965
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 265
        mmLeft = 139965
        mmTop = 8467
        mmWidth = 56886
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label38'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'GUIA NACIONAL DE RECOLHIMENTO DE TRIBUTOS ESTADUAIS - GNRE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 4763
        mmLeft = 794
        mmTop = 2117
        mmWidth = 138907
        BandType = 4
        LayerName = Foreground
      end
      object ppLine24: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line24'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1852
        mmLeft = 0
        mmTop = 14288
        mmWidth = 196850
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label44'
        Border.mmPadding = 0
        Caption = 'UF Favorecida:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 140759
        mmTop = 265
        mmWidth = 12531
        BandType = 4
        LayerName = Foreground
      end
      object ppLine33: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line33'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 139964
        mmTop = 49213
        mmWidth = 56886
        BandType = 4
        LayerName = Foreground
      end
      object ppLine34: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line34'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 139964
        mmTop = 43392
        mmWidth = 56886
        BandType = 4
        LayerName = Foreground
      end
      object ppLine35: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line35'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 139964
        mmTop = 55033
        mmWidth = 56886
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel50: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label50'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'C'#243'digo da Receita:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 173832
        mmTop = 265
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel58: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label58'
        Border.mmPadding = 0
        Caption = 'Valor Principal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 140759
        mmTop = 32015
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel60: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label60'
        Border.mmPadding = 0
        Caption = 'Atualiza'#231#227'o Monet'#225'ria:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 140759
        mmTop = 37835
        mmWidth = 19770
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel62: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label62'
        Border.mmPadding = 0
        Caption = 'Juros:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 140759
        mmTop = 43656
        mmWidth = 4953
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel64: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label64'
        Border.mmPadding = 0
        Caption = 'Multa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 140759
        mmTop = 49477
        mmWidth = 5630
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel66: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label301'
        Border.mmPadding = 0
        Caption = 'Total a Recolher:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 140759
        mmTop = 55298
        mmWidth = 14097
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label601'
        Border.mmPadding = 0
        Caption = 'N'#186' de Controle:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 140759
        mmTop = 8996
        mmWidth = 13250
        BandType = 4
        LayerName = Foreground
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line31'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 794
        mmLeft = 0
        mmTop = 20108
        mmWidth = 196850
        BandType = 4
        LayerName = Foreground
      end
      object ppLine41: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line41'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 794
        mmLeft = 139965
        mmTop = 37571
        mmWidth = 56886
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label602'
        Border.mmPadding = 0
        Caption = 'N'#186' Documento de Origem:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 140759
        mmTop = 20373
        mmWidth = 22775
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel53: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label603'
        Border.mmPadding = 0
        Caption = 'Per'#237'odo de Refer'#234'ncia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 140759
        mmTop = 26194
        mmWidth = 19262
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label63'
        Border.mmPadding = 0
        Caption = 'Raz'#227'o Social:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3006
        mmLeft = 795
        mmTop = 14552
        mmWidth = 12996
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel70: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label70'
        Border.mmPadding = 0
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3006
        mmLeft = 99748
        mmTop = 14552
        mmWidth = 5461
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3006
        mmLeft = 795
        mmTop = 20373
        mmWidth = 10033
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Munic'#237'pio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3006
        mmLeft = 795
        mmTop = 26194
        mmWidth = 10626
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 51594
        mmTop = 26194
        mmWidth = 2879
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 67204
        mmTop = 26194
        mmWidth = 3810
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 93398
        mmTop = 26458
        mmWidth = 7832
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = 'Informa'#231#245'es Complementares:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3006
        mmLeft = 795
        mmTop = 43921
        mmWidth = 30692
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'UF_FavorecidoCod'
        DataPipeline = pGNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3440
        mmLeft = 160074
        mmTop = 5027
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'Codigo_Receita'
        DataPipeline = pGNRE
        DisplayFormat = '99999-9;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 174097
        mmTop = 5027
        mmWidth = 21697
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'Doc_Origem'
        DataPipeline = pGNRE
        DisplayFormat = '000000000;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3440
        mmLeft = 163513
        mmTop = 22225
        mmWidth = 32279
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'Periodo_Ref'
        DataPipeline = pGNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3440
        mmLeft = 156104
        mmTop = 28046
        mmWidth = 17992
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'Valor'
        DataPipeline = pGNRE
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3440
        mmLeft = 156104
        mmTop = 33867
        mmWidth = 39688
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'Total_Recolher'
        DataPipeline = pGNRE
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3440
        mmLeft = 156104
        mmTop = 57415
        mmWidth = 39688
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText101'
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pGNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 13758
        mmTop = 16404
        mmWidth = 84931
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'CNPJ'
        DataPipeline = pGNRE
        DisplayFormat = '00.000.000/0000-00;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 105834
        mmTop = 16404
        mmWidth = 33867
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'Endereco'
        DataPipeline = pGNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 13758
        mmTop = 22225
        mmWidth = 125677
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'Municipio_Nome'
        DataPipeline = pGNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 13758
        mmTop = 28046
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'UF'
        DataPipeline = pGNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 54769
        mmTop = 28046
        mmWidth = 6879
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        Border.mmPadding = 0
        DataField = 'CEP'
        DataPipeline = pGNRE
        DisplayFormat = '99999-999;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 70115
        mmTop = 28046
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
        Border.mmPadding = 0
        DataField = 'Telefone'
        DataPipeline = pGNRE
        DisplayFormat = '(99) 9999-9999;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 102659
        mmTop = 28046
        mmWidth = 36777
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText18'
        Border.mmPadding = 0
        DataField = 'Chave'
        DataPipeline = pGNRE
        DisplayFormat = '##.##.##.##.##.###.###/####-##-###.###.###-###-###.###.###-#;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 3440
        mmTop = 47361
        mmWidth = 103452
        BandType = 4
        LayerName = Foreground
      end
      object ppLine49: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line49'
        Border.mmPadding = 0
        Pen.Style = psDash
        Weight = 0.750000000000000000
        mmHeight = 2646
        mmLeft = 0
        mmTop = 114565
        mmWidth = 197909
        BandType = 4
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line7'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 8731
        mmLeft = 173038
        mmTop = 0
        mmWidth = 1058
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText19'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'UF_Favorecido'
        DataPipeline = pGNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 151608
        mmTop = 5027
        mmWidth = 3302
        BandType = 4
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5821
        mmLeft = 98954
        mmTop = 14288
        mmWidth = 1058
        BandType = 4
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 794
        mmLeft = 0
        mmTop = 25929
        mmWidth = 196850
        BandType = 4
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 794
        mmLeft = 0
        mmTop = 31750
        mmWidth = 139965
        BandType = 4
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1852
        mmLeft = 0
        mmTop = 8467
        mmWidth = 139965
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Dados do Contribuinte Emitente'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3852
        mmLeft = 795
        mmTop = 9790
        mmWidth = 138377
        BandType = 4
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5821
        mmLeft = 50800
        mmTop = 25929
        mmWidth = 1058
        BandType = 4
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5821
        mmLeft = 66411
        mmTop = 25929
        mmWidth = 1058
        BandType = 4
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5821
        mmLeft = 92604
        mmTop = 25929
        mmWidth = 1058
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Dados do Contribuinte Destinat'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3852
        mmLeft = 795
        mmTop = 32808
        mmWidth = 138377
        BandType = 4
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 794
        mmLeft = 0
        mmTop = 37571
        mmWidth = 139965
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label701'
        Border.mmPadding = 0
        Caption = 'CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3006
        mmLeft = 795
        mmTop = 37571
        mmWidth = 4403
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'Destinatario_CNPJ_CPF'
        DataPipeline = pGNRE
        DisplayFormat = '000.000.000-00;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 6615
        mmTop = 39688
        mmWidth = 33867
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = 'Munic'#237'pio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3006
        mmLeft = 50271
        mmTop = 37835
        mmWidth = 10626
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'Destinatario_Municipio'
        DataPipeline = pGNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 62177
        mmTop = 39688
        mmWidth = 77258
        BandType = 4
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 794
        mmLeft = 0
        mmTop = 43392
        mmWidth = 139965
        BandType = 4
        LayerName = Foreground
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line13'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5821
        mmLeft = 49477
        mmTop = 37571
        mmWidth = 1058
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Documento v'#225'lido para pagamento at'#233
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3471
        mmLeft = 2646
        mmTop = 57150
        mmWidth = 48154
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText102'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'Vencimento'
        DataPipeline = pGNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 50800
        mmTop = 57150
        mmWidth = 13970
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Numero_Controle'
        DataPipeline = pGNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3440
        mmLeft = 156104
        mmTop = 10583
        mmWidth = 39688
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = 'Data de Vencimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 140759
        mmTop = 14552
        mmWidth = 17949
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText21'
        Border.mmPadding = 0
        DataField = 'Vencimento'
        DataPipeline = pGNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3440
        mmLeft = 159544
        mmTop = 16404
        mmWidth = 35719
        BandType = 4
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5821
        mmLeft = 175155
        mmTop = 25929
        mmWidth = 1058
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = 'Parcela:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 175948
        mmTop = 26194
        mmWidth = 6731
        BandType = 4
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 794
        mmLeft = 139965
        mmTop = 31750
        mmWidth = 56886
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '1'#170' via - Banco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2879
        mmLeft = 156898
        mmTop = 77258
        mmWidth = 39423
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'Codigo_Barras'
        DataPipeline = pGNRE
        DisplayFormat = '00000000000 0 00000000000 0 00000000000 0 00000000000 0;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 77258
        mmWidth = 111125
        BandType = 4
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1588
        mmLeft = 0
        mmTop = 61119
        mmWidth = 196850
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = 'Reservado '#224' Fiscaliza'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3006
        mmLeft = 86266
        mmTop = 61119
        mmWidth = 24850
        BandType = 4
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 61119
        mmLeft = 139436
        mmTop = 134409
        mmWidth = 265
        BandType = 4
        LayerName = Foreground
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line201'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 265
        mmLeft = 139436
        mmTop = 143140
        mmWidth = 57150
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'GUIA NACIONAL DE RECOLHIMENTO DE TRIBUTOS ESTADUAIS - GNRE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 4763
        mmLeft = 265
        mmTop = 136525
        mmWidth = 138907
        BandType = 4
        LayerName = Foreground
      end
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1852
        mmLeft = 0
        mmTop = 148696
        mmWidth = 196850
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = 'UF Favorecida:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 140229
        mmTop = 134673
        mmWidth = 12531
        BandType = 4
        LayerName = Foreground
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line18'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 139436
        mmTop = 183621
        mmWidth = 56886
        BandType = 4
        LayerName = Foreground
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 139436
        mmTop = 177800
        mmWidth = 56886
        BandType = 4
        LayerName = Foreground
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line21'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 139436
        mmTop = 189442
        mmWidth = 56886
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label501'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'C'#243'digo da Receita:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 173038
        mmTop = 134673
        mmWidth = 21960
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label19'
        Border.mmPadding = 0
        Caption = 'Valor Principal:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 140229
        mmTop = 166423
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label604'
        Border.mmPadding = 0
        Caption = 'Atualiza'#231#227'o Monet'#225'ria:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 140229
        mmTop = 172244
        mmWidth = 19770
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label21'
        Border.mmPadding = 0
        Caption = 'Juros:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 140229
        mmTop = 178065
        mmWidth = 4953
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        Border.mmPadding = 0
        Caption = 'Multa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 140229
        mmTop = 183886
        mmWidth = 5630
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        Border.mmPadding = 0
        Caption = 'Total a Recolher:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 140229
        mmTop = 189707
        mmWidth = 14097
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label24'
        Border.mmPadding = 0
        Caption = 'N'#186' de Controle:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 140229
        mmTop = 143404
        mmWidth = 13250
        BandType = 4
        LayerName = Foreground
      end
      object ppLine22: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line22'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 794
        mmLeft = 0
        mmTop = 154517
        mmWidth = 196850
        BandType = 4
        LayerName = Foreground
      end
      object ppLine25: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line25'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 794
        mmLeft = 139436
        mmTop = 171980
        mmWidth = 56886
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label25'
        Border.mmPadding = 0
        Caption = 'N'#186' Documento de Origem:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 140229
        mmTop = 154782
        mmWidth = 22775
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label26'
        Border.mmPadding = 0
        Caption = 'Per'#237'odo de Refer'#234'ncia:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 140229
        mmTop = 160602
        mmWidth = 19262
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label27'
        Border.mmPadding = 0
        Caption = 'Raz'#227'o Social:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3006
        mmLeft = 795
        mmTop = 148961
        mmWidth = 12996
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label702'
        Border.mmPadding = 0
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3006
        mmLeft = 99219
        mmTop = 148961
        mmWidth = 5461
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label29'
        Border.mmPadding = 0
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3006
        mmLeft = 795
        mmTop = 154782
        mmWidth = 10033
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label30'
        Border.mmPadding = 0
        Caption = 'Munic'#237'pio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3006
        mmLeft = 795
        mmTop = 160602
        mmWidth = 10626
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label31'
        Border.mmPadding = 0
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 51065
        mmTop = 160602
        mmWidth = 2879
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label32'
        Border.mmPadding = 0
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 66675
        mmTop = 160602
        mmWidth = 3810
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label33'
        Border.mmPadding = 0
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 92869
        mmTop = 160867
        mmWidth = 7832
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label34'
        Border.mmPadding = 0
        Caption = 'Informa'#231#245'es Complementares:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3006
        mmLeft = 795
        mmTop = 178330
        mmWidth = 30692
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText22'
        Border.mmPadding = 0
        DataField = 'UF_FavorecidoCod'
        DataPipeline = pGNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3440
        mmLeft = 160074
        mmTop = 139436
        mmWidth = 12965
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText23'
        Border.mmPadding = 0
        DataField = 'Codigo_Receita'
        DataPipeline = pGNRE
        DisplayFormat = '99999-9;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 174097
        mmTop = 139436
        mmWidth = 21697
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText24'
        Border.mmPadding = 0
        DataField = 'Doc_Origem'
        DataPipeline = pGNRE
        DisplayFormat = '000000000;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3440
        mmLeft = 163513
        mmTop = 156634
        mmWidth = 32279
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText25'
        Border.mmPadding = 0
        DataField = 'Periodo_Ref'
        DataPipeline = pGNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3440
        mmLeft = 156104
        mmTop = 162454
        mmWidth = 17992
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText26'
        Border.mmPadding = 0
        DataField = 'Valor'
        DataPipeline = pGNRE
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3440
        mmLeft = 156104
        mmTop = 168275
        mmWidth = 39688
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText27'
        Border.mmPadding = 0
        DataField = 'Total_Recolher'
        DataPipeline = pGNRE
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3440
        mmLeft = 156104
        mmTop = 191823
        mmWidth = 39688
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText28'
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pGNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 13229
        mmTop = 150813
        mmWidth = 84931
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText29'
        Border.mmPadding = 0
        DataField = 'CNPJ'
        DataPipeline = pGNRE
        DisplayFormat = '00.000.000/0000-00;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 105304
        mmTop = 150813
        mmWidth = 33867
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText30'
        Border.mmPadding = 0
        DataField = 'Endereco'
        DataPipeline = pGNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 13229
        mmTop = 156634
        mmWidth = 125677
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText31'
        Border.mmPadding = 0
        DataField = 'Municipio_Nome'
        DataPipeline = pGNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 13229
        mmTop = 162454
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText32'
        Border.mmPadding = 0
        DataField = 'UF'
        DataPipeline = pGNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 54240
        mmTop = 162454
        mmWidth = 6879
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText33'
        Border.mmPadding = 0
        DataField = 'CEP'
        DataPipeline = pGNRE
        DisplayFormat = '99999-999;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 69586
        mmTop = 162454
        mmWidth = 16669
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText34'
        Border.mmPadding = 0
        DataField = 'Telefone'
        DataPipeline = pGNRE
        DisplayFormat = '(99) 9999-9999;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 102129
        mmTop = 162454
        mmWidth = 36777
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText35'
        Border.mmPadding = 0
        DataField = 'Chave'
        DataPipeline = pGNRE
        DisplayFormat = '##.##.##.##.##.###.###/####-##-###.###.###-###-###.###.###-#;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 2910
        mmTop = 181769
        mmWidth = 103452
        BandType = 4
        LayerName = Foreground
      end
      object ppLine27: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line27'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 8731
        mmLeft = 172509
        mmTop = 134409
        mmWidth = 1058
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText36'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'UF_Favorecido'
        DataPipeline = pGNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 151608
        mmTop = 139436
        mmWidth = 3302
        BandType = 4
        LayerName = Foreground
      end
      object ppLine28: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line28'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5821
        mmLeft = 98425
        mmTop = 148696
        mmWidth = 1058
        BandType = 4
        LayerName = Foreground
      end
      object ppLine29: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line29'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 794
        mmLeft = 0
        mmTop = 160338
        mmWidth = 196850
        BandType = 4
        LayerName = Foreground
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line30'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 794
        mmLeft = 0
        mmTop = 166159
        mmWidth = 139965
        BandType = 4
        LayerName = Foreground
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line32'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1323
        mmLeft = 0
        mmTop = 143140
        mmWidth = 139965
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label35'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Dados do Contribuinte Emitente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3852
        mmLeft = 265
        mmTop = 144198
        mmWidth = 138377
        BandType = 4
        LayerName = Foreground
      end
      object ppLine36: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line36'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5821
        mmLeft = 50271
        mmTop = 160338
        mmWidth = 1058
        BandType = 4
        LayerName = Foreground
      end
      object ppLine37: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line37'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5821
        mmLeft = 65881
        mmTop = 160338
        mmWidth = 1058
        BandType = 4
        LayerName = Foreground
      end
      object ppLine38: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line101'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5821
        mmLeft = 92075
        mmTop = 160338
        mmWidth = 1058
        BandType = 4
        LayerName = Foreground
      end
      object ppLine39: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line39'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 794
        mmLeft = 0
        mmTop = 171980
        mmWidth = 139965
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label37'
        Border.mmPadding = 0
        Caption = 'CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3006
        mmLeft = 795
        mmTop = 171980
        mmWidth = 4403
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText37'
        Border.mmPadding = 0
        DataField = 'Destinatario_CNPJ_CPF'
        DataPipeline = pGNRE
        DisplayFormat = '000.000.000-00;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 6085
        mmTop = 174096
        mmWidth = 33867
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label39'
        Border.mmPadding = 0
        Caption = 'Munic'#237'pio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3006
        mmLeft = 49742
        mmTop = 172244
        mmWidth = 10626
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText103'
        Border.mmPadding = 0
        DataField = 'Destinatario_Municipio'
        DataPipeline = pGNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 61648
        mmTop = 174096
        mmWidth = 77258
        BandType = 4
        LayerName = Foreground
      end
      object ppLine40: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line40'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 794
        mmLeft = 0
        mmTop = 177800
        mmWidth = 139965
        BandType = 4
        LayerName = Foreground
      end
      object ppLine42: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line42'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5821
        mmLeft = 48948
        mmTop = 171980
        mmWidth = 1058
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Documento v'#225'lido para pagamento at'#233
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3471
        mmLeft = 2117
        mmTop = 191559
        mmWidth = 48154
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText39'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'Vencimento'
        DataPipeline = pGNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3471
        mmLeft = 50800
        mmTop = 191559
        mmWidth = 13970
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText40'
        Border.mmPadding = 0
        DataField = 'Numero_Controle'
        DataPipeline = pGNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3440
        mmLeft = 156104
        mmTop = 144992
        mmWidth = 39688
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label41'
        Border.mmPadding = 0
        Caption = 'Data de Vencimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 140229
        mmTop = 148961
        mmWidth = 17949
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText41'
        Border.mmPadding = 0
        DataField = 'Vencimento'
        DataPipeline = pGNRE
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3440
        mmLeft = 160074
        mmTop = 150813
        mmWidth = 35719
        BandType = 4
        LayerName = Foreground
      end
      object ppLine43: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line43'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 5821
        mmLeft = 174625
        mmTop = 160338
        mmWidth = 1058
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label42'
        Border.mmPadding = 0
        Caption = 'Parcela:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2582
        mmLeft = 175419
        mmTop = 160602
        mmWidth = 6731
        BandType = 4
        LayerName = Foreground
      end
      object ppLine44: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line44'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 794
        mmLeft = 139436
        mmTop = 166159
        mmWidth = 56886
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label45'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '2'#170' via - Contribuinte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2879
        mmLeft = 156898
        mmTop = 211667
        mmWidth = 39423
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText42: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText42'
        Border.mmPadding = 0
        DataField = 'Codigo_Barras'
        DataPipeline = pGNRE
        DisplayFormat = '00000000000 0 00000000000 0 00000000000 0 00000000000 0;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 211667
        mmWidth = 111125
        BandType = 4
        LayerName = Foreground
      end
      object ppLine45: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line45'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1588
        mmLeft = 0
        mmTop = 195527
        mmWidth = 196850
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label46'
        Border.mmPadding = 0
        Caption = 'Reservado '#224' Fiscaliza'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3006
        mmLeft = 85715
        mmTop = 195527
        mmWidth = 24850
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label47'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Dados do Contribuinte Destinat'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3852
        mmLeft = 794
        mmTop = 167217
        mmWidth = 138377
        BandType = 4
        LayerName = Foreground
      end
      object ppDBBarCode2: TppDBBarCode
        DesignLayer = ppDesignLayer1
        UserName = 'DBBarCode2'
        AlignBarCode = ahLeft
        BarCodeType = bcInt2of5
        BarColor = clBlack
        Border.mmPadding = 0
        DataField = 'Codigo_Barras'
        DataPipeline = pGNRE
        PrintHumanReadable = False
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pGNRE'
        mmHeight = 12700
        mmLeft = 0
        mmTop = 215371
        mmWidth = 111125
        BandType = 4
        LayerName = Foreground
        mmBarWidth = 239
        mmWideBarRatio = 76200
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
  object tGNRE: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT UF_Favorecido'
      '      ,UF_FavorecidoCod'
      
        '      ,Nome_UF       = (SELECT Nome FROM Cybersoft_Cadastros.dbo' +
        '.Estados WHERE Codigo = UF_Favorecido)'
      '      ,Vencimento    = Data_Vencimento'
      '      ,Numero_Convenio'
      
        '      ,Razao_Social  = (SELECT Razao_Social FROM Cybersoft_Cadas' +
        'tros.dbo.Empresas WHERE Codigo = 24)'
      
        '      ,Inscricao_UF  = (SELECT Inscricao FROM ICMS WHERE UF = '#39'S' +
        'P'#39')'
      
        '      ,Endereco      = (SELECT (Rua + '#39', '#39'+CAST(Rua_Numero AS VA' +
        'RCHAR(15))+'#39', '#39'+Complemento+'#39' - '#39'+Bairro) FROM Cybersoft_Cadastr' +
        'os.dbo.Empresas WHERE Codigo = 24)'
      
        '      ,Municipio     = (SELECT Municipio_Codigo FROM Cybersoft_C' +
        'adastros.dbo.Empresas WHERE Codigo = 24)'
      
        '      ,Municipio_Nome= (SELECT Nome FROM Cybersoft_Cadastros.dbo' +
        '.Municipios WHERE Codigo = (SELECT Municipio_Codigo FROM Cyberso' +
        'ft_Cadastros.dbo.Empresas WHERE Codigo = 24))'
      
        '      ,UF            = (SELECT Estado FROM Cybersoft_Cadastros.d' +
        'bo.Empresas WHERE Codigo = 24)'
      
        '      ,Telefone      = (SELECT Telefone1 FROM Cybersoft_Cadastro' +
        's.dbo.Empresas WHERE Codigo = 24)'
      
        '      ,CEP           = (SELECT CEP FROM Cybersoft_Cadastros.dbo.' +
        'Empresas WHERE Codigo = 24)'
      
        '      ,CNPJ          = (SELECT CNPJ FROM Cybersoft_Cadastros.dbo' +
        '.Empresas WHERE Codigo = 24)'
      '      ,Chave'
      '      ,Codigo_Receita'
      '      ,Doc_Origem    = Nota'
      
        '      ,Periodo_Ref   = SUBSTRING('#39'00'#39', 1, 2-LEN(CAST(MONTH(Data_' +
        'Vencimento) AS VARCHAR(2))))+CAST(MONTH(Data_Vencimento) AS VARC' +
        'HAR(2))+'#39'/'#39'+CAST(YEAR(Data_Vencimento) AS VARCHAR(4))'
      '      ,Valor'
      '      ,Total_Recolher=Valor'
      '      ,Codigo_Barras'
      '      ,Numero_Controle'
      '      ,Destinatario_CNPJ_CPF'
      '      ,Destinatario_Municipio'
      'FROM   GNRE'
      'WHERE Registro = 271')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 467
    Top = 10
  end
  object dstGNRE: TDataSource
    DataSet = tGNRE
    Left = 495
    Top = 10
  end
  object tEstados: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO GNRE'
      
        '  (Registro, Empresa, Nota, Chave, Data_Nota, UF_Favorecido, UF_' +
        'FavorecidoCod, Destinatario_CNPJ_CPF, Destinatario_IE, Destinata' +
        'rio_RazaoSocial, Destinatario_Municipio, Numero_Convenio, Codigo' +
        '_Receita, Valor, Data_Vencimento, Destinatario_MunicipioCod, Pro' +
        'tocolo_Numero, Protocolo_Data, Selecao)'
      'VALUES'
      
        '  (:Registro, :Empresa, :Nota, :Chave, :Data_Nota, :UF_Favorecid' +
        'o, :UF_FavorecidoCod, :Destinatario_CNPJ_CPF, :Destinatario_IE, ' +
        ':Destinatario_RazaoSocial, :Destinatario_Municipio, :Numero_Conv' +
        'enio, :Codigo_Receita, :Valor, :Data_Vencimento, :Destinatario_M' +
        'unicipioCod, :Protocolo_Numero, :Protocolo_Data, :Selecao)')
    SQLDelete.Strings = (
      'DELETE FROM GNRE'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE GNRE'
      'SET'
      
        '  Registro = :Registro, Empresa = :Empresa, Nota = :Nota, Chave ' +
        '= :Chave, Data_Nota = :Data_Nota, UF_Favorecido = :UF_Favorecido' +
        ', UF_FavorecidoCod = :UF_FavorecidoCod, Destinatario_CNPJ_CPF = ' +
        ':Destinatario_CNPJ_CPF, Destinatario_IE = :Destinatario_IE, Dest' +
        'inatario_RazaoSocial = :Destinatario_RazaoSocial, Destinatario_M' +
        'unicipio = :Destinatario_Municipio, Numero_Convenio = :Numero_Co' +
        'nvenio, Codigo_Receita = :Codigo_Receita, Valor = :Valor, Data_V' +
        'encimento = :Data_Vencimento, Destinatario_MunicipioCod = :Desti' +
        'natario_MunicipioCod, Protocolo_Numero = :Protocolo_Numero, Prot' +
        'ocolo_Data = :Protocolo_Data, Selecao = :Selecao'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT GNRE.Registro, GNRE.Empresa, GNRE.Nota, GNRE.Chave, GNRE.' +
        'Data_Nota, GNRE.UF_Favorecido, GNRE.UF_FavorecidoCod, GNRE.Desti' +
        'natario_CNPJ_CPF, GNRE.Destinatario_IE, GNRE.Destinatario_RazaoS' +
        'ocial, GNRE.Destinatario_Municipio, GNRE.Numero_Convenio, GNRE.C' +
        'odigo_Receita, GNRE.Valor, GNRE.Data_Vencimento, GNRE.Destinatar' +
        'io_MunicipioCod, GNRE.Protocolo_Numero, GNRE.Protocolo_Data, GNR' +
        'E.Selecao FROM GNRE'
      'WHERE GNRE.Registro = :Registro ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Codigo'
      '      ,Nome '
      
        '      ,Codigo_GNRE = (SELECT Codigo_GNRE FROM ICMS WHERE UF = Co' +
        'digo)'
      '      ,De_Do'
      'FROM Cybersoft_Cadastros.dbo.Estados '
      'WHERE (SELECT GNRE FROM ICMS WHERE UF = Codigo) = 1'
      'ORDER BY Nome')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 315
    Top = 10
  end
  object dstEstados: TDataSource
    DataSet = tEstados
    Left = 343
    Top = 10
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 555
    Top = 10
  end
end
