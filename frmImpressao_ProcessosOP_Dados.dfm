object Impressao_ProcessosOP_Dados: TImpressao_ProcessosOP_Dados
  Left = 484
  Top = 206
  BorderStyle = bsDialog
  Caption = 'Impressao_ProcessosOP_Dados'
  ClientHeight = 523
  ClientWidth = 712
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
    Width = 712
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitLeft = 8
    ExplicitTop = 46
    ExplicitWidth = 710
  end
  object bLimpaFiltro: TSpeedButton
    Left = 466
    Top = 53
    Width = 35
    Height = 27
    Hint = '  Limpar todos os filtros.  '
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
    ParentShowHint = False
    ShowHint = True
    OnClick = bLimpaFiltroClick
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
    Width = 343
    Height = 18
    Caption = 'Impress'#227'o dos documentos do processo de Importa'#231#227'o.'
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
    Top = 493
    Width = 712
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      Left = 637
      Top = 1
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
      ExplicitLeft = 636
    end
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 176
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsProcessosDOC
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
      Left = 177
      Top = 1
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Align = alLeft
      Caption = '&Pesquisar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bPesquisaClick
      ExplicitLeft = 225
    end
    object bImprimir: TButton
      Left = 251
      Top = 1
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Align = alLeft
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bImprimirClick
      ExplicitLeft = 299
    end
  end
  object Grade: TDBGrid
    Left = 4
    Top = 125
    Width = 704
    Height = 363
    DataSource = Dados.dsProcessosDOC
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
    Columns = <
      item
        Expanded = False
        FieldName = 'Processo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Width = 114
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Tipo'
        Title.Alignment = taCenter
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Incoterms'
        Title.Alignment = taCenter
        Width = 52
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Numero_Declaracao'
        Title.Alignment = taCenter
        Title.Caption = 'Declara'#231#227'o'
        Width = 85
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data_RegistroDeclaracao'
        Title.Alignment = taCenter
        Title.Caption = 'Registro'
        Width = 68
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data_DesembaracoDeclaracao'
        Title.Alignment = taCenter
        Title.Caption = 'Desembara'#231'o'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Origem'
        Title.Alignment = taCenter
        Width = 215
        Visible = True
      end>
  end
  object StaticText26: TStaticText
    Left = 5
    Top = 56
    Width = 72
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Respons'#225'vel'
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
  object cResponsavel: TRxDBLookupCombo
    Left = 79
    Top = 56
    Width = 385
    Height = 21
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Matricula'
    LookupDisplay = 'Matricula;Nome'
    LookupDisplayIndex = 1
    LookupSource = Dados.dsUsuarios
    ParentFont = False
    TabOrder = 3
    OnChange = cResponsavelChange
  end
  object cTipoDespesas: TRadioGroup
    Left = 4
    Top = 82
    Width = 498
    Height = 40
    Caption = 'Despesas do Processo'
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Todas'
      'Apenas custo dos produtos'
      'Nenhum')
    TabOrder = 4
  end
  object cAdicoes: TCheckBox
    Left = 512
    Top = 57
    Width = 116
    Height = 20
    Caption = 'Dados das Adi'#231#245'es'
    TabOrder = 5
  end
  object cDespesasDA: TCheckBox
    Left = 512
    Top = 77
    Width = 168
    Height = 20
    Caption = 'Despesas do Processo Mestre'
    TabOrder = 6
  end
  object cHistorico: TCheckBox
    Left = 512
    Top = 98
    Width = 180
    Height = 20
    Caption = 'N'#227'o imprimir sess'#227'o de Hist'#243'ricos'
    Checked = True
    State = cbChecked
    TabOrder = 7
  end
  object rDadosProcesso: TppReport
    AutoStop = False
    DataPipeline = pProcessos
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Cybersoft - Dados do Processo'
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
    BeforePrint = rDadosProcessoBeforePrint
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
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 453
    Top = 282
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pProcessos'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 16933
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText2'
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
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground4
      end
      object lTitulo: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'lTitulo'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Dados do Processo de '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 265
        mmTop = 6879
        mmWidth = 197115
        BandType = 0
        LayerName = Foreground4
      end
      object iLogo: TppImage
        DesignLayer = ppDesignLayer5
        UserName = 'iLogo'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 16933
        mmLeft = 0
        mmTop = 0
        mmWidth = 27252
        BandType = 0
        LayerName = Foreground4
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 120121
      mmPrintPosition = 0
      object ppShape55: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape55'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 14288
        mmLeft = 0
        mmTop = 18785
        mmWidth = 197380
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape21: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape201'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 98954
        mmTop = 63236
        mmWidth = 98690
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape14: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape14'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 128852
        mmTop = 39423
        mmWidth = 34396
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape1'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 0
        mmTop = 4498
        mmWidth = 40217
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Processo'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
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
        LayerName = Foreground4
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'PROCESSO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
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
        LayerName = Foreground4
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape2'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 40217
        mmTop = 4498
        mmWidth = 40217
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Beneficio'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3387
        mmLeft = 52917
        mmTop = 5027
        mmWidth = 26723
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label4'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'BENEF'#205'CIO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2159
        mmLeft = 41010
        mmTop = 5027
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape3'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 80433
        mmTop = 4498
        mmWidth = 117211
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText6'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Incoterms'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3387
        mmLeft = 102394
        mmTop = 5027
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label5'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CODI'#199#195'O DE VENDA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2159
        mmLeft = 81492
        mmTop = 5027
        mmWidth = 19844
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape4'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 0
        mmTop = 9260
        mmWidth = 113506
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText7'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Cliente_Nome'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 20638
        mmTop = 9790
        mmWidth = 92075
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label6'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CLIENTE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 1058
        mmTop = 9790
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape5'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 113506
        mmTop = 9260
        mmWidth = 84138
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Modalidade_Nome'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
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
        LayerName = Foreground4
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label7'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'MODALIDADE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
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
        LayerName = Foreground4
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label2'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' PROCESSO'
        Color = 166
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3429
        mmLeft = 0
        mmTop = 529
        mmWidth = 197643
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape6'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 0
        mmTop = 14023
        mmWidth = 39423
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Processo_Abertura'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3387
        mmLeft = 20108
        mmTop = 14552
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label3'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DATA DE ABERTURA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 1058
        mmTop = 14552
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape7: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape7'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 39423
        mmTop = 14023
        mmWidth = 41804
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Processo_Fechamento'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3429
        mmLeft = 63500
        mmTop = 14552
        mmWidth = 16934
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label8'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DATA DE FECHAMENTO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2159
        mmLeft = 40217
        mmTop = 14552
        mmWidth = 22754
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText9'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'INCOTERMS_Descricao'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3387
        mmLeft = 112184
        mmTop = 5027
        mmWidth = 84402
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape8: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape8'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 0
        mmTop = 39423
        mmWidth = 50536
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Via_Transporte'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 20638
        mmTop = 39952
        mmWidth = 29104
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label9'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VIA DE TRANSPORTE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 1058
        mmTop = 39952
        mmWidth = 19050
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape9: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape9'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 50536
        mmTop = 39423
        mmWidth = 78317
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText11'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Nome_Transporte'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 78052
        mmTop = 39952
        mmWidth = 49477
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label10'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'NOME DA VIA TRANSPORTE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2159
        mmLeft = 51858
        mmTop = 39952
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape10: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape10'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 0
        mmTop = 48948
        mmWidth = 68792
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label11'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'N'#186' DO BL:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 1058
        mmTop = 49477
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText17'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Numero_DOC'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 11377
        mmTop = 49477
        mmWidth = 56621
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label14'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' FATURA (COMMERCIAL INVOICE)'
        Color = 166
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3429
        mmLeft = 0
        mmTop = 35454
        mmWidth = 197643
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape12: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape12'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 0
        mmTop = 44186
        mmWidth = 41275
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText13'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Vencimento_Cambio'
        DataPipeline = pProcessos
        DisplayFormat = '##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 26194
        mmTop = 44715
        mmWidth = 5821
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label13'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VENCIMENTO DO C'#194'MBIO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 1058
        mmTop = 44715
        mmWidth = 23548
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label15'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'dias'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 32808
        mmTop = 44715
        mmWidth = 7673
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape11: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape11'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 41275
        mmTop = 44186
        mmWidth = 156369
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText12'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Agencia_Maritima'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 51858
        mmTop = 44715
        mmWidth = 57679
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label12'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'AG'#30#202'NCIA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 42069
        mmTop = 44715
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape13: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape13'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 68792
        mmTop = 48948
        mmWidth = 94456
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText14'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Numero_Fatura'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 78052
        mmTop = 49477
        mmWidth = 84402
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label16'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'FATURA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 69586
        mmTop = 49477
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label17'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DATA PREVISTA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 129646
        mmTop = 39952
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText15'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Navio_DataPrevista'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 145257
        mmTop = 39952
        mmWidth = 16934
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape15: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape15'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 162984
        mmTop = 39423
        mmWidth = 34660
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label18'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DATA CHEGADA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 164042
        mmTop = 39952
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText16'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Navio_DataChegada'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 179652
        mmTop = 39952
        mmWidth = 16934
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape16: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape16'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 163248
        mmTop = 48948
        mmWidth = 34396
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label19'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DATA FATURA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 164307
        mmTop = 49477
        mmWidth = 14817
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText18'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Navio_DataPrevista'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 179652
        mmTop = 49477
        mmWidth = 16933
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape17: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape101'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 0
        mmTop = 53711
        mmWidth = 86519
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label20'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ORIGEM:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 1058
        mmTop = 54240
        mmWidth = 8467
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText19'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Origem'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 10054
        mmTop = 54240
        mmWidth = 75671
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape18: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape18'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 86519
        mmTop = 53711
        mmWidth = 111125
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label201'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TIPO MERCADORIA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 87313
        mmTop = 54504
        mmWidth = 17463
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText20'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Tipo_MercadoriaNome'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 105569
        mmTop = 54240
        mmWidth = 91281
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape19: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape19'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 0
        mmTop = 58473
        mmWidth = 197644
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label22'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CONDI'#199#195'O PAGAMENTO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 1058
        mmTop = 59002
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText201'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Condicao_Pgto'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 23019
        mmTop = 59267
        mmWidth = 173567
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape20: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape20'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 0
        mmTop = 63236
        mmWidth = 98954
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label23'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LOCAL DE EMBARQUE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 794
        mmTop = 63765
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText22'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Local_Embarque'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 20638
        mmTop = 64029
        mmWidth = 77258
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText23'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Local_Desembarque'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 123296
        mmTop = 64029
        mmWidth = 72761
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label24'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LOCAL DE DESEMBARQUE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 99484
        mmTop = 63765
        mmWidth = 22490
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape22: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape202'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 0
        mmTop = 67998
        mmWidth = 67469
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label25'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ESP'#201'CIE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 794
        mmTop = 68527
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText24'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Especie'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 10848
        mmTop = 68527
        mmWidth = 55827
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape23: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape23'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 67469
        mmTop = 67998
        mmWidth = 25135
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label26'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VOLUMES:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 68263
        mmTop = 68792
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText25'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Volumes'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 78317
        mmTop = 68527
        mmWidth = 13494
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape24: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape24'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 92604
        mmTop = 67998
        mmWidth = 28840
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label27'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'QUANTIDADE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 93398
        mmTop = 68792
        mmWidth = 12700
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText26'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Quantidade'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 106627
        mmTop = 68527
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape25: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape25'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 121444
        mmTop = 67998
        mmWidth = 38100
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label28'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'PESO L'#205'QUIDO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 122238
        mmTop = 68792
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText27'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Peso_Liquido'
        DataPipeline = pProcessos
        DisplayFormat = '#,###,##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 136790
        mmTop = 68792
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape26: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape26'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 159544
        mmTop = 67998
        mmWidth = 38100
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label29'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'PESO L'#205'QUIDO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 160338
        mmTop = 68792
        mmWidth = 14023
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText28'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Peso_Bruto'
        DataPipeline = pProcessos
        DisplayFormat = '#,###,##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 174890
        mmTop = 68792
        mmWidth = 21696
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape27: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape27'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 0
        mmTop = 79904
        mmWidth = 34660
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label30'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'FOB ME:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 794
        mmTop = 80433
        mmWidth = 7938
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText29'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FOB_ME'
        DataPipeline = pProcessos
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 10848
        mmTop = 80433
        mmWidth = 22754
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label31'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' VALORES'
        Color = 166
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 75936
        mmWidth = 197643
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape28: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape28'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 0
        mmTop = 84667
        mmWidth = 34660
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label301'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'FRETE ME:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 794
        mmTop = 85196
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText30'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Frete_ME'
        DataPipeline = pProcessos
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 10848
        mmTop = 85196
        mmWidth = 22754
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape29: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape29'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 0
        mmTop = 89429
        mmWidth = 34660
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel33: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label33'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'SEGURO ME:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 794
        mmTop = 89959
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText31: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText301'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Seguro_ME'
        DataPipeline = pProcessos
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 10848
        mmTop = 89959
        mmWidth = 22754
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape30: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape30'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 34660
        mmTop = 79904
        mmWidth = 95779
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label34'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'MOEDA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 35454
        mmTop = 80433
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText32: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText302'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Moeda_FOB'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 43921
        mmTop = 80433
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape31: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape301'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 34660
        mmTop = 84667
        mmWidth = 95779
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel35: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label35'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'MOEDA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 35454
        mmTop = 85196
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText33: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText33'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Moeda_Frete'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 43921
        mmTop = 85196
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape32: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape302'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 34660
        mmTop = 89429
        mmWidth = 95779
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel36: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label36'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'MOEDA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 35454
        mmTop = 89959
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText34: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText34'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Moeda_Seguro'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 43921
        mmTop = 89959
        mmWidth = 8202
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape33: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape33'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 157163
        mmTop = 79904
        mmWidth = 40481
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel37: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label302'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'FOB R$:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 157957
        mmTop = 80433
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText35: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText35'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'FOB'
        DataPipeline = pProcessos
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 168011
        mmTop = 80433
        mmWidth = 28575
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape34: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape34'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 157163
        mmTop = 84667
        mmWidth = 40481
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label38'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'FRETE R$:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 157957
        mmTop = 85196
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText36: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText303'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Frete'
        DataPipeline = pProcessos
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 168011
        mmTop = 85196
        mmWidth = 28575
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape35: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape35'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 157163
        mmTop = 89429
        mmWidth = 40481
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel39: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label39'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'SEGURO R$:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 157957
        mmTop = 89959
        mmWidth = 9525
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText37: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText37'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Seguro'
        DataPipeline = pProcessos
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 168011
        mmTop = 89959
        mmWidth = 28575
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape36: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape36'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 130440
        mmTop = 79904
        mmWidth = 26723
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel40: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label40'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TAXA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 131234
        mmTop = 80433
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText38: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText38'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Taxa_FOB'
        DataPipeline = pProcessos
        DisplayFormat = '#,##0.00000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 138113
        mmTop = 80433
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape37: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape37'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 130440
        mmTop = 84667
        mmWidth = 26723
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel41: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label41'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TAXA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 131234
        mmTop = 85196
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText39: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText39'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Taxa_Frete'
        DataPipeline = pProcessos
        DisplayFormat = '#,##0.00000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 138113
        mmTop = 85196
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape38: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape38'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 130440
        mmTop = 89429
        mmWidth = 26723
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel42: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label42'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'TAXA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 131234
        mmTop = 89959
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText40: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText40'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Taxa_Seguro'
        DataPipeline = pProcessos
        DisplayFormat = '#,##0.00000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 138113
        mmTop = 89959
        mmWidth = 18256
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape39: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape39'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 0
        mmTop = 94192
        mmWidth = 39952
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel43: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label43'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'II:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 794
        mmTop = 94721
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText41: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText41'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'II'
        DataPipeline = pProcessos
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 7408
        mmTop = 94721
        mmWidth = 31750
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape40: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape40'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 39952
        mmTop = 94192
        mmWidth = 39952
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel44: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label44'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'IPI:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 40746
        mmTop = 94721
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText42: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText42'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Valor_IPI'
        DataPipeline = pProcessos
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 47361
        mmTop = 94721
        mmWidth = 31750
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape41: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape41'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 39952
        mmTop = 98954
        mmWidth = 24606
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel45: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label45'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ALIQUOTA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 40746
        mmTop = 99484
        mmWidth = 10054
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText43: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText43'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Aliquota_ICMS'
        DataPipeline = pProcessos
        DisplayFormat = '#0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 51594
        mmTop = 99484
        mmWidth = 11642
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape42: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape42'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 79904
        mmTop = 94192
        mmWidth = 37835
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel46: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label46'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'PIS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 80698
        mmTop = 94721
        mmWidth = 4763
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText44: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText44'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Valor_PIS'
        DataPipeline = pProcessos
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 86784
        mmTop = 94721
        mmWidth = 29633
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape43: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape43'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 117740
        mmTop = 94192
        mmWidth = 39423
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel47: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label47'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'COFINS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 118534
        mmTop = 94721
        mmWidth = 7408
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText45: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText45'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Valor_COFINS'
        DataPipeline = pProcessos
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 127000
        mmTop = 94721
        mmWidth = 29633
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape44: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape44'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 0
        mmTop = 110596
        mmWidth = 34660
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel48: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label303'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DI N'#186':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 794
        mmTop = 111125
        mmWidth = 6879
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText46: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText46'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Numero_Declaracao'
        DataPipeline = pProcessos
        DisplayFormat = '99/9999999-9;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 8731
        mmTop = 111125
        mmWidth = 24606
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel49: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label49'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' DI'
        Color = 166
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Tahoma'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        VerticalAlignment = avCenter
        mmHeight = 3440
        mmLeft = 0
        mmTop = 106627
        mmWidth = 197643
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape45: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape303'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 34396
        mmTop = 110596
        mmWidth = 31221
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel50: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label50'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'REGISTRO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 35190
        mmTop = 111125
        mmWidth = 10319
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText47: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText47'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Data_RegistroDeclaracao'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 46567
        mmTop = 111125
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape47: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape47'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 100277
        mmTop = 110596
        mmWidth = 97367
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel52: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label401'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CANAL:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 101071
        mmTop = 111125
        mmWidth = 6350
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText49: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText49'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Canal'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 107950
        mmTop = 111125
        mmWidth = 88900
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape48: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape48'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 65617
        mmTop = 110596
        mmWidth = 34660
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel53: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label501'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DESEMBARA'#199'O:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2646
        mmLeft = 66411
        mmTop = 111125
        mmWidth = 13758
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText50: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText50'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Data_RegistroDeclaracao'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 81227
        mmTop = 111125
        mmWidth = 17727
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape46: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape46'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 0
        mmTop = 115357
        mmWidth = 121973
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel51: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label51'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'RECINTO ALFANDEG'#193'RIO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 794
        mmTop = 115888
        mmWidth = 22754
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText48: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText48'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Recinto_Alfandegario'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 24077
        mmTop = 115888
        mmWidth = 96573
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape49: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape49'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 121973
        mmTop = 115357
        mmWidth = 62442
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText51: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText51'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Local_Desembaraco'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 142875
        mmTop = 115888
        mmWidth = 40746
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel54: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label54'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'LOCAL DESEMBARA'#199'O:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 122767
        mmTop = 115888
        mmWidth = 19315
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape50: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape50'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 184415
        mmTop = 115357
        mmWidth = 13229
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText52: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText52'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'UF_Desembaraco'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 190500
        mmTop = 115888
        mmWidth = 5556
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel55: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label55'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'UF:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 185209
        mmTop = 115888
        mmWidth = 4498
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape51: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape51'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 0
        mmTop = 98954
        mmWidth = 39952
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel56: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label56'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ICMS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 529
        mmTop = 99484
        mmWidth = 6085
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText53: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText53'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Diferido'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3471
        mmLeft = 7144
        mmTop = 99484
        mmWidth = 31750
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape52: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape52'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 64558
        mmTop = 98954
        mmWidth = 42863
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel57: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label57'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VALOR ICMS:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 65352
        mmTop = 99484
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText54: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText54'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Valor_ICMS'
        DataPipeline = pProcessos
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 77523
        mmTop = 99484
        mmWidth = 28575
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape53: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape53'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 157163
        mmTop = 94192
        mmWidth = 40481
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel73: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label73'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'VALORA'#199#195'O:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 157957
        mmTop = 94721
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText61: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText61'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Ad_Valorem'
        DataPipeline = pProcessos
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 168011
        mmTop = 94721
        mmWidth = 28575
        BandType = 4
        LayerName = Foreground4
      end
      object ppShape54: TppShape
        DesignLayer = ppDesignLayer5
        UserName = 'Shape54'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4763
        mmLeft = 107421
        mmTop = 98954
        mmWidth = 40481
        BandType = 4
        LayerName = Foreground4
      end
      object ppLabel74: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label74'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'DUMPING:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 108215
        mmTop = 99484
        mmWidth = 10848
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText62: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText62'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Valor_Dumping'
        DataPipeline = pProcessos
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 119327
        mmTop = 99484
        mmWidth = 27252
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText63: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText63'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NomeMoedaFOB'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 52916
        mmTop = 80433
        mmWidth = 75936
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText64: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText64'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NomeMoedaFrete'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 52916
        mmTop = 85196
        mmWidth = 75936
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText65: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText65'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'NomeMoedaSeguro'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3440
        mmLeft = 52916
        mmTop = 89959
        mmWidth = 75936
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBText81: TppDBText
        DesignLayer = ppDesignLayer5
        UserName = 'DBText81'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Cliente'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 3969
        mmLeft = 10319
        mmTop = 9790
        mmWidth = 9790
        BandType = 4
        LayerName = Foreground4
      end
      object ppDBMemo2: TppDBMemo
        DesignLayer = ppDesignLayer5
        UserName = 'DBMemo2'
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'Observacao'
        DataPipeline = pProcessos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'pProcessos'
        mmHeight = 10583
        mmLeft = 1058
        mmTop = 21696
        mmWidth = 195263
        BandType = 4
        LayerName = Foreground4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel98: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label98'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'OBSERVA'#199#213'ES:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 265
        mmTop = 19315
        mmWidth = 22754
        BandType = 4
        LayerName = Foreground4
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer5
        UserName = 'Label101'
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
        mmHeight = 2879
        mmLeft = 3048
        mmTop = 529
        mmWidth = 43519
        BandType = 8
        LayerName = Foreground4
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer5
        UserName = 'SystemVariable2'
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
        mmLeft = 67733
        mmTop = 529
        mmWidth = 65088
        BandType = 8
        LayerName = Foreground4
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer5
        UserName = 'SystemVariable3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 133086
        mmTop = 529
        mmWidth = 24077
        BandType = 8
        LayerName = Foreground4
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line4'
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
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer5
        UserName = 'SystemVariable1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 181769
        mmTop = 265
        mmWidth = 15610
        BandType = 8
        LayerName = Foreground4
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
        BandType = 8
        LayerName = Foreground4
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer5
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 178859
        mmTop = 265
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground4
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
        mmHeight = 28840
        mmPrintPosition = 0
        object rDespesas: TppSubReport
          DesignLayer = ppDesignLayer5
          UserName = 'rDespesas'
          ExpandAll = False
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          TraverseAllData = False
          DataPipelineName = 'pDespesas'
          mmHeight = 5027
          mmLeft = 0
          mmTop = 1588
          mmWidth = 197300
          BandType = 5
          GroupNo = 0
          LayerName = Foreground4
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppChildReport1: TppChildReport
            AutoStop = False
            DataPipeline = pDespesas
            PrinterSetup.BinName = 'Default'
            PrinterSetup.DocumentName = 'Cybersoft - Dados do Processo'
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
              mmHeight = 8996
              mmPrintPosition = 0
              object ppLabel58: TppLabel
                DesignLayer = ppDesignLayer1
                UserName = 'Label58'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = ' MOVIMENTA'#199#195'O FINANCEIRA - PROCESSO'
                Color = 166
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 8
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                VerticalAlignment = avCenter
                mmHeight = 3440
                mmLeft = 0
                mmTop = 1588
                mmWidth = 197380
                BandType = 1
                LayerName = Foreground
              end
              object ppLabel59: TppLabel
                DesignLayer = ppDesignLayer1
                UserName = 'Label59'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'VENCTO'
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                VerticalAlignment = avCenter
                mmHeight = 3429
                mmLeft = 0
                mmTop = 5556
                mmWidth = 17198
                BandType = 1
                LayerName = Foreground
              end
              object ppLabel61: TppLabel
                DesignLayer = ppDesignLayer1
                UserName = 'Label61'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'DESCRI'#199#195'O DA DESPESA'
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                VerticalAlignment = avCenter
                mmHeight = 3440
                mmLeft = 17727
                mmTop = 5556
                mmWidth = 89223
                BandType = 1
                LayerName = Foreground
              end
              object ppLabel62: TppLabel
                DesignLayer = ppDesignLayer1
                UserName = 'Label62'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'RECEB'
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                VerticalAlignment = avCenter
                mmHeight = 3440
                mmLeft = 131763
                mmTop = 5556
                mmWidth = 23813
                BandType = 1
                LayerName = Foreground
              end
              object ppLabel68: TppLabel
                DesignLayer = ppDesignLayer1
                UserName = 'Label68'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'PAGTO'
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                VerticalAlignment = avCenter
                mmHeight = 3440
                mmLeft = 156104
                mmTop = 5556
                mmWidth = 23813
                BandType = 1
                LayerName = Foreground
              end
              object ppLabel71: TppLabel
                DesignLayer = ppDesignLayer1
                UserName = 'Label71'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'CUS E'
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                Visible = False
                VerticalAlignment = avCenter
                mmHeight = 3175
                mmLeft = 180446
                mmTop = 5556
                mmWidth = 8202
                BandType = 1
                LayerName = Foreground
              end
              object ppLabel97: TppLabel
                DesignLayer = ppDesignLayer1
                UserName = 'Label97'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'CUS S'
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                Visible = False
                VerticalAlignment = avCenter
                mmHeight = 3175
                mmLeft = 189177
                mmTop = 5556
                mmWidth = 8202
                BandType = 1
                LayerName = Foreground
              end
              object ppLabel105: TppLabel
                DesignLayer = ppDesignLayer1
                UserName = 'Label105'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'ADIANT'
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                VerticalAlignment = avCenter
                mmHeight = 3440
                mmLeft = 107402
                mmTop = 5556
                mmWidth = 23813
                BandType = 1
                LayerName = Foreground
              end
            end
            object ppDetailBand2: TppDetailBand
              Background1.Brush.Style = bsClear
              Background2.Brush.Style = bsClear
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 2910
              mmPrintPosition = 0
              object ppDBText55: TppDBText
                DesignLayer = ppDesignLayer1
                UserName = 'DBText55'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Data_Vencimento'
                DataPipeline = pDespesas
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'pDespesas'
                mmHeight = 2381
                mmLeft = 0
                mmTop = 0
                mmWidth = 17198
                BandType = 4
                LayerName = Foreground
              end
              object ppDBText56: TppDBText
                DesignLayer = ppDesignLayer1
                UserName = 'DBText56'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Descricao'
                DataPipeline = pDespesas
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                DataPipelineName = 'pDespesas'
                mmHeight = 2381
                mmLeft = 17727
                mmTop = 0
                mmWidth = 89223
                BandType = 4
                LayerName = Foreground
              end
              object ppDBText57: TppDBText
                DesignLayer = ppDesignLayer1
                UserName = 'DBText57'
                BlankWhenZero = True
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Valor_Recebimento'
                DataPipeline = pDespesas
                DisplayFormat = '#,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pDespesas'
                mmHeight = 2381
                mmLeft = 131763
                mmTop = 0
                mmWidth = 23813
                BandType = 4
                LayerName = Foreground
              end
              object ppDBText59: TppDBText
                DesignLayer = ppDesignLayer1
                UserName = 'DBText59'
                BlankWhenZero = True
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Valor_Pagamento'
                DataPipeline = pDespesas
                DisplayFormat = '#,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pDespesas'
                mmHeight = 2381
                mmLeft = 156104
                mmTop = 0
                mmWidth = 23813
                BandType = 4
                LayerName = Foreground
              end
              object myDBCheckBox1: TmyDBCheckBox
                DesignLayer = ppDesignLayer1
                UserName = 'DBCheckBox1'
                CheckBoxColor = clWindowText
                BooleanFalse = 'False'
                BooleanTrue = 'True'
                Style = csCheckMark
                DataPipeline = pDespesas
                DataField = 'Custo_Entrada'
                Visible = False
                DataPipelineName = 'pDespesas'
                mmHeight = 2910
                mmLeft = 183621
                mmTop = 0
                mmWidth = 2647
                BandType = 4
                LayerName = Foreground
              end
              object myDBCheckBox4: TmyDBCheckBox
                DesignLayer = ppDesignLayer1
                UserName = 'DBCheckBox4'
                CheckBoxColor = clWindowText
                BooleanFalse = 'False'
                BooleanTrue = 'True'
                Style = csCheckMark
                DataPipeline = pDespesas
                DataField = 'Custo_Saida'
                Visible = False
                DataPipelineName = 'pDespesas'
                mmHeight = 2910
                mmLeft = 191871
                mmTop = 0
                mmWidth = 2647
                BandType = 4
                LayerName = Foreground
              end
              object ppDBText84: TppDBText
                DesignLayer = ppDesignLayer1
                UserName = 'DBText84'
                BlankWhenZero = True
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Valor_Adiantamento'
                DataPipeline = pDespesas
                DisplayFormat = '#,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pDespesas'
                mmHeight = 2381
                mmLeft = 107402
                mmTop = 0
                mmWidth = 23813
                BandType = 4
                LayerName = Foreground
              end
            end
            object ppSummaryBand1: TppSummaryBand
              BeforePrint = ppSummaryBand1BeforePrint
              Background.Brush.Style = bsClear
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 37571
              mmPrintPosition = 0
              object ppLabel60: TppLabel
                DesignLayer = ppDesignLayer1
                UserName = 'Label60'
                AutoSize = False
                Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
                Border.Visible = True
                Border.Weight = 0.100000001490116100
                Border.mmPadding = 0
                Caption = 'RECEBIMENTOS'
                Color = clGradientInactiveCaption
                Ellipsis = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                VerticalAlignment = avCenter
                mmHeight = 3440
                mmLeft = 62159
                mmTop = 15875
                mmWidth = 30691
                BandType = 7
                LayerName = Foreground
              end
              object ppLine1: TppLine
                DesignLayer = ppDesignLayer1
                UserName = 'Line1'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Pen.Width = 0
                mmHeight = 1058
                mmLeft = 1323
                mmTop = 0
                mmWidth = 196850
                BandType = 7
                LayerName = Foreground
              end
              object ppLabel69: TppLabel
                DesignLayer = ppDesignLayer1
                UserName = 'Label601'
                AutoSize = False
                Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
                Border.Visible = True
                Border.Weight = 0.100000001490116100
                Border.mmPadding = 0
                Caption = 'PAGAMENTOS'
                Color = clGradientInactiveCaption
                Ellipsis = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                VerticalAlignment = avCenter
                mmHeight = 3440
                mmLeft = 62159
                mmTop = 19876
                mmWidth = 30691
                BandType = 7
                LayerName = Foreground
              end
              object ppLabel99: TppLabel
                DesignLayer = ppDesignLayer1
                UserName = 'Label602'
                AutoSize = False
                Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
                Border.Visible = True
                Border.Weight = 0.100000001490116100
                Border.mmPadding = 0
                Caption = 'TOTAL DOS ADIANTAMENTOS'
                Color = clGradientInactiveCaption
                Ellipsis = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                VerticalAlignment = avCenter
                mmHeight = 3440
                mmLeft = 62159
                mmTop = 11938
                mmWidth = 30691
                BandType = 7
                LayerName = Foreground
              end
              object lTotalAdiant: TppDBText
                DesignLayer = ppDesignLayer1
                UserName = 'lTotalAdiant'
                Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
                Border.Visible = True
                Border.Weight = 0.100000001490116100
                Border.mmPadding = 0
                DataField = 'Valor_AdiantAb'
                DataPipeline = pAdiantamentos
                DisplayFormat = ',##0.00'
                Ellipsis = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                VerticalAlignment = avCenter
                DataPipelineName = 'pAdiantamentos'
                mmHeight = 3440
                mmLeft = 92852
                mmTop = 11938
                mmWidth = 20373
                BandType = 7
                LayerName = Foreground
              end
              object ppLabel101: TppLabel
                DesignLayer = ppDesignLayer1
                UserName = 'Label1'
                AutoSize = False
                Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
                Border.Visible = True
                Border.Weight = 0.100000001490116100
                Border.mmPadding = 0
                Caption = 'A RECEBER'
                Color = clGradientInactiveCaption
                Ellipsis = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                VerticalAlignment = avCenter
                mmHeight = 3440
                mmLeft = 114017
                mmTop = 15875
                mmWidth = 13758
                BandType = 7
                LayerName = Foreground
              end
              object ppDBText82: TppDBText
                DesignLayer = ppDesignLayer1
                UserName = 'lTotalAdiant1'
                Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
                Border.Visible = True
                Border.Weight = 0.100000001490116100
                Border.mmPadding = 0
                DataField = 'Receber'
                DataPipeline = pRecPag
                DisplayFormat = ',##0.00'
                Ellipsis = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                VerticalAlignment = avCenter
                DataPipelineName = 'pRecPag'
                mmHeight = 3440
                mmLeft = 127924
                mmTop = 15875
                mmWidth = 20373
                BandType = 7
                LayerName = Foreground
              end
              object ppLabel106: TppLabel
                DesignLayer = ppDesignLayer1
                UserName = 'Label106'
                AutoSize = False
                Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
                Border.Visible = True
                Border.Weight = 0.100000001490116100
                Border.mmPadding = 0
                Caption = 'A PAGAR'
                Color = clGradientInactiveCaption
                Ellipsis = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                VerticalAlignment = avCenter
                mmHeight = 3440
                mmLeft = 114071
                mmTop = 19876
                mmWidth = 13758
                BandType = 7
                LayerName = Foreground
              end
              object lPagar: TppDBText
                DesignLayer = ppDesignLayer1
                UserName = 'lPagar'
                Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
                Border.Visible = True
                Border.Weight = 0.100000001490116100
                Border.mmPadding = 0
                DataField = 'Pagar'
                DataPipeline = pRecPag
                DisplayFormat = ',##0.00'
                Ellipsis = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                VerticalAlignment = avCenter
                DataPipelineName = 'pRecPag'
                mmHeight = 3440
                mmLeft = 127829
                mmTop = 19876
                mmWidth = 20373
                BandType = 7
                LayerName = Foreground
              end
              object lRecebido: TppDBText
                DesignLayer = ppDesignLayer1
                UserName = 'lRecebido'
                Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
                Border.Visible = True
                Border.Weight = 0.100000001490116100
                Border.mmPadding = 0
                DataField = 'Recebido'
                DataPipeline = pRecPag
                DisplayFormat = ',##0.00'
                Ellipsis = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                VerticalAlignment = avCenter
                DataPipelineName = 'pRecPag'
                mmHeight = 3440
                mmLeft = 92839
                mmTop = 15875
                mmWidth = 20373
                BandType = 7
                LayerName = Foreground
              end
              object ppDBText86: TppDBText
                DesignLayer = ppDesignLayer1
                UserName = 'DBText86'
                Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
                Border.Visible = True
                Border.Weight = 0.100000001490116100
                Border.mmPadding = 0
                DataField = 'Pago'
                DataPipeline = pRecPag
                DisplayFormat = ',##0.00'
                Ellipsis = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                VerticalAlignment = avCenter
                DataPipelineName = 'pRecPag'
                mmHeight = 3440
                mmLeft = 92839
                mmTop = 19844
                mmWidth = 20373
                BandType = 7
                LayerName = Foreground
              end
              object ppLabel70: TppLabel
                DesignLayer = ppDesignLayer1
                UserName = 'Label2'
                AutoSize = False
                Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
                Border.Visible = True
                Border.Weight = 0.100000001490116100
                Border.mmPadding = 0
                Caption = 'TOTAL PAGO PELO CLIENTE'
                Color = clGradientInactiveCaption
                Ellipsis = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                VerticalAlignment = avCenter
                mmHeight = 3440
                mmLeft = 62147
                mmTop = 23781
                mmWidth = 30692
                BandType = 7
                LayerName = Foreground
              end
              object lPagoCli: TppVariable
                DesignLayer = ppDesignLayer1
                UserName = 'Variable1'
                AutoSize = False
                Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
                Border.Visible = True
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
                mmHeight = 3439
                mmLeft = 92839
                mmTop = 23813
                mmWidth = 20373
                BandType = 7
                LayerName = Foreground
              end
              object ppLabel102: TppLabel
                DesignLayer = ppDesignLayer1
                UserName = 'Label102'
                AutoSize = False
                Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
                Border.Visible = True
                Border.Weight = 0.100000001490116100
                Border.mmPadding = 0
                Caption = 'TOTAL DEVIDO PELO CLIENTE'
                Color = clGradientInactiveCaption
                Ellipsis = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                VerticalAlignment = avCenter
                mmHeight = 3440
                mmLeft = 62147
                mmTop = 27803
                mmWidth = 30692
                BandType = 7
                LayerName = Foreground
              end
              object lDevCli: TppVariable
                DesignLayer = ppDesignLayer1
                UserName = 'lDevCli'
                AutoSize = False
                Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
                Border.Visible = True
                Border.mmPadding = 0
                BlankWhenZero = False
                CalcOrder = 1
                DataType = dtCurrency
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3439
                mmLeft = 92839
                mmTop = 27803
                mmWidth = 20373
                BandType = 7
                LayerName = Foreground
              end
              object ppLabel103: TppLabel
                DesignLayer = ppDesignLayer1
                UserName = 'Label103'
                AutoSize = False
                Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
                Border.Visible = True
                Border.Weight = 0.100000001490116100
                Border.mmPadding = 0
                Caption = 'SALDO DO PROCESSO'
                Color = clGradientInactiveCaption
                Ellipsis = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                VerticalAlignment = avCenter
                mmHeight = 3440
                mmLeft = 62147
                mmTop = 31656
                mmWidth = 30692
                BandType = 7
                LayerName = Foreground
              end
              object lSaldoProc: TppVariable
                DesignLayer = ppDesignLayer1
                UserName = 'lDevCli1'
                AutoSize = False
                Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
                Border.Visible = True
                Border.mmPadding = 0
                BlankWhenZero = False
                CalcOrder = 2
                DataType = dtCurrency
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 7
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3440
                mmLeft = 92839
                mmTop = 31656
                mmWidth = 20373
                BandType = 7
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
          end
        end
        object rHistorico: TppSubReport
          DesignLayer = ppDesignLayer5
          UserName = 'rHistorico'
          ExpandAll = False
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          ShiftRelativeTo = rDespesasDA
          TraverseAllData = False
          DataPipelineName = 'pHistorico'
          mmHeight = 5027
          mmLeft = 0
          mmTop = 16404
          mmWidth = 197300
          BandType = 5
          GroupNo = 0
          LayerName = Foreground4
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppChildReport2: TppChildReport
            AutoStop = False
            DataPipeline = pHistorico
            PrinterSetup.BinName = 'Default'
            PrinterSetup.DocumentName = 'Cybersoft - Dados do Processo'
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
            DataPipelineName = 'pHistorico'
            object ppTitleBand2: TppTitleBand
              Background.Brush.Style = bsClear
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 11377
              mmPrintPosition = 0
              object ppLabel64: TppLabel
                DesignLayer = ppDesignLayer2
                UserName = 'Label64'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'HIST'#211'RICO'
                Color = 166
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 8
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                VerticalAlignment = avCenter
                mmHeight = 3440
                mmLeft = 265
                mmTop = 2117
                mmWidth = 197380
                BandType = 1
                LayerName = Foreground1
              end
              object ppLabel65: TppLabel
                DesignLayer = ppDesignLayer2
                UserName = 'Label65'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'DATA'
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                VerticalAlignment = avCenter
                mmHeight = 3440
                mmLeft = 264
                mmTop = 6085
                mmWidth = 15875
                BandType = 1
                LayerName = Foreground1
              end
              object ppLabel66: TppLabel
                DesignLayer = ppDesignLayer2
                UserName = 'Label66'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'DESCRI'#199#195'O'
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                VerticalAlignment = avCenter
                mmHeight = 3440
                mmLeft = 28046
                mmTop = 6085
                mmWidth = 169598
                BandType = 1
                LayerName = Foreground1
              end
              object ppLabel67: TppLabel
                DesignLayer = ppDesignLayer2
                UserName = 'Label67'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'HORA'
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                VerticalAlignment = avCenter
                mmHeight = 3440
                mmLeft = 16669
                mmTop = 6085
                mmWidth = 10848
                BandType = 1
                LayerName = Foreground1
              end
            end
            object rHistorico1: TppDetailBand
              Background1.Brush.Style = bsClear
              Background2.Brush.Style = bsClear
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 2646
              mmPrintPosition = 0
              object ppDBText58: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText58'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Data'
                DataPipeline = pHistorico
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'pHistorico'
                mmHeight = 2647
                mmLeft = 264
                mmTop = 0
                mmWidth = 15875
                BandType = 4
                LayerName = Foreground1
              end
              object ppDBText60: TppDBText
                DesignLayer = ppDesignLayer2
                UserName = 'DBText60'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Hora'
                DataPipeline = pHistorico
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'pHistorico'
                mmHeight = 2647
                mmLeft = 16669
                mmTop = 0
                mmWidth = 10848
                BandType = 4
                LayerName = Foreground1
              end
              object ppDBMemo1: TppDBMemo
                DesignLayer = ppDesignLayer2
                UserName = 'DBMemo1'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                CharWrap = False
                DataField = 'Descricao'
                DataPipeline = pHistorico
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                RemoveEmptyLines = False
                TextAlignment = taFullJustified
                Transparent = True
                DataPipelineName = 'pHistorico'
                mmHeight = 2647
                mmLeft = 28046
                mmTop = 0
                mmWidth = 169069
                BandType = 4
                LayerName = Foreground1
                mmBottomOffset = 0
                mmOverFlowOffset = 0
                mmStopPosition = 0
                mmMinHeight = 0
                mmLeading = 0
              end
            end
            object ppSummaryBand2: TppSummaryBand
              Background.Brush.Style = bsClear
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
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
        object rAdicoes: TppSubReport
          DesignLayer = ppDesignLayer5
          UserName = 'rAdicoes'
          ExpandAll = False
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          ShiftRelativeTo = rHistorico
          TraverseAllData = False
          DataPipelineName = 'pAdicoes'
          mmHeight = 5027
          mmLeft = 0
          mmTop = 23813
          mmWidth = 197300
          BandType = 5
          GroupNo = 0
          LayerName = Foreground4
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppChildReport3: TppChildReport
            AutoStop = False
            DataPipeline = pAdicoes
            PrinterSetup.BinName = 'Default'
            PrinterSetup.DocumentName = 'Cybersoft - Dados do Processo'
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
            DataPipelineName = 'pAdicoes'
            object ppTitleBand3: TppTitleBand
              Background.Brush.Style = bsClear
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 8731
              mmPrintPosition = 0
              object ppLabel75: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label58'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'DADOS DAS ADI'#199#213'ES'
                Color = 166
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 8
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                VerticalAlignment = avCenter
                mmHeight = 3440
                mmLeft = 0
                mmTop = 2117
                mmWidth = 197380
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel76: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label59'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'N'#186
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                VerticalAlignment = avCenter
                mmHeight = 2646
                mmLeft = 0
                mmTop = 6085
                mmWidth = 7408
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel77: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label61'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'PRODUTO'
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                VerticalAlignment = avCenter
                mmHeight = 2646
                mmLeft = 7938
                mmTop = 6085
                mmWidth = 85196
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel78: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label62'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'QTDE'
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                VerticalAlignment = avCenter
                mmHeight = 2646
                mmLeft = 105040
                mmTop = 6085
                mmWidth = 12171
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel79: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label68'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'VL.C/VAL'
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                VerticalAlignment = avCenter
                mmHeight = 2646
                mmLeft = 117740
                mmTop = 6085
                mmWidth = 10848
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel80: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label71'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'NCM'
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                VerticalAlignment = avCenter
                mmHeight = 2646
                mmLeft = 93663
                mmTop = 6085
                mmWidth = 10848
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel81: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label81'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'VL.S/VAL'
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                VerticalAlignment = avCenter
                mmHeight = 2646
                mmLeft = 129117
                mmTop = 6085
                mmWidth = 10848
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel82: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label82'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'P.L'#205'Q.'
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                VerticalAlignment = avCenter
                mmHeight = 2646
                mmLeft = 140494
                mmTop = 6085
                mmWidth = 10848
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel83: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label83'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'ICMS'
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                VerticalAlignment = avCenter
                mmHeight = 2646
                mmLeft = 151871
                mmTop = 6085
                mmWidth = 7144
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel84: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label84'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'PIS'
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                VerticalAlignment = avCenter
                mmHeight = 2646
                mmLeft = 159544
                mmTop = 6085
                mmWidth = 12965
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel85: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label85'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'COFINS'
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                VerticalAlignment = avCenter
                mmHeight = 2646
                mmLeft = 173038
                mmTop = 6085
                mmWidth = 12965
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel86: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label86'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'DUMP'
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 6
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                VerticalAlignment = avCenter
                mmHeight = 2646
                mmLeft = 186532
                mmTop = 6085
                mmWidth = 6879
                BandType = 1
                LayerName = Foreground2
              end
              object ppDBText67: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText56'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Produto_Nome'
                DataPipeline = pAdicoes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                VerticalAlignment = avCenter
                DataPipelineName = 'pAdicoes'
                mmHeight = 5027
                mmLeft = 19844
                mmTop = 6085
                mmWidth = 75936
                BandType = 1
                LayerName = Foreground2
              end
            end
            object ppDetailBand4: TppDetailBand
              Background1.Brush.Style = bsClear
              Background2.Brush.Style = bsClear
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 2646
              mmPrintPosition = 0
              object ppDBText66: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText55'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Adicao'
                DataPipeline = pAdicoes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                DataPipelineName = 'pAdicoes'
                mmHeight = 2498
                mmLeft = 0
                mmTop = 0
                mmWidth = 7408
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText68: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText57'
                BlankWhenZero = True
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Quantidade'
                DataPipeline = pAdicoes
                DisplayFormat = '#,##0.000'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pAdicoes'
                mmHeight = 2381
                mmLeft = 105040
                mmTop = 0
                mmWidth = 12171
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText69: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText59'
                BlankWhenZero = True
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Valor_Unitario'
                DataPipeline = pAdicoes
                DisplayFormat = '#,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pAdicoes'
                mmHeight = 2381
                mmLeft = 117740
                mmTop = 0
                mmWidth = 10848
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText70: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText70'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Descricao_Mercadoria'
                DataPipeline = pAdicoes
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                DataPipelineName = 'pAdicoes'
                mmHeight = 2381
                mmLeft = 7938
                mmTop = 0
                mmWidth = 85196
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText71: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText71'
                BlankWhenZero = True
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'NCM'
                DataPipeline = pAdicoes
                DisplayFormat = '####.##.##;0; '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'pAdicoes'
                mmHeight = 2498
                mmLeft = 93663
                mmTop = 0
                mmWidth = 10848
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText72: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText72'
                BlankWhenZero = True
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Valor_SemAdValorem'
                DataPipeline = pAdicoes
                DisplayFormat = '#,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pAdicoes'
                mmHeight = 2381
                mmLeft = 129117
                mmTop = 265
                mmWidth = 10848
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText73: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText73'
                BlankWhenZero = True
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Peso_Liquido'
                DataPipeline = pAdicoes
                DisplayFormat = '#,##0.000'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pAdicoes'
                mmHeight = 2381
                mmLeft = 140494
                mmTop = 265
                mmWidth = 10848
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText74: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText74'
                BlankWhenZero = True
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Aliquota_ICMS'
                DataPipeline = pAdicoes
                DisplayFormat = '#,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pAdicoes'
                mmHeight = 2381
                mmLeft = 151871
                mmTop = 265
                mmWidth = 7144
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText75: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText75'
                BlankWhenZero = True
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Valor_PIS'
                DataPipeline = pAdicoes
                DisplayFormat = '#,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pAdicoes'
                mmHeight = 2381
                mmLeft = 159544
                mmTop = 265
                mmWidth = 12965
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText76: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText76'
                BlankWhenZero = True
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Valor_COFINS'
                DataPipeline = pAdicoes
                DisplayFormat = '#,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pAdicoes'
                mmHeight = 2381
                mmLeft = 173038
                mmTop = 265
                mmWidth = 12965
                BandType = 4
                LayerName = Foreground2
              end
              object myDBCheckBox2: TmyDBCheckBox
                DesignLayer = ppDesignLayer3
                UserName = 'DBCheckBox2'
                CheckBoxColor = clWindowText
                BooleanFalse = 'false'
                BooleanTrue = 'true'
                DataPipeline = pAdicoes
                DataField = 'Dumping'
                DataPipelineName = 'pAdicoes'
                mmHeight = 3440
                mmLeft = 188913
                mmTop = 0
                mmWidth = 2646
                BandType = 4
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
        object rDespesasDA: TppSubReport
          DesignLayer = ppDesignLayer5
          UserName = 'rDespesasDA'
          ExpandAll = False
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          ShiftRelativeTo = rDespesas
          TraverseAllData = False
          DataPipelineName = 'pDespesasDA'
          mmHeight = 5027
          mmLeft = 0
          mmTop = 8996
          mmWidth = 197300
          BandType = 5
          GroupNo = 0
          LayerName = Foreground4
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppChildReport4: TppChildReport
            AutoStop = False
            DataPipeline = pDespesasDA
            PrinterSetup.BinName = 'Default'
            PrinterSetup.DocumentName = 'Cybersoft - Dados do Processo'
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
            DataPipelineName = 'pDespesasDA'
            object ppTitleBand4: TppTitleBand
              Background.Brush.Style = bsClear
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 8996
              mmPrintPosition = 0
              object ppLabel87: TppLabel
                DesignLayer = ppDesignLayer4
                UserName = 'Label58'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = ' MOVIMENTA'#199#195'O FINANCEIRA - PROCESSO MESTRE'
                Color = 166
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 8
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                VerticalAlignment = avCenter
                mmHeight = 3440
                mmLeft = 0
                mmTop = 1588
                mmWidth = 197380
                BandType = 1
                LayerName = Foreground3
              end
              object ppLabel88: TppLabel
                DesignLayer = ppDesignLayer4
                UserName = 'Label59'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'VENCTO'
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                VerticalAlignment = avCenter
                mmHeight = 3429
                mmLeft = 0
                mmTop = 5556
                mmWidth = 17198
                BandType = 1
                LayerName = Foreground3
              end
              object ppLabel89: TppLabel
                DesignLayer = ppDesignLayer4
                UserName = 'Label61'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'DESCRI'#199#195'O DA DESPESA'
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                VerticalAlignment = avCenter
                mmHeight = 3440
                mmLeft = 17727
                mmTop = 5556
                mmWidth = 117211
                BandType = 1
                LayerName = Foreground3
              end
              object ppLabel90: TppLabel
                DesignLayer = ppDesignLayer4
                UserName = 'Label62'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'RECEBIMENTOS'
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                VerticalAlignment = avCenter
                mmHeight = 3440
                mmLeft = 135466
                mmTop = 5556
                mmWidth = 27252
                BandType = 1
                LayerName = Foreground3
              end
              object ppLabel91: TppLabel
                DesignLayer = ppDesignLayer4
                UserName = 'Label68'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'PAGAMENTOS'
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                VerticalAlignment = avCenter
                mmHeight = 3440
                mmLeft = 163248
                mmTop = 5556
                mmWidth = 27252
                BandType = 1
                LayerName = Foreground3
              end
              object ppLabel92: TppLabel
                DesignLayer = ppDesignLayer4
                UserName = 'Label71'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'CST'
                Color = clNavy
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Name = 'Tahoma'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                VerticalAlignment = avCenter
                mmHeight = 3440
                mmLeft = 191031
                mmTop = 5556
                mmWidth = 6350
                BandType = 1
                LayerName = Foreground3
              end
            end
            object ppDetailBand5: TppDetailBand
              Background1.Brush.Style = bsClear
              Background2.Brush.Style = bsClear
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 2910
              mmPrintPosition = 0
              object ppDBText77: TppDBText
                DesignLayer = ppDesignLayer4
                UserName = 'DBText55'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Data_Vencimento'
                DataPipeline = pDespesasDA
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'pDespesasDA'
                mmHeight = 2381
                mmLeft = 0
                mmTop = 0
                mmWidth = 17198
                BandType = 4
                LayerName = Foreground3
              end
              object ppDBText78: TppDBText
                DesignLayer = ppDesignLayer4
                UserName = 'DBText56'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Descricao'
                DataPipeline = pDespesasDA
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                DataPipelineName = 'pDespesasDA'
                mmHeight = 2381
                mmLeft = 17727
                mmTop = 0
                mmWidth = 117211
                BandType = 4
                LayerName = Foreground3
              end
              object ppDBText79: TppDBText
                DesignLayer = ppDesignLayer4
                UserName = 'DBText57'
                BlankWhenZero = True
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Valor_Recebimento'
                DataPipeline = pDespesasDA
                DisplayFormat = '#,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pDespesasDA'
                mmHeight = 2381
                mmLeft = 135466
                mmTop = 0
                mmWidth = 27252
                BandType = 4
                LayerName = Foreground3
              end
              object ppDBText80: TppDBText
                DesignLayer = ppDesignLayer4
                UserName = 'DBText59'
                BlankWhenZero = True
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Valor_Pagamento'
                DataPipeline = pDespesasDA
                DisplayFormat = '#,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pDespesasDA'
                mmHeight = 2381
                mmLeft = 163248
                mmTop = 0
                mmWidth = 27252
                BandType = 4
                LayerName = Foreground3
              end
              object myDBCheckBox3: TmyDBCheckBox
                DesignLayer = ppDesignLayer4
                UserName = 'DBCheckBox1'
                CheckBoxColor = clWindowText
                BooleanFalse = 'False'
                BooleanTrue = 'True'
                Style = csCheckMark
                DataPipeline = pDespesasDA
                DataField = 'CustoConta'
                DataPipelineName = 'pDespesasDA'
                mmHeight = 2910
                mmLeft = 191031
                mmTop = 0
                mmWidth = 5027
                BandType = 4
                LayerName = Foreground3
              end
            end
            object ppSummaryBand3: TppSummaryBand
              BeforePrint = ppSummaryBand1BeforePrint
              Background.Brush.Style = bsClear
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 17727
              mmPrintPosition = 0
              object ppLabel93: TppLabel
                DesignLayer = ppDesignLayer4
                UserName = 'Label60'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'TOTAL DOS RECEBIMENTOS:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Calibri'
                Font.Size = 8
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3440
                mmLeft = 74082
                mmTop = 794
                mmWidth = 33602
                BandType = 7
                LayerName = Foreground3
              end
              object ppDBCalc2: TppDBCalc
                DesignLayer = ppDesignLayer4
                UserName = 'lTotalRec'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Valor_Recebimento'
                DataPipeline = pDespesasDA
                DisplayFormat = '#,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pDespesasDA'
                mmHeight = 3440
                mmLeft = 108214
                mmTop = 794
                mmWidth = 25664
                BandType = 7
                LayerName = Foreground3
              end
              object ppLine2: TppLine
                DesignLayer = ppDesignLayer4
                UserName = 'Line1'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Pen.Width = 0
                mmHeight = 1058
                mmLeft = 0
                mmTop = 0
                mmWidth = 196850
                BandType = 7
                LayerName = Foreground3
              end
              object ppLabel94: TppLabel
                DesignLayer = ppDesignLayer4
                UserName = 'Label601'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'TOTAL DOS PAGAMENTOS:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Calibri'
                Font.Size = 8
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3440
                mmLeft = 74082
                mmTop = 4763
                mmWidth = 33602
                BandType = 7
                LayerName = Foreground3
              end
              object ppDBCalc3: TppDBCalc
                DesignLayer = ppDesignLayer4
                UserName = 'lTotalPag'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Valor_Pagamento'
                DataPipeline = pDespesasDA
                DisplayFormat = '#,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pDespesasDA'
                mmHeight = 3440
                mmLeft = 108214
                mmTop = 4763
                mmWidth = 25664
                BandType = 7
                LayerName = Foreground3
              end
              object ppLabel95: TppLabel
                DesignLayer = ppDesignLayer4
                UserName = 'Label70'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'SALDO:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Calibri'
                Font.Size = 8
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3440
                mmLeft = 74082
                mmTop = 8731
                mmWidth = 33602
                BandType = 7
                LayerName = Foreground3
              end
              object ppVariable1: TppVariable
                DesignLayer = ppDesignLayer4
                UserName = 'lSaldo'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                BlankWhenZero = False
                CalcOrder = 0
                DataType = dtCurrency
                DisplayFormat = '#,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3471
                mmLeft = 108214
                mmTop = 8731
                mmWidth = 25664
                BandType = 7
                LayerName = Foreground3
              end
              object ppLabel96: TppLabel
                DesignLayer = ppDesignLayer4
                UserName = 'Label72'
                AutoSize = False
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                Caption = 'TOTAL CUSTO:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Calibri'
                Font.Size = 8
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3440
                mmLeft = 74082
                mmTop = 12700
                mmWidth = 33602
                BandType = 7
                LayerName = Foreground3
              end
              object ppDBCalc4: TppDBCalc
                DesignLayer = ppDesignLayer4
                UserName = 'lTotalPag1'
                Border.Weight = 1.000000000000000000
                Border.mmPadding = 0
                DataField = 'Valor_Custo'
                DataPipeline = pDespesasDA
                DisplayFormat = '#,##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pDespesasDA'
                mmHeight = 3440
                mmLeft = 108214
                mmTop = 12700
                mmWidth = 25664
                BandType = 7
                LayerName = Foreground3
              end
              object myCheckBox2: TmyCheckBox
                DesignLayer = ppDesignLayer4
                UserName = 'CheckBox1'
                FormField = False
                Style = csCheckMark
                BooleanFalse = 'False'
                BooleanTrue = 'True'
                CheckBoxColor = clWindowText
                mmHeight = 3703
                mmLeft = 133879
                mmTop = 12700
                mmWidth = 2381
                BandType = 7
                LayerName = Foreground3
              end
            end
            object ppDesignLayers4: TppDesignLayers
              object ppDesignLayer4: TppDesignLayer
                UserName = 'Foreground3'
                LayerType = ltBanded
                Index = 0
              end
            end
          end
        end
      end
    end
    object ppDesignLayers5: TppDesignLayers
      object ppDesignLayer5: TppDesignLayer
        UserName = 'Foreground4'
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
    Left = 453
    Top = 234
    object pProcessosppField1: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object pProcessosppField2: TppField
      FieldAlias = 'Tipo'
      FieldName = 'Tipo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 1
    end
    object pProcessosppField3: TppField
      FieldAlias = 'Incoterms'
      FieldName = 'Incoterms'
      FieldLength = 3
      DisplayWidth = 3
      Position = 2
    end
    object pProcessosppField4: TppField
      FieldAlias = 'Entreposto'
      FieldName = 'Entreposto'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 3
    end
    object pProcessosppField5: TppField
      FieldAlias = 'Numero_Declaracao'
      FieldName = 'Numero_Declaracao'
      FieldLength = 15
      DisplayWidth = 15
      Position = 4
    end
    object pProcessosppField6: TppField
      FieldAlias = 'Data_RegistroDeclaracao'
      FieldName = 'Data_RegistroDeclaracao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 5
    end
    object pProcessosppField7: TppField
      FieldAlias = 'Data_DesembaracoDeclaracao'
      FieldName = 'Data_DesembaracoDeclaracao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 6
    end
    object pProcessosppField8: TppField
      FieldAlias = 'FOB'
      FieldName = 'FOB'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 7
    end
    object pProcessosppField9: TppField
      FieldAlias = 'Frete'
      FieldName = 'Frete'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 8
    end
    object pProcessosppField10: TppField
      FieldAlias = 'Seguro'
      FieldName = 'Seguro'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 9
    end
    object pProcessosppField11: TppField
      FieldAlias = 'II'
      FieldName = 'II'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 10
    end
    object pProcessosppField12: TppField
      FieldAlias = 'ICMS_DIferido'
      FieldName = 'ICMS_DIferido'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 11
    end
    object pProcessosppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'Aliquota_ICMS'
      FieldName = 'Aliquota_ICMS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object pProcessosppField14: TppField
      FieldAlias = 'Valor_ICMS'
      FieldName = 'Valor_ICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 13
    end
    object pProcessosppField15: TppField
      FieldAlias = 'Recinto_Alfandegario'
      FieldName = 'Recinto_Alfandegario'
      FieldLength = 70
      DisplayWidth = 70
      Position = 14
    end
    object pProcessosppField16: TppField
      FieldAlias = 'Local_Desembaraco'
      FieldName = 'Local_Desembaraco'
      FieldLength = 50
      DisplayWidth = 50
      Position = 15
    end
    object pProcessosppField17: TppField
      FieldAlias = 'UF_Desembaraco'
      FieldName = 'UF_Desembaraco'
      FieldLength = 2
      DisplayWidth = 2
      Position = 16
    end
    object pProcessosppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade'
      FieldName = 'Quantidade'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object pProcessosppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'Volumes'
      FieldName = 'Volumes'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object pProcessosppField20: TppField
      FieldAlias = 'Especie'
      FieldName = 'Especie'
      FieldLength = 20
      DisplayWidth = 20
      Position = 19
    end
    object pProcessosppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade_Liberada'
      FieldName = 'Quantidade_Liberada'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object pProcessosppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade_Digitada'
      FieldName = 'Quantidade_Digitada'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object pProcessosppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Peso_Bruto'
      FieldName = 'Peso_Bruto'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object pProcessosppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Peso_Liquido'
      FieldName = 'Peso_Liquido'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
    object pProcessosppField25: TppField
      FieldAlias = 'Numero_Fatura'
      FieldName = 'Numero_Fatura'
      FieldLength = 40
      DisplayWidth = 40
      Position = 24
    end
    object pProcessosppField26: TppField
      FieldAlias = 'Data_Fatura'
      FieldName = 'Data_Fatura'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 25
    end
    object pProcessosppField27: TppField
      FieldAlias = 'FOB_ME'
      FieldName = 'FOB_ME'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 26
    end
    object pProcessosppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'Moeda_FOB'
      FieldName = 'Moeda_FOB'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object pProcessosppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'Taxa_FOB'
      FieldName = 'Taxa_FOB'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 28
    end
    object pProcessosppField30: TppField
      FieldAlias = 'Frete_ME'
      FieldName = 'Frete_ME'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 29
    end
    object pProcessosppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'Moeda_Frete'
      FieldName = 'Moeda_Frete'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object pProcessosppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'Taxa_Frete'
      FieldName = 'Taxa_Frete'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 31
    end
    object pProcessosppField33: TppField
      FieldAlias = 'Seguro_ME'
      FieldName = 'Seguro_ME'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 32
    end
    object pProcessosppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'Moeda_Seguro'
      FieldName = 'Moeda_Seguro'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
    object pProcessosppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'Taxa_Seguro'
      FieldName = 'Taxa_Seguro'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 34
    end
    object pProcessosppField36: TppField
      FieldAlias = 'Condicao_Pgto'
      FieldName = 'Condicao_Pgto'
      FieldLength = 50
      DisplayWidth = 50
      Position = 35
    end
    object pProcessosppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Mercadoria'
      FieldName = 'Tipo_Mercadoria'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 36
    end
    object pProcessosppField38: TppField
      FieldAlias = 'Nome_Transporte'
      FieldName = 'Nome_Transporte'
      FieldLength = 30
      DisplayWidth = 30
      Position = 37
    end
    object pProcessosppField39: TppField
      FieldAlias = 'Origem'
      FieldName = 'Origem'
      FieldLength = 30
      DisplayWidth = 30
      Position = 38
    end
    object pProcessosppField40: TppField
      FieldAlias = 'Local_Embarque'
      FieldName = 'Local_Embarque'
      FieldLength = 30
      DisplayWidth = 30
      Position = 39
    end
    object pProcessosppField41: TppField
      FieldAlias = 'Local_Desembarque'
      FieldName = 'Local_Desembarque'
      FieldLength = 30
      DisplayWidth = 30
      Position = 40
    end
    object pProcessosppField42: TppField
      FieldAlias = 'Numero_DOC'
      FieldName = 'Numero_DOC'
      FieldLength = 30
      DisplayWidth = 30
      Position = 41
    end
    object pProcessosppField43: TppField
      FieldAlias = 'Data_DOC'
      FieldName = 'Data_DOC'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 42
    end
    object pProcessosppField44: TppField
      FieldAlias = 'Agencia_Maritima'
      FieldName = 'Agencia_Maritima'
      FieldLength = 40
      DisplayWidth = 40
      Position = 43
    end
    object pProcessosppField45: TppField
      FieldAlias = 'Navio_DataPrevista'
      FieldName = 'Navio_DataPrevista'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 44
    end
    object pProcessosppField46: TppField
      FieldAlias = 'Navio_DataChegada'
      FieldName = 'Navio_DataChegada'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 45
    end
    object pProcessosppField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 46
    end
    object pProcessosppField48: TppField
      FieldAlias = 'Processo_Abertura'
      FieldName = 'Processo_Abertura'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 47
    end
    object pProcessosppField49: TppField
      FieldAlias = 'Processo_Fechamento'
      FieldName = 'Processo_Fechamento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 48
    end
    object pProcessosppField50: TppField
      FieldAlias = 'Conta_Impostos'
      FieldName = 'Conta_Impostos'
      FieldLength = 11
      DisplayWidth = 11
      Position = 49
    end
    object pProcessosppField51: TppField
      FieldAlias = 'Conta_Despesas'
      FieldName = 'Conta_Despesas'
      FieldLength = 11
      DisplayWidth = 11
      Position = 50
    end
    object pProcessosppField52: TppField
      FieldAlias = 'Bloqueado'
      FieldName = 'Bloqueado'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 51
    end
    object pProcessosppField53: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fornecedor'
      FieldName = 'Fornecedor'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 52
    end
    object pProcessosppField54: TppField
      FieldAlias = 'RE_Numero'
      FieldName = 'RE_Numero'
      FieldLength = 180
      DisplayWidth = 180
      Position = 53
    end
    object pProcessosppField55: TppField
      FieldAlias = 'RE_DataAverbacao'
      FieldName = 'RE_DataAverbacao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 54
    end
    object pProcessosppField56: TppField
      Alignment = taRightJustify
      FieldAlias = 'Despachante'
      FieldName = 'Despachante'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 55
    end
    object pProcessosppField57: TppField
      FieldAlias = 'Canal_SISCOMEX'
      FieldName = 'Canal_SISCOMEX'
      FieldLength = 2
      DisplayWidth = 2
      Position = 56
    end
    object pProcessosppField58: TppField
      FieldAlias = 'Valor_PIS'
      FieldName = 'Valor_PIS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 57
    end
    object pProcessosppField59: TppField
      FieldAlias = 'Valor_COFINS'
      FieldName = 'Valor_COFINS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 58
    end
    object pProcessosppField60: TppField
      FieldAlias = 'Valor_IPI'
      FieldName = 'Valor_IPI'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 59
    end
    object pProcessosppField61: TppField
      Alignment = taRightJustify
      FieldAlias = 'Vencimento_Cambio'
      FieldName = 'Vencimento_Cambio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 60
    end
    object pProcessosppField62: TppField
      FieldAlias = 'Courrier'
      FieldName = 'Courrier'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 61
    end
    object pProcessosppField63: TppField
      FieldAlias = 'Documento_Carga'
      FieldName = 'Documento_Carga'
      FieldLength = 30
      DisplayWidth = 30
      Position = 62
    end
    object pProcessosppField64: TppField
      FieldAlias = 'Ad_Valorem'
      FieldName = 'Ad_Valorem'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 63
    end
    object pProcessosppField65: TppField
      FieldAlias = 'Incentivo_Fiscal'
      FieldName = 'Incentivo_Fiscal'
      FieldLength = 15
      DisplayWidth = 15
      Position = 64
    end
    object pProcessosppField66: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Declaracao'
      FieldName = 'Tipo_Declaracao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 65
    end
    object pProcessosppField67: TppField
      Alignment = taRightJustify
      FieldAlias = 'Natureza_Exportacao'
      FieldName = 'Natureza_Exportacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 66
    end
    object pProcessosppField68: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Conhecimento'
      FieldName = 'Tipo_Conhecimento'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 67
    end
    object pProcessosppField69: TppField
      FieldAlias = 'Pais'
      FieldName = 'Pais'
      FieldLength = 4
      DisplayWidth = 4
      Position = 68
    end
    object pProcessosppField70: TppField
      FieldAlias = 'Conta_Adiantamento'
      FieldName = 'Conta_Adiantamento'
      FieldLength = 11
      DisplayWidth = 11
      Position = 69
    end
    object pProcessosppField71: TppField
      Alignment = taRightJustify
      FieldAlias = 'Modalidade_Importacao'
      FieldName = 'Modalidade_Importacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 70
    end
    object pProcessosppField72: TppField
      FieldAlias = 'Responsavel'
      FieldName = 'Responsavel'
      FieldLength = 15
      DisplayWidth = 15
      Position = 71
    end
    object pProcessosppField73: TppField
      FieldAlias = 'Container_Numero'
      FieldName = 'Container_Numero'
      FieldLength = 15
      DisplayWidth = 15
      Position = 72
    end
    object pProcessosppField74: TppField
      FieldAlias = 'Processo_Mestre'
      FieldName = 'Processo_Mestre'
      FieldLength = 15
      DisplayWidth = 15
      Position = 73
    end
    object pProcessosppField75: TppField
      FieldAlias = 'CNPJ_Importado'
      FieldName = 'CNPJ_Importado'
      FieldLength = 14
      DisplayWidth = 14
      Position = 74
    end
    object pProcessosppField76: TppField
      Alignment = taRightJustify
      FieldAlias = 'Margem_Lucro'
      FieldName = 'Margem_Lucro'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 75
    end
    object pProcessosppField77: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desconto_Operacional'
      FieldName = 'Desconto_Operacional'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 76
    end
    object pProcessosppField78: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desconto_Adicional'
      FieldName = 'Desconto_Adicional'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 77
    end
    object pProcessosppField79: TppField
      FieldAlias = 'Data_Encerramento'
      FieldName = 'Data_Encerramento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 78
    end
    object pProcessosppField80: TppField
      FieldAlias = 'Data_BL'
      FieldName = 'Data_BL'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 79
    end
    object pProcessosppField81: TppField
      FieldAlias = 'Valor_FaturaME'
      FieldName = 'Valor_FaturaME'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 80
    end
    object pProcessosppField82: TppField
      FieldAlias = 'Data_PrevFaturamento'
      FieldName = 'Data_PrevFaturamento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 81
    end
    object pProcessosppField83: TppField
      FieldAlias = 'Data_PrevRegistro'
      FieldName = 'Data_PrevRegistro'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 82
    end
    object pProcessosppField84: TppField
      Alignment = taRightJustify
      FieldAlias = 'Local_DesembaracoCodigo'
      FieldName = 'Local_DesembaracoCodigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 83
    end
    object pProcessosppField85: TppField
      FieldAlias = 'Desativado'
      FieldName = 'Desativado'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 84
    end
    object pProcessosppField86: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fator_FaturamentoValor'
      FieldName = 'Fator_FaturamentoValor'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 85
    end
    object pProcessosppField87: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fator_SISCOMEXValor'
      FieldName = 'Fator_SISCOMEXValor'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 86
    end
    object pProcessosppField88: TppField
      FieldAlias = 'Margem_LucroValor'
      FieldName = 'Margem_LucroValor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 87
    end
    object pProcessosppField89: TppField
      FieldAlias = 'Desconto_AdicionalValor'
      FieldName = 'Desconto_AdicionalValor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 88
    end
    object pProcessosppField90: TppField
      FieldAlias = 'Desconto_OperacionalValor'
      FieldName = 'Desconto_OperacionalValor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 89
    end
    object pProcessosppField91: TppField
      FieldAlias = 'Valor_Dumping'
      FieldName = 'Valor_Dumping'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 90
    end
    object pProcessosppField92: TppField
      Alignment = taRightJustify
      FieldAlias = 'Condicao_Cambio'
      FieldName = 'Condicao_Cambio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 91
    end
    object pProcessosppField93: TppField
      FieldAlias = 'Codigo_PaisOrigem'
      FieldName = 'Codigo_PaisOrigem'
      FieldLength = 4
      DisplayWidth = 4
      Position = 92
    end
    object pProcessosppField94: TppField
      FieldAlias = 'Taxa_SISCOMEX'
      FieldName = 'Taxa_SISCOMEX'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 93
    end
    object pProcessosppField95: TppField
      Alignment = taRightJustify
      FieldAlias = 'Reducao_ICMS'
      FieldName = 'Reducao_ICMS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 94
    end
    object pProcessosppField96: TppField
      FieldAlias = 'Observacao'
      FieldName = 'Observacao'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 95
      Searchable = False
      Sortable = False
    end
    object pProcessosppField97: TppField
      FieldAlias = 'FOB_MEAdicoes'
      FieldName = 'FOB_MEAdicoes'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 96
    end
    object pProcessosppField98: TppField
      FieldAlias = 'FOB_Adicoes'
      FieldName = 'FOB_Adicoes'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 97
    end
    object pProcessosppField99: TppField
      FieldAlias = 'DA'
      FieldName = 'DA'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 98
    end
    object pProcessosppField100: TppField
      Alignment = taRightJustify
      FieldAlias = 'Reducao_BC'
      FieldName = 'Reducao_BC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 99
    end
    object pProcessosppField101: TppField
      FieldAlias = 'Valor_PIS2'
      FieldName = 'Valor_PIS2'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 100
    end
    object pProcessosppField102: TppField
      FieldAlias = 'Valor_COFINS2'
      FieldName = 'Valor_COFINS2'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 101
    end
    object pProcessosppField103: TppField
      Alignment = taRightJustify
      FieldAlias = 'Memorando_Exportacao'
      FieldName = 'Memorando_Exportacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 102
    end
    object pProcessosppField104: TppField
      FieldAlias = 'CT_Numero'
      FieldName = 'CT_Numero'
      FieldLength = 20
      DisplayWidth = 20
      Position = 103
    end
    object pProcessosppField105: TppField
      FieldAlias = 'CT_Data'
      FieldName = 'CT_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 104
    end
    object pProcessosppField106: TppField
      FieldAlias = 'CT_Modelo'
      FieldName = 'CT_Modelo'
      FieldLength = 3
      DisplayWidth = 3
      Position = 105
    end
    object pProcessosppField107: TppField
      FieldAlias = 'CT_Serie'
      FieldName = 'CT_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 106
    end
    object pProcessosppField108: TppField
      Alignment = taRightJustify
      FieldAlias = 'Origem_Mercadoria'
      FieldName = 'Origem_Mercadoria'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 107
    end
    object pProcessosppField109: TppField
      Alignment = taRightJustify
      FieldAlias = 'Banco'
      FieldName = 'Banco'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 108
    end
    object pProcessosppField110: TppField
      Alignment = taRightJustify
      FieldAlias = 'Reducao_PIS'
      FieldName = 'Reducao_PIS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 109
    end
    object pProcessosppField111: TppField
      Alignment = taRightJustify
      FieldAlias = 'Reducao_COFINS'
      FieldName = 'Reducao_COFINS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 110
    end
    object pProcessosppField112: TppField
      Alignment = taRightJustify
      FieldAlias = 'PIS_NFEntrada'
      FieldName = 'PIS_NFEntrada'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 111
    end
    object pProcessosppField113: TppField
      Alignment = taRightJustify
      FieldAlias = 'PIS_NFESaida'
      FieldName = 'PIS_NFESaida'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 112
    end
    object pProcessosppField114: TppField
      Alignment = taRightJustify
      FieldAlias = 'COFINS_NFEntrada'
      FieldName = 'COFINS_NFEntrada'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 113
    end
    object pProcessosppField115: TppField
      Alignment = taRightJustify
      FieldAlias = 'COFINS_NFESaida'
      FieldName = 'COFINS_NFESaida'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 114
    end
    object pProcessosppField116: TppField
      Alignment = taRightJustify
      FieldAlias = 'PIS_Majorada'
      FieldName = 'PIS_Majorada'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 115
    end
    object pProcessosppField117: TppField
      Alignment = taRightJustify
      FieldAlias = 'COFINS_Majorada'
      FieldName = 'COFINS_Majorada'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 116
    end
    object pProcessosppField118: TppField
      FieldAlias = 'Suspensao_Impostos'
      FieldName = 'Suspensao_Impostos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 117
    end
    object pProcessosppField119: TppField
      FieldAlias = 'Remover_Valoracao'
      FieldName = 'Remover_Valoracao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 118
    end
    object pProcessosppField120: TppField
      FieldAlias = 'Referencia_Cliente'
      FieldName = 'Referencia_Cliente'
      FieldLength = 15
      DisplayWidth = 15
      Position = 119
    end
    object pProcessosppField121: TppField
      FieldAlias = 'Admissao_Temporaria'
      FieldName = 'Admissao_Temporaria'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 120
    end
    object pProcessosppField122: TppField
      Alignment = taRightJustify
      FieldAlias = 'Condicao_Pagamento'
      FieldName = 'Condicao_Pagamento'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 121
    end
    object pProcessosppField123: TppField
      FieldAlias = 'Data_PrevFrete'
      FieldName = 'Data_PrevFrete'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 122
    end
    object pProcessosppField124: TppField
      FieldAlias = 'Fator_FreteValor'
      FieldName = 'Fator_FreteValor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 123
    end
    object pProcessosppField125: TppField
      Alignment = taRightJustify
      FieldAlias = 'Previsao_FreteTransportador'
      FieldName = 'Previsao_FreteTransportador'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 124
    end
    object pProcessosppField126: TppField
      FieldAlias = 'Fator_SISCOMEXValorReal'
      FieldName = 'Fator_SISCOMEXValorReal'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 125
    end
    object pProcessosppField127: TppField
      FieldAlias = 'Fator_FreteValorReal'
      FieldName = 'Fator_FreteValorReal'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 126
    end
    object pProcessosppField128: TppField
      FieldAlias = 'Fator_FaturamentoValorReal'
      FieldName = 'Fator_FaturamentoValorReal'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 127
    end
    object pProcessosppField129: TppField
      FieldAlias = 'Data_PrevArmazem'
      FieldName = 'Data_PrevArmazem'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 128
    end
    object pProcessosppField130: TppField
      FieldAlias = 'Fator_ArmazemValor'
      FieldName = 'Fator_ArmazemValor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 129
    end
    object pProcessosppField131: TppField
      FieldAlias = 'Fator_ArmazemValorReal'
      FieldName = 'Fator_ArmazemValorReal'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 130
    end
    object pProcessosppField132: TppField
      Alignment = taRightJustify
      FieldAlias = 'Previsao_ArmazemFornecedor'
      FieldName = 'Previsao_ArmazemFornecedor'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 131
    end
    object pProcessosppField133: TppField
      FieldAlias = 'Referencia_DataEntrega'
      FieldName = 'Referencia_DataEntrega'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 132
    end
    object pProcessosppField134: TppField
      FieldAlias = 'CST_PIS'
      FieldName = 'CST_PIS'
      FieldLength = 2
      DisplayWidth = 2
      Position = 133
    end
    object pProcessosppField135: TppField
      FieldAlias = 'CST_COFINS'
      FieldName = 'CST_COFINS'
      FieldLength = 2
      DisplayWidth = 2
      Position = 134
    end
    object pProcessosppField136: TppField
      FieldAlias = 'Codigo_BCCredito'
      FieldName = 'Codigo_BCCredito'
      FieldLength = 2
      DisplayWidth = 2
      Position = 135
    end
    object pProcessosppField137: TppField
      FieldAlias = 'Apuracao_PISCOFINS'
      FieldName = 'Apuracao_PISCOFINS'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 136
    end
    object pProcessosppField138: TppField
      FieldAlias = 'Consignatario_CNPJ'
      FieldName = 'Consignatario_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 137
    end
    object pProcessosppField139: TppField
      FieldAlias = 'Consignatario_UF'
      FieldName = 'Consignatario_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 138
    end
    object pProcessosppField140: TppField
      FieldAlias = 'AFRMM'
      FieldName = 'AFRMM'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 139
    end
    object pProcessosppField141: TppField
      FieldAlias = 'Preco_Venda'
      FieldName = 'Preco_Venda'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 140
    end
    object pProcessosppField142: TppField
      FieldAlias = 'Proforma_Numero'
      FieldName = 'Proforma_Numero'
      FieldLength = 15
      DisplayWidth = 15
      Position = 141
    end
    object pProcessosppField143: TppField
      FieldAlias = 'Proforma_Data'
      FieldName = 'Proforma_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 142
    end
    object pProcessosppField144: TppField
      FieldAlias = 'Condicao_Frete'
      FieldName = 'Condicao_Frete'
      FieldLength = 60
      DisplayWidth = 60
      Position = 143
    end
    object pProcessosppField145: TppField
      FieldAlias = 'Seguradora'
      FieldName = 'Seguradora'
      FieldLength = 60
      DisplayWidth = 60
      Position = 144
    end
    object pProcessosppField146: TppField
      FieldAlias = 'Proforma_DataTaxa'
      FieldName = 'Proforma_DataTaxa'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 145
    end
    object pProcessosppField147: TppField
      FieldAlias = 'Data_TaxaFatura'
      FieldName = 'Data_TaxaFatura'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 146
    end
    object pProcessosppField148: TppField
      FieldAlias = 'Data'
      FieldName = 'Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 147
    end
    object pProcessosppField149: TppField
      FieldAlias = 'ROF_Numero'
      FieldName = 'ROF_Numero'
      FieldLength = 8
      DisplayWidth = 8
      Position = 148
    end
    object pProcessosppField150: TppField
      FieldAlias = 'ROF_Emissao'
      FieldName = 'ROF_Emissao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 149
    end
    object pProcessosppField151: TppField
      Alignment = taRightJustify
      FieldAlias = 'ROF_Dias'
      FieldName = 'ROF_Dias'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 150
    end
    object pProcessosppField152: TppField
      Alignment = taRightJustify
      FieldAlias = 'Notificar'
      FieldName = 'Notificar'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 151
    end
    object pProcessosppField153: TppField
      FieldAlias = 'URF_Despacho'
      FieldName = 'URF_Despacho'
      FieldLength = 7
      DisplayWidth = 7
      Position = 152
    end
    object pProcessosppField154: TppField
      FieldAlias = 'Referencia_Despachante'
      FieldName = 'Referencia_Despachante'
      FieldLength = 15
      DisplayWidth = 15
      Position = 153
    end
    object pProcessosppField155: TppField
      Alignment = taRightJustify
      FieldAlias = 'Via_Transporte'
      FieldName = 'Via_Transporte'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 154
    end
    object pProcessosppField156: TppField
      FieldAlias = 'Rateia_FretePeso'
      FieldName = 'Rateia_FretePeso'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 155
    end
    object pProcessosppField157: TppField
      FieldAlias = 'Frete_NacionalME'
      FieldName = 'Frete_NacionalME'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 156
    end
    object pProcessosppField158: TppField
      FieldAlias = 'Frete_NacionalReal'
      FieldName = 'Frete_NacionalReal'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 157
    end
    object pProcessosppField159: TppField
      FieldAlias = 'Remover_FreteNacBC'
      FieldName = 'Remover_FreteNacBC'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 158
    end
    object pProcessosppField160: TppField
      Alignment = taRightJustify
      FieldAlias = 'Recinto_AlfandegarioCod'
      FieldName = 'Recinto_AlfandegarioCod'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 159
    end
    object pProcessosppField161: TppField
      Alignment = taRightJustify
      FieldAlias = 'Indicador_RecintoAlf'
      FieldName = 'Indicador_RecintoAlf'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 160
    end
    object pProcessosppField162: TppField
      FieldAlias = 'Indicador_InfCompl'
      FieldName = 'Indicador_InfCompl'
      FieldLength = 3
      DisplayWidth = 3
      Position = 161
    end
    object pProcessosppField163: TppField
      Alignment = taRightJustify
      FieldAlias = 'Via_EspecialTransp'
      FieldName = 'Via_EspecialTransp'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 162
    end
    object pProcessosppField164: TppField
      Alignment = taRightJustify
      FieldAlias = 'Local_EmbarqueCod'
      FieldName = 'Local_EmbarqueCod'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 163
    end
    object pProcessosppField165: TppField
      Alignment = taRightJustify
      FieldAlias = 'Prioridade_Carga'
      FieldName = 'Prioridade_Carga'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 164
    end
    object pProcessosppField166: TppField
      FieldAlias = 'Enquadramento_Operacao'
      FieldName = 'Enquadramento_Operacao'
      FieldLength = 6
      DisplayWidth = 6
      Position = 165
    end
    object pProcessosppField167: TppField
      Alignment = taRightJustify
      FieldAlias = 'Navio_Ordem'
      FieldName = 'Navio_Ordem'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 166
    end
    object pProcessosppField168: TppField
      FieldAlias = 'TUP'
      FieldName = 'TUP'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 167
    end
    object pProcessosppField169: TppField
      FieldAlias = 'Estoque_Bloqueado'
      FieldName = 'Estoque_Bloqueado'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 168
    end
    object pProcessosppField170: TppField
      Alignment = taRightJustify
      FieldAlias = 'Armazem'
      FieldName = 'Armazem'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 169
    end
    object pProcessosppField171: TppField
      FieldAlias = 'Beneficio'
      FieldName = 'Beneficio'
      FieldLength = 1
      DisplayWidth = 1
      Position = 170
    end
    object pProcessosppField172: TppField
      FieldAlias = 'Diferido'
      FieldName = 'Diferido'
      FieldLength = 8
      DisplayWidth = 8
      Position = 171
    end
    object pProcessosppField173: TppField
      FieldAlias = 'Canal'
      FieldName = 'Canal'
      FieldLength = 8
      DisplayWidth = 8
      Position = 172
    end
    object pProcessosppField174: TppField
      FieldAlias = 'Cliente_Nome'
      FieldName = 'Cliente_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 173
    end
    object pProcessosppField175: TppField
      FieldAlias = 'Modalidade_Nome'
      FieldName = 'Modalidade_Nome'
      FieldLength = 30
      DisplayWidth = 30
      Position = 174
    end
    object pProcessosppField176: TppField
      FieldAlias = 'Tipo_MercadoriaNome'
      FieldName = 'Tipo_MercadoriaNome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 175
    end
    object pProcessosppField177: TppField
      FieldAlias = 'NomeMoedaFOB'
      FieldName = 'NomeMoedaFOB'
      FieldLength = 30
      DisplayWidth = 30
      Position = 176
    end
    object pProcessosppField178: TppField
      FieldAlias = 'NomeMoedaFrete'
      FieldName = 'NomeMoedaFrete'
      FieldLength = 30
      DisplayWidth = 30
      Position = 177
    end
    object pProcessosppField179: TppField
      FieldAlias = 'INCOTERMS_Nome'
      FieldName = 'INCOTERMS_Nome'
      FieldLength = 70
      DisplayWidth = 70
      Position = 178
    end
    object pProcessosppField180: TppField
      FieldAlias = 'NomeMoedaSeguro'
      FieldName = 'NomeMoedaSeguro'
      FieldLength = 30
      DisplayWidth = 30
      Position = 179
    end
  end
  object pEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    UserName = 'pEmpresas'
    Left = 453
    Top = 186
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
  end
  object tProcessos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT ProcessosDocumentos.*,'
      '       '#39#39'       AS Beneficio,'
      '       CASE '
      '            WHEN ICMS_Diferido = 1 THEN '#39'DIFERIDO'#39' '
      '       END '
      '       AS Diferido,'
      '       CASE'
      '           WHEN Canal_SISCOMEX = '#39'VM'#39' THEN '#39'VERMELHO'#39
      '           WHEN Canal_SISCOMEX = '#39'VD'#39' THEN '#39'VERDE'#39
      '           WHEN Canal_SISCOMEX = '#39'AM'#39' THEN '#39'AMARELO'#39
      '           WHEN Canal_SISCOMEX = '#39'VM'#39' THEN '#39'CINZA'#39
      '       END AS Canal,'
      
        '       (SELECT Nome      FROM Clientes        WHERE(Codigo = Pro' +
        'cessosDocumentos.Cliente)) AS Cliente_Nome,'
      
        '       (SELECT Descricao FROM TiposProcesso   WHERE(Codigo = Pro' +
        'cessosDocumentos.Modalidade_Importacao)) AS Modalidade_Nome,'
      
        '       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.TipoItem  ' +
        'WHERE(Codigo = ProcessosDocumentos.Tipo_Mercadoria)) AS Tipo_Mer' +
        'cadoriaNome,'
      
        '       (SELECT Nome      FROM Cybersoft_Cadastros.dbo.Moedas    ' +
        'WHERE(Codigo = ProcessosDocumentos.Moeda_FOB))    AS NomeMoedaFO' +
        'B,'
      
        '       (SELECT Nome      FROM Cybersoft_Cadastros.dbo.Moedas    ' +
        'WHERE(Codigo = ProcessosDocumentos.Moeda_Frete))  AS NomeMoedaFr' +
        'ete,'
      
        '       (SELECT Descricao FROM Cybersoft_Cadastros.dbo.INCOTERMS ' +
        'WHERE(Codigo = ProcessosDocumentos.INCOTERMS))    AS INCOTERMS_N' +
        'ome,'
      
        '       (SELECT Nome      FROM Cybersoft_Cadastros.dbo.Moedas    ' +
        'WHERE(Codigo = ProcessosDocumentos.Moeda_Seguro)) AS NomeMoedaSe' +
        'guro'
      'FROM ProcessosDocumentos'
      'WHERE (Processo = '#39'ABRTO 0426/11'#39')'
      'ORDER BY Tipo, Processo')
    FetchRows = 1
    Active = True
    Left = 24
    Top = 234
  end
  object dstProcessos: TDataSource
    DataSet = tProcessos
    Left = 24
    Top = 282
  end
  object pDespesas: TppDBPipeline
    DataSource = dstDespesas
    UserName = 'pDespesas'
    Left = 366
    Top = 330
    object pDespesasppField1: TppField
      FieldAlias = 'Data_Vencimento'
      FieldName = 'Data_Vencimento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 0
      Position = 0
    end
    object pDespesasppField2: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object pDespesasppField3: TppField
      FieldAlias = 'Custo_Entrada'
      FieldName = 'Custo_Entrada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 2
    end
    object pDespesasppField4: TppField
      FieldAlias = 'Custo_Saida'
      FieldName = 'Custo_Saida'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 3
    end
    object pDespesasppField5: TppField
      FieldAlias = 'Valor_Recebimento'
      FieldName = 'Valor_Recebimento'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 4
    end
    object pDespesasppField6: TppField
      FieldAlias = 'Valor_Pagamento'
      FieldName = 'Valor_Pagamento'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 5
    end
    object pDespesasppField7: TppField
      FieldAlias = 'Valor_RecebimentoFe'
      FieldName = 'Valor_RecebimentoFe'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 6
    end
    object pDespesasppField8: TppField
      FieldAlias = 'Valor_RecebimentoSa'
      FieldName = 'Valor_RecebimentoSa'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 7
    end
    object pDespesasppField9: TppField
      FieldAlias = 'Valor_CustoEntrada'
      FieldName = 'Valor_CustoEntrada'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 8
    end
    object pDespesasppField10: TppField
      FieldAlias = 'Valor_CustoSaida'
      FieldName = 'Valor_CustoSaida'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 9
    end
    object pDespesasppField11: TppField
      FieldAlias = 'Valor_Adiantamento'
      FieldName = 'Valor_Adiantamento'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 10
    end
  end
  object tDespesas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Data_Vencimento,'
      
        '       (SELECT Descricao FROM ClassificacaoFinanceira WHERE(Codi' +
        'go = Classificacao)) AS Descricao,'
      '       Custo_Entrada,'
      '       CustoConta AS Custo_Saida,'
      
        '       CASE WHEN Tipo = '#39'R'#39' AND (SELECT Adiantamento FROM Classi' +
        'ficacaoFinanceira WHERE Codigo = Classificacao) <> 1 THEN Valor_' +
        'Total ELSE 0 END AS Valor_Recebimento,'
      
        '       CASE WHEN Tipo = '#39'P'#39' THEN Valor_Total ELSE 0 END AS Valor' +
        '_Pagamento,'
      
        '       CASE WHEN Tipo = '#39'R'#39' THEN (SELECT ISNULL(SUM(Valor), 0) F' +
        'ROM PagarReceberBaixas PRB WHERE PRB.Numero = PR.Numero) ELSE 0 ' +
        'END AS Valor_RecebimentoFe,'
      
        '       CASE WHEN Tipo = '#39'R'#39' THEN Valor_Total - (SELECT ISNULL(SU' +
        'M(Valor), 0) FROM PagarReceberBaixas PRB WHERE PRB.Numero = PR.N' +
        'umero) ELSE 0 END AS Valor_RecebimentoSa,'
      
        '       CASE WHEN (Custo_Entrada = 1) AND (Tipo = '#39'P'#39') THEN Valor' +
        '_Total ELSE 0 END AS Valor_CustoEntrada,'
      
        '       CASE WHEN (CustoConta    = 1) AND (Tipo = '#39'P'#39') THEN Valor' +
        '_Total ELSE 0 END AS Valor_CustoSaida,'
      
        '       CASE WHEN Tipo = '#39'R'#39' AND (SELECT Adiantamento FROM Classi' +
        'ficacaoFinanceira WHERE Codigo = Classificacao) = 1 THEN Valor_T' +
        'otal ELSE 0 END AS Valor_Adiantamento'
      'FROM   PagarReceber PR'
      'WHERE Processo = '#39'ABMF 005/20'#39
      'ORDER  BY Data_Vencimento'
      ''
      '')
    FetchRows = 1
    Active = True
    Left = 91
    Top = 235
  end
  object dstDespesas: TDataSource
    DataSet = tDespesas
    Left = 91
    Top = 283
  end
  object pHistorico: TppDBPipeline
    DataSource = Dados.dsProcessosHistorico
    UserName = 'pHistorico'
    Left = 366
    Top = 282
    object pHistoricoppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object pHistoricoppField2: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 1
    end
    object pHistoricoppField3: TppField
      FieldAlias = 'Data'
      FieldName = 'Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 2
    end
    object pHistoricoppField4: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 3
      Searchable = False
      Sortable = False
    end
    object pHistoricoppField5: TppField
      FieldAlias = 'Hora'
      FieldName = 'Hora'
      FieldLength = 5
      DisplayWidth = 5
      Position = 4
    end
    object pHistoricoppField6: TppField
      FieldAlias = 'Documento'
      FieldName = 'Documento'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
  end
  object pAdicoes: TppDBPipeline
    DataSource = dstAdicoes
    CloseDataSource = True
    UserName = 'pAdicoes'
    Left = 366
    Top = 234
  end
  object pDespesasDA: TppDBPipeline
    DataSource = dstDespesasDA
    UserName = 'pDespesasDA'
    Left = 366
    Top = 186
    object pDespesasDAppField1: TppField
      FieldAlias = 'Data_Vencimento'
      FieldName = 'Data_Vencimento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 0
      Position = 0
    end
    object pDespesasDAppField2: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object pDespesasDAppField3: TppField
      FieldAlias = 'Valor_Recebimento'
      FieldName = 'Valor_Recebimento'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 2
    end
    object pDespesasDAppField4: TppField
      FieldAlias = 'Valor_Pagamento'
      FieldName = 'Valor_Pagamento'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 3
    end
    object pDespesasDAppField5: TppField
      FieldAlias = 'CustoConta'
      FieldName = 'CustoConta'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 4
    end
    object pDespesasDAppField6: TppField
      FieldAlias = 'Valor_Custo'
      FieldName = 'Valor_Custo'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 5
    end
  end
  object tDespesasDA: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Data_Vencimento,'
      
        '       (SELECT Descricao FROM ClassificacaoFinanceira WHERE(Codi' +
        'go = Classificacao)) AS Descricao,'
      
        '       CASE WHEN Tipo = '#39'R'#39' THEN Valor_Documento ELSE 0 END AS V' +
        'alor_Recebimento,'
      
        '       CASE WHEN Tipo = '#39'P'#39' THEN Valor_Documento ELSE 0 END AS V' +
        'alor_Pagamento,'
      '       CustoConta,'
      
        '       CASE WHEN CustoConta = 1 THEN Valor_Documento ELSE 0 END ' +
        'AS Valor_Custo'
      'FROM   PagarReceber '
      'WHERE(Processo = '#39'ABRTO 0389/11'#39')')
    FetchRows = 1
    Left = 168
    Top = 235
  end
  object dstDespesasDA: TDataSource
    DataSet = tDespesasDA
    Left = 168
    Top = 283
  end
  object tAdicoes: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Adicao,'
      '       Codigo_Mercadoria,'
      
        '       Descricao_Mercadoria = (SELECT Descricao FROM Produtos WH' +
        'ERE Codigo = Codigo_Mercadoria),'
      '       NCM,'
      '       Quantidade,'
      '       Valor_Unitario,'
      '       Valor_SemAdValorem,'
      '       Peso_Liquido,'
      '       Aliquota_ICMS,'
      '       Valor_PIS,'
      '       Valor_COFINS,'
      '       Dumping'
      'FROM Adicoes'
      'WHERE DI = '#39'1204279189'#39)
    FetchRows = 1
    Left = 234
    Top = 235
  end
  object dstAdicoes: TDataSource
    DataSet = tAdicoes
    Left = 234
    Top = 283
  end
  object tAdiantamentos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Valor_Total'
      
        '      ,Valor_Baixa = (SELECT ISNULL(SUM(Valor), 0) FROM PagarRec' +
        'eberBaixas PRB WHERE  PRB.Numero = PR.Numero)'
      
        #9'  ,Valor_Saldo = Valor_Total - (SELECT ISNULL(SUM(Valor), 0) FR' +
        'OM PagarReceberBaixas PRB WHERE  PRB.Numero = PR.Numero)'
      'INTO   #TEMP'
      'FROM   PagarReceber PR'
      
        'WHERE  (SELECT Adiantamento FROM ClassificacaoFinanceira WHERE C' +
        'odigo = Classificacao) = 1'
      'AND    Processo = '#39'ABMF 005/20'#39
      'SELECT Valor_AdiantAb = SUM(Valor_Total)'
      '      ,Valor_AdiantFe = SUM(Valor_Baixa)'
      '      ,Valor_AdiantSa = SUM(Valor_Saldo)'
      'FROM #TEMP'
      ''
      'DROP TABLE #TEMP')
    FetchRows = 1
    Left = 40
    Top = 346
  end
  object dstAdiantamentos: TDataSource
    DataSet = tAdiantamentos
    Left = 40
    Top = 394
  end
  object pAdiantamentos: TppDBPipeline
    DataSource = dstAdiantamentos
    UserName = 'pAdiantamentos'
    Left = 366
    Top = 378
    object pAdiantamentosppField1: TppField
      FieldAlias = 'Valor_AdiantAb'
      FieldName = 'Valor_AdiantAb'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 0
    end
    object pAdiantamentosppField2: TppField
      FieldAlias = 'Valor_AdiantFe'
      FieldName = 'Valor_AdiantFe'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 1
    end
    object pAdiantamentosppField3: TppField
      FieldAlias = 'Valor_AdiantSa'
      FieldName = 'Valor_AdiantSa'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 2
    end
  end
  object tRecPag: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      
        'SELECT Recebido = ISNULL((SELECT SUM(Valor) FROM PagarReceberBai' +
        'xas PRB WHERE PRB.Numero = PR.Numero AND PR.Tipo = '#39'R'#39'), 0)'
      
        #9'  ,Receber  = ISNULL(Valor_Total, 0) - ISNULL((SELECT SUM(ISNUL' +
        'L(Valor, 0)) FROM PagarReceberBaixas PRB WHERE PRB.Numero = PR.N' +
        'umero AND PR.Tipo = '#39'R'#39'), 0)'
      
        '      ,Pago     = ISNULL((SELECT SUM(Valor) FROM PagarReceberBai' +
        'xas PRB WHERE PRB.Numero = PR.Numero AND Tipo = '#39'P'#39'), 0)'
      
        #9'  ,Pagar    = ISNULL(Valor_Total, 0) - ISNULL((SELECT SUM(ISNUL' +
        'L(Valor, 0)) FROM PagarReceberBaixas PRB WHERE PRB.Numero = PR.N' +
        'umero AND Tipo = '#39'P'#39'), 0)'
      'INTO  #TEMP'
      'FROM   PagarReceber PR'
      'WHERE Processo = '#39'ABMF 005/20'#39
      'SELECT Recebido = SUM(Recebido)'
      '      ,Receber  = SUM(Receber)'
      '      ,Pago     = SUM(Pago)'
      '      ,Pagar    = SUM(Pagar)'
      'FROM #TEMP'
      'DROP TABLE #TEMP')
    FetchRows = 1
    Active = True
    Left = 117
    Top = 347
  end
  object dstPagRec: TDataSource
    DataSet = tRecPag
    Left = 117
    Top = 395
  end
  object pRecPag: TppDBPipeline
    DataSource = dstPagRec
    UserName = 'pRecPag'
    Left = 366
    Top = 426
    object pRecPagppField1: TppField
      FieldAlias = 'Recebido'
      FieldName = 'Recebido'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 0
      Position = 0
    end
    object pRecPagppField2: TppField
      FieldAlias = 'Receber'
      FieldName = 'Receber'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 1
    end
    object pRecPagppField3: TppField
      FieldAlias = 'Pago'
      FieldName = 'Pago'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 2
    end
    object pRecPagppField4: TppField
      FieldAlias = 'Pagar'
      FieldName = 'Pagar'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 3
    end
  end
end
