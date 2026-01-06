object Estoque_Minimo: TEstoque_Minimo
  Left = 221
  Top = 129
  BorderStyle = bsDialog
  Caption = 'Estoque_Minimo'
  ClientHeight = 511
  ClientWidth = 886
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    886
    511)
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 886
    Height = 46
    Align = alTop
    Stretch = True
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 2
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
  object RxLabel4: TRxLabel
    Left = 8
    Top = 22
    Width = 352
    Height = 18
    Caption = 'Verifica'#231#227'o de produtos que atingiram o estoque m'#237'nino.'
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 48
    Width = 886
    Height = 347
    DataSource = dstDisponivel
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 72
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NCM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 500
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Estoque_Minimo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'M'#237'nimo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Disponivel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Dispon'#237'vel'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 110
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 482
    Width = 886
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      886
      29)
    object bSair: TButton
      Left = 815
      Top = 1
      Width = 71
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
    object bEmail: TButton
      Left = 710
      Top = 1
      Width = 105
      Height = 28
      Anchors = [akTop, akRight]
      Caption = '&Enviar E-Mail'
      Enabled = False
      TabOrder = 1
      OnClick = bEmailClick
    end
  end
  object Panel2: TPanel
    Left = 6
    Top = 397
    Width = 875
    Height = 81
    Anchors = [akLeft, akBottom]
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object StaticText12: TStaticText
      Left = 7
      Top = 7
      Width = 55
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'E-Mail'
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
    object cEmail: TEdit
      Left = 64
      Top = 7
      Width = 738
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      TabOrder = 1
      Text = 'cEmail'
    end
    object cCC: TEdit
      Left = 64
      Top = 30
      Width = 738
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      TabOrder = 2
      Text = 'Edit1'
    end
    object StaticText1: TStaticText
      Left = 7
      Top = 30
      Width = 55
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'CC'
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
    object StaticText2: TStaticText
      Left = 7
      Top = 53
      Width = 55
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Assunto'
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
    object cAssunto: TEdit
      Left = 64
      Top = 53
      Width = 738
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = 'RELA'#199#195'O DE PRODUTOS QUE ATINGIRAM O ESTOQUE M'#205'NIMO'
    end
  end
  object tDisponivel: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'USE Cybersoft_TOPLOG'
      'SELECT Codigo, '
      '       Codigo_Fabricante,'
      '       GTIN,'
      '       NCM,'
      
        '       REPLACE( REPLACE(Descricao, '#39'<{'#39'+CAST(Codigo AS varchar(1' +
        '5))+'#39'}>'#39', '#39#39') , CHAR(13), '#39#39' ) AS Descricao,'
      '       Estoque_Minimo,'
      
        '       CAST((ISNULL((SELECT SUM(Quantidade) FROM NotasItens     ' +
        ' WHERE(Codigo_Mercadoria = Codigo) AND (Saida_Entrada = 0) AND (' +
        'Movimenta_Estoque = 1) AND (Cancelada <> 1)), 0) +'
      
        '       ISNULL((SELECT SUM(Quantidade) FROM NotasTerceirosItens  ' +
        ' WHERE(Codigo_Mercadoria = Codigo) AND (Movimenta_Estoque = 1)),' +
        ' 0) +'
      
        '       ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia' +
        ' WHERE(Produto_Entrada   = Codigo) ), 0) -'
      
        '       ISNULL((SELECT SUM(Quantidade) FROM NotasItens           ' +
        ' WHERE(Codigo_Mercadoria = Codigo) AND (Saida_Entrada = 1) AND (' +
        'Movimenta_Estoque = 1) AND (Cancelada <> 1)), 0) -'
      
        '       ISNULL((SELECT SUM(Quantidade) FROM PedidosItens         ' +
        ' WHERE(Codigo_Mercadoria = Codigo) AND (Saida_Entrada = 1) AND (' +
        'Movimenta_Estoque = 1)  ), 0)) -'
      
        '       ISNULL((SELECT SUM(Quantidade) FROM ProdutosTransferencia' +
        ' WHERE(Produto_Saida     = Codigo) ), 0) AS DECIMAL(14,3))'
      '       AS Disponivel'
      'INTO   #TEMP'
      'FROM   Produtos '
      'WHERE  (Estoque_Minimo > 0) '
      ''
      'SELECT * FROM #TEMP'
      'WHERE (Disponivel <= Estoque_Minimo)'
      ''
      'DROP TABLE #TEMP'
      '')
    Left = 32
    Top = 256
    object tDisponivelCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'Cybersoft_TOPLOG..#TEMP.Codigo'
    end
    object tDisponivelNCM: TStringField
      FieldName = 'NCM'
      Origin = 'Cybersoft_TOPLOG..#TEMP.NCM'
      EditMask = '9999.99.99;0; '
      Size = 10
    end
    object tDisponivelDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Cybersoft_TOPLOG..#TEMP.Descricao'
      Size = 8000
    end
    object tDisponivelEstoque_Minimo: TFloatField
      FieldName = 'Estoque_Minimo'
      Origin = 'Cybersoft_TOPLOG..#TEMP.Estoque_Minimo'
      DisplayFormat = ',##0.0000'
    end
    object tDisponivelDisponivel: TFloatField
      FieldName = 'Disponivel'
      Origin = 'Cybersoft_TOPLOG..#TEMP.Disponivel'
      DisplayFormat = ',##0.0000'
      Precision = 14
    end
  end
  object dstDisponivel: TDataSource
    DataSet = tDisponivel
    Left = 32
    Top = 304
  end
  object SMTP: TIdSMTP
    IOHandler = SSLSocket
    AuthType = satNone
    Port = 465
    SASLMechanisms = <>
    UseTLS = utUseImplicitTLS
    Left = 125
    Top = 257
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
    Left = 123
    Top = 305
  end
  object SSLSocket: TIdSSLIOHandlerSocketOpenSSL
    Destination = ':465'
    MaxLineAction = maException
    Port = 465
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 122
    Top = 353
  end
  object rPDF: TppReport
    AutoStop = False
    DataPipeline = pDisponivel
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Estoque M'#237'nimo'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Sistemas\Faturamento\Relatorios\Estoque_Minimo.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'PDF'
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
    Left = 352
    Top = 344
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pDisponivel'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 22225
      mmPrintPosition = 0
      object ppDBImage2: TppDBImage
        DesignLayer = ppDesignLayer1
        UserName = 'DBImage1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Logomarca'
        DataPipeline = pEmpresas
        GraphicType = 'Bitmap'
        ParentDataPipeline = False
        DataPipelineName = 'pEmpresas'
        mmHeight = 16933
        mmLeft = 0
        mmTop = 0
        mmWidth = 27781
        BandType = 0
        LayerName = Foreground
      end
      object lTitulo: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTitulo'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Rela'#231#227'o de Produtos que atingiram o estoque m'#237'nimo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5292
        mmLeft = 30427
        mmTop = 7144
        mmWidth = 254001
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'C'#211'DIGO'
        Color = 4194304
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3387
        mmLeft = 0
        mmTop = 18785
        mmWidth = 25136
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DESCRI'#199#195'O'
        Color = 4194304
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3387
        mmLeft = 42598
        mmTop = 18785
        mmWidth = 181769
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'M'#205'NIMO'
        Color = 4194304
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3387
        mmLeft = 225425
        mmTop = 18785
        mmWidth = 29104
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NCM'
        Color = 4194304
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3387
        mmLeft = 25929
        mmTop = 18785
        mmWidth = 15875
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 5821
        mmLeft = 30427
        mmTop = 0
        mmWidth = 254001
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ESTOQUE'
        Color = 4194304
        Ellipsis = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3387
        mmLeft = 255588
        mmTop = 18785
        mmWidth = 29104
        BandType = 0
        LayerName = Foreground
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
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Codigo'
        DataPipeline = pDisponivel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'pDisponivel'
        mmHeight = 3471
        mmLeft = 0
        mmTop = 0
        mmWidth = 25135
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'NCM'
        DataPipeline = pDisponivel
        DisplayFormat = '9999.99.99;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pDisponivel'
        mmHeight = 3471
        mmLeft = 25929
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppDBMemo1: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo1'
        Border.mmPadding = 0
        CharWrap = True
        DataField = 'Descricao'
        DataPipeline = pDisponivel
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'pDisponivel'
        mmHeight = 3704
        mmLeft = 42333
        mmTop = 0
        mmWidth = 182034
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'Estoque_Minimo'
        DataPipeline = pDisponivel
        DisplayFormat = ',##0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pDisponivel'
        mmHeight = 3471
        mmLeft = 225425
        mmTop = 0
        mmWidth = 29104
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'Disponivel'
        DataPipeline = pDisponivel
        DisplayFormat = ',##0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pDisponivel'
        mmHeight = 3440
        mmLeft = 255588
        mmTop = 0
        mmWidth = 29104
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLabel34: TppLabel
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
        mmHeight = 2910
        mmLeft = 265
        mmTop = 0
        mmWidth = 45773
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 266171
        mmTop = 529
        mmWidth = 18256
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable5: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
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
        mmLeft = 115094
        mmTop = 529
        mmWidth = 23019
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable6: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable3'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 143140
        mmTop = 265
        mmWidth = 26194
        BandType = 8
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 46831
        mmTop = 0
        mmWidth = 3969
        BandType = 8
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 264848
        mmTop = 265
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 284428
        BandType = 8
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
    object ppParameterList1: TppParameterList
    end
  end
  object pEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    CloseDataSource = True
    UserName = 'pEmpresas'
    Left = 232
    Top = 344
  end
  object pDisponivel: TppDBPipeline
    DataSource = dstDisponivel
    CloseDataSource = True
    UserName = 'pDisponivel'
    Left = 296
    Top = 344
  end
end
