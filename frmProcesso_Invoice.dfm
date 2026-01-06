object Processo_Invoice: TProcesso_Invoice
  Left = 575
  Top = 244
  BorderStyle = bsDialog
  Caption = 'Processo_Invoice'
  ClientHeight = 710
  ClientWidth = 865
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
    Width = 865
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitWidth = 635
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 4
    Width = 99
    Height = 21
    Caption = 'IMPORTA'#199#195'O'
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
    Width = 259
    Height = 18
    Caption = 'Cadastro da Fatura (Commercial Invoice).'
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
    Top = 678
    Width = 865
    Height = 32
    Margins.Left = 1
    Margins.Top = 1
    Margins.Right = 1
    Margins.Bottom = 1
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitTop = 603
    ExplicitWidth = 867
    object bSair: TButton
      AlignWithMargins = True
      Left = 788
      Top = 2
      Width = 75
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
      ExplicitLeft = 790
    end
    object Navega: TDBNavigator
      AlignWithMargins = True
      Left = 2
      Top = 2
      Width = 368
      Height = 28
      Cursor = crHandPoint
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      DataSource = Dados.dsInvoice
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
        'Altera o reistro atual.'
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
      Left = 372
      Top = 2
      Width = 69
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Pesquisa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bPesquisaClick
    end
    object bItens: TButton
      AlignWithMargins = True
      Left = 443
      Top = 2
      Width = 82
      Height = 28
      Hint = 'Adicionar itens a invoice'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Itens do PO'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bItensClick
    end
    object bLPCO: TButton
      AlignWithMargins = True
      Left = 527
      Top = 2
      Width = 57
      Height = 28
      Hint = 'Adicionar itens a invoice'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&LPCO'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bLPCOClick
    end
  end
  object Paginas: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 49
    Width = 859
    Height = 614
    Margins.Bottom = 15
    ActivePage = AbaInvoice
    Align = alClient
    TabHeight = 28
    TabOrder = 1
    TabWidth = 100
    ExplicitWidth = 861
    ExplicitHeight = 539
    object AbaLista: TTabSheet
      Caption = '&Lista'
      ImageIndex = 1
      ExplicitWidth = 853
      ExplicitHeight = 501
      object Grade: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 845
        Height = 526
        Margins.Bottom = 1
        Align = alClient
        Color = clWhite
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnTitleClick = GradeTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'Numero'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Width = 144
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Processo'
            Title.Alignment = taCenter
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Exportador_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Exportador'
            Width = 394
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total_FaturaME'
            Title.Alignment = taCenter
            Title.Caption = 'Valor (ME)'
            Width = 145
            Visible = True
          end>
      end
      object cPesquisa: TEdit
        AlignWithMargins = True
        Left = 3
        Top = 554
        Width = 845
        Height = 21
        Margins.Top = 1
        Margins.Bottom = 1
        Align = alBottom
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnChange = cPesquisaChange
        ExplicitTop = 479
        ExplicitWidth = 847
      end
      object StaticText5: TStaticText
        AlignWithMargins = True
        Left = 3
        Top = 531
        Width = 845
        Height = 21
        Margins.Top = 1
        Margins.Bottom = 1
        Align = alBottom
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
        TabOrder = 2
        Transparent = False
        StyleElements = []
        ExplicitTop = 456
        ExplicitWidth = 847
      end
    end
    object AbaInvoice: TTabSheet
      Caption = 'Dados da &Invoice'
      Enabled = False
      ExplicitLeft = 29
      ExplicitTop = -18
      object bPesqTrans: TSpeedButton
        Left = 363
        Top = 72
        Width = 23
        Height = 23
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
          B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
          1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
          BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
          BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
        OnClick = bPesqTransClick
      end
      object bPesqPais: TSpeedButton
        Left = 586
        Top = 95
        Width = 23
        Height = 23
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
          B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
          1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
          BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
          BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
        OnClick = bPesqPaisClick
      end
      object bPesqOrig: TSpeedButton
        Left = 363
        Top = 118
        Width = 23
        Height = 23
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
          B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
          1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
          BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
          BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
        OnClick = bPesqOrigClick
      end
      object bPesqTransMoeFrete: TSpeedButton
        Left = 363
        Top = 355
        Width = 23
        Height = 23
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
          B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
          1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
          BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
          BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
        OnClick = bPesqTransMoeFreteClick
      end
      object SpeedButton1: TSpeedButton
        Left = 363
        Top = 378
        Width = 23
        Height = 23
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
          B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
          1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
          BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
          BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 748
        Top = 118
        Width = 23
        Height = 23
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
          B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
          1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
          BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
          BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
        OnClick = SpeedButton2Click
      end
      object lProcesso: TStaticText
        Left = 4
        Top = 4
        Width = 93
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
        TabOrder = 22
        Transparent = False
        StyleElements = []
      end
      object lExportador: TStaticText
        Left = 4
        Top = 96
        Width = 93
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Exportador'
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
        OnClick = lExportadorClick
      end
      object lCondicaoPgto: TStaticText
        Left = 4
        Top = 142
        Width = 93
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
        TabOrder = 24
        Transparent = False
        StyleElements = []
      end
      object lMoeda: TStaticText
        Left = 4
        Top = 73
        Width = 93
        Height = 21
        Cursor = crHandPoint
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
        TabOrder = 25
        Transparent = False
        StyleElements = []
        OnClick = lMoedaClick
      end
      object cData: TDBDateEdit
        Left = 320
        Top = 27
        Width = 123
        Height = 21
        DataField = 'Data'
        DataSource = Dados.dsInvoice
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
        TabOrder = 3
        YearDigits = dyFour
        OnExit = cMoedaClick
      end
      object lNumero: TStaticText
        Left = 4
        Top = 27
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Invoice N'#186
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
      object lPaisOrigem: TStaticText
        Left = 4
        Top = 119
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Pais Origem'
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
      object cMoeda: TDBLookupComboBox
        Left = 99
        Top = 73
        Width = 263
        Height = 21
        DataField = 'Moeda'
        DataSource = Dados.dsInvoice
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Nome;Simbolo'
        ListFieldIndex = 1
        ListSource = Dados.dsMoedas
        NullValueKey = 46
        ParentFont = False
        TabOrder = 6
        OnClick = cMoedaClick
        OnExit = cMoedaClick
      end
      object lData: TStaticText
        Left = 269
        Top = 27
        Width = 49
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
        TabOrder = 28
        Transparent = False
        StyleElements = []
      end
      object cPaisOrigem: TDBLookupComboBox
        Left = 99
        Top = 119
        Width = 263
        Height = 21
        DataField = 'Pais_Origem'
        DataSource = Dados.dsInvoice
        DropDownRows = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Nome'
        ListFieldIndex = 1
        ListSource = Dados.dsPaises
        NullValueKey = 46
        ParentFont = False
        TabOrder = 8
      end
      object cNumero: TDBEdit
        Left = 99
        Top = 27
        Width = 166
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Numero'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnChange = cNumeroChange
      end
      object cExportador: TDBLookupComboBox
        Left = 99
        Top = 96
        Width = 486
        Height = 21
        DataField = 'Exportador'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Nome'
        ListFieldIndex = 1
        ListSource = Dados.dsFornecedores
        NullValueKey = 46
        ParentFont = False
        TabOrder = 7
        OnClick = cExportadorExit
        OnExit = cExportadorExit
      end
      object lVia: TStaticText
        Left = 4
        Top = 188
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Via Transporte'
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
      object lLocalEmbarque: TStaticText
        Left = 4
        Top = 211
        Width = 93
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
        TabOrder = 30
        Transparent = False
        StyleElements = []
      end
      object DBEdit1: TDBEdit
        Left = 99
        Top = 211
        Width = 284
        Height = 21
        DataField = 'Local_Embarque'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
      object lBancarios: TStaticText
        Left = 4
        Top = 234
        Width = 93
        Height = 36
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Dados Bancarios'
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
      object DBMemo1: TDBMemo
        Left = 99
        Top = 234
        Width = 747
        Height = 36
        DataField = 'Dados_Bancarios'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
      end
      object lNotificar: TStaticText
        Left = 4
        Top = 272
        Width = 93
        Height = 36
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Notificar'
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
      object DBMemo2: TDBMemo
        Left = 99
        Top = 272
        Width = 747
        Height = 36
        DataField = 'Notificar'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
      end
      object lLocalChegada: TStaticText
        Left = 388
        Top = 211
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Local Chegada'
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
      object DBEdit2: TDBEdit
        Left = 483
        Top = 211
        Width = 363
        Height = 21
        DataField = 'Local_Chegada'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
      end
      object lPesoLiquido: TStaticText
        Left = 389
        Top = 310
        Width = 93
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
        TabOrder = 34
        Transparent = False
        StyleElements = []
      end
      object DBEdit4: TDBEdit
        Left = 484
        Top = 310
        Width = 108
        Height = 21
        DataField = 'Peso_Liquido'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 18
      end
      object lPesoBruto: TStaticText
        Left = 595
        Top = 310
        Width = 69
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
        TabOrder = 35
        Transparent = False
        StyleElements = []
      end
      object DBEdit5: TDBEdit
        Left = 666
        Top = 310
        Width = 105
        Height = 21
        DataField = 'Peso_Bruto'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 19
      end
      object lVolumes: TStaticText
        Left = 4
        Top = 310
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Qtde. Volumes'
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
      object cVolumes: TDBEdit
        Left = 99
        Top = 310
        Width = 100
        Height = 21
        DataField = 'Volumes_Quantidade'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
      end
      object lMetrosCubicos: TStaticText
        Left = 201
        Top = 310
        Width = 82
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Metros C'#250'bicos'
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
      object DBEdit7: TDBEdit
        Left = 285
        Top = 310
        Width = 100
        Height = 21
        DataField = 'Metro_Cubico'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
      end
      object StaticText1: TStaticText
        Left = 4
        Top = 333
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Total Fatura (ME)'
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
      object DBEdit3: TDBEdit
        Left = 285
        Top = 333
        Width = 100
        Height = 21
        DataField = 'Total_Fatura'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 21
      end
      object StaticText2: TStaticText
        Left = 201
        Top = 333
        Width = 82
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Total Fatura (R$)'
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
      object DBEdit6: TDBEdit
        Left = 99
        Top = 333
        Width = 100
        Height = 21
        DataField = 'Total_FaturaME'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 20
      end
      object cCondicaoCambio: TRxDBLookupCombo
        Left = 99
        Top = 142
        Width = 749
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'Condicao_Cambio'
        DataSource = Dados.dsInvoice
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
        TabOrder = 9
        OnChange = cCondicaoCambioChange
      end
      object cData_BL: TDBDateEdit
        Left = 320
        Top = 50
        Width = 123
        Height = 21
        DataField = 'Data_BL'
        DataSource = Dados.dsInvoice
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
        OnChange = cData_BLChange
        OnExit = cMoedaClick
      end
      object StaticText4: TStaticText
        Left = 269
        Top = 50
        Width = 49
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Data BL'
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
      object StaticText3: TStaticText
        Left = 211
        Top = 165
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Vencimento'
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
      object DBDateEdit2: TDBDateEdit
        Left = 306
        Top = 165
        Width = 123
        Height = 21
        DataField = 'Data_Vencimento'
        DataSource = Dados.dsInvoice
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
        TabOrder = 11
        YearDigits = dyFour
        OnExit = cMoedaClick
      end
      object cProcesso: TDBLookupComboBox
        Left = 99
        Top = 4
        Width = 166
        Height = 21
        DataField = 'Processo'
        DataSource = Dados.dsInvoice
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Processo'
        ListField = 'Processo'
        ListSource = Dados.dsProcessosDOC
        NullValueKey = 46
        ParentFont = False
        TabOrder = 0
        OnClick = cProcessoClick
      end
      object StaticText10: TStaticText
        Left = 4
        Top = 165
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Taxa do C'#226'mbio'
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
      object cTaxaCambio: TDBEdit
        Left = 99
        Top = 165
        Width = 107
        Height = 21
        DataField = 'Taxa_Cambio'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object StaticText11: TStaticText
        Left = 269
        Top = 4
        Width = 49
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'PO N'#186
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
      object StaticText12: TStaticText
        Left = 4
        Top = 50
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'BL N'#186
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
      object cBL: TDBEdit
        Left = 99
        Top = 50
        Width = 166
        Height = 21
        CharCase = ecUpperCase
        DataField = 'BL'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object cPO: TDBLookupComboBox
        Left = 320
        Top = 4
        Width = 166
        Height = 21
        DataField = 'PO'
        DataSource = Dados.dsInvoice
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Numero'
        ListField = 'Numero'
        ListSource = dmDespacho.dsPO
        NullValueKey = 46
        ParentFont = False
        TabOrder = 1
        OnClick = cPOClick
      end
      object lCondicaoVenda: TStaticText
        Left = 4
        Top = 402
        Width = 93
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'INCOTERM'
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
        OnClick = lCondicaoVendaClick
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 99
        Top = 402
        Width = 287
        Height = 21
        DropDownCount = 15
        DropDownWidth = 450
        DisplayAllFields = True
        DataField = 'INCOTERMS'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo; Descricao'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsIncoterms
        ParentFont = False
        TabOrder = 46
      end
      object StaticText16: TStaticText
        Left = 389
        Top = 402
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Local Condi'#231#227'o'
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
      object DBEdit10: TDBEdit
        Left = 484
        Top = 402
        Width = 362
        Height = 21
        DataField = 'Local_Condicao'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 48
      end
      object StaticText17: TStaticText
        Left = 4
        Top = 425
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Metodo Valora'#231#227'o'
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
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 99
        Top = 425
        Width = 385
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'Metodo_Valoracao'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo; Descricao'
        LookupDisplayIndex = 1
        LookupSource = dmDespacho.dsMetodoVal
        ParentFont = False
        TabOrder = 50
      end
      object StaticText18: TStaticText
        Left = 4
        Top = 448
        Width = 93
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Cobertura Cambial'
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
        OnClick = lCondicaoVendaClick
      end
      object cCoberturaCambial: TRxDBComboBox
        Left = 99
        Top = 448
        Width = 195
        Height = 21
        DataField = 'Cobertura_Cambial'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'ATE 180 DIAS'
          'DE 181 A 360 DIAS'
          'ACIMA DE 360 DIAS'
          'SEM COBERTURA')
        ParentFont = False
        TabOrder = 52
        Values.Strings = (
          'ATE_180_DIAS'
          'DE_180_ATE_360'
          'ACIMA_360'
          'SEM_COBERTURA')
        OnChange = cCoberturaCambialChange
      end
      object StaticText20: TStaticText
        Left = 4
        Top = 471
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Financiadora'
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
      object RxDBLookupCombo3: TRxDBLookupCombo
        Left = 99
        Top = 471
        Width = 747
        Height = 21
        DropDownCount = 30
        DisplayAllFields = True
        DataField = 'Financiadora'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Descricao'
        LookupDisplayIndex = 1
        LookupSource = dmDespacho.dsAgFinanciadora
        ParentFont = False
        TabOrder = 54
      end
      object cMotivoCambial: TRxDBLookupCombo
        Left = 408
        Top = 448
        Width = 438
        Height = 21
        DropDownCount = 15
        DropDownWidth = 600
        DisplayAllFields = True
        DataField = 'Motivo_SemCobertura'
        DataSource = Dados.dsInvoice
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo; Descricao'
        LookupDisplayIndex = 1
        LookupSource = dmDespacho.dsMotivoCambial
        ParentFont = False
        TabOrder = 55
      end
      object StaticText21: TStaticText
        Left = 297
        Top = 448
        Width = 109
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Motivo sem Cobertura'
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
      object GroupBox1: TGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 524
        Width = 845
        Height = 49
        Align = alBottom
        Caption = 'Totais do Processo'
        Enabled = False
        TabOrder = 57
        ExplicitTop = 525
        object StaticText6: TStaticText
          Left = 389
          Top = 20
          Width = 87
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Total Fatura (ME)'
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
        object StaticText7: TStaticText
          Left = 8
          Top = 20
          Width = 68
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
          TabOrder = 1
          Transparent = False
          StyleElements = []
        end
        object StaticText8: TStaticText
          Left = 201
          Top = 20
          Width = 64
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
          TabOrder = 2
          Transparent = False
          StyleElements = []
        end
        object cTotalFaturaME: TCurrencyEdit
          Left = 478
          Top = 20
          Width = 121
          Height = 21
          AutoSize = False
          Color = 16762566
          DecimalPlaces = 0
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object cTotalPesoLiquido: TCurrencyEdit
          Left = 78
          Top = 20
          Width = 121
          Height = 21
          AutoSize = False
          Color = 16762566
          DecimalPlaces = 0
          DisplayFormat = ',##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object cTotalPesoBruto: TCurrencyEdit
          Left = 267
          Top = 20
          Width = 121
          Height = 21
          AutoSize = False
          Color = 16762566
          DecimalPlaces = 0
          DisplayFormat = ',##0.000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object StaticText9: TStaticText
          Left = 602
          Top = 20
          Width = 84
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Total Fatura (R$)'
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
        object cTotalFaturaReal: TCurrencyEdit
          Left = 688
          Top = 20
          Width = 150
          Height = 21
          AutoSize = False
          Color = 16762566
          DecimalPlaces = 0
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
      end
      object StaticText22: TStaticText
        Left = 4
        Top = 356
        Width = 93
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
        TabOrder = 58
        Transparent = False
        StyleElements = []
        OnClick = lMoedaClick
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 99
        Top = 356
        Width = 263
        Height = 21
        DataField = 'Moeda_Frete'
        DataSource = Dados.dsInvoice
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Nome;Simbolo'
        ListFieldIndex = 1
        ListSource = Dados.dsMoedas
        NullValueKey = 46
        ParentFont = False
        TabOrder = 59
        OnClick = cMoedaClick
        OnExit = cMoedaClick
      end
      object StaticText24: TStaticText
        Left = 389
        Top = 356
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Frete PrePaid'
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
      object DBEdit11: TDBEdit
        Left = 484
        Top = 356
        Width = 108
        Height = 21
        DataField = 'Frete_PrePaid'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 61
      end
      object StaticText25: TStaticText
        Left = 4
        Top = 379
        Width = 93
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Moeda Seguro'
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
        OnClick = lMoedaClick
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 99
        Top = 379
        Width = 263
        Height = 21
        DataField = 'Moeda_Seguro'
        DataSource = Dados.dsInvoice
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Nome;Simbolo'
        ListFieldIndex = 1
        ListSource = Dados.dsMoedas
        NullValueKey = 46
        ParentFont = False
        TabOrder = 63
        OnClick = cMoedaClick
        OnExit = cMoedaClick
      end
      object StaticText26: TStaticText
        Left = 389
        Top = 379
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Valor Seguro'
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
      object DBEdit12: TDBEdit
        Left = 484
        Top = 379
        Width = 108
        Height = 21
        DataField = 'Seguro'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 65
      end
      object StaticText27: TStaticText
        Left = 388
        Top = 119
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Pais Aquisi'#231#227'o'
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
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 483
        Top = 119
        Width = 264
        Height = 21
        DataField = 'Pais_Aquisicao'
        DataSource = Dados.dsInvoice
        DropDownRows = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Nome'
        ListFieldIndex = 1
        ListSource = Dados.dsPaises
        NullValueKey = 46
        ParentFont = False
        TabOrder = 67
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 99
        Top = 188
        Width = 284
        Height = 21
        DataField = 'Via_Transporte'
        DataSource = Dados.dsInvoice
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = dmDespacho.dsViaTransporte
        NullValueKey = 46
        ParentFont = False
        TabOrder = 68
        OnClick = cMoedaClick
        OnExit = cMoedaClick
      end
      object StaticText28: TStaticText
        Left = 491
        Top = 4
        Width = 113
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Modal.Importa'#231#227'o'
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
      object cModalidade: TDBLookupComboBox
        Left = 606
        Top = 4
        Width = 240
        Height = 21
        DataField = 'Modalidade_Importacao'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNone
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = Dados.dsTiposProcesso
        ParentFont = False
        TabOrder = 70
      end
      object StaticText29: TStaticText
        Left = 491
        Top = 27
        Width = 113
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Finalidade Mercadoria'
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
      object StaticText30: TStaticText
        Left = 491
        Top = 50
        Width = 113
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Condi'#231#227'o Mercadoria'
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
      object DBComboBox2: TDBComboBox
        Left = 606
        Top = 50
        Width = 240
        Height = 21
        DataField = 'Condicao_Mercadoria'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNone
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'NOVA'
          'USADA')
        ParentFont = False
        TabOrder = 73
      end
      object DBEdit13: TDBEdit
        Left = 666
        Top = 356
        Width = 105
        Height = 21
        DataField = 'Frete_Collect'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 74
      end
      object StaticText31: TStaticText
        Left = 595
        Top = 356
        Width = 69
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Frete Collect'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 75
        Transparent = False
        StyleElements = []
      end
      object StaticText33: TStaticText
        Left = 388
        Top = 188
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Destino'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 76
        Transparent = False
        StyleElements = []
      end
      object DBEdit9: TDBEdit
        Left = 483
        Top = 188
        Width = 363
        Height = 21
        DataField = 'Destino'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 77
      end
      object RxDBComboBox1: TRxDBComboBox
        Left = 606
        Top = 27
        Width = 240
        Height = 21
        DataField = 'Aplicacao'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'Consumo'
          'Incorporacao ativo fixo'
          'Industrializa'#231#227'o'
          'Revenda'
          'Outra')
        ParentFont = False
        TabOrder = 78
        Values.Strings = (
          'CONSUMO'
          'INCORPORACAO_ATIVO_FIXO'
          'INDUSTRIALIZACAO'
          'REVENDA'
          'OUTRA')
      end
      object StaticText36: TStaticText
        Left = 4
        Top = 494
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'ROF (SCE-Cr'#233'dito)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 79
        Transparent = False
        StyleElements = []
      end
      object DBEdit8: TDBEdit
        Left = 99
        Top = 494
        Width = 195
        Height = 21
        DataField = 'Numero_ROF'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 80
      end
      object DBEdit14: TDBEdit
        Left = 421
        Top = 494
        Width = 100
        Height = 21
        DataField = 'Valor_CoberturaCambial'
        DataSource = Dados.dsInvoice
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 81
      end
      object StaticText37: TStaticText
        Left = 297
        Top = 494
        Width = 122
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Valor Cobertura Cambial'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 82
        Transparent = False
        StyleElements = []
      end
    end
    object Abaitens: TTabSheet
      Caption = 'Itens da Invoice'
      ImageIndex = 2
      ExplicitWidth = 853
      ExplicitHeight = 501
      object GradeItens: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 451
        Width = 845
        Height = 122
        Margins.Top = 1
        Align = alClient
        Color = clWhite
        DataSource = dstLPCO
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'Orgao_Anuente'
            Title.Alignment = taCenter
            Title.Caption = 'Org'#227'o Anuente'
            Width = 424
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Documento'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo de Documento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Numero'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Width = 216
            Visible = True
          end>
      end
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 198
        Width = 845
        Height = 32
        Margins.Top = 1
        Align = alTop
        BevelOuter = bvLowered
        Color = 7500402
        ParentBackground = False
        TabOrder = 1
        StyleElements = []
        ExplicitTop = 130
        ExplicitWidth = 847
        object NavegaItens: TDBNavigator
          AlignWithMargins = True
          Left = 2
          Top = 2
          Width = 324
          Height = 28
          Cursor = crHandPoint
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          DataSource = Dados.dsInvoiceItens
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Align = alLeft
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
          TabOrder = 0
          BeforeAction = NavegaItensBeforeAction
          OnClick = NavegaItensClick
        end
      end
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 845
        Height = 193
        Margins.Bottom = 1
        Align = alTop
        Anchors = [akLeft, akRight]
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 2
        ExplicitWidth = 858
        object bPesqProd: TSpeedButton
          Left = 816
          Top = 4
          Width = 24
          Height = 23
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
            B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
            1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
            BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
            BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
          OnClick = bPesqProdClick
        end
        object StaticText13: TStaticText
          Left = 6
          Top = 28
          Width = 102
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
          TabOrder = 6
          Transparent = False
          StyleElements = []
        end
        object StaticText14: TStaticText
          Left = 6
          Top = 51
          Width = 102
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Unit'#225'rio (ME)'
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
        object cQtde: TDBEdit
          Left = 110
          Top = 28
          Width = 160
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Quantidade'
          DataSource = Dados.dsInvoiceItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object cNomeFantasia: TDBEdit
          Left = 110
          Top = 51
          Width = 160
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Valor_UnitarioME'
          DataSource = Dados.dsInvoiceItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object StaticText19: TStaticText
          Left = 6
          Top = 5
          Width = 102
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
          TabOrder = 8
          Transparent = False
          StyleElements = []
        end
        object cCodigo: TDBEdit
          Left = 110
          Top = 5
          Width = 86
          Height = 21
          DataField = 'Codigo_Mercadoria'
          DataSource = Dados.dsInvoiceItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnChange = cCodigoChange
          OnExit = cCodigoExit
        end
        object cProduto: TDBLookupComboBox
          Left = 199
          Top = 5
          Width = 642
          Height = 21
          DataField = 'Codigo_Mercadoria'
          DataSource = Dados.dsInvoiceItens
          DropDownRows = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao_Reduzida'
          ListFieldIndex = 1
          ListSource = Dados.dsProdutos
          ParentFont = False
          TabOrder = 1
        end
        object StaticText34: TStaticText
          Left = 6
          Top = 74
          Width = 102
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
          TabOrder = 9
          Transparent = False
          StyleElements = []
        end
        object DBEdit15: TDBEdit
          Left = 110
          Top = 74
          Width = 160
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Peso_Liquido'
          DataSource = Dados.dsInvoiceItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object DBEdit16: TDBEdit
          Left = 110
          Top = 97
          Width = 160
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Peso_Bruto'
          DataSource = Dados.dsInvoiceItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object StaticText35: TStaticText
          Left = 6
          Top = 97
          Width = 102
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
          TabOrder = 10
          Transparent = False
          StyleElements = []
        end
        object cIndicador: TDBRadioGroup
          Left = 362
          Top = 128
          Width = 419
          Height = 43
          Caption = 'Indicador Comprador/Vendedor - Vincul'#231#227'o'
          Columns = 3
          DataField = 'Vinculo_CompVend'
          DataSource = Dados.dsInvoiceItens
          Items.Strings = (
            'N'#227'o h'#225
            'Sem influ'#234'ncia pre'#231'o'
            'Com influ'#234'ncia pre'#231'o')
          TabOrder = 11
          Values.Strings = (
            'NAO_HA_VINCULACAO'
            'VINCULACAO_SEM_INFLUENCIA_PRECO'
            'VINCULACAO_COM_INFLUENCIA_PRECO')
        end
        object StaticText15: TStaticText
          Left = 6
          Top = 120
          Width = 102
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'N'#186' Certif.Mercosul'
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
        object cCertNum: TDBEdit
          Left = 110
          Top = 120
          Width = 160
          Height = 21
          DataField = 'Certificado_MercosulNumero'
          DataSource = Dados.dsInvoiceItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          OnExit = cCertNumExit
        end
        object cCertTipo: TDBComboBox
          Left = 110
          Top = 143
          Width = 160
          Height = 21
          DataField = 'Certificado_MercosulTipo'
          DataSource = Dados.dsInvoiceItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'CCPTC'
            'CCROM')
          ParentFont = False
          TabOrder = 14
        end
        object StaticText23: TStaticText
          Left = 6
          Top = 143
          Width = 102
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tipo Cetif.Mercosul'
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
        object StaticText32: TStaticText
          Left = 6
          Top = 166
          Width = 102
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Quantidade Certif.'
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
        object cCertQtde: TDBEdit
          Left = 110
          Top = 166
          Width = 160
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Certificado_MercosulQtde'
          DataSource = Dados.dsInvoiceItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
        end
      end
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 234
        Width = 845
        Height = 213
        Margins.Top = 1
        Align = alTop
        Color = clWhite
        DataSource = Dados.dsInvoiceItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Item'
            Title.Alignment = taCenter
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codigo_Mercadoria'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Width = 594
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_UnitarioME'
            Width = 116
            Visible = True
          end>
      end
    end
  end
  object tNumero: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO TiposProcesso'
      
        '  (Codigo, Descricao, Conta_Cliente, Conta_ClienteAdiantamento, ' +
        'Conta_Fornecedor, Conta_FornecedorAdiantamento, Conta_Despesas, ' +
        'Conta_Impostos)'
      'VALUES'
      
        '  (:Codigo, :Descricao, :Conta_Cliente, :Conta_ClienteAdiantamen' +
        'to, :Conta_Fornecedor, :Conta_FornecedorAdiantamento, :Conta_Des' +
        'pesas, :Conta_Impostos)')
    SQLDelete.Strings = (
      'DELETE FROM TiposProcesso'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE TiposProcesso'
      'SET'
      
        '  Codigo = :Codigo, Descricao = :Descricao, Conta_Cliente = :Con' +
        'ta_Cliente, Conta_ClienteAdiantamento = :Conta_ClienteAdiantamen' +
        'to, Conta_Fornecedor = :Conta_Fornecedor, Conta_FornecedorAdiant' +
        'amento = :Conta_FornecedorAdiantamento, Conta_Despesas = :Conta_' +
        'Despesas, Conta_Impostos = :Conta_Impostos'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT TiposProcesso.Codigo, TiposProcesso.Descricao, TiposProce' +
        'sso.Conta_Cliente, TiposProcesso.Conta_ClienteAdiantamento, Tipo' +
        'sProcesso.Conta_Fornecedor, TiposProcesso.Conta_FornecedorAdiant' +
        'amento, TiposProcesso.Conta_Despesas, TiposProcesso.Conta_Impost' +
        'os FROM TiposProcesso'
      'WHERE TiposProcesso.Codigo = :Codigo ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 181
    Top = 343
  end
  object tInvoice: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO TiposProcesso'
      
        '  (Codigo, Descricao, Conta_Cliente, Conta_ClienteAdiantamento, ' +
        'Conta_Fornecedor, Conta_FornecedorAdiantamento, Conta_Despesas, ' +
        'Conta_Impostos)'
      'VALUES'
      
        '  (:Codigo, :Descricao, :Conta_Cliente, :Conta_ClienteAdiantamen' +
        'to, :Conta_Fornecedor, :Conta_FornecedorAdiantamento, :Conta_Des' +
        'pesas, :Conta_Impostos)')
    SQLDelete.Strings = (
      'DELETE FROM TiposProcesso'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE TiposProcesso'
      'SET'
      
        '  Codigo = :Codigo, Descricao = :Descricao, Conta_Cliente = :Con' +
        'ta_Cliente, Conta_ClienteAdiantamento = :Conta_ClienteAdiantamen' +
        'to, Conta_Fornecedor = :Conta_Fornecedor, Conta_FornecedorAdiant' +
        'amento = :Conta_FornecedorAdiantamento, Conta_Despesas = :Conta_' +
        'Despesas, Conta_Impostos = :Conta_Impostos'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT TiposProcesso.Codigo, TiposProcesso.Descricao, TiposProce' +
        'sso.Conta_Cliente, TiposProcesso.Conta_ClienteAdiantamento, Tipo' +
        'sProcesso.Conta_Fornecedor, TiposProcesso.Conta_FornecedorAdiant' +
        'amento, TiposProcesso.Conta_Despesas, TiposProcesso.Conta_Impost' +
        'os FROM TiposProcesso'
      'WHERE TiposProcesso.Codigo = :Codigo ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 181
    Top = 390
  end
  object ttmp: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO TiposProcesso'
      
        '  (Codigo, Descricao, Conta_Cliente, Conta_ClienteAdiantamento, ' +
        'Conta_Fornecedor, Conta_FornecedorAdiantamento, Conta_Despesas, ' +
        'Conta_Impostos)'
      'VALUES'
      
        '  (:Codigo, :Descricao, :Conta_Cliente, :Conta_ClienteAdiantamen' +
        'to, :Conta_Fornecedor, :Conta_FornecedorAdiantamento, :Conta_Des' +
        'pesas, :Conta_Impostos)')
    SQLDelete.Strings = (
      'DELETE FROM TiposProcesso'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE TiposProcesso'
      'SET'
      
        '  Codigo = :Codigo, Descricao = :Descricao, Conta_Cliente = :Con' +
        'ta_Cliente, Conta_ClienteAdiantamento = :Conta_ClienteAdiantamen' +
        'to, Conta_Fornecedor = :Conta_Fornecedor, Conta_FornecedorAdiant' +
        'amento = :Conta_FornecedorAdiantamento, Conta_Despesas = :Conta_' +
        'Despesas, Conta_Impostos = :Conta_Impostos'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT TiposProcesso.Codigo, TiposProcesso.Descricao, TiposProce' +
        'sso.Conta_Cliente, TiposProcesso.Conta_ClienteAdiantamento, Tipo' +
        'sProcesso.Conta_Fornecedor, TiposProcesso.Conta_FornecedorAdiant' +
        'amento, TiposProcesso.Conta_Despesas, TiposProcesso.Conta_Impost' +
        'os FROM TiposProcesso'
      'WHERE TiposProcesso.Codigo = :Codigo ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select isnull(sum(Total_Fatura), 0)   as Total_Real,'
      '       isnull(sum(Total_FaturaME), 0) as Total_ME,'
      '       isnull(sum(Peso_Liquido), 0)   as Total_PesoLiquido,'
      '       isnull(sum(Peso_Bruto), 0)     as Total_PesoBruto'
      'from Invoice'
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 234
    Top = 343
  end
  object tItem: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT ISNULL(MAX(Registro),0) AS Registro FROM PackingListItens')
    Left = 235
    Top = 390
  end
  object tLPCO: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO TiposProcesso'
      
        '  (Codigo, Descricao, Conta_Cliente, Conta_ClienteAdiantamento, ' +
        'Conta_Fornecedor, Conta_FornecedorAdiantamento, Conta_Despesas, ' +
        'Conta_Impostos)'
      'VALUES'
      
        '  (:Codigo, :Descricao, :Conta_Cliente, :Conta_ClienteAdiantamen' +
        'to, :Conta_Fornecedor, :Conta_FornecedorAdiantamento, :Conta_Des' +
        'pesas, :Conta_Impostos)')
    SQLDelete.Strings = (
      'DELETE FROM TiposProcesso'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE TiposProcesso'
      'SET'
      
        '  Codigo = :Codigo, Descricao = :Descricao, Conta_Cliente = :Con' +
        'ta_Cliente, Conta_ClienteAdiantamento = :Conta_ClienteAdiantamen' +
        'to, Conta_Fornecedor = :Conta_Fornecedor, Conta_FornecedorAdiant' +
        'amento = :Conta_FornecedorAdiantamento, Conta_Despesas = :Conta_' +
        'Despesas, Conta_Impostos = :Conta_Impostos'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT TiposProcesso.Codigo, TiposProcesso.Descricao, TiposProce' +
        'sso.Conta_Cliente, TiposProcesso.Conta_ClienteAdiantamento, Tipo' +
        'sProcesso.Conta_Fornecedor, TiposProcesso.Conta_FornecedorAdiant' +
        'amento, TiposProcesso.Conta_Despesas, TiposProcesso.Conta_Impost' +
        'os FROM TiposProcesso'
      'WHERE TiposProcesso.Codigo = :Codigo ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Invoice'
      
        '      ,Orgao_Anuente = (select Nome from Cybersoft_Cadastros.dbo' +
        '.OrgaosAnuentes where Codigo = LPCO.Orgao_Anuente)'
      
        #9'  ,Documento = (select Documento from LPCO where LPCO.Registro ' +
        '= iil.LPCO)'
      
        #9'  ,Numero = (select NUmero from LPCO where LPCO.Registro = iil.' +
        'LPCO)'
      'from InvoiceItensLPCO iil, LPCO'
      'where iil.Invoice = '#39'HFT230928'#39
      'and Codigo_Mercadoria = 2'
      'and LPCO.Registro = iil.LPCO')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 374
    Top = 343
  end
  object dstLPCO: TDataSource
    DataSet = tLPCO
    Left = 374
    Top = 390
  end
  object tTransportador: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO TiposProcesso'
      
        '  (Codigo, Descricao, Conta_Cliente, Conta_ClienteAdiantamento, ' +
        'Conta_Fornecedor, Conta_FornecedorAdiantamento, Conta_Despesas, ' +
        'Conta_Impostos)'
      'VALUES'
      
        '  (:Codigo, :Descricao, :Conta_Cliente, :Conta_ClienteAdiantamen' +
        'to, :Conta_Fornecedor, :Conta_FornecedorAdiantamento, :Conta_Des' +
        'pesas, :Conta_Impostos)')
    SQLDelete.Strings = (
      'DELETE FROM TiposProcesso'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE TiposProcesso'
      'SET'
      
        '  Codigo = :Codigo, Descricao = :Descricao, Conta_Cliente = :Con' +
        'ta_Cliente, Conta_ClienteAdiantamento = :Conta_ClienteAdiantamen' +
        'to, Conta_Fornecedor = :Conta_Fornecedor, Conta_FornecedorAdiant' +
        'amento = :Conta_FornecedorAdiantamento, Conta_Despesas = :Conta_' +
        'Despesas, Conta_Impostos = :Conta_Impostos'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT TiposProcesso.Codigo, TiposProcesso.Descricao, TiposProce' +
        'sso.Conta_Cliente, TiposProcesso.Conta_ClienteAdiantamento, Tipo' +
        'sProcesso.Conta_Fornecedor, TiposProcesso.Conta_FornecedorAdiant' +
        'amento, TiposProcesso.Conta_Despesas, TiposProcesso.Conta_Impost' +
        'os FROM TiposProcesso'
      'WHERE TiposProcesso.Codigo = :Codigo ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 302
    Top = 343
  end
  object dstTransportador: TDataSource
    DataSet = tTransportador
    Left = 302
    Top = 390
  end
end
