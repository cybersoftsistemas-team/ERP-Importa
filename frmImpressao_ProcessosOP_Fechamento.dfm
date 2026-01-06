object Impressao_ProcessosOP_Fechamento: TImpressao_ProcessosOP_Fechamento
  Left = 312
  Top = 125
  BorderStyle = bsDialog
  Caption = 'Impressao_ProcessosOP_Fechamento'
  ClientHeight = 490
  ClientWidth = 650
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
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
    Width = 650
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitWidth = 647
  end
  object RxLabel1: TRxLabel
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
  object RxLabel2: TRxLabel
    Left = 8
    Top = 22
    Width = 309
    Height = 18
    Caption = 'Impress'#227'o dos dados de Fechamento do Processo.'
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
    Top = 460
    Width = 650
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      650
      30)
    object bSair: TButton
      Left = 574
      Top = 1
      Width = 74
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
      Width = 200
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsProcessosFechamento
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
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
      ShowHint = True
      TabOrder = 1
    end
    object bPesquisa: TButton
      Left = 201
      Top = 1
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Caption = '&Pesquisar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bPesquisaClick
    end
    object bImprimir: TButton
      Left = 275
      Top = 1
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bImprimirClick
    end
  end
  object Grade: TDBGrid
    Left = 5
    Top = 82
    Width = 638
    Height = 363
    DataSource = Dados.dsProcessosFechamento
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = GradeDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 57
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Processo'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome_Cliente'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 340
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Complementar'
        PickList.Strings = (
          'Sim'
          'N'#227'o')
        Title.Alignment = taCenter
        Title.Caption = 'Compl'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 40
        Visible = True
      end>
  end
  object cCapa: TCheckBox
    Left = 8
    Top = 56
    Width = 139
    Height = 17
    Caption = 'Imprimir Pagina da Capa'
    TabOrder = 2
  end
  object rProcessoFechamento: TppReport
    AutoStop = False
    DataPipeline = pProcessos
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Cybersoft - Fechamento do Processo.'
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
      'C:\Sistemas\Faturamento\Codigo Fonte\Relatorios\ProcessosFechame' +
      'nto.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
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
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 560
    Top = 152
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pProcessos'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 16933
      mmPrintPosition = 0
      object ppShape7: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape7'
        Brush.Color = 16771797
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 128852
        mmTop = 12171
        mmWidth = 68792
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 4995
        mmLeft = 29634
        mmTop = 0
        mmWidth = 167747
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'lTitulo1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'FECHAMENTO N'#186' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 147902
        mmTop = 20108
        mmWidth = 29898
        BandType = 0
        LayerName = Foreground3
      end
      object ppLabel72: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label72'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'de '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        mmHeight = 4234
        mmLeft = 175419
        mmTop = 12700
        mmWidth = 4233
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText14'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Codigo'
        DataPipeline = pProcessos
        DisplayFormat = '0000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProcessos'
        mmHeight = 4106
        mmLeft = 159809
        mmTop = 12700
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText19'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Data'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProcessos'
        mmHeight = 4233
        mmLeft = 179917
        mmTop = 12700
        mmWidth = 17463
        BandType = 0
        LayerName = Foreground3
      end
      object lComplementar: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'lComplementar'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Complementar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 4106
        mmLeft = 29634
        mmTop = 5821
        mmWidth = 167747
        BandType = 0
        LayerName = Foreground3
      end
      object iLogo: TppImage
        DesignLayer = ppDesignLayer4
        UserName = 'iLogo'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 16669
        mmLeft = 0
        mmTop = 0
        mmWidth = 27252
        BandType = 0
        LayerName = Foreground3
      end
      object ppDBText71: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText71'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Processo'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProcessos'
        mmHeight = 4103
        mmLeft = 129914
        mmTop = 12700
        mmWidth = 26988
        BandType = 0
        LayerName = Foreground3
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 28840
      mmPrintPosition = 0
      object ppShape9: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape9'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 50536
        mmTop = 14023
        mmWidth = 78317
        BandType = 4
        LayerName = Foreground3
      end
      object ppShape14: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape14'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 128852
        mmTop = 14023
        mmWidth = 34131
        BandType = 4
        LayerName = Foreground3
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape1'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 0
        mmTop = 4498
        mmWidth = 40217
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Processo'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3387
        mmLeft = 12435
        mmTop = 5027
        mmWidth = 26988
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'PROCESSO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 1058
        mmTop = 5027
        mmWidth = 11113
        BandType = 4
        LayerName = Foreground3
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape2'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 67204
        mmTop = 4498
        mmWidth = 37571
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Incentivo_Fiscal'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3387
        mmLeft = 79904
        mmTop = 5027
        mmWidth = 24342
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label4'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'BENEF'#205'CIO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2159
        mmLeft = 67998
        mmTop = 5027
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground3
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape3'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 104775
        mmTop = 4498
        mmWidth = 92869
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText6'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Incoterms'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 124619
        mmTop = 5027
        mmWidth = 10319
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label5'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CODI'#199#195'O DE VENDA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2159
        mmLeft = 105834
        mmTop = 5027
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground3
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape4'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 0
        mmTop = 9260
        mmWidth = 113506
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label6'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 1058
        mmTop = 9790
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground3
      end
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape5'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 113506
        mmTop = 9260
        mmWidth = 84138
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Modalidade'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3387
        mmLeft = 128852
        mmTop = 9790
        mmWidth = 67733
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label7'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'MODALIDADE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2159
        mmLeft = 114300
        mmTop = 9790
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label2'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' PROCESSO'
        Color = 166
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 3429
        mmLeft = 0
        mmTop = 529
        mmWidth = 197643
        BandType = 4
        LayerName = Foreground3
      end
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape6'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 40217
        mmTop = 4498
        mmWidth = 26988
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Processo_Abertura'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 51594
        mmTop = 5027
        mmWidth = 15081
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label3'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ABERTURA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2381
        mmLeft = 41275
        mmTop = 5027
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText9'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'INCOTERMS_Descricao'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 135202
        mmTop = 5027
        mmWidth = 61913
        BandType = 4
        LayerName = Foreground3
      end
      object ppShape8: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape8'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 0
        mmTop = 14023
        mmWidth = 50536
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Via_Transporte'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 20638
        mmTop = 14552
        mmWidth = 29104
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label9'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VIA DE TRANSPORTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 1058
        mmTop = 14552
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText11'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Nome_Transporte'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 78052
        mmTop = 14552
        mmWidth = 49477
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label10'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'NOME DA VIA TRANSPORTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2159
        mmLeft = 51858
        mmTop = 14552
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label17'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DATA PREVISTA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 129646
        mmTop = 14552
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText15'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Navio_DataPrevista'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 145257
        mmTop = 14552
        mmWidth = 16934
        BandType = 4
        LayerName = Foreground3
      end
      object ppShape15: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape15'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 162984
        mmTop = 14023
        mmWidth = 34660
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label18'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DATA CHEGADA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 164042
        mmTop = 14552
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText16'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Navio_DataChegada'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 179652
        mmTop = 14552
        mmWidth = 16934
        BandType = 4
        LayerName = Foreground3
      end
      object ppShape44: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape44'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 0
        mmTop = 24077
        mmWidth = 34396
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label303'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DI N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 794
        mmTop = 24606
        mmWidth = 6879
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText46: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText46'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Numero_Declaracao'
        DataPipeline = pProcessos
        DisplayFormat = '99/9999999-9;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 8731
        mmTop = 24606
        mmWidth = 24606
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label49'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' DI'
        Color = 166
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 3429
        mmLeft = 0
        mmTop = 20108
        mmWidth = 197643
        BandType = 4
        LayerName = Foreground3
      end
      object ppShape45: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape303'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 34396
        mmTop = 24077
        mmWidth = 31221
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel50: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label50'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'REGISTRO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 35190
        mmTop = 24606
        mmWidth = 10319
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText47: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText47'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Data_RegistroDeclaracao'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 46567
        mmTop = 24606
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground3
      end
      object ppShape47: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape47'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 100277
        mmTop = 24077
        mmWidth = 97367
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel52: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label401'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CANAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 101071
        mmTop = 24606
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText49: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText49'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Canal'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 107950
        mmTop = 24606
        mmWidth = 88900
        BandType = 4
        LayerName = Foreground3
      end
      object ppShape48: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape48'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 65617
        mmTop = 24077
        mmWidth = 34660
        BandType = 4
        LayerName = Foreground3
      end
      object ppLabel53: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label501'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DESEMBARA'#199'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 66411
        mmTop = 24606
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText50: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText50'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Data_RegistroDeclaracao'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 81227
        mmTop = 24606
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground3
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText7'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Cliente'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3429
        mmLeft = 10848
        mmTop = 9790
        mmWidth = 101600
        BandType = 4
        LayerName = Foreground3
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label101'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ERP Importa (Cybersoft Sistemas Ltda.)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2911
        mmLeft = 793
        mmTop = 529
        mmWidth = 37836
        BandType = 8
        LayerName = Foreground3
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDocumentName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2911
        mmLeft = 74083
        mmTop = 529
        mmWidth = 36513
        BandType = 8
        LayerName = Foreground3
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2911
        mmLeft = 125148
        mmTop = 529
        mmWidth = 21696
        BandType = 8
        LayerName = Foreground3
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3175
        mmLeft = 40216
        mmTop = 265
        mmWidth = 5821
        BandType = 8
        LayerName = Foreground3
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 186532
        mmTop = 265
        mmWidth = 10848
        BandType = 8
        LayerName = Foreground3
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
        BandType = 8
        LayerName = Foreground3
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3175
        mmLeft = 183621
        mmTop = 265
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground3
      end
    end
    object gSaida: TppSummaryBand
      BeforePrint = gSaidaBeforePrint
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 108744
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer4
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'pNotas'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 37048
        mmWidth = 197300
        BandType = 7
        LayerName = Foreground3
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object gNotas: TppChildReport
          AutoStop = False
          DataPipeline = pNotas
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Cybersoft - Fechamento do Processo.'
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
          Version = '19.04'
          mmColumnWidth = 0
          DataPipelineName = 'pNotas'
          object ppTitleBand2: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 3175
            mmPrintPosition = 0
            object ppLabel55: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label55'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'NF N'#186
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 0
              mmTop = 0
              mmWidth = 15875
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel56: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label56'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'EMISS'#195'O'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 16404
              mmTop = 0
              mmWidth = 16140
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel57: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label57'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'BC ICMS'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 45244
              mmTop = 0
              mmWidth = 25400
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel59: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label8'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'TOTAL DA NOTA'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 71378
              mmTop = 0
              mmWidth = 25724
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel64: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label64'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'TIPO'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 33073
              mmTop = 0
              mmWidth = 11642
              BandType = 1
              LayerName = Foreground
            end
          end
          object ppDetailBand3: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 3175
            mmPrintPosition = 0
            object ppShape17: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape11'
              Pen.Width = 0
              Shape = stRoundRect
              StretchWithParent = True
              mmHeight = 3048
              mmLeft = 0
              mmTop = 0
              mmWidth = 97367
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText37: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText37'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Numero'
              DataPipeline = pNotas
              DisplayFormat = '000000000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Pitch = fpFixed
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pNotas'
              mmHeight = 3048
              mmLeft = 0
              mmTop = 0
              mmWidth = 15875
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText38: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText38'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Data_Emissao'
              DataPipeline = pNotas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Pitch = fpFixed
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pNotas'
              mmHeight = 3048
              mmLeft = 16404
              mmTop = 0
              mmWidth = 16140
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText39: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText39'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'BCICMS'
              DataPipeline = pNotas
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Pitch = fpFixed
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pNotas'
              mmHeight = 3048
              mmLeft = 45245
              mmTop = 0
              mmWidth = 25400
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText40: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText40'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Valor_TotalNota'
              DataPipeline = pNotas
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Pitch = fpFixed
              Font.Size = 7
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pNotas'
              mmHeight = 3048
              mmLeft = 71378
              mmTop = 0
              mmWidth = 25195
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText43: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText401'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Tipo'
              DataPipeline = pNotas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Pitch = fpFixed
              Font.Size = 6
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pNotas'
              mmHeight = 3048
              mmLeft = 33159
              mmTop = 0
              mmWidth = 11496
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 18521
            mmPrintPosition = 0
            object ppShape18: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape202'
              Brush.Color = clSilver
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 4233
              mmLeft = 25135
              mmTop = 0
              mmWidth = 72231
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel65: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label602'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'TOTAIS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 2910
              mmLeft = 25929
              mmTop = 529
              mmWidth = 18785
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc2: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'lTotalPag1'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'BCICMS_Saida'
              DataPipeline = pNotas
              DisplayFormat = '#,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pNotas'
              mmHeight = 2910
              mmLeft = 45245
              mmTop = 528
              mmWidth = 25400
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc3: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc3'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Total_Saida'
              DataPipeline = pNotas
              DisplayFormat = '#,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              DataPipelineName = 'pNotas'
              mmHeight = 2910
              mmLeft = 71378
              mmTop = 528
              mmWidth = 25195
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel66: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label66'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'OBSERVA'#199#213'ES'
              Color = 16771818
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              WordWrap = True
              VerticalAlignment = avCenter
              mmHeight = 3440
              mmLeft = 0
              mmTop = 6879
              mmWidth = 96838
              BandType = 7
              LayerName = Foreground
            end
            object ppDBRichText1: TppDBRichText
              DesignLayer = ppDesignLayer1
              UserName = 'DBRichText1'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              ExportRTFAsBitmap = False
              DataField = 'Observacao'
              DataPipeline = pProcessos
              RemoveEmptyLines = False
              Stretch = True
              DataPipelineName = 'pProcessos'
              mmHeight = 7673
              mmLeft = 0
              mmTop = 10848
              mmWidth = 96838
              BandType = 7
              LayerName = Foreground
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeftMargin = 794
            end
          end
          object raCodeModule3: TraCodeModule
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
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label11'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' IMPOSTOS'
        Color = 166
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 3440
        mmLeft = 0
        mmTop = 0
        mmWidth = 197643
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label20'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'SA'#205'DA'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 2963
        mmLeft = 144112
        mmTop = 4234
        mmWidth = 26458
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label24'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'II'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2879
        mmLeft = 94450
        mmTop = 7938
        mmWidth = 24711
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label25'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'IPI'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2879
        mmLeft = 94450
        mmTop = 11377
        mmWidth = 24711
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label26'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'PIS'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2879
        mmLeft = 94450
        mmTop = 14641
        mmWidth = 24711
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label27'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'COFINS'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2879
        mmLeft = 94450
        mmTop = 18080
        mmWidth = 24711
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label28'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ICMS OPERACIONAL'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2879
        mmLeft = 94450
        mmTop = 21520
        mmWidth = 24710
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText20'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'II'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2879
        mmLeft = 119411
        mmTop = 7938
        mmWidth = 24001
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText201'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Valor_IPI'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2879
        mmLeft = 119411
        mmTop = 11377
        mmWidth = 24001
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText202'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Valor_PIS'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2879
        mmLeft = 119411
        mmTop = 14641
        mmWidth = 24001
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText23'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Valor_COFINS'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2879
        mmLeft = 119411
        mmTop = 18080
        mmWidth = 24001
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label201'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ENTRADA'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 2963
        mmLeft = 119419
        mmTop = 4234
        mmWidth = 24165
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText204'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'ICMS_Saida'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2879
        mmLeft = 144239
        mmTop = 21520
        mmWidth = 25982
        BandType = 7
        LayerName = Foreground3
      end
      object lDiferencaIPI: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'lDiferencaIPI'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = True
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 170833
        mmTop = 11290
        mmWidth = 26012
        BandType = 7
        LayerName = Foreground3
      end
      object lDiferencaPIS: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'lDiferencaPIS'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = True
        CalcOrder = 1
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 170833
        mmTop = 14553
        mmWidth = 26012
        BandType = 7
        LayerName = Foreground3
      end
      object lDiferencaCOFINS: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'lDiferencaCOFINS'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = True
        CalcOrder = 2
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 170833
        mmTop = 17817
        mmWidth = 26012
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label601'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TOTAIS'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3714
        mmLeft = 94368
        mmTop = 28311
        mmWidth = 24694
        BandType = 7
        LayerName = Foreground3
      end
      object lTotalImpSaida: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'pTotalReal1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 3
        Color = clSilver
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        VerticalAlignment = avCenter
        mmHeight = 3625
        mmLeft = 144239
        mmTop = 28311
        mmWidth = 25982
        BandType = 7
        LayerName = Foreground3
      end
      object lTotalImpDI: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'pTotalReal2'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 4
        Color = clSilver
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        VerticalAlignment = avCenter
        mmHeight = 3625
        mmLeft = 119411
        mmTop = 28311
        mmWidth = 24001
        BandType = 7
        LayerName = Foreground3
      end
      object lDiferencaICMS: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'lDiferencaICMS'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = True
        CalcOrder = 5
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2879
        mmLeft = 170833
        mmTop = 21520
        mmWidth = 26012
        BandType = 7
        LayerName = Foreground3
      end
      object ppShape12: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape102'
        Brush.Color = clSilver
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 3921
        mmLeft = 111655
        mmTop = 94765
        mmWidth = 85725
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label35'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' RESUMO FINANCEIRO'
        Color = 166
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        mmHeight = 3440
        mmLeft = 0
        mmTop = 32896
        mmWidth = 197644
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label41'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'C'#194'MBIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 112096
        mmTop = 38459
        mmWidth = 34919
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label42'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'NACIONALIZA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 112096
        mmTop = 44547
        mmWidth = 34919
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label43'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'IMPOSTOS (ENTRADA)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 112096
        mmTop = 47544
        mmWidth = 34919
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label44'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'MARGEM LUCRO/SERVI'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 112096
        mmTop = 65644
        mmWidth = 32983
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label45'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DESCONTO COMERCIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 112096
        mmTop = 69084
        mmWidth = 32983
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label302'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'SUB TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 112096
        mmTop = 80726
        mmWidth = 32983
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label47'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VALOR RECEBIDO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 112096
        mmTop = 84165
        mmWidth = 32983
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText203'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Total_CambioReal'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 167746
        mmTop = 38459
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText25'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Total_Despesas'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 167746
        mmTop = 44547
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText27'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Margem_LucroValor'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 167746
        mmTop = 65644
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label51'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DESCONTO ADICIONAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 112096
        mmTop = 72524
        mmWidth = 32983
        BandType = 7
        LayerName = Foreground3
      end
      object lSubTotal: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'lSubTotal'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 6
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 167746
        mmTop = 80726
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel62: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label12'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'SALDO GERAL DO PROCESSO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 112096
        mmTop = 95294
        mmWidth = 36419
        BandType = 7
        LayerName = Foreground3
      end
      object lTotalGeral: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'lTotalGeral'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 7
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 167746
        mmTop = 95203
        mmWidth = 29369
        BandType = 7
        LayerName = Foreground3
      end
      object ppShape13: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape13'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4233
        mmLeft = 111655
        mmTop = 60882
        mmWidth = 85725
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label40'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TOTAL CUSTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 112096
        mmTop = 61411
        mmWidth = 27162
        BandType = 7
        LayerName = Foreground3
      end
      object lTotalCusto: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'lTotalCusto'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 8
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 167746
        mmTop = 61411
        mmWidth = 29369
        BandType = 7
        LayerName = Foreground3
      end
      object ppShape16: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'Shape16'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4233
        mmLeft = 111655
        mmTop = 75963
        mmWidth = 85725
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel54: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label402'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TOTAL NEGOCIA'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 112096
        mmTop = 76492
        mmWidth = 30602
        BandType = 7
        LayerName = Foreground3
      end
      object lTotalNegociacao: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'lTotalNegociacao'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 9
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 167746
        mmTop = 76492
        mmWidth = 29369
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText29'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Margem_Lucro'
        DataPipeline = pProcessos
        DisplayFormat = '##0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 155575
        mmTop = 65644
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText33'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Desconto_Operacional'
        DataPipeline = pProcessos
        DisplayFormat = '##0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 155575
        mmTop = 69084
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText34'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Desconto_Adicional'
        DataPipeline = pProcessos
        DisplayFormat = '##0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 155575
        mmTop = 72524
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText35'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Desconto_ComercialValor'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 167746
        mmTop = 69084
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText36'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Desconto_AdicionalValor'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 167746
        mmTop = 72524
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText41'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Pagamento_Cliente'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 167746
        mmTop = 84165
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText44: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText44'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'ICMS_SaidaST'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 144239
        mmTop = 24959
        mmWidth = 25982
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel69: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label69'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ICMS SUBSTITUTIVO'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 94450
        mmTop = 24959
        mmWidth = 24710
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText45: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText45'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'ICMS_EntradaST'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 119411
        mmTop = 24959
        mmWidth = 24001
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel70: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label70'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DESCONTO / JUROS Financeiros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        Visible = False
        mmHeight = 2910
        mmLeft = 112096
        mmTop = 100803
        mmWidth = 42773
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText48: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText48'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Valor_DescontoJuros'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        DataPipelineName = 'pProcessos'
        mmHeight = 2879
        mmLeft = 167747
        mmTop = 100803
        mmWidth = 29634
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel71: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label701'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'SALDO FINANCEIRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 112096
        mmTop = 104722
        mmWidth = 42773
        BandType = 7
        LayerName = Foreground3
      end
      object lSaldoFinanceiro: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'lSaldoFinanceiro'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 10
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        LookAhead = True
        OnCalc = lSaldoFinanceiroCalc
        TextAlignment = taRightJustified
        Transparent = True
        Visible = False
        mmHeight = 2963
        mmLeft = 167747
        mmTop = 104722
        mmWidth = 29634
        BandType = 7
        LayerName = Foreground3
      end
      object lImpostos: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'lImpostos'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 11
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2879
        mmLeft = 167746
        mmTop = 47544
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel84: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label202'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DIFEREN'#199'A'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 2963
        mmLeft = 171098
        mmTop = 4233
        mmWidth = 26282
        BandType = 7
        LayerName = Foreground3
      end
      object lTotalDiferenca: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'lTotalDiferenca'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 12
        Color = clSilver
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        VerticalAlignment = avCenter
        mmHeight = 3625
        mmLeft = 170833
        mmTop = 28311
        mmWidth = 26012
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText68: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText68'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'IPI_Saida'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 144239
        mmTop = 11290
        mmWidth = 25982
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText69: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText69'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'PIS_Saida'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 144239
        mmTop = 14466
        mmWidth = 25982
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText70: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText70'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'COFINS_Saida'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 144239
        mmTop = 17993
        mmWidth = 25982
        BandType = 7
        LayerName = Foreground3
      end
      object lDiferencaII: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'lDiferencaII'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = True
        CalcOrder = 13
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 170833
        mmTop = 8025
        mmWidth = 26012
        BandType = 7
        LayerName = Foreground3
      end
      object lDiferencaICMSST: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'lDiferencaICMS1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = True
        CalcOrder = 14
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 170833
        mmTop = 24872
        mmWidth = 26012
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label21'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'IMPOSTO'
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 2963
        mmLeft = 94455
        mmTop = 4233
        mmWidth = 24693
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText30'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Valor_ICMS'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2879
        mmLeft = 119411
        mmTop = 21344
        mmWidth = 24001
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label30'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'C'#194'MBIO PAGO PELO CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 112096
        mmTop = 41371
        mmWidth = 34919
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText31'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Total_CambioCli'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 147814
        mmTop = 41371
        mmWidth = 19579
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label31'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'IMPOSTOS (DIFEREN'#199'A)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 112184
        mmTop = 50711
        mmWidth = 34920
        BandType = 7
        LayerName = Foreground3
      end
      object lDiferenca: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'lDiferenca'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 15
        DataType = dtCurrency
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2879
        mmLeft = 167746
        mmTop = 50711
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label34'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TRANSFER'#202'NCIAS EFETUADAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 112405
        mmTop = 87874
        mmWidth = 32889
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label36'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DEVOLU'#199#213'ES A CLIENTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 112184
        mmTop = 91314
        mmWidth = 32983
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText62: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText62'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Transferencia_Efetuada'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 167746
        mmTop = 87814
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText63: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText63'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Devolucoes'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 167746
        mmTop = 91439
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label37'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CSLL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 112184
        mmTop = 54035
        mmWidth = 34920
        BandType = 7
        LayerName = Foreground3
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label38'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'IRPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 112184
        mmTop = 57179
        mmWidth = 34920
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText64: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText64'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CSLL_Valor'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 167686
        mmTop = 54035
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText65: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText65'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CSLL_Percentual'
        DataPipeline = pProcessos
        DisplayFormat = '##0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 155515
        mmTop = 54035
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText66: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText66'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'IRPJ_Percentual'
        DataPipeline = pProcessos
        DisplayFormat = '##0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 155515
        mmTop = 57179
        mmWidth = 11906
        BandType = 7
        LayerName = Foreground3
      end
      object ppDBText67: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText67'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'IRPJ_Valor'
        DataPipeline = pProcessos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 2910
        mmLeft = 167686
        mmTop = 57179
        mmWidth = 29633
        BandType = 7
        LayerName = Foreground3
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Processo'
      DataPipeline = pProcessos
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      NewPage = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'pProcessos'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        PrintHeight = phDynamic
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 11906
        mmPrintPosition = 0
        object rDespesas: TppSubReport
          DesignLayer = ppDesignLayer4
          UserName = 'rDespesas'
          ExpandAll = False
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          ShiftRelativeTo = pListaCambio
          TraverseAllData = False
          DataPipelineName = 'pDespesas'
          mmHeight = 5027
          mmLeft = 0
          mmTop = 6879
          mmWidth = 197300
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppChildReport1: TppChildReport
            AutoStop = False
            DataPipeline = pDespesas
            PrinterSetup.BinName = 'Default'
            PrinterSetup.DocumentName = 'Cybersoft - Fechamento do Processo.'
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
            Version = '19.04'
            mmColumnWidth = 0
            DataPipelineName = 'pDespesas'
            object ppTitleBand1: TppTitleBand
              Background.Brush.Style = bsClear
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 8467
              mmPrintPosition = 0
              object ppLabel58: TppLabel
                DesignLayer = ppDesignLayer2
                UserName = 'Label58'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = ' NACIONALIZA'#199#195'O'
                Color = 166
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Name = 'Calibri'
                Font.Size = 8
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                mmHeight = 3440
                mmLeft = 0
                mmTop = 1588
                mmWidth = 197380
                BandType = 1
                LayerName = Foreground1
              end
              object ppLabel61: TppLabel
                DesignLayer = ppDesignLayer2
                UserName = 'Label61'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'DESCRI'#199#195'O DA DESPESA'
                Color = clSilver
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                mmHeight = 2963
                mmLeft = 0
                mmTop = 5504
                mmWidth = 85990
                BandType = 1
                LayerName = Foreground1
              end
              object ppLabel68: TppLabel
                DesignLayer = ppDesignLayer2
                UserName = 'Label68'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'PAGAMENTOS'
                Color = clSilver
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                mmHeight = 2963
                mmLeft = 171714
                mmTop = 5504
                mmWidth = 25664
                BandType = 1
                LayerName = Foreground1
              end
              object ppLabel32: TppLabel
                DesignLayer = ppDesignLayer2
                UserName = 'Label32'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'OBSERVA'#199#195'O'
                Color = clSilver
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                mmHeight = 2963
                mmLeft = 86519
                mmTop = 5504
                mmWidth = 84666
                BandType = 1
                LayerName = Foreground1
              end
            end
            object ppDetailBand2: TppDetailBand
              Background1.Brush.Style = bsClear
              Background2.Brush.Style = bsClear
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 2910
              mmPrintPosition = 0
              object ppDBText56: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText56'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Descricao'
                DataPipeline = pDespesas
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                DataPipelineName = 'pDespesas'
                mmHeight = 2879
                mmLeft = 0
                mmTop = 0
                mmWidth = 85990
                BandType = 4
                LayerName = Foreground1
              end
              object ppDBText59: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText59'
                BlankWhenZero = True
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Valor_Fechamento'
                DataPipeline = pDespesas
                DisplayFormat = '#,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pDespesas'
                mmHeight = 2879
                mmLeft = 171714
                mmTop = 0
                mmWidth = 25664
                BandType = 4
                LayerName = Foreground1
              end
              object ppDBText32: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText32'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Observacao'
                DataPipeline = pDespesas
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                DataPipelineName = 'pDespesas'
                mmHeight = 2878
                mmLeft = 86519
                mmTop = 0
                mmWidth = 84666
                BandType = 4
                LayerName = Foreground1
              end
            end
            object ppSummaryBand1: TppSummaryBand
              Background.Brush.Style = bsClear
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 6085
              mmPrintPosition = 0
              object ppLine1: TppLine
                DesignLayer = ppDesignLayer2
                UserName = 'Line1'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Weight = 0.750000000000000000
                mmHeight = 1058
                mmLeft = 0
                mmTop = 529
                mmWidth = 196850
                BandType = 7
                LayerName = Foreground1
              end
              object ppShape21: TppShape
                DesignLayer = ppDesignLayer2
                UserName = 'Shape201'
                Brush.Color = clSilver
                Shape = stRoundRect
                mmHeight = 4233
                mmLeft = 159015
                mmTop = 794
                mmWidth = 38629
                BandType = 7
                LayerName = Foreground1
              end
              object ppLabel60: TppLabel
                DesignLayer = ppDesignLayer2
                UserName = 'Label60'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'TOTAL:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                Transparent = True
                mmHeight = 2921
                mmLeft = 159809
                mmTop = 1323
                mmWidth = 11642
                BandType = 7
                LayerName = Foreground1
              end
              object lTotalPag: TppDBCalc
                DesignLayer = ppDesignLayer2
                UserName = 'lTotalPag'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Valor_Fechamento'
                DataPipeline = pDespesas
                DisplayFormat = '#,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pDespesas'
                mmHeight = 2921
                mmLeft = 171714
                mmTop = 1323
                mmWidth = 25664
                BandType = 7
                LayerName = Foreground1
              end
            end
            object raCodeModule1: TraCodeModule
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
        object pListaCambio: TppSubReport
          DesignLayer = ppDesignLayer4
          UserName = 'pListaCambio'
          ExpandAll = False
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          TraverseAllData = False
          DataPipelineName = 'pContratos'
          mmHeight = 5027
          mmLeft = 0
          mmTop = 1588
          mmWidth = 197300
          BandType = 5
          GroupNo = 0
          LayerName = Foreground3
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppChildReport3: TppChildReport
            AutoStop = False
            DataPipeline = pContratos
            PrinterSetup.BinName = 'Default'
            PrinterSetup.DocumentName = 'Cybersoft - Fechamento do Processo.'
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
            Version = '19.04'
            mmColumnWidth = 0
            DataPipelineName = 'pContratos'
            object ppTitleBand3: TppTitleBand
              Background.Brush.Style = bsClear
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 6879
              mmPrintPosition = 0
              object ppLabel12: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label58'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = ' C'#194'MBIO'
                Color = 166
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Name = 'Calibri'
                Font.Size = 8
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                mmHeight = 3440
                mmLeft = 0
                mmTop = 0
                mmWidth = 197380
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel13: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label59'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'N'#186' CONT.'
                Color = clSilver
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                mmHeight = 2963
                mmLeft = 0
                mmTop = 3917
                mmWidth = 17198
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel14: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label61'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'DATA'
                Color = clSilver
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                mmHeight = 2963
                mmLeft = 17727
                mmTop = 3917
                mmWidth = 16404
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel15: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label62'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'VALOR (ME)'
                Color = clSilver
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                mmHeight = 2963
                mmLeft = 145521
                mmTop = 3917
                mmWidth = 25664
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel16: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label68'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'VALOR (R$)'
                Color = clSilver
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                mmHeight = 2963
                mmLeft = 171714
                mmTop = 3917
                mmWidth = 25664
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel22: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label22'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'MOEDA'
                Color = clSilver
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                mmHeight = 2963
                mmLeft = 34661
                mmTop = 3917
                mmWidth = 92604
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel23: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label23'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'TAXA'
                Color = clSilver
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                mmHeight = 2963
                mmLeft = 127794
                mmTop = 3917
                mmWidth = 17198
                BandType = 1
                LayerName = Foreground2
              end
            end
            object ppDetailBand4: TppDetailBand
              Background1.Brush.Style = bsClear
              Background2.Brush.Style = bsClear
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 2910
              mmPrintPosition = 0
              object ppDBText4: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText55'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Numero'
                DataPipeline = pContratos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                DataPipelineName = 'pContratos'
                mmHeight = 2879
                mmLeft = 0
                mmTop = 0
                mmWidth = 17198
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText12: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText56'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Data'
                DataPipeline = pContratos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'pContratos'
                mmHeight = 2879
                mmLeft = 17727
                mmTop = 0
                mmWidth = 16404
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText13: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText57'
                BlankWhenZero = True
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Valor_ME'
                DataPipeline = pContratos
                DisplayFormat = '#,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pContratos'
                mmHeight = 2879
                mmLeft = 145522
                mmTop = 0
                mmWidth = 25664
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText17: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText17'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Nome_Moeda'
                DataPipeline = pContratos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'pContratos'
                mmHeight = 2910
                mmLeft = 44715
                mmTop = 0
                mmWidth = 82550
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText18: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText18'
                BlankWhenZero = True
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Taxa_Cambial'
                DataPipeline = pContratos
                DisplayFormat = '#,##0.0000'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pContratos'
                mmHeight = 2879
                mmLeft = 127794
                mmTop = 0
                mmWidth = 17198
                BandType = 4
                LayerName = Foreground2
              end
              object pValor_Real: TppVariable
                DesignLayer = ppDesignLayer3
                UserName = 'pValor_Real'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                BlankWhenZero = False
                CalcOrder = 0
                DataType = dtCurrency
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = []
                OnCalc = pValor_RealCalc
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2879
                mmLeft = 171714
                mmTop = 0
                mmWidth = 25664
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText42: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText42'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Moeda'
                DataPipeline = pContratos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pContratos'
                mmHeight = 2910
                mmLeft = 34661
                mmTop = 0
                mmWidth = 9260
                BandType = 4
                LayerName = Foreground2
              end
            end
            object ppSummaryBand3: TppSummaryBand
              Background.Brush.Style = bsClear
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 5027
              mmPrintPosition = 0
              object ppLine2: TppLine
                DesignLayer = ppDesignLayer3
                UserName = 'Line1'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Weight = 0.750000000000000000
                mmHeight = 1058
                mmLeft = 0
                mmTop = 265
                mmWidth = 196850
                BandType = 7
                LayerName = Foreground2
              end
              object ppShape20: TppShape
                DesignLayer = ppDesignLayer3
                UserName = 'Shape20'
                Brush.Color = clSilver
                Shape = stRoundRect
                mmHeight = 4233
                mmLeft = 134409
                mmTop = 794
                mmWidth = 63236
                BandType = 7
                LayerName = Foreground2
              end
              object ppLabel19: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label60'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'TOTAL:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                Transparent = True
                mmHeight = 2921
                mmLeft = 134938
                mmTop = 1323
                mmWidth = 10054
                BandType = 7
                LayerName = Foreground2
              end
              object pTotalReal: TppVariable
                DesignLayer = ppDesignLayer3
                UserName = 'pTotalReal'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                BlankWhenZero = False
                CalcOrder = 0
                DataType = dtCurrency
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2921
                mmLeft = 171714
                mmTop = 1323
                mmWidth = 25664
                BandType = 7
                LayerName = Foreground2
              end
              object ppDBCalc1: TppDBCalc
                DesignLayer = ppDesignLayer3
                UserName = 'DBCalc1'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Valor_ME'
                DataPipeline = pContratos
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pContratos'
                mmHeight = 2921
                mmLeft = 145522
                mmTop = 1323
                mmWidth = 25664
                BandType = 7
                LayerName = Foreground2
              end
            end
            object ppDesignLayers3: TppDesignLayers
              object ppDesignLayer3: TppDesignLayer
                UserName = 'Foreground2'
                LayerType = ltBanded
                Index = 0
              end
            end
          end
        end
      end
    end
    object raCodeModule2: TraCodeModule
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'Foreground3'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object pProcessos: TppDBPipeline
    DataSource = dstProcessos
    UserName = 'pProcessos'
    Left = 86
    Top = 144
    object pProcessosppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object pProcessosppField2: TppField
      FieldAlias = 'Data'
      FieldName = 'Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object pProcessosppField3: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 2
    end
    object pProcessosppField4: TppField
      FieldAlias = 'Observacao'
      FieldName = 'Observacao'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pProcessosppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Margem_Lucro'
      FieldName = 'Margem_Lucro'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object pProcessosppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desconto_Operacional'
      FieldName = 'Desconto_Operacional'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object pProcessosppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desconto_Adicional'
      FieldName = 'Desconto_Adicional'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object pProcessosppField8: TppField
      FieldAlias = 'Despachante_Deposito'
      FieldName = 'Despachante_Deposito'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 7
    end
    object pProcessosppField9: TppField
      FieldAlias = 'Despachante_Despesas'
      FieldName = 'Despachante_Despesas'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 8
    end
    object pProcessosppField10: TppField
      FieldAlias = 'ICMS_Entrada'
      FieldName = 'ICMS_Entrada'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 9
    end
    object pProcessosppField11: TppField
      FieldAlias = 'ICMS_Saida'
      FieldName = 'ICMS_Saida'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 10
    end
    object pProcessosppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'ICMS_PagarPercentual'
      FieldName = 'ICMS_PagarPercentual'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object pProcessosppField13: TppField
      FieldAlias = 'ICMS_Pagar'
      FieldName = 'ICMS_Pagar'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 12
    end
    object pProcessosppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'ICMS_FDEPercentual'
      FieldName = 'ICMS_FDEPercentual'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object pProcessosppField15: TppField
      FieldAlias = 'ICMS_FDE'
      FieldName = 'ICMS_FDE'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 14
    end
    object pProcessosppField16: TppField
      FieldAlias = 'ICMS_GLME'
      FieldName = 'ICMS_GLME'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 15
    end
    object pProcessosppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'Comissao_Part'
      FieldName = 'Comissao_Part'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object pProcessosppField18: TppField
      FieldAlias = 'Comissao_PartValor'
      FieldName = 'Comissao_PartValor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 17
    end
    object pProcessosppField19: TppField
      FieldAlias = 'Assessoria_Valor'
      FieldName = 'Assessoria_Valor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 18
    end
    object pProcessosppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'Assessoria_Percentual'
      FieldName = 'Assessoria_Percentual'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object pProcessosppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Assessoria_Total'
      FieldName = 'Assessoria_Total'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object pProcessosppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'CSLL_Percentual'
      FieldName = 'CSLL_Percentual'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object pProcessosppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'CSLL_Valor'
      FieldName = 'CSLL_Valor'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object pProcessosppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'IRPJ_Percentual'
      FieldName = 'IRPJ_Percentual'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
    object pProcessosppField25: TppField
      FieldAlias = 'IRPJ_Valor'
      FieldName = 'IRPJ_Valor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 24
    end
    object pProcessosppField26: TppField
      FieldAlias = 'Saldo'
      FieldName = 'Saldo'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 25
    end
    object pProcessosppField27: TppField
      FieldAlias = 'Pagamento_Cliente'
      FieldName = 'Pagamento_Cliente'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 26
    end
    object pProcessosppField28: TppField
      FieldAlias = 'Rentabilidade'
      FieldName = 'Rentabilidade'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 27
    end
    object pProcessosppField29: TppField
      FieldAlias = 'Total_CambioME'
      FieldName = 'Total_CambioME'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 28
    end
    object pProcessosppField30: TppField
      FieldAlias = 'Total_CambioReal'
      FieldName = 'Total_CambioReal'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 29
    end
    object pProcessosppField31: TppField
      FieldAlias = 'Total_Impostos'
      FieldName = 'Total_Impostos'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 30
    end
    object pProcessosppField32: TppField
      FieldAlias = 'Total_Notas'
      FieldName = 'Total_Notas'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 31
    end
    object pProcessosppField33: TppField
      FieldAlias = 'PIS_Saida'
      FieldName = 'PIS_Saida'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 32
    end
    object pProcessosppField34: TppField
      FieldAlias = 'COFINS_Saida'
      FieldName = 'COFINS_Saida'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 33
    end
    object pProcessosppField35: TppField
      FieldAlias = 'Desconto_AdicionalValor'
      FieldName = 'Desconto_AdicionalValor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 34
    end
    object pProcessosppField36: TppField
      FieldAlias = 'Desconto_ComercialValor'
      FieldName = 'Desconto_ComercialValor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 35
    end
    object pProcessosppField37: TppField
      FieldAlias = 'Margem_LucroValor'
      FieldName = 'Margem_LucroValor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 36
    end
    object pProcessosppField38: TppField
      FieldAlias = 'Data_CorrecaoCambio'
      FieldName = 'Data_CorrecaoCambio'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 37
    end
    object pProcessosppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'Taxa_CorrecaoCambio'
      FieldName = 'Taxa_CorrecaoCambio'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 38
    end
    object pProcessosppField40: TppField
      FieldAlias = 'Data_CorrecaoImpostos'
      FieldName = 'Data_CorrecaoImpostos'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 39
    end
    object pProcessosppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'Taxa_CorrecaoImpostos'
      FieldName = 'Taxa_CorrecaoImpostos'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 40
    end
    object pProcessosppField42: TppField
      FieldAlias = 'Data_CorrecaoDespesas'
      FieldName = 'Data_CorrecaoDespesas'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 41
    end
    object pProcessosppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'Taxa_CorrecaoDespesas'
      FieldName = 'Taxa_CorrecaoDespesas'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 42
    end
    object pProcessosppField44: TppField
      FieldAlias = 'Classificacao_Recebimentos'
      FieldName = 'Classificacao_Recebimentos'
      FieldLength = 15
      DisplayWidth = 15
      Position = 43
    end
    object pProcessosppField45: TppField
      FieldAlias = 'Fechamento_Provisorio'
      FieldName = 'Fechamento_Provisorio'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 44
    end
    object pProcessosppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 45
    end
    object pProcessosppField47: TppField
      FieldAlias = 'Nome_Cliente'
      FieldName = 'Nome_Cliente'
      FieldLength = 60
      DisplayWidth = 60
      Position = 46
    end
    object pProcessosppField48: TppField
      FieldAlias = 'II'
      FieldName = 'II'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 47
    end
    object pProcessosppField49: TppField
      FieldAlias = 'IPI_Entrada'
      FieldName = 'IPI_Entrada'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 48
    end
    object pProcessosppField50: TppField
      FieldAlias = 'IPI_Saida'
      FieldName = 'IPI_Saida'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 49
    end
    object pProcessosppField51: TppField
      FieldAlias = 'PIS_Entrada'
      FieldName = 'PIS_Entrada'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 50
    end
    object pProcessosppField52: TppField
      FieldAlias = 'COFINS_Entrada'
      FieldName = 'COFINS_Entrada'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 51
    end
    object pProcessosppField53: TppField
      FieldAlias = 'ICMS_EntradaST'
      FieldName = 'ICMS_EntradaST'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 52
    end
    object pProcessosppField54: TppField
      FieldAlias = 'ICMS_SaidaST'
      FieldName = 'ICMS_SaidaST'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 53
    end
    object pProcessosppField55: TppField
      FieldAlias = 'Valor_DescontoJuros'
      FieldName = 'Valor_DescontoJuros'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 54
    end
    object pProcessosppField56: TppField
      FieldAlias = 'Trava_DescontoJuros'
      FieldName = 'Trava_DescontoJuros'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 55
    end
    object pProcessosppField57: TppField
      FieldAlias = 'Trava_ComissaoValor'
      FieldName = 'Trava_ComissaoValor'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 56
    end
    object pProcessosppField58: TppField
      FieldAlias = 'Complementar'
      FieldName = 'Complementar'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 57
    end
    object pProcessosppField59: TppField
      FieldAlias = 'Transferencia_Efetuada'
      FieldName = 'Transferencia_Efetuada'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 58
    end
    object pProcessosppField60: TppField
      FieldAlias = 'Transferencia_Recebida'
      FieldName = 'Transferencia_Recebida'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 59
    end
    object pProcessosppField61: TppField
      FieldAlias = 'Devolucoes'
      FieldName = 'Devolucoes'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 60
    end
    object pProcessosppField62: TppField
      FieldAlias = 'Incentivo_Fiscal'
      FieldName = 'Incentivo_Fiscal'
      FieldLength = 15
      DisplayWidth = 15
      Position = 61
    end
    object pProcessosppField63: TppField
      FieldAlias = 'INCOTERMS'
      FieldName = 'INCOTERMS'
      FieldLength = 3
      DisplayWidth = 3
      Position = 62
    end
    object pProcessosppField64: TppField
      FieldAlias = 'INCOTERMS_Descricao'
      FieldName = 'INCOTERMS_Descricao'
      FieldLength = 70
      DisplayWidth = 70
      Position = 63
    end
    object pProcessosppField65: TppField
      FieldAlias = 'Total_Despesas'
      FieldName = 'Total_Despesas'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 64
    end
    object pProcessosppField66: TppField
      FieldAlias = 'Moeda_Nome'
      FieldName = 'Moeda_Nome'
      FieldLength = 30
      DisplayWidth = 30
      Position = 65
    end
    object pProcessosppField67: TppField
      Alignment = taRightJustify
      FieldAlias = 'Via_Transporte'
      FieldName = 'Via_Transporte'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 66
    end
    object pProcessosppField68: TppField
      FieldAlias = 'Nome_Transporte'
      FieldName = 'Nome_Transporte'
      FieldLength = 30
      DisplayWidth = 30
      Position = 67
    end
    object pProcessosppField69: TppField
      FieldAlias = 'Navio_DataPrevista'
      FieldName = 'Navio_DataPrevista'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 68
    end
    object pProcessosppField70: TppField
      FieldAlias = 'Navio_DataChegada'
      FieldName = 'Navio_DataChegada'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 69
    end
    object pProcessosppField71: TppField
      FieldAlias = 'Cliente_1'
      FieldName = 'Cliente_1'
      FieldLength = 50
      DisplayWidth = 50
      Position = 70
    end
    object pProcessosppField72: TppField
      FieldAlias = 'Modalidade'
      FieldName = 'Modalidade'
      FieldLength = 30
      DisplayWidth = 30
      Position = 71
    end
    object pProcessosppField73: TppField
      FieldAlias = 'Processo_Abertura'
      FieldName = 'Processo_Abertura'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 72
    end
    object pProcessosppField74: TppField
      FieldAlias = 'Data_DesembaracoDeclaracao'
      FieldName = 'Data_DesembaracoDeclaracao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 73
    end
    object pProcessosppField75: TppField
      FieldAlias = 'Numero_Declaracao'
      FieldName = 'Numero_Declaracao'
      FieldLength = 15
      DisplayWidth = 15
      Position = 74
    end
    object pProcessosppField76: TppField
      FieldAlias = 'Data_RegistroDeclaracao'
      FieldName = 'Data_RegistroDeclaracao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 75
    end
    object pProcessosppField77: TppField
      FieldAlias = 'II_1'
      FieldName = 'II_1'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 76
    end
    object pProcessosppField78: TppField
      FieldAlias = 'Valor_IPI'
      FieldName = 'Valor_IPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 77
    end
    object pProcessosppField79: TppField
      FieldAlias = 'Valor_PIS'
      FieldName = 'Valor_PIS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 78
    end
    object pProcessosppField80: TppField
      FieldAlias = 'Valor_COFINS'
      FieldName = 'Valor_COFINS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 79
    end
    object pProcessosppField81: TppField
      FieldAlias = 'Valor_ICMS'
      FieldName = 'Valor_ICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 80
    end
    object pProcessosppField82: TppField
      FieldAlias = 'Numero_Fatura'
      FieldName = 'Numero_Fatura'
      FieldLength = 40
      DisplayWidth = 40
      Position = 81
    end
    object pProcessosppField83: TppField
      FieldAlias = 'Documento_Carga'
      FieldName = 'Documento_Carga'
      FieldLength = 30
      DisplayWidth = 30
      Position = 82
    end
    object pProcessosppField84: TppField
      FieldAlias = 'Numero_DOC'
      FieldName = 'Numero_DOC'
      FieldLength = 30
      DisplayWidth = 30
      Position = 83
    end
    object pProcessosppField85: TppField
      FieldAlias = 'Referencia_Cliente'
      FieldName = 'Referencia_Cliente'
      FieldLength = 15
      DisplayWidth = 15
      Position = 84
    end
    object pProcessosppField86: TppField
      FieldAlias = 'Referencia_DataEntrega'
      FieldName = 'Referencia_DataEntrega'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 85
    end
    object pProcessosppField87: TppField
      FieldAlias = 'Canal'
      FieldName = 'Canal'
      FieldLength = 8
      DisplayWidth = 8
      Position = 86
    end
  end
  object pEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    UserName = 'pEmpresas'
    Left = 209
    Top = 144
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
      DisplayWidth = 28
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
      DisplayWidth = 12
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
      FieldAlias = 'Email_Copia'
      FieldName = 'Email_Copia'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 89
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField91: TppField
      FieldAlias = 'Email_SSL'
      FieldName = 'Email_SSL'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 90
    end
    object pEmpresasppField92: TppField
      FieldAlias = 'Email_Autenticacao'
      FieldName = 'Email_Autenticacao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 91
    end
    object pEmpresasppField93: TppField
      FieldAlias = 'Email_Metodo'
      FieldName = 'Email_Metodo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 92
    end
    object pEmpresasppField94: TppField
      FieldAlias = 'CartaCorrecao_Layout'
      FieldName = 'CartaCorrecao_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 93
    end
    object pEmpresasppField95: TppField
      FieldAlias = 'CNAE'
      FieldName = 'CNAE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 94
    end
    object pEmpresasppField96: TppField
      FieldAlias = 'Email_MsgEnvioCCE'
      FieldName = 'Email_MsgEnvioCCE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 95
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField97: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_EletronicaEntrada'
      FieldName = 'Nota_EletronicaEntrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 96
    end
    object pEmpresasppField98: TppField
      FieldAlias = 'NFEletronica_ModeloEntrada'
      FieldName = 'NFEletronica_ModeloEntrada'
      FieldLength = 2
      DisplayWidth = 2
      Position = 97
    end
    object pEmpresasppField99: TppField
      FieldAlias = 'NFEletronica_SerieEntrada'
      FieldName = 'NFEletronica_SerieEntrada'
      FieldLength = 3
      DisplayWidth = 3
      Position = 98
    end
    object pEmpresasppField100: TppField
      FieldAlias = 'NFEletronica_Numeracao'
      FieldName = 'NFEletronica_Numeracao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 99
    end
    object pEmpresasppField101: TppField
      Alignment = taRightJustify
      FieldAlias = 'Logomarca_Largura'
      FieldName = 'Logomarca_Largura'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 100
    end
    object pEmpresasppField102: TppField
      FieldAlias = 'Pagamento'
      FieldName = 'Pagamento'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 101
    end
    object pEmpresasppField103: TppField
      FieldAlias = 'Modulo_Emprestimos'
      FieldName = 'Modulo_Emprestimos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 102
    end
    object pEmpresasppField104: TppField
      FieldAlias = 'Modulo_XMLCTe'
      FieldName = 'Modulo_XMLCTe'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 103
    end
    object pEmpresasppField105: TppField
      FieldAlias = 'Regime'
      FieldName = 'Regime'
      FieldLength = 1
      DisplayWidth = 1
      Position = 104
    end
    object pEmpresasppField106: TppField
      FieldAlias = 'Modulo_Vendas'
      FieldName = 'Modulo_Vendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 105
    end
    object pEmpresasppField107: TppField
      Alignment = taRightJustify
      FieldAlias = 'CTE_Numero'
      FieldName = 'CTE_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 106
    end
    object pEmpresasppField108: TppField
      FieldAlias = 'CTE_Modelo'
      FieldName = 'CTE_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 107
    end
    object pEmpresasppField109: TppField
      FieldAlias = 'CTE_Serie'
      FieldName = 'CTE_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 108
    end
    object pEmpresasppField110: TppField
      FieldAlias = 'CTE_Layout'
      FieldName = 'CTE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 109
    end
    object pEmpresasppField111: TppField
      FieldAlias = 'Modulo_Logistica'
      FieldName = 'Modulo_Logistica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 110
    end
    object pEmpresasppField112: TppField
      FieldAlias = 'Modulo_Boleto'
      FieldName = 'Modulo_Boleto'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 111
    end
    object pEmpresasppField113: TppField
      FieldAlias = 'Telefone1'
      FieldName = 'Telefone1'
      FieldLength = 11
      DisplayWidth = 11
      Position = 112
    end
    object pEmpresasppField114: TppField
      FieldAlias = 'Telefone2'
      FieldName = 'Telefone2'
      FieldLength = 11
      DisplayWidth = 11
      Position = 113
    end
    object pEmpresasppField115: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 11
      DisplayWidth = 11
      Position = 114
    end
    object pEmpresasppField116: TppField
      FieldAlias = 'Modulo_SISCOMEXWEB'
      FieldName = 'Modulo_SISCOMEXWEB'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 115
    end
    object pEmpresasppField117: TppField
      FieldAlias = 'Modulo_ECommerce'
      FieldName = 'Modulo_ECommerce'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 116
    end
    object pEmpresasppField118: TppField
      FieldAlias = 'Modulo_ManifestoDest'
      FieldName = 'Modulo_ManifestoDest'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 117
    end
    object pEmpresasppField119: TppField
      FieldAlias = 'Manifesto_LayOut'
      FieldName = 'Manifesto_LayOut'
      FieldLength = 10
      DisplayWidth = 10
      Position = 118
    end
    object pEmpresasppField120: TppField
      FieldAlias = 'UF_WebServiceManifesto'
      FieldName = 'UF_WebServiceManifesto'
      FieldLength = 10
      DisplayWidth = 10
      Position = 119
    end
    object pEmpresasppField121: TppField
      FieldAlias = 'Modulo_Televendas'
      FieldName = 'Modulo_Televendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 120
    end
    object pEmpresasppField122: TppField
      FieldAlias = 'Email_MsgOrcamento'
      FieldName = 'Email_MsgOrcamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 121
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField123: TppField
      FieldAlias = 'Email_MsgBoleto'
      FieldName = 'Email_MsgBoleto'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 122
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField124: TppField
      FieldAlias = 'PISCOFINS_F100'
      FieldName = 'PISCOFINS_F100'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 123
    end
    object pEmpresasppField125: TppField
      FieldAlias = 'Logo'
      FieldName = 'Logo'
      FieldLength = 120
      DisplayWidth = 120
      Position = 124
    end
    object pEmpresasppField126: TppField
      FieldAlias = 'Modulo_ConsultaProdutos'
      FieldName = 'Modulo_ConsultaProdutos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 125
    end
    object pEmpresasppField127: TppField
      FieldAlias = 'Modulo_Contabil'
      FieldName = 'Modulo_Contabil'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 126
    end
    object pEmpresasppField128: TppField
      FieldAlias = 'Modulo_EnviarArmazem'
      FieldName = 'Modulo_EnviarArmazem'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 127
    end
    object pEmpresasppField129: TppField
      FieldAlias = 'Versao_DLL'
      FieldName = 'Versao_DLL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 128
    end
    object pEmpresasppField130: TppField
      FieldAlias = 'Desativada'
      FieldName = 'Desativada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 129
    end
    object pEmpresasppField131: TppField
      FieldAlias = 'Menu_Inventario'
      FieldName = 'Menu_Inventario'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 130
    end
    object pEmpresasppField132: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_GNRE'
      FieldName = 'Ambiente_GNRE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 131
    end
    object pEmpresasppField133: TppField
      FieldAlias = 'GNRE_Layout'
      FieldName = 'GNRE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 132
    end
    object pEmpresasppField134: TppField
      FieldAlias = 'Modulo_GNRE'
      FieldName = 'Modulo_GNRE'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 133
    end
    object pEmpresasppField135: TppField
      FieldAlias = 'Modulo_DadosDI'
      FieldName = 'Modulo_DadosDI'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 134
    end
    object pEmpresasppField136: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Qualificacao'
      FieldName = 'Contador_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 135
    end
    object pEmpresasppField137: TppField
      FieldAlias = 'Contador_CRCUF'
      FieldName = 'Contador_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 136
    end
    object pEmpresasppField138: TppField
      FieldAlias = 'Contador_CRCData'
      FieldName = 'Contador_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 137
    end
    object pEmpresasppField139: TppField
      FieldAlias = 'NIRE'
      FieldName = 'NIRE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 138
    end
    object pEmpresasppField140: TppField
      FieldAlias = 'Fechamento_FinanceiroFinal'
      FieldName = 'Fechamento_FinanceiroFinal'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 139
    end
    object pEmpresasppField141: TppField
      Alignment = taRightJustify
      FieldAlias = 'SPED_CTAPlanoRef'
      FieldName = 'SPED_CTAPlanoRef'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 140
    end
    object pEmpresasppField142: TppField
      FieldAlias = 'Contador_CRCSequencial'
      FieldName = 'Contador_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 141
    end
    object pEmpresasppField143: TppField
      FieldAlias = 'Refis'
      FieldName = 'Refis'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 142
    end
    object pEmpresasppField144: TppField
      FieldAlias = 'Paes'
      FieldName = 'Paes'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 143
    end
    object pEmpresasppField145: TppField
      Alignment = taRightJustify
      FieldAlias = 'Forma_Tributacao'
      FieldName = 'Forma_Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 144
    end
    object pEmpresasppField146: TppField
      FieldAlias = 'Extincao_RTT'
      FieldName = 'Extincao_RTT'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 145
    end
    object pEmpresasppField147: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtde_SCP'
      FieldName = 'Qtde_SCP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 146
    end
    object pEmpresasppField148: TppField
      FieldAlias = 'Natureza_Juridica'
      FieldName = 'Natureza_Juridica'
      FieldLength = 10
      DisplayWidth = 10
      Position = 147
    end
    object pEmpresasppField149: TppField
      FieldAlias = 'NIRE_Data'
      FieldName = 'NIRE_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 148
    end
    object pEmpresasppField150: TppField
      FieldAlias = 'Representante_Bairro'
      FieldName = 'Representante_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 149
    end
    object pEmpresasppField151: TppField
      FieldAlias = 'Representante_CEP'
      FieldName = 'Representante_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 150
    end
    object pEmpresasppField152: TppField
      FieldAlias = 'Representante_CNPJ'
      FieldName = 'Representante_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 151
    end
    object pEmpresasppField153: TppField
      FieldAlias = 'Representante_Complemento'
      FieldName = 'Representante_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 152
    end
    object pEmpresasppField154: TppField
      FieldAlias = 'Representante_CPF'
      FieldName = 'Representante_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 153
    end
    object pEmpresasppField155: TppField
      FieldAlias = 'Representante_CRC'
      FieldName = 'Representante_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 154
    end
    object pEmpresasppField156: TppField
      FieldAlias = 'Representante_CRCData'
      FieldName = 'Representante_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 155
    end
    object pEmpresasppField157: TppField
      FieldAlias = 'Representante_CRCSequencial'
      FieldName = 'Representante_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 156
    end
    object pEmpresasppField158: TppField
      FieldAlias = 'Representante_CRCUF'
      FieldName = 'Representante_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 157
    end
    object pEmpresasppField159: TppField
      FieldAlias = 'Representante_Email'
      FieldName = 'Representante_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 158
    end
    object pEmpresasppField160: TppField
      FieldAlias = 'Representante_Estado'
      FieldName = 'Representante_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 159
    end
    object pEmpresasppField161: TppField
      FieldAlias = 'Representante_FAX'
      FieldName = 'Representante_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 160
    end
    object pEmpresasppField162: TppField
      FieldAlias = 'Representante_Nome'
      FieldName = 'Representante_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 161
    end
    object pEmpresasppField163: TppField
      FieldAlias = 'Representante_Numero'
      FieldName = 'Representante_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 162
    end
    object pEmpresasppField164: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Qualificacao'
      FieldName = 'Representante_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 163
    end
    object pEmpresasppField165: TppField
      FieldAlias = 'Representante_Rua'
      FieldName = 'Representante_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 164
    end
    object pEmpresasppField166: TppField
      FieldAlias = 'Representante_Telefone'
      FieldName = 'Representante_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 165
    end
    object pEmpresasppField167: TppField
      FieldAlias = 'Contador_SignatarioResp'
      FieldName = 'Contador_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 166
    end
    object pEmpresasppField168: TppField
      FieldAlias = 'Representante_SignatarioResp'
      FieldName = 'Representante_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 167
    end
    object pEmpresasppField169: TppField
      FieldAlias = 'Autorizacao_NFECNPJ'
      FieldName = 'Autorizacao_NFECNPJ'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 168
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField170: TppField
      FieldAlias = 'Autorizacao_NFECPF'
      FieldName = 'Autorizacao_NFECPF'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 169
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField171: TppField
      Alignment = taRightJustify
      FieldAlias = 'Encerramento_Contabil'
      FieldName = 'Encerramento_Contabil'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 170
    end
    object pEmpresasppField172: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Municipio'
      FieldName = 'Contador_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 171
    end
    object pEmpresasppField173: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Municipio'
      FieldName = 'Representante_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 172
    end
    object pEmpresasppField174: TppField
      FieldAlias = 'Classificacao_Tributaria'
      FieldName = 'Classificacao_Tributaria'
      FieldLength = 2
      DisplayWidth = 2
      Position = 173
    end
    object pEmpresasppField175: TppField
      Alignment = taRightJustify
      FieldAlias = 'Obrigada_ECD'
      FieldName = 'Obrigada_ECD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 174
    end
    object pEmpresasppField176: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desoneracao_Folha'
      FieldName = 'Desoneracao_Folha'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 175
    end
    object pEmpresasppField177: TppField
      Alignment = taRightJustify
      FieldAlias = 'Isencao_Multa'
      FieldName = 'Isencao_Multa'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 176
    end
    object pEmpresasppField178: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_REINF'
      FieldName = 'Ambiente_REINF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 177
    end
    object pEmpresasppField179: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_Sequencia'
      FieldName = 'REINF_Sequencia'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 178
    end
    object pEmpresasppField180: TppField
      FieldAlias = 'REINF_ModoLancamento'
      FieldName = 'REINF_ModoLancamento'
      FieldLength = 10
      DisplayWidth = 10
      Position = 179
    end
    object pEmpresasppField181: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_ProcEmi'
      FieldName = 'REINF_ProcEmi'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 180
    end
    object pEmpresasppField182: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_tpInsc'
      FieldName = 'REINF_tpInsc'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 181
    end
    object pEmpresasppField183: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_indSitPJ'
      FieldName = 'REINF_indSitPJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 182
    end
    object pEmpresasppField184: TppField
      FieldAlias = 'REINF_ideEFR'
      FieldName = 'REINF_ideEFR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 183
    end
    object pEmpresasppField185: TppField
      FieldAlias = 'REINF_VerProc'
      FieldName = 'REINF_VerProc'
      FieldLength = 5
      DisplayWidth = 5
      Position = 184
    end
    object pEmpresasppField186: TppField
      FieldAlias = 'REINF_iniValid'
      FieldName = 'REINF_iniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 185
    end
    object pEmpresasppField187: TppField
      FieldAlias = 'REINF_fimValid'
      FieldName = 'REINF_fimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 186
    end
    object pEmpresasppField188: TppField
      FieldAlias = 'REINF_AltiniValid'
      FieldName = 'REINF_AltiniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 187
    end
    object pEmpresasppField189: TppField
      FieldAlias = 'REINF_AltfimValid'
      FieldName = 'REINF_AltfimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 188
    end
    object pEmpresasppField190: TppField
      FieldAlias = 'Versao_REINF'
      FieldName = 'Versao_REINF'
      FieldLength = 10
      DisplayWidth = 10
      Position = 189
    end
    object pEmpresasppField191: TppField
      FieldAlias = 'EmissaoNFE_Bloqueada'
      FieldName = 'EmissaoNFE_Bloqueada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 190
    end
    object pEmpresasppField192: TppField
      FieldAlias = 'EmissaoNFE_BloqueadaUsuario'
      FieldName = 'EmissaoNFE_BloqueadaUsuario'
      FieldLength = 80
      DisplayWidth = 80
      Position = 191
    end
    object pEmpresasppField193: TppField
      FieldAlias = 'MOdulo_Despacho'
      FieldName = 'MOdulo_Despacho'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 192
    end
    object pEmpresasppField194: TppField
      Alignment = taRightJustify
      FieldAlias = 'Processo_Exp'
      FieldName = 'Processo_Exp'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 193
    end
    object pEmpresasppField195: TppField
      Alignment = taRightJustify
      FieldAlias = 'PO'
      FieldName = 'PO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 194
    end
    object pEmpresasppField196: TppField
      FieldAlias = 'PO_Automatico'
      FieldName = 'PO_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 195
    end
    object pEmpresasppField197: TppField
      FieldAlias = 'Mascara_ProcessoExp'
      FieldName = 'Mascara_ProcessoExp'
      FieldLength = 7
      DisplayWidth = 7
      Position = 196
    end
    object pEmpresasppField198: TppField
      FieldAlias = 'Mascara_PO'
      FieldName = 'Mascara_PO'
      FieldLength = 7
      DisplayWidth = 7
      Position = 197
    end
    object pEmpresasppField199: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_CTe'
      FieldName = 'Ambiente_CTe'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 198
    end
    object pEmpresasppField200: TppField
      FieldAlias = 'Transportadora'
      FieldName = 'Transportadora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 199
    end
    object pEmpresasppField201: TppField
      FieldAlias = 'RNTRC'
      FieldName = 'RNTRC'
      FieldLength = 8
      DisplayWidth = 8
      Position = 200
    end
    object pEmpresasppField202: TppField
      FieldAlias = 'Assinatura'
      FieldName = 'Assinatura'
      FieldLength = 120
      DisplayWidth = 120
      Position = 201
    end
    object pEmpresasppField203: TppField
      FieldAlias = 'Classificacao_ContribIPI'
      FieldName = 'Classificacao_ContribIPI'
      FieldLength = 2
      DisplayWidth = 2
      Position = 202
    end
    object pEmpresasppField204: TppField
      FieldAlias = 'Envio_Backup'
      FieldName = 'Envio_Backup'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 203
    end
    object pEmpresasppField205: TppField
      FieldAlias = 'ECommerce_Data'
      FieldName = 'ECommerce_Data'
      FieldLength = 10
      DisplayWidth = 10
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
      FieldAlias = 'ECommerce_Hora'
      FieldName = 'ECommerce_Hora'
      FieldLength = 10
      DisplayWidth = 10
      Position = 206
    end
    object pEmpresasppField208: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_Armazem'
      FieldName = 'Ambiente_Armazem'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 207
    end
    object pEmpresasppField209: TppField
      FieldAlias = 'Lancamento_Contabil'
      FieldName = 'Lancamento_Contabil'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 208
    end
    object pEmpresasppField210: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pedido_Nota'
      FieldName = 'Pedido_Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 209
    end
    object pEmpresasppField211: TppField
      Alignment = taRightJustify
      FieldAlias = 'Layout_Estoque'
      FieldName = 'Layout_Estoque'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 210
    end
    object pEmpresasppField212: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ultimo_NSU'
      FieldName = 'Ultimo_NSU'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 211
    end
    object pEmpresasppField213: TppField
      FieldAlias = 'UF_WEBServiceEPEC'
      FieldName = 'UF_WEBServiceEPEC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 212
    end
    object pEmpresasppField214: TppField
      FieldAlias = 'Licensa_CTE_Util'
      FieldName = 'Licensa_CTE_Util'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 213
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField215: TppField
      FieldAlias = 'UF_WebServiceCTe'
      FieldName = 'UF_WebServiceCTe'
      FieldLength = 10
      DisplayWidth = 10
      Position = 214
    end
    object pEmpresasppField216: TppField
      FieldAlias = 'Email_Criptografia'
      FieldName = 'Email_Criptografia'
      FieldLength = 20
      DisplayWidth = 20
      Position = 215
    end
    object pEmpresasppField217: TppField
      FieldAlias = 'Email_MsgFollowUp'
      FieldName = 'Email_MsgFollowUp'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 216
      Searchable = False
      Sortable = False
    end
    object pEmpresasppField218: TppField
      FieldAlias = 'FCP_Interno'
      FieldName = 'FCP_Interno'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 217
    end
    object pEmpresasppField219: TppField
      FieldAlias = 'ImportarPlanPed_Bloqueado'
      FieldName = 'ImportarPlanPed_Bloqueado'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 218
    end
  end
  object tProcessos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT ProcessosFechamento.*, '
      '       ProcessosDocumentos.Incentivo_Fiscal,'
      '       ProcessosDocumentos.INCOTERMS,'
      
        '       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.INCOTERMS ' +
        'WHERE(Codigo = ProcessosDocumentos.INCOTERMS)) AS INCOTERMS_Desc' +
        'ricao,'
      
        '       (SELECT SUM(Valor_Fechamento) FROM ProcessosFechamentoIte' +
        'ns WHERE(Fechamento = ProcessosFechamento.Codigo)) AS Total_Desp' +
        'esas,'
      
        '       (SELECT Nome FROM Cybersoft_Cadastros.dbo.Moedas WHERE(Co' +
        'digo = (SELECT DISTINCT Moeda FROM ContratoCambio WHERE(Processo' +
        ' = ProcessosFechamento.Processo))  )) AS Moeda_Nome,'
      '       ProcessosDocumentos.Via_Transporte,'
      '       ProcessosDocumentos.Nome_Transporte,'
      '       ProcessosDocumentos.Navio_DataPrevista,'
      '       ProcessosDocumentos.Navio_DataChegada,'
      
        '       (SELECT Nome FROM Clientes WHERE(Codigo = ProcessosDocume' +
        'ntos.Cliente)) Cliente,'
      
        '       (SELECT Descricao FROM TiposProcesso WHERE(Codigo = Proce' +
        'ssosDocumentos.Modalidade_Importacao)) AS Modalidade,'
      '       ProcessosDocumentos.Processo_Abertura,'
      '       ProcessosDocumentos.Data_DesembaracoDeclaracao,'
      '       ProcessosDocumentos.Numero_Declaracao,'
      '       ProcessosDocumentos.Data_RegistroDeclaracao,'
      '       ProcessosDocumentos.II,'
      '       ProcessosDocumentos.Valor_IPI,'
      '       ProcessosDocumentos.Valor_PIS,'
      '       ProcessosDocumentos.Valor_COFINS,'
      '       ProcessosDocumentos.Valor_ICMS,'
      '       ProcessosDocumentos.Numero_Fatura,'
      '       ProcessosDocumentos.Documento_Carga,'
      '       ProcessosDocumentos.Numero_DOC,'
      '       ProcessosDocumentos.Referencia_Cliente,'
      '       ProcessosDocumentos.Referencia_DataEntrega,'
      '       CASE'
      '           WHEN Canal_SISCOMEX = '#39'VM'#39' THEN '#39'VERMELHO'#39
      '           WHEN Canal_SISCOMEX = '#39'VD'#39' THEN '#39'VERDE'#39
      '           WHEN Canal_SISCOMEX = '#39'AM'#39' THEN '#39'AMARELO'#39
      '           WHEN Canal_SISCOMEX = '#39'VM'#39' THEN '#39'CINZA'#39
      '       END AS Canal'
      'FROM   ProcessosFechamento, ProcessosDocumentos'
      
        'WHERE  (ProcessosFechamento.Processo =  '#39'ABRTO 0008/11'#39') AND (Pr' +
        'ocessosDocumentos.Processo = '#39'ABRTO 0008/11'#39')')
    Active = True
    Left = 150
    Top = 281
  end
  object dstProcessos: TDataSource
    DataSet = tProcessos
    Left = 150
    Top = 329
  end
  object tDespesas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM ProcessosFechamentoItens WHERE(Fechamento = 9)')
    FetchRows = 1
    Active = True
    Left = 248
    Top = 281
  end
  object dstDespesas: TDataSource
    DataSet = tDespesas
    Left = 248
    Top = 329
  end
  object pHistorico: TppDBPipeline
    DataSource = Dados.dsProcessosHistorico
    UserName = 'pHistorico'
    Left = 335
    Top = 144
  end
  object pContratos: TppDBPipeline
    DataSource = dstContratos
    UserName = 'pContratos'
    Left = 147
    Top = 144
    object pContratosppField1: TppField
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 15
      DisplayWidth = 15
      Position = 0
    end
    object pContratosppField2: TppField
      FieldAlias = 'Data'
      FieldName = 'Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object pContratosppField3: TppField
      FieldAlias = 'Valor_ME'
      FieldName = 'Valor_ME'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 2
    end
    object pContratosppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Moeda'
      FieldName = 'Moeda'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object pContratosppField5: TppField
      FieldAlias = 'Nome_Moeda'
      FieldName = 'Nome_Moeda'
      FieldLength = 30
      DisplayWidth = 30
      Position = 4
    end
    object pContratosppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Taxa_Cambial'
      FieldName = 'Taxa_Cambial'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object pContratosppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_Real'
      FieldName = 'Valor_Real'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object pContratosppField8: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 7
    end
  end
  object pDespesas: TppDBPipeline
    DataSource = dstDespesas
    UserName = 'pDespesas'
    Left = 396
    Top = 144
    object pDespesasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Registro'
      FieldName = 'Registro'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object pDespesasppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fechamento'
      FieldName = 'Fechamento'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object pDespesasppField3: TppField
      FieldAlias = 'Classificacao'
      FieldName = 'Classificacao'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object pDespesasppField4: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object pDespesasppField5: TppField
      FieldAlias = 'Valor_Fechamento'
      FieldName = 'Valor_Fechamento'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 4
    end
    object pDespesasppField6: TppField
      FieldAlias = 'Custo'
      FieldName = 'Custo'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 5
    end
    object pDespesasppField7: TppField
      FieldAlias = 'Tipo'
      FieldName = 'Tipo'
      FieldLength = 1
      DisplayWidth = 1
      Position = 6
    end
    object pDespesasppField8: TppField
      FieldAlias = 'Baixa'
      FieldName = 'Baixa'
      FieldLength = 1
      DisplayWidth = 1
      Position = 7
    end
    object pDespesasppField9: TppField
      FieldAlias = 'Data_BaixaVenc'
      FieldName = 'Data_BaixaVenc'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 8
    end
    object pDespesasppField10: TppField
      FieldAlias = 'Observacao'
      FieldName = 'Observacao'
      FieldLength = 60
      DisplayWidth = 60
      Position = 9
    end
    object pDespesasppField11: TppField
      FieldAlias = 'Data_CorrecaoDespesa'
      FieldName = 'Data_CorrecaoDespesa'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 10
    end
  end
  object tTotalSaida: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT SUM(Valor_ICMS)      AS Total_ICMS,'
      '       SUM(ValorICMS_Substitutivo) AS Total_ICMSSub,'
      '       SUM(BCICMS)          AS Total_BCICMS,'
      '       SUM(Valor_TotalIPI)  AS Total_IPI,'
      '       SUM(Valor_PIS)       AS Total_PIS,'
      '       SUM(Valor_COFINS)    AS Total_COFINS,'
      '       SUM(Valor_TotalNota) AS Valor_TotalNota'
      'FROM   NotasFiscais'
      
        'WHERE(Saida_Entrada = 1) AND (Processo = '#39'ABRTO 0008/11'#39') AND (C' +
        'ancelada <> 1)'
      
        '       AND (SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Cod' +
        'igo = Tipo_Nota)) = 0'
      
        '        OR (SELECT Finalidade_Mercadoria FROM TipoNota WHERE(Cod' +
        'igo = Tipo_Nota)) = 3')
    Left = 67
    Top = 281
  end
  object pTotalSaida: TppDBPipeline
    DataSource = dstTotalSaida
    UserName = 'pTotalSaida'
    Left = 274
    Top = 144
    object pTotalSaidappField1: TppField
      FieldAlias = 'Total_ICMS'
      FieldName = 'Total_ICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 0
    end
    object pTotalSaidappField2: TppField
      FieldAlias = 'Total_ICMSSub'
      FieldName = 'Total_ICMSSub'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 1
    end
    object pTotalSaidappField3: TppField
      FieldAlias = 'Total_BCICMS'
      FieldName = 'Total_BCICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 2
    end
    object pTotalSaidappField4: TppField
      FieldAlias = 'Total_IPI'
      FieldName = 'Total_IPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 3
    end
    object pTotalSaidappField5: TppField
      FieldAlias = 'Total_PIS'
      FieldName = 'Total_PIS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 4
    end
    object pTotalSaidappField6: TppField
      FieldAlias = 'Total_COFINS'
      FieldName = 'Total_COFINS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 5
    end
    object pTotalSaidappField7: TppField
      FieldAlias = 'Valor_TotalNota'
      FieldName = 'Valor_TotalNota'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 6
    end
  end
  object dstTotalSaida: TDataSource
    DataSet = tTotalSaida
    Left = 67
    Top = 329
  end
  object tNotas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Numero, '
      '       Data_Emissao, '
      '       BCICMS, '
      '       Valor_TotalNota, '
      
        '       CASE WHEN Saida_Entrada = 0 THEN '#39'ENTRADA'#39' ELSE '#39'SAIDA'#39' E' +
        'ND AS Tipo,'
      
        '       CASE WHEN Saida_Entrada = 1 THEN Valor_TotalNota ELSE 0 E' +
        'ND AS Total_Saida,'
      
        '       CASE WHEN Saida_Entrada = 1 THEN BCICMS ELSE 0 END AS BCI' +
        'CMS_Saida'
      'FROM   NotasFiscais'
      
        'WHERE(Processo = '#39'ABRTO 0008/11'#39') AND (Cancelada <> 1) AND ((SEL' +
        'ECT Finalidade_Mercadoria FROM TipoNota WHERE(Codigo = Tipo_Nota' +
        ')) = 0)'
      'ORDER BY Saida_Entrada, Numero')
    FetchRows = 1
    Active = True
    Left = 306
    Top = 281
  end
  object pNotas: TppDBPipeline
    DataSource = dstNotas
    UserName = 'pNotas'
    Left = 453
    Top = 144
    object pNotasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object pNotasppField2: TppField
      FieldAlias = 'Data_Emissao'
      FieldName = 'Data_Emissao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object pNotasppField3: TppField
      FieldAlias = 'BCICMS'
      FieldName = 'BCICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 2
    end
    object pNotasppField4: TppField
      FieldAlias = 'Valor_TotalNota'
      FieldName = 'Valor_TotalNota'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 3
    end
    object pNotasppField5: TppField
      FieldAlias = 'Tipo'
      FieldName = 'Tipo'
      FieldLength = 7
      DisplayWidth = 7
      Position = 4
    end
    object pNotasppField6: TppField
      FieldAlias = 'Total_Saida'
      FieldName = 'Total_Saida'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 5
    end
    object pNotasppField7: TppField
      FieldAlias = 'BCICMS_Saida'
      FieldName = 'BCICMS_Saida'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 6
    end
  end
  object dstNotas: TDataSource
    DataSet = tNotas
    Left = 306
    Top = 329
  end
  object tContratos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT CI.Contrato AS Numero,'
      '       CI.Data,'
      '       CI.Valor_ME,'
      '       CC.Moeda,'
      
        '       (SELECT Nome FROM Cybersoft_Cadastros.dbo.Moedas WHERE(Co' +
        'digo = Moeda)) AS Nome_Moeda,'
      '       CI.Taxa_Cambial,'
      '       (CI.Valor_ME * CI.Taxa_Cambial) AS Valor_Real,'
      '       CI.Processo'
      'FROM   ContratoCambioItens CI, ContratoCambio CC'
      
        'WHERE  (CI.Processo = '#39'ABR 107/10'#39') AND (CC.Numero = CI.Contrato' +
        ')'
      '')
    FetchRows = 1
    Active = True
    Left = 370
    Top = 281
  end
  object dstContratos: TDataSource
    DataSet = tContratos
    Left = 370
    Top = 329
  end
  object rCapa: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Fechamento do Processo'
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
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Printer'
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
    Left = 562
    Top = 200
    Version = '19.04'
    mmColumnWidth = 0
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 278871
      mmPrintPosition = 0
      object ppLabel77: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label77'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'B/L N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsUnderline]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 9789
        mmTop = 145257
        mmWidth = 33338
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line8'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 0
        mmTop = 272521
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground4
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line9'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 89959
        mmTop = 225161
        mmWidth = 95515
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel78: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label78'
        Border.mmPadding = 0
        Caption = 'FINANCEIRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 126471
        mmTop = 226748
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText26'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 5027
        mmLeft = 3969
        mmTop = 26194
        mmWidth = 189177
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel73: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label73'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsUnderline]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 9789
        mmTop = 101600
        mmWidth = 33338
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel74: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label74'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PROCESSO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsUnderline]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 9789
        mmTop = 109220
        mmWidth = 33338
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel75: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label75'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DI N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsUnderline]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 9789
        mmTop = 130175
        mmWidth = 33338
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel76: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label76'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'INVOICE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsUnderline]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 9789
        mmTop = 137584
        mmWidth = 33338
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText51: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText51'
        Border.mmPadding = 0
        DataField = 'Cliente_1'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 5027
        mmLeft = 44186
        mmTop = 101600
        mmWidth = 151872
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText52: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText52'
        Border.mmPadding = 0
        DataField = 'Processo'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 5027
        mmLeft = 44186
        mmTop = 109220
        mmWidth = 151872
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText53: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText53'
        Border.mmPadding = 0
        DataField = 'Numero_Declaracao'
        DataPipeline = pProcessos
        DisplayFormat = '99/9999999-9;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 5027
        mmLeft = 44186
        mmTop = 130175
        mmWidth = 151872
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText55: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Numero_DOC'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 5027
        mmLeft = 44186
        mmTop = 145257
        mmWidth = 151872
        BandType = 0
        LayerName = Foreground4
      end
      object ppShape19: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape19'
        Brush.Color = 16771797
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 55827
        mmTop = 49477
        mmWidth = 85725
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel80: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label80'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'FECHAMENTO N'#186' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 57150
        mmTop = 50006
        mmWidth = 34131
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel81: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label81'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'de '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 5027
        mmLeft = 109802
        mmTop = 50006
        mmWidth = 6350
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText57: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Codigo'
        DataPipeline = pProcessos
        DisplayFormat = '0000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 5027
        mmLeft = 92604
        mmTop = 50006
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText58: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText58'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Data'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Times New Roman'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 5027
        mmLeft = 118269
        mmTop = 50006
        mmWidth = 21696
        BandType = 0
        LayerName = Foreground4
      end
      object lEndereco: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'lEndereco'
        AutoSize = False
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
        mmHeight = 2381
        mmLeft = 0
        mmTop = 274373
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText54: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText54'
        Border.mmPadding = 0
        DataField = 'Numero_Fatura'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 5027
        mmLeft = 44186
        mmTop = 137584
        mmWidth = 151872
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel82: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label82'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'REF.CLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsUnderline]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 9789
        mmTop = 116681
        mmWidth = 33338
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText60: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText60'
        Border.mmPadding = 0
        DataField = 'Referencia_Cliente'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 5027
        mmLeft = 44186
        mmTop = 116681
        mmWidth = 151872
        BandType = 0
        LayerName = Foreground4
      end
      object ppLabel83: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label83'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DATA ENTREGA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsUnderline]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4763
        mmLeft = 9789
        mmTop = 123561
        mmWidth = 33338
        BandType = 0
        LayerName = Foreground4
      end
      object ppDBText61: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText601'
        Border.mmPadding = 0
        DataField = 'Referencia_DataEntrega'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 5027
        mmLeft = 44186
        mmTop = 123561
        mmWidth = 45773
        BandType = 0
        LayerName = Foreground4
      end
      object ppImage1: TppImage
        DesignLayer = ppDesignLayer5
        UserName = 'iLogo1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 16669
        mmLeft = 84931
        mmTop = 4498
        mmWidth = 27252
        BandType = 0
        LayerName = Foreground4
      end
    end
    object ppDetailBand5: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLabel79: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label79'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ERP Importa (Cybersoft Sistemas Ltda.)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2911
        mmLeft = 794
        mmTop = 529
        mmWidth = 45773
        BandType = 8
        LayerName = Foreground4
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer5
        UserName = 'SystemVariable4'
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
        mmLeft = 49477
        mmTop = 529
        mmWidth = 146579
        BandType = 8
        LayerName = Foreground4
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 48154
        mmTop = 265
        mmWidth = 5821
        BandType = 8
        LayerName = Foreground4
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line11'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
        BandType = 8
        LayerName = Foreground4
      end
    end
    object ppDesignLayers5: TppDesignLayers
      object ppDesignLayer5: TppDesignLayer
        UserName = 'Foreground4'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
end
