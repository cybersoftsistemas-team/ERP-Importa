object NFe_Cancelamento: TNFe_Cancelamento
  Left = 428
  Top = 195
  BorderStyle = bsDialog
  Caption = 'Balue'
  ClientHeight = 542
  ClientWidth = 896
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
    Width = 896
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitWidth = 889
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 92
    Height = 21
    Caption = 'NOTA FISCAL'
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
    Width = 245
    Height = 18
    Caption = 'Cancelamento de nota fiscal eletr'#244'nica.'
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
  object GroupBox1: TGroupBox
    Left = 608
    Top = 55
    Width = 277
    Height = 36
    TabOrder = 4
    object cRecriarPedido: TCheckBox
      Left = 11
      Top = 8
      Width = 254
      Height = 19
      Caption = 'Recriar o pedido no cancelamento da nota fiscal'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
  end
  object cTipo: TRadioGroup
    Left = 4
    Top = 49
    Width = 199
    Height = 42
    Caption = 'Tipo de Nota Fiscal'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Entrada'
      'Sa'#237'da')
    TabOrder = 0
    OnClick = cTipoClick
  end
  object cData: TDateEdit
    Left = 212
    Top = 63
    Width = 109
    Height = 21
    CheckOnExit = True
    DialogTitle = 'Selecione uma data'
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
  object Panel1: TPanel
    Left = 0
    Top = 510
    Width = 896
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    object bSair: TButton
      AlignWithMargins = True
      Left = 840
      Top = 2
      Width = 54
      Height = 28
      Cursor = crHandPoint
      Hint = '  Fecha a janela atual e cancela os processos pendentes.  '
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bCancelar: TButton
      AlignWithMargins = True
      Left = 726
      Top = 2
      Width = 86
      Height = 28
      Cursor = crHandPoint
      Hint = '  Executa o cancelamento da nota fiscal selecionada.  '
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Cancelar NF-e'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bCancelarClick
    end
    object bConsultar: TButton
      AlignWithMargins = True
      Left = 483
      Top = 2
      Width = 150
      Height = 28
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Consultar Si&tua'#231#227'o da NF-e'
      TabOrder = 2
      OnClick = bConsultarClick
    end
    object Navega: TDBNavigator
      AlignWithMargins = True
      Left = 1
      Top = 2
      Width = 173
      Height = 28
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      DataSource = dmFiscal.dsNotas
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
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
      ShowHint = True
      TabOrder = 3
    end
    object bPesquisa: TButton
      AlignWithMargins = True
      Left = 175
      Top = 2
      Width = 64
      Height = 28
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Pesquisar'
      TabOrder = 4
      OnClick = bPesquisaClick
    end
    object bProtocolo: TButton
      AlignWithMargins = True
      Left = 365
      Top = 2
      Width = 117
      Height = 28
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Recuperar Protocolo'
      TabOrder = 5
      OnClick = bProtocoloClick
    end
    object bRecriar: TButton
      AlignWithMargins = True
      Left = 240
      Top = 2
      Width = 124
      Height = 28
      Cursor = crHandPoint
      Hint = '  Executa o cancelamento da nota fiscal selecionada.  '
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Apenas Recria Pedido'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = bRecriarClick
    end
    object bDownload: TButton
      AlignWithMargins = True
      Left = 634
      Top = 2
      Width = 91
      Height = 28
      Cursor = crHandPoint
      Hint = '  Executa o cancelamento da nota fiscal selecionada.  '
      Margins.Left = 0
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Download XML'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      Visible = False
      OnClick = bDownloadClick
    end
  end
  object Grade: TDBGrid
    Left = 4
    Top = 99
    Width = 885
    Height = 237
    DataSource = dmFiscal.dsNotas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnCellClick = GradeCellClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data_Emissao'
        Title.Alignment = taCenter
        Title.Caption = 'Emiss'#227'o'
        Width = 105
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Numero'
        Title.Alignment = taCenter
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Destinatario_Nome'
        Title.Alignment = taCenter
        Title.Caption = 'Destinat'#225'rio'
        Width = 298
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Processo'
        Title.Alignment = taCenter
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_TotalNota'
        Title.Alignment = taCenter
        Title.Caption = 'Total Nota'
        Width = 99
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clWindow
        Expanded = False
        FieldName = 'DPEC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Width = 35
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clWindow
        Expanded = False
        FieldName = 'Complementar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -16
        Font.Name = 'Webdings'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Compl'
        Width = 35
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clWindow
        Expanded = False
        FieldName = 'Devolucao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -16
        Font.Name = 'Webdings'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Dev'
        Width = 35
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clWindow
        Expanded = False
        FieldName = 'Cancelada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -16
        Font.Name = 'Webdings'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Canc'
        Width = 35
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clWindow
        Expanded = False
        FieldName = 'Nfe_Denegada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -16
        Font.Name = 'Webdings'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Deneg'
        Visible = True
      end>
  end
  object cMensagens: TMemo
    Left = 4
    Top = 344
    Width = 885
    Height = 161
    BevelOuter = bvRaised
    Color = 16768667
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object bFiltrar: TButton
    Left = 323
    Top = 60
    Width = 60
    Height = 28
    Caption = '&Filtrar'
    TabOrder = 6
    OnClick = bFiltrarClick
  end
  object tPedido: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Numero) AS Pedido FROM Pedidos')
    Left = 117
    Top = 208
    object tPedidoPedido: TIntegerField
      FieldName = 'Pedido'
      Origin = '.'
      ReadOnly = True
    end
  end
  object SMTP: TIdSMTP
    IOHandler = SSLSocket
    AuthType = satNone
    Port = 465
    SASLMechanisms = <>
    UseTLS = utUseImplicitTLS
    Left = 436
    Top = 1
  end
  object EmailMSG: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 498
    Top = 1
  end
  object tProcessos: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 117
    Top = 264
  end
  object tItens: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 176
    Top = 159
  end
  object tHistorico: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Numero) AS Numero FROM ProcessosHistorico')
    FetchRows = 1
    Left = 176
    Top = 208
  end
  object tBaixas: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 237
    Top = 159
  end
  object SSLSocket: TIdSSLIOHandlerSocketOpenSSL
    Destination = ':465'
    MaxLineAction = maException
    Port = 465
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 560
    Top = 1
  end
  object tRegistro: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 237
    Top = 208
  end
  object tSaidas: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 237
    Top = 264
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Numero) AS Numero FROM ProcessosHistorico')
    FetchRows = 1
    Left = 117
    Top = 159
  end
  object tCIAP: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 176
    Top = 264
  end
  object tEmpresa: TMSQuery
    Connection = Dados.Banco
    FetchRows = 1
    Left = 292
    Top = 161
  end
  object tPass: TMSQuery
    Connection = Dados.Banco
    FetchRows = 1
    Left = 292
    Top = 209
  end
end
