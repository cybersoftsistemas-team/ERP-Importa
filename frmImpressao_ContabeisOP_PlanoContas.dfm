object Impressao_ContabeisOP_PlanoContas: TImpressao_ContabeisOP_PlanoContas
  Left = 576
  Top = 235
  BorderStyle = bsDialog
  Caption = 'Impressao_ContabeisOP_PlanoContas'
  ClientHeight = 290
  ClientWidth = 322
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
    Width = 322
    Height = 37
    Align = alTop
    Stretch = True
  end
  object RxLabel1: TRxLabel
    Left = 4
    Top = -1
    Width = 178
    Height = 21
    Caption = 'IMPRESS'#195'O - CONTABEIS'
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
    Left = 4
    Top = 16
    Width = 106
    Height = 18
    Caption = 'Plano de Contas.'
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
    Top = 260
    Width = 322
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      322
      30)
    object bSair: TButton
      Left = 255
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
    object bImprimir: TButton
      Left = 189
      Top = 1
      Width = 66
      Height = 28
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      OnClick = bVisualizarClick
    end
  end
  object cImpressora: TRadioGroup
    Left = 167
    Top = 148
    Width = 145
    Height = 61
    Caption = 'Impressora'
    ItemIndex = 0
    Items.Strings = (
      'Matricial'
      'Jato deTinta')
    TabOrder = 1
  end
  object cOrdem: TRadioGroup
    Left = 10
    Top = 148
    Width = 145
    Height = 61
    Caption = 'Ordem'
    ItemIndex = 0
    Items.Strings = (
      'Numerica'
      'Alfabetica')
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 10
    Top = 56
    Width = 302
    Height = 84
    Caption = 'Op'#231#245'es'
    TabOrder = 3
    object cSalto: TCheckBox
      Left = 10
      Top = 18
      Width = 275
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Saltar Pagina na mudan'#231'a de Grupo'
      TabOrder = 0
    end
    object cNegrito: TCheckBox
      Left = 10
      Top = 39
      Width = 275
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Contas Titulo em Negrito'
      TabOrder = 1
    end
    object cMaiusculo: TCheckBox
      Left = 10
      Top = 59
      Width = 275
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Nome das Contas em Mai'#250'sculo'
      TabOrder = 2
    end
  end
  object cExcel: TCheckBox
    Left = 12
    Top = 229
    Width = 114
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Enviar para EXCEL'
    TabOrder = 4
  end
  object rPlanoContas: TppReport
    AutoStop = False
    DataPipeline = ppPlanoContas
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Plano de Contas'
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
    Template.FileName = 'C:\Sistemas\Faturamento\Codigo Fonte\Relatorios\PlanoContas.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = rPlanoContasBeforePrint
    CachePages = True
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
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
    TextSearchSettings.ShowAll = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 184
    Top = 8
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppPlanoContas'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 19315
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        Color = clBlue
        DataField = 'Razao_Social'
        DataPipeline = ppEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 14
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppEmpresas'
        mmHeight = 6011
        mmLeft = 25135
        mmTop = 1323
        mmWidth = 171450
        BandType = 0
        LayerName = Foreground
      end
      object lTitulo: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTitulo'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Plano de Contas Numerico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = [fsItalic]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5165
        mmLeft = 25135
        mmTop = 8467
        mmWidth = 171450
        BandType = 0
        LayerName = Foreground
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        Brush.Color = 10485760
        Shape = stRoundRect
        mmHeight = 4233
        mmLeft = 0
        mmTop = 15081
        mmWidth = 25929
        BandType = 0
        LayerName = Foreground
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        Brush.Color = clNavy
        Shape = stRoundRect
        mmHeight = 4233
        mmLeft = 26194
        mmTop = 15081
        mmWidth = 21167
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'C'#211'DIGO'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3387
        mmLeft = 26988
        mmTop = 15346
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape4'
        Brush.Color = clNavy
        Shape = stRoundRect
        mmHeight = 4233
        mmLeft = 47625
        mmTop = 15081
        mmWidth = 128588
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NOME DA CONTA'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3387
        mmLeft = 48419
        mmTop = 15346
        mmWidth = 127000
        BandType = 0
        LayerName = Foreground
      end
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape5'
        Brush.Color = clNavy
        Shape = stRoundRect
        mmHeight = 4233
        mmLeft = 176477
        mmTop = 15081
        mmWidth = 20902
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NATUREZA'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3387
        mmLeft = 177271
        mmTop = 15346
        mmWidth = 19315
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CONTA'
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3440
        mmLeft = 794
        mmTop = 15346
        mmWidth = 24342
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
        mmHeight = 13229
        mmLeft = 794
        mmTop = 529
        mmWidth = 23019
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object lItem: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lItem'
        Border.mmPadding = 0
        Caption = 'lItem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4022
        mmLeft = 265
        mmTop = 0
        mmWidth = 7662
        BandType = 4
        LayerName = Foreground
      end
      object lNatureza: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lItem1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'lItem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'MS Sans Serif'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2469
        mmLeft = 180182
        mmTop = 529
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      BeforePrint = ppFooterBand1BeforePrint
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 197909
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Cybersoft Sistemas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 529
        mmWidth = 24553
        BandType = 8
        LayerName = Foreground
      end
      object lData: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lData'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Cybersoft Sistemas'
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
        mmLeft = 96309
        mmTop = 529
        mmWidth = 78317
        BandType = 8
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 93927
        mmTop = 0
        mmWidth = 2117
        BandType = 8
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 175948
        mmTop = 0
        mmWidth = 2117
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 178330
        mmTop = 529
        mmWidth = 18521
        BandType = 8
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 27781
        mmTop = 0
        mmWidth = 2117
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'Contador_Nome'
        DataPipeline = ppEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEmpresas'
        mmHeight = 3175
        mmLeft = 28575
        mmTop = 529
        mmWidth = 52123
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'Contador_CRC'
        DataPipeline = ppEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEmpresas'
        mmHeight = 3175
        mmLeft = 81756
        mmTop = 529
        mmWidth = 11906
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Grupo'
      DataPipeline = ppPlanoContas
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppPlanoContas'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Visible = False
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 3704
        mmPrintPosition = 0
      end
      object Grupo: TppGroupFooterBand
        Visible = False
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'Grupo'
      DataPipeline = ppPlanoContas
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppPlanoContas'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        Visible = False
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
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
  object ppPlanoContas: TppDBPipeline
    DataSource = dmContab.dsPlanoContas
    UserName = 'PlanoContas'
    Left = 216
    Top = 8
    object ppPlanoContasppField1: TppField
      FieldAlias = 'Conta'
      FieldName = 'Conta'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppPlanoContasppField2: TppField
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 12
      DisplayWidth = 12
      Position = 1
    end
    object ppPlanoContasppField3: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppPlanoContasppField4: TppField
      FieldAlias = 'Saldo_Anterior'
      FieldName = 'Saldo_Anterior'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 3
    end
    object ppPlanoContasppField5: TppField
      FieldAlias = 'Debito'
      FieldName = 'Debito'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 4
    end
    object ppPlanoContasppField6: TppField
      FieldAlias = 'Credito'
      FieldName = 'Credito'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 5
    end
    object ppPlanoContasppField7: TppField
      FieldAlias = 'Sintetica'
      FieldName = 'Sintetica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 6
    end
    object ppPlanoContasppField8: TppField
      FieldAlias = 'Natureza'
      FieldName = 'Natureza'
      FieldLength = 1
      DisplayWidth = 1
      Position = 7
    end
    object ppPlanoContasppField9: TppField
      FieldAlias = 'LALUR'
      FieldName = 'LALUR'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 8
    end
    object ppPlanoContasppField10: TppField
      FieldAlias = 'Mostrar_Balanco'
      FieldName = 'Mostrar_Balanco'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 9
    end
    object ppPlanoContasppField11: TppField
      FieldAlias = 'Atualiza_Anterior'
      FieldName = 'Atualiza_Anterior'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 10
    end
    object ppPlanoContasppField12: TppField
      FieldAlias = 'Atualiza_Debito'
      FieldName = 'Atualiza_Debito'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 11
    end
    object ppPlanoContasppField13: TppField
      FieldAlias = 'Atualiza_Credito'
      FieldName = 'Atualiza_Credito'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 12
    end
    object ppPlanoContasppField14: TppField
      FieldAlias = 'Imprimir_Razao'
      FieldName = 'Imprimir_Razao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 13
    end
    object ppPlanoContasppField15: TppField
      FieldAlias = 'DRE'
      FieldName = 'DRE'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 14
    end
    object ppPlanoContasppField16: TppField
      FieldAlias = 'Data_Exportacao'
      FieldName = 'Data_Exportacao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 15
    end
    object ppPlanoContasppField17: TppField
      FieldAlias = 'Data_Inclusao'
      FieldName = 'Data_Inclusao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 16
    end
    object ppPlanoContasppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nivel'
      FieldName = 'Nivel'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppPlanoContasppField19: TppField
      FieldAlias = 'Conta_Grupo'
      FieldName = 'Conta_Grupo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 18
    end
    object ppPlanoContasppField20: TppField
      FieldAlias = 'Natureza_Conta'
      FieldName = 'Natureza_Conta'
      FieldLength = 2
      DisplayWidth = 2
      Position = 19
    end
    object ppPlanoContasppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Empresa'
      FieldName = 'Empresa'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object ppPlanoContasppField22: TppField
      FieldAlias = 'Tipo_Terceiros'
      FieldName = 'Tipo_Terceiros'
      FieldLength = 2
      DisplayWidth = 2
      Position = 21
    end
    object ppPlanoContasppField23: TppField
      FieldAlias = 'Codigo_Terceiros'
      FieldName = 'Codigo_Terceiros'
      FieldLength = 15
      DisplayWidth = 15
      Position = 22
    end
    object ppPlanoContasppField24: TppField
      FieldAlias = 'Grupo'
      FieldName = 'Grupo'
      FieldLength = 1
      DisplayWidth = 1
      Position = 23
    end
  end
  object ppEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    UserName = 'Empresas'
    Left = 248
    Top = 8
  end
end
