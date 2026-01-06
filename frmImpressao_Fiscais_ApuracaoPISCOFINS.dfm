object Impressao_Fiscais_ApuracaoPISCOFINS: TImpressao_Fiscais_ApuracaoPISCOFINS
  Left = 664
  Top = 349
  BorderStyle = bsDialog
  Caption = 'Apura'#231#227'o PIS/COFINS'
  ClientHeight = 173
  ClientWidth = 424
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
    Width = 424
    Height = 37
    Align = alTop
    Stretch = True
    ExplicitWidth = 422
  end
  object RxLabel1: TRxLabel
    Left = 5
    Top = 0
    Width = 152
    Height = 21
    Caption = 'IMPRESS'#195'O - FISCAIS'
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
    Left = 5
    Top = 16
    Width = 159
    Height = 18
    Caption = 'Apura'#231#227'o de PIS/COFINS.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ShadowColor = clBlack
    ShadowPos = spRightBottom
    Transparent = True
  end
  object StaticText2: TStaticText
    Left = 34
    Top = 64
    Width = 93
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'M'#234's / Ano'
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
  object cAno: TRxSpinEdit
    Left = 327
    Top = 64
    Width = 65
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnChange = cAnoChange
  end
  object cMes: TComboBox
    Left = 129
    Top = 64
    Width = 109
    Height = 21
    DropDownCount = 12
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Text = 'cMes'
    OnChange = cMesChange
    Items.Strings = (
      'Janeiro'
      'Fevereiro'
      'Mar'#231'o'
      'Abril'
      'Maio'
      'Junho'
      'Julho'
      'Agosto'
      'Setembro'
      'Outubro'
      'Novembro'
      'Dezembro')
  end
  object Panel1: TPanel
    Left = 0
    Top = 143
    Width = 424
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 3
    DesignSize = (
      424
      30)
    object bSair: TButton
      Left = 359
      Top = 1
      Width = 65
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
      Left = 293
      Top = 1
      Width = 65
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bImprimirClick
    end
  end
  object cTodos: TCheckBox
    Left = 246
    Top = 66
    Width = 75
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Ano Inteiro'
    TabOrder = 4
    OnClick = cTodosClick
  end
  object cConsol: TCheckBox
    Left = 34
    Top = 103
    Width = 81
    Height = 17
    Caption = 'Consolidado'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object ppEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    AutoCreateFields = False
    UserName = 'Empresas'
    Left = 258
    Top = 48
  end
  object rApuracao: TppReport
    AutoStop = False
    DataPipeline = pApuracao
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Apuracao de PIS/COFINS'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297128
    PrinterSetup.mmPaperWidth = 210080
    PrinterSetup.PaperSize = 9
    Units = utScreenPixels
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
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
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 366
    Top = 49
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pApuracao'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 26194
      mmPrintPosition = 0
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape4'
        Pen.Width = 0
        mmHeight = 5027
        mmLeft = 165100
        mmTop = 21167
        mmWidth = 32279
        BandType = 0
        LayerName = Foreground
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape3'
        Pen.Width = 0
        mmHeight = 5027
        mmLeft = 133086
        mmTop = 21167
        mmWidth = 32279
        BandType = 0
        LayerName = Foreground
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape2'
        Pen.Width = 0
        mmHeight = 5027
        mmLeft = 101071
        mmTop = 21167
        mmWidth = 32279
        BandType = 0
        LayerName = Foreground
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer1
        UserName = 'Shape1'
        Pen.Width = 0
        mmHeight = 5027
        mmLeft = 0
        mmTop = 21167
        mmWidth = 101336
        BandType = 0
        LayerName = Foreground
      end
      object ppImage1: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'dLinha1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Picture.Data = {
          07544269746D6170FE080000424DFE0800000000000076000000280000006F02
          0000070000000100040000000000880800000DB305000DB30500100000000000
          0000FFFFFF000000FF000000CC00000099000000800000006600000033000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000656565656565656565656565656565656565656565656565656565656556
          5656565656565656565656565656565656565656565656565656565656565656
          5656565656565656565656565656565656565656565656565656565656565656
          5656565656565656565656565656565656565656565656565656565656565656
          5656565656565656565656565656565656565656565656565656565656565656
          5656565656565656565656565656565656565656565656565656565656565656
          5656565656565656565656565656565656565656565656565656565656565656
          5656656565656565656565656565656565656565656565656565656565656565
          6565656565656565656565656565656565656565656565656565656565656565
          6565656565656565656565656565656565656565656565656560444444444444
          4444444444444444444444444444444444444444444444444444444444444444
          4444444444444444444444444444444444444444444444444444444444444444
          4444444444444444444444444444444444444444444444444444444444444444
          4444444444444444444444444444444444444444444444444444444444444444
          4444444444444444444444444444444444444444444444444444444444444444
          4444444444444444444444444444444444444444444444444444444444444444
          4444444444444444444444444444444444444444444444444444444444444444
          4444444444444444444444444444444444444444444444444444444444444444
          4444444444444444444444444444444444444444444444444444444444444444
          4444444444444444444444444444444444403333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333022222222222222222222222222222222222222222222
          2222222222222222222222222222222222222222222222222222222222222222
          2222222222222222222222222222222222222222222222222222222222222222
          2222222222222222222222222222222222222222222222222222222222222222
          2222222222222222222222222222222222222222222222222222222222222222
          2222222222222222222222222222222222222222222222222222222222222222
          2222222222222222222222222222222222222222222222222222222222222222
          2222222222222222222222222222222222222222222222222222222222222222
          2222222222222222222222222222222222222222222222222222222222222222
          2222222222222222222222222222222222222222222222222222222222222222
          2220111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111110111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111111111111111111111111111111111
          1111111111111111111111111111111111103434343434343434343434343434
          3434343434343434343434343434344343434343434343434343434343434343
          4343434343434343434343434343434343434343434343434343434343434343
          4343434343434343434343434343434343434343434343434343434343434343
          4343434343434343434343434343434343434343434343434343434343434343
          4343434343434343434343434343434343434343434343434343434343434343
          4343434343434343434343434343434343434343434343434343434343434343
          4343434343434343434343434343434343433434343434343434343434343434
          3434343434343434343434343434343434343434343434343434343434343434
          3434343434343434343434343434343434343434343434343434343434343434
          34343434343434343430}
        mmHeight = 1588
        mmLeft = 0
        mmTop = 17463
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTitulo'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Demonstrativo do c'#225'lculo - PIS/COFINS n'#227'o cumulativo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 12
        Font.Style = [fsBold, fsItalic]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 23813
        mmTop = 7408
        mmWidth = 173567
        BandType = 0
        LayerName = Foreground
      end
      object pNomeMes: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTitulo1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Dezembro/2009'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 4233
        mmLeft = 161132
        mmTop = 16140
        mmWidth = 23019
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Color = clBlack
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
        mmHeight = 6085
        mmLeft = 23813
        mmTop = 0
        mmWidth = 173567
        BandType = 0
        LayerName = Foreground
      end
      object iLogo2: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'iLogo'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 15610
        mmLeft = 0
        mmTop = 0
        mmWidth = 23548
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DESCRI'#199#195'O'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3471
        mmLeft = 794
        mmTop = 21960
        mmWidth = 99748
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'BASE DE CALC'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3471
        mmLeft = 101865
        mmTop = 21960
        mmWidth = 30692
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PIS'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3471
        mmLeft = 133879
        mmTop = 21960
        mmWidth = 30692
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'COFINS'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3471
        mmLeft = 165894
        mmTop = 21960
        mmWidth = 30692
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
      mmHeight = 5027
      mmPrintPosition = 0
      object pDescricao: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'lDescricao'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Descricao'
        DataPipeline = pApuracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pApuracao'
        mmHeight = 3440
        mmLeft = 0
        mmTop = 794
        mmWidth = 100277
        BandType = 4
        LayerName = Foreground
      end
      object pAliqPIS: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'lDescricao1'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Aliquota_PIS'
        DataPipeline = pApuracao
        DisplayFormat = '##0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pApuracao'
        mmHeight = 3440
        mmLeft = 134409
        mmTop = 794
        mmWidth = 8467
        BandType = 4
        LayerName = Foreground
      end
      object pAliqCOFINS: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'lAliquota_COFINS'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Aliquota_COFINS'
        DataPipeline = pApuracao
        DisplayFormat = '##0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pApuracao'
        mmHeight = 3440
        mmLeft = 166159
        mmTop = 794
        mmWidth = 8467
        BandType = 4
        LayerName = Foreground
      end
      object pValorPIS: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Valor_PIS'
        DataPipeline = pApuracao
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pApuracao'
        mmHeight = 3440
        mmLeft = 143404
        mmTop = 794
        mmWidth = 20902
        BandType = 4
        LayerName = Foreground
      end
      object pValorCOFINS: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'lAliquota_COFINS1'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Valor_COFINS'
        DataPipeline = pApuracao
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pApuracao'
        mmHeight = 3440
        mmLeft = 175155
        mmTop = 794
        mmWidth = 22225
        BandType = 4
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Pen.Style = psDot
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        mmHeight = 5027
        mmLeft = 101071
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line8'
        Border.mmPadding = 0
        Pen.Style = psDot
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        mmHeight = 5027
        mmLeft = 133086
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line9'
        Border.mmPadding = 0
        Pen.Style = psDot
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        mmHeight = 5027
        mmLeft = 165100
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line12'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Style = psDot
        Pen.Width = 0
        mmHeight = 265
        mmLeft = 0
        mmTop = 4763
        mmWidth = 197380
        BandType = 4
        LayerName = Foreground
      end
      object pBC: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'lValor'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Valor_BC'
        DataPipeline = pApuracao
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pApuracao'
        mmHeight = 3440
        mmLeft = 102129
        mmTop = 794
        mmWidth = 29898
        BandType = 4
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Style = psDot
        Pen.Width = 0
        Visible = False
        mmHeight = 1852
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 794
        mmTop = 0
        mmWidth = 197380
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Cybersoft Sistemas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3351
        mmLeft = 0
        mmTop = 265
        mmWidth = 21590
        BandType = 8
        LayerName = Foreground
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 25665
        mmTop = 0
        mmWidth = 1058
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 178594
        mmTop = 265
        mmWidth = 19050
        BandType = 8
        LayerName = Foreground
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 176477
        mmTop = 0
        mmWidth = 1323
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        AutoSize = False
        Border.mmPadding = 0
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 105834
        mmTop = 529
        mmWidth = 29369
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable3'
        AutoSize = False
        Border.mmPadding = 0
        VarType = vtDocumentName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 57415
        mmTop = 529
        mmWidth = 47625
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 2117
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
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
    object ppParameterList2: TppParameterList
    end
  end
  object tApuracao2: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'USE Cybersoft_Nimofast_Matriz'
      
        '------------------------------------------------------[ RECEITA ' +
        'DE VENDAS ]---------------------------------------------------'
      
        'SELECT  Descricao       = CAST('#39'RECEITA DE VENDAS'#39' AS varchar(50' +
        '))'
      '       ,Aliquota_PIS    = CAST(0 AS float)'
      #9'   ,Aliquota_COFINS = CAST(0 AS float)'
      #9'   ,Valor_Total     = CAST(0 AS money)'
      #9'   ,Valor_BC        = CAST(0 AS money)'
      #9'   ,Valor_PIS       = CAST(0 AS money)'
      #9'   ,Valor_COFINS    = CAST(0 AS money)'
      #9'   ,Ordem           = CAST('#39'A0'#39' AS varchar(3))'
      #9'   ,Grupo           = '#39'TITULO'#39
      #9'   ,Empresa         = CAST(null AS varchar(15))'
      #9'   ,Apuracao        = CAST(null AS varchar(8))'
      #9'   ,DC              = CAST(null AS varchar(1))'
      'INTO #TEMP'
      'UNION ALL'
      'SELECT '#39'    Venda Bruta'#39
      '       ,Aliquota_PIS    '
      #9'   ,Aliquota_COFINS'
      #9'   ,Valor_Total     = SUM(Valor_Total)'
      #9'   ,Valor_BC        = SUM(Valor_BCPIS)'
      #9'   ,Valor_PIS       = SUM(Valor_PIS)'
      #9'   ,Valor_COFINS    = SUM(VAlor_COFINS)'
      #9'   ,Ordem           = '#39'A1'#39
      #9'   ,Grupo           = null'
      #9'   ,Empresa         = '#39'MATRIZ'#39
      #9'   ,Apuracao        = '#39'VENDAS'#39
      #9'   ,DC              = null'
      'FROM   NotasItens'
      'WHERE  Saida_Entrada = 1'
      'AND    Apuracao_PISCOFINS = 1'
      'AND    YEAR(Data) = 2016'
      'AND    MONTH(Data) = 9'
      'AND    Cancelada <> 1'
      'AND    NFe_Denegada <> 1'
      'AND    Valor_Total > 0'
      'GROUP BY Aliquota_PIS, Aliquota_COFINS'
      'UNION ALL'
      'SELECT '#39'         * Total das vendas'#39
      '       ,0'
      #9'   ,0'
      #9'   ,0'
      #9'   ,0'
      #9'   ,0'
      #9'   ,0'
      #9'   ,Ordem    = '#39'A1T'#39
      #9'   ,Grupo    = '#39'TOTAL'#39
      #9'   ,Empresa  = null'
      #9'   ,Apuracao = null'
      #9'   ,DC       = null'
      
        '-----------------------------------------------------[ SERVI'#199'OS ' +
        'PRESTADOS ]----------------------------------------------------'
      'UNION ALL'
      'SELECT '#39'    Servi'#231'os Prestados'#39
      '       ,Aliquota_PIS'
      #9'   ,Aliquota_COFINS'
      #9'   ,Valor_Total     = ISNULL(SUM(Valor_Servico), 0)'
      #9'   ,Valor_BC        = ISNULL(SUM(Valor_Servico), 0)'
      
        #9'   ,Valor_PIS       = ISNULL(SUM(Valor_Servico * (Aliquota_PIS/' +
        '100)), 0)'
      
        #9'   ,Valor_COFINS    = ISNULL(SUM(Valor_Servico * (Aliquota_COFI' +
        'NS/100)), 0)'
      #9'   ,Ordem           = '#39'A2'#39
      #9'   ,Grupo           = null'
      #9'   ,Empresa         = '#39'MATRIZ'#39
      #9'   ,Apuracao        = '#39'SERVI'#199'OS'#39
      #9'   ,DC              = null'
      'FROM  NotasServico'
      'GROUP BY Aliquota_PIS, Aliquota_COFINS'
      'UNION ALL'
      'SELECT '#39'         * Total dos servi'#231'os prestados'#39
      '       ,0'
      #9'   ,0'
      #9'   ,0'
      #9'   ,0'
      #9'   ,0'
      #9'   ,0'
      #9'   ,Ordem    = '#39'A2T'#39
      #9'   ,Grupo    = '#39'TOTAL'#39
      #9'   ,Empresa  = null'
      #9'   ,Apuracao = null'
      #9'   ,DC       = null'
      
        '------------------------------------------------------------[ DE' +
        'DU'#199'OES IPI ]----------------------------------------------------'
      'UNION ALL'
      'SELECT '#39'DEDU'#199#213'ES SOBRE VENDAS'#39
      '       ,Aliquota_PIS    = CAST(0 AS float)'
      #9'   ,Aliquota_COFINS = CAST(0 AS float)'
      #9'   ,Valor_Total     = CAST(0 AS money)'
      #9'   ,Valor_BC        = CAST(0 AS money)'
      #9'   ,Valor_PIS       = CAST(0 AS money)'
      #9'   ,Valor_COFINS    = CAST(0 AS money)'
      #9'   ,Ordem           = '#39'B0'#39
      #9'   ,Grupo           = '#39'TITULO'#39
      #9'   ,Empresa         = null'
      '       ,Apuracao        = null'
      #9'   ,DC              = null'
      'UNION ALL'
      'SELECT '#39'    (-) IPI das Vendas'#39
      #9'   ,Aliquota_PIS'
      #9'   ,Aliquota_COFINS'
      #9'   ,Valor_Total     = ISNULL(SUM(Total_IPI), 0)'
      #9'   ,Valor_BC        = ISNULL(SUM(Valor_BCIPI), 0)'
      #9'   ,Valor_PIS       = ISNULL(SUM(Valor_PIS), 0)'
      #9'   ,Valor_COFINS    = ISNULL(SUM(Valor_COFINS), 0)'
      #9'   ,Ordem           = '#39'B1'#39
      #9'   ,Grupo           = null'
      #9'   ,Empresa         = '#39'MATRIZ'#39
      '       ,Apuracao        = '#39'DEDU'#199#213'ES'#39
      #9'   ,DC              = null'
      'FROM  NotasItens'
      'WHERE  Saida_Entrada = 1'
      'AND    Apuracao_PISCOFINS = 1'
      'AND    YEAR(Data) = 2016'
      'AND    MONTH(Data) = 9'
      'AND    Cancelada <> 1'
      'AND    NFe_Denegada <> 1'
      'AND    Total_IPI > 0'
      'GROUP BY Aliquota_PIS, Aliquota_COFINS'
      'UNION ALL'
      'SELECT '#39'         * (-) Total do IPI das vendas'#39
      '       ,0'
      #9'   ,0'
      #9'   ,0'
      #9'   ,0'
      #9'   ,0'
      #9'   ,0'
      #9'   ,Ordem    = '#39'B1T'#39
      #9'   ,Grupo    = '#39'TOTAL'#39
      #9'   ,Empresa  = null'
      '       ,Apuracao = null'
      #9'   ,DC       = null'
      
        '------------------------------------------------------------[ DE' +
        'DU'#199'OES ICMS ST ]------------------------------------------------' +
        '----'
      'UNION ALL'
      'SELECT '#39'    (-) Substitui'#231#227'o Tribut'#225'ria (ICMS)'#39
      '       ,0'
      #9'   ,0'
      #9'   ,Valor_Total  = ISNULL(SUM(Valor_ICMSSub), 0)'
      #9'   ,Valor_BC     = ISNULL(SUM(Valor_BCICMSSub), 0)'
      #9'   ,Valor_PIS    = Aliquota_PIS'
      #9'   ,Valor_COFINS = Aliquota_COFINS'
      #9'   ,Ordem        = '#39'B2'#39
      #9'   ,Grupo        = null'
      #9'   ,Empresa      = '#39'MATRIZ'#39
      #9'   ,Apuracao     = null'
      #9'   ,DC           = null'
      'FROM  NotasItens'
      'WHERE  Saida_Entrada = 1'
      'AND    Apuracao_PISCOFINS = 1'
      'AND    YEAR(Data) = 2016'
      'AND    MONTH(Data) = 9'
      'AND    Cancelada <> 1'
      'AND    NFe_Denegada <> 1'
      'AND    Valor_ICMSSub > 0'
      'GROUP BY Aliquota_PIS, Aliquota_COFINS'
      'UNION ALL'
      'SELECT '#39'         * (-) Total da substitui'#231#227'o tribut'#225'ria (ICMS)'#39
      '       ,0'
      #9'   ,0'
      #9'   ,0'
      #9'   ,0'
      #9'   ,0'
      #9'   ,0'
      #9'   ,Ordem    = '#39'B2T'#39
      #9'   ,Grupo    = '#39'TOTAL'#39
      #9'   ,Empresa  = null'
      #9'   ,Apuracao = null'
      #9'   ,DC       = null'
      'UNION ALL'
      'SELECT '#39'    (-) Devolu'#231#245'es (Pr'#243'prias)'#39
      '       ,Aliquota_PIS'
      #9'   ,Aliquota_COFINS'
      #9'   ,Valor_Total  = ISNULL(SUM(Valor_Total), 0)'
      #9'   ,Valor_BC     = ISNULL(SUM(Valor_BCPIS), 0)'
      #9'   ,Valor_PIS    = Aliquota_PIS'
      #9'   ,Valor_COFINS = Aliquota_COFINS'
      #9'   ,Ordem        = '#39'B3'#39
      #9'   ,Grupo        = null'
      #9'   ,Empresa      = '#39'MATRIZ'#39
      #9'   ,Apuracao     = null'
      #9'   ,DC           = null'
      'FROM  NotasItens'
      'WHERE Saida_Entrada = 1'
      'AND   Apuracao_PISCOFINS = 1'
      'AND   YEAR(Data) = 2016'
      'AND   MONTH(Data) = 9'
      'AND   Cancelada <> 1'
      'AND   NFe_Denegada <> 1'
      'AND   Devolucao = 1'
      'GROUP BY Aliquota_PIS, Aliquota_COFINS'
      'UNION ALL'
      'SELECT '#39'    (-) Devolu'#231#245'es (Terceiros)'#39
      '       ,Aliquota_PIS'
      #9'   ,Aliquota_COFINS'
      #9'   ,Valor_Total     = ISNULL(SUM(Valor_Liquido), 0)'
      #9'   ,Valor_BC        = ISNULL(SUM(Valor_BCPIS), 0)'
      #9'   ,Valor_PIS       = Aliquota_PIS'
      #9'   ,Valor_COFINS    = Aliquota_COFINS'
      #9'   ,Ordem           = '#39'B3'#39
      #9'   ,Grupo           = null'
      #9'   ,Empresa         = '#39'MATRIZ'#39
      #9'   ,Apuracao        = null'
      #9'   ,DC              = null'
      'FROM  NotasTerceirosItens NTI'
      'WHERE  Apuracao_PISCOFINS = 1'
      'AND    YEAR(Data_Entrada) = 2016'
      'AND    MONTH(Data_Entrada) = 9'
      
        'AND    (SELECT Finalidade_Mercadoria FROM ReferenciasFiscais RF ' +
        'WHERE RF.Codigo = NTI.Referencia_Fiscal) = 2'
      'GROUP BY Aliquota_PIS, Aliquota_COFINS'
      'UNION ALL'
      'SELECT '#39'         * (-) Total das Devolu'#231#245'es'#39
      '       ,0'
      #9'   ,0'
      #9'   ,0'
      #9'   ,0'
      #9'   ,0'
      #9'   ,0'
      #9'   ,Ordem    = '#39'B3T'#39
      #9'   ,Grupo    = '#39'TOTAL'#39
      #9'   ,Empresa  = null'
      #9'   ,Apuracao = null'
      #9'   ,DC       = null'
      
        '------------------------------------------------------------[ NO' +
        'TAS FISCAIS DE EXPORTA'#199#195'O ]-------------------------------------' +
        '---------------'
      'UNION ALL'
      'SELECT '#39'    (-) Exporta'#231#245'es'#39
      '       ,Aliquota_PIS'
      #9'   ,Aliquota_COFINS'
      #9'   ,Valor_Total  = ISNULL(SUM(Valor_Total), 0)'
      #9'   ,Valor_BC     = ISNULL(SUM(Valor_BCPIS), 0)'
      #9'   ,Valor_PIS    = ISNULL(SUM(Valor_PIS), 0)'
      #9'   ,Valor_COFINS = ISNULL(SUM(Valor_COFINS), 0)'
      #9'   ,Ordem        = '#39'B4'#39
      #9'   ,Grupo        = null'
      #9'   ,Empresa      = '#39'MATRIZ'#39
      #9'   ,Apuracao     = null'
      #9'   ,DC           = null'
      'FROM  NotasItens NI'
      'WHERE Saida_Entrada = 1'
      'AND   Apuracao_PISCOFINS = 1'
      'AND   YEAR(Data) = 2016'
      'AND   MONTH(Data) = 9'
      'AND   Cancelada <> 1'
      'AND   NFe_Denegada <> 1'
      
        'AND   (ISNULL(Processo, '#39#39') <> '#39#39' AND (SELECT Tipo FROM Processo' +
        'sDocumentos PD WHERE PD.Processo = NI.Processo) = '#39'EXPORTA'#199#195'O'#39')'
      'GROUP BY Aliquota_PIS, Aliquota_COFINS'
      'UNION ALL'
      'SELECT '#39'         * (-) Total das Exporta'#231#245'es'#39
      '       ,0'
      #9'   ,0'
      #9'   ,0'
      #9'   ,0'
      #9'   ,0'
      #9'   ,0'
      #9'   ,Ordem    = '#39'B4T'#39
      #9'   ,Grupo    = '#39'TOTAL'#39
      #9'   ,Empresa  = null'
      #9'   ,Apuracao = null'
      #9'   ,DC       = null'
      
        '------------------------------------------------------------[ENT' +
        'RADAS - N'#195'O CUMULATIVIDADE ]------------------------------------' +
        '----------------'
      'UNION ALL'
      'SELECT '#39'N'#195'O CUMULATIVIDADE DO PIS E DA COFINS'#39
      '       ,Aliquota_PIS    = CAST(0 AS float)'
      #9'   ,Aliquota_COFINS = CAST(0 AS float)'
      #9'   ,Valor_Total     = CAST(0 AS money)'
      #9'   ,Valor_BC        = CAST(0 AS money)'
      #9'   ,Valor_PIS       = CAST(0 AS money)'
      #9'   ,Valor_COFINS    = CAST(0 AS money)'
      #9'   ,Ordem           = '#39'C0'#39
      #9'   ,Grupo           = '#39'TITULO'#39
      #9'   ,Empresa         = null'
      #9'   ,Apuracao        = null'
      #9'   ,DC              = null'
      'UNION ALL'
      'SELECT '#39'    Mercadorias adquiridas para revenda'#39
      '       ,Aliquota_PIS'
      #9'   ,Aliquota_COFINS'
      #9'   ,Valor_Total     = ISNULL(SUM(Valor_Liquido), 0)'
      #9'   ,Valor_BC        = ISNULL(SUM(Valor_BCPIS), 0)'
      #9'   ,Valor_PIS       = Aliquota_PIS'
      #9'   ,Valor_COFINS    = Aliquota_COFINS'
      #9'   ,Ordem           = '#39'C1'#39
      #9'   ,Grupo           = null'
      #9'   ,Empresa         = '#39'MATRIZ'#39
      #9'   ,Apuracao        = null'
      #9'   ,DC              = null'
      'FROM  NotasTerceirosItens NTI'
      'WHERE  Apuracao_PISCOFINS = 1'
      'AND    YEAR(Data_Entrada) = 2016'
      'AND    MONTH(Data_Entrada) = 9'
      
        'AND   (SELECT Tipo FROM ProcessosDocumentos PD WHERE PD.Processo' +
        ' = NTI.Processo) = '#39'COMPRA INTERNA'#39
      'GROUP BY Aliquota_PIS, Aliquota_COFINS'
      'UNION ALL'
      'SELECT '#39'    Bens e servi'#231'os utilizados c/insumos na fabrica'#231#227'o'#39
      '       ,Aliquota_PIS'
      #9'   ,Aliquota_COFINS'
      #9'   ,Valor_Total     = ISNULL(SUM(Valor_Liquido), 0)'
      #9'   ,Valor_BC        = ISNULL(SUM(Valor_BCPIS), 0)'
      #9'   ,Valor_PIS       = Aliquota_PIS'
      #9'   ,Valor_COFINS    = Aliquota_COFINS'
      #9'   ,Ordem           = '#39'C2'#39
      #9'   ,Grupo           = null'
      #9'   ,Empresa         = '#39'MATRIZ'#39
      #9'   ,Apuracao        = null'
      #9'   ,DC              = null'
      'FROM  NotasTerceirosItens NTI'
      'WHERE  Apuracao_PISCOFINS = 1'
      'AND    YEAR(Data_Entrada) = 2016'
      'AND    MONTH(Data_Entrada) = 9'
      
        'AND   (SELECT Industria FROM Cybersoft_Cadastros.dbo.Servicos WH' +
        'ERE Codigo = (SELECT Servico FROM NotasTerceiros NT WHERE NT.Not' +
        'a = NTI.Nota AND NT.Data_Emissao = NTI.Data_Entrada AND NT.Forne' +
        'cedor = NTI.Fornecedor )) = 1'
      'GROUP BY Aliquota_PIS, Aliquota_COFINS'
      'UNION ALL'
      
        'SELECT '#39'    Bens e servi'#231'os utilizados c/insumos na presta'#231#227'o de' +
        ' servi'#231'os'#39
      '       ,Aliquota_PIS'
      #9'   ,Aliquota_COFINS'
      #9'   ,Valor_Total     = ISNULL(SUM(Valor_Liquido), 0)'
      #9'   ,Valor_BC        = ISNULL(SUM(Valor_BCPIS), 0)'
      #9'   ,Valor_PIS       = Aliquota_PIS'
      #9'   ,Valor_COFINS    = Aliquota_COFINS'
      #9'   ,Ordem           = '#39'C3'#39
      #9'   ,Grupo           = null'
      #9'   ,Empresa         = '#39'MATRIZ'#39
      #9'   ,Apuracao        = null'
      #9'   ,DC              = null'
      'FROM  NotasTerceirosItens NTI'
      'WHERE Apuracao_PISCOFINS = 1'
      'AND   YEAR(Data_Entrada) = 2016'
      'AND   MONTH(Data_Entrada) = 9'
      'AND   ISNULL(Processo, '#39#39')  <> '#39#39
      
        'AND   (SELECT Industria FROM Cybersoft_Cadastros.dbo.Servicos WH' +
        'ERE Codigo = (SELECT Servico FROM NotasTerceiros NT WHERE NT.Not' +
        'a = NTI.Nota AND NT.Data_Emissao = NTI.Data_Entrada AND NT.Forne' +
        'cedor = NTI.Fornecedor )) = 0'
      'GROUP BY Aliquota_PIS, Aliquota_COFINS'
      'UNION ALL'
      'SELECT '#39'    Energia el'#233'trica consumida no estabelecimento'#39
      '       ,Aliquota_PIS'
      #9'   ,Aliquota_COFINS'
      #9'   ,Valor_Total     = ISNULL(SUM(Consumo_Energia), 0)'
      #9'   ,Valor_BC        = ISNULL(SUM(Consumo_Energia), 0)'
      #9'   ,Valor_PIS       = ISNULL(SUM(Valor_PIS), 0)'
      #9'   ,Valor_COFINS    = ISNULL(SUM(Valor_COFINS), 0)'
      #9'   ,Ordem           = '#39'C4'#39
      #9'   ,Grupo           = null'
      #9'   ,Empresa         = '#39'MATRIZ'#39
      #9'   ,Apuracao        = null'
      #9'   ,DC              = null'
      'FROM  NotasTerceirosItens NTI'
      'WHERE Apuracao_PISCOFINS = 1'
      'AND   YEAR(Data_Entrada) = 2016'
      'AND   MONTH(Data_Entrada) = 9'
      'AND   Consumo_Energia > 0'
      'GROUP BY Aliquota_PIS, Aliquota_COFINS'
      'UNION ALL'
      'SELECT '#39'    Alugueis pagos a PJ (pr'#233'dios, m'#225'q.e equipamentos)'#39
      '       ,Aliquota_PIS'
      #9'   ,Aliquota_COFINS'
      #9'   ,Valor_Total     = ISNULL(SUM(Valor), 0)'
      #9'   ,Valor_BC        = ISNULL(SUM(Valor), 0)'
      
        #9'   ,Valor_PIS       = ISNULL(SUM(Valor * (Aliquota_PIS/100)), 0' +
        ')'
      
        #9'   ,Valor_COFINS    = ISNULL(SUM(Valor * (Aliquota_COFINS/100))' +
        ', 0)'
      #9'   ,Ordem           = '#39'C5'#39
      #9'   ,Grupo           = null'
      #9'   ,Empresa         = '#39'MATRIZ'#39
      #9'   ,Apuracao        = null'
      #9'   ,DC              = null'
      'FROM  Alugueis'
      'WHERE Aliquota_PIS > 0 OR Aliquota_COFINS > 0'
      'GROUP BY Aliquota_PIS, Aliquota_COFINS'
      'UNION ALL'
      'SELECT '#39'    Devolu'#231#245'es de vendas'#39
      '       ,Aliquota_PIS'
      #9'   ,Aliquota_COFINS'
      #9'   ,Valor_Total  = ISNULL(SUM(Valor_Total), 0)'
      #9'   ,Valor_BC     = ISNULL(SUM(Valor_BCPIS), 0)'
      #9'   ,Valor_PIS    = ISNULL(SUM(Valor_PIS), 0)'
      #9'   ,Valor_COFINS = ISNULL(SUM(Valor_COFINS), 0)'
      #9'   ,Ordem        = '#39'C6'#39
      #9'   ,Grupo        = null'
      #9'   ,Empresa      = '#39'MATRIZ'#39
      #9'   ,Apuracao     = null'
      #9'   ,DC           = null'
      'FROM  NotasItens NI'
      'WHERE Saida_Entrada = 1'
      'AND   Apuracao_PISCOFINS = 1'
      'AND   YEAR(Data) = 2016'
      'AND   MONTH(Data) = 9'
      'AND   Cancelada <> 1'
      'AND   NFe_Denegada <> 1'
      'AND   ISNULL(Devolucao, 0) = 1'
      'GROUP BY Aliquota_PIS, Aliquota_COFINS'
      'UNION ALL'
      'SELECT '#39'    Frete nas opera'#231#245'es com vendas/compras'#39
      '       ,Aliquota_PIS'
      #9'   ,Aliquota_COFINS'
      #9'   ,Valor_Total     = ISNULL(SUM(Valor_Liquido), 0)'
      #9'   ,Valor_BC        = ISNULL(SUM(Valor_BCPIS), 0)'
      #9'   ,Valor_PIS       = ISNULL(SUM(Valor_PIS), 0)'
      #9'   ,Valor_COFINS    = ISNULL(SUM(Valor_COFINS), 0)'
      #9'   ,Ordem           = '#39'C7'#39
      #9'   ,Grupo           = null'
      #9'   ,Empresa         = '#39'MATRIZ'#39
      #9'   ,Apuracao        = null'
      #9'   ,DC              = null'
      'FROM  NotasTerceirosItens NTI'
      'WHERE Tipo = '#39'CTR'#39
      'AND   Apuracao_PISCOFINS = 1'
      'AND   YEAR(Data_Entrada) = 2016'
      'AND   MONTH(Data_Entrada) = 9'
      'GROUP BY Aliquota_PIS, Aliquota_COFINS'
      'UNION ALL'
      'SELECT '#39'CR'#201'DITO N'#195'O CUMULATIVO - PIS'#39
      '       ,Aliquota_PIS    = CAST(0 AS float)'
      #9'   ,Aliquota_COFINS = CAST(0 AS float)'
      #9'   ,Valor_Total     = CAST(0 AS money)'
      #9'   ,Valor_BC        = CAST(0 AS money)'
      #9'   ,Valor_PIS       = CAST(0 AS money)'
      #9'   ,Valor_COFINS    = CAST(0 AS money)'
      #9'   ,Ordem           = '#39'D0'#39
      #9'   ,Grupo           = '#39'TITULO'#39
      #9'   ,Empresa         = null'
      #9'   ,Apuracao        = null'
      #9'   ,DC              = null'
      'UNION ALL'
      'SELECT '#39'    (-) Saldo positivo de cr'#233'ditos do m'#234's anterior'#39
      '       ,0'
      #9'   ,0'
      #9'   ,Valor_Total     = ISNULL(SUM(Saldo_PIS), 0)'
      #9'   ,Valor_BC        = ISNULL(SUM(Saldo_PIS), 0)'
      #9'   ,Valor_PIS       = ISNULL(SUM(Saldo_PIS), 0)'
      #9'   ,Valor_COFINS    = ISNULL(SUM(Saldo_PIS), 0)'
      #9'   ,Ordem           = '#39'D1'#39
      #9'   ,Grupo           = null'
      #9'   ,Empresa         = '#39'MATRIZ'#39
      #9'   ,Apuracao        = null'
      #9'   ,DC              = null'
      'FROM  SaldoPISCOFINS '
      'WHERE Mes_Ano = '#39'082016'#39
      'UNION ALL'
      'SELECT '#39'CR'#201'DITO N'#195'O CUMULATIVO - COFINS'#39
      '       ,Aliquota_PIS    = CAST(0 AS float)'
      #9'   ,Aliquota_COFINS = CAST(0 AS float)'
      #9'   ,Valor_Total     = CAST(0 AS money)'
      #9'   ,Valor_BC        = CAST(0 AS money)'
      #9'   ,Valor_PIS       = CAST(0 AS money)'
      #9'   ,Valor_COFINS    = CAST(0 AS money)'
      #9'   ,Ordem           = '#39'E0'#39
      #9'   ,Grupo           = '#39'TITULO'#39
      #9'   ,Empresa         = null'
      #9'   ,Apuracao        = null'
      #9'   ,DC              = null'
      'UNION ALL'
      'SELECT '#39'    (-) Saldo positivo de cr'#233'ditos do m'#234's anterior'#39
      '       ,0'
      #9'   ,0'
      #9'   ,Valor_Total     = ISNULL(SUM(Saldo_COFINS), 0)'
      #9'   ,Valor_BC        = ISNULL(SUM(Saldo_COFINS), 0)'
      #9'   ,Valor_PIS       = ISNULL(SUM(Saldo_COFINS), 0)'
      #9'   ,Valor_COFINS    = ISNULL(SUM(Saldo_COFINS), 0)'
      #9'   ,Ordem           = '#39'E1'#39
      #9'   ,Grupo           = null'
      #9'   ,Empresa         = '#39'MATRIZ'#39
      #9'   ,Apuracao        = null'
      #9'   ,DC              = null'
      'FROM  SaldoPISCOFINS '
      'WHERE Mes_Ano = '#39'082016'#39
      
        '----------------------------------------------------------------' +
        '---[ APURA'#199#213'ES ]------------------------------------------------' +
        '-------------------------'
      'UNION ALL'
      'SELECT '#39'APURA'#199#213'ES DO PIS'#39
      '       ,Aliquota_PIS    = CAST(0 AS float)'
      #9'   ,Aliquota_COFINS = CAST(0 AS float)'
      #9'   ,Valor_Total     = CAST(0 AS money)'
      #9'   ,Valor_BC        = CAST(0 AS money)'
      #9'   ,Valor_PIS       = CAST(0 AS money)'
      #9'   ,Valor_COFINS    = CAST(0 AS money)'
      #9'   ,Ordem           = '#39'F0'#39
      #9'   ,Grupo           = '#39'TITULO'#39
      #9'   ,Empresa         = null'
      #9'   ,Apuracao        = null'
      #9'   ,DC              = null'
      
        '--------------------------------------------------------------[ ' +
        'CR'#201'DITO DO PIS IPORTA'#199#195'O ]--------------------------------------' +
        '-------------------------'
      'UNION ALL'
      'SELECT '#39'    Cr'#233'dito PIS importa'#231#227'o'#39
      '       ,Aliquota_PIS    '
      #9'   ,Aliquota_COFINS'
      #9'   ,Valor_Total     = SUM(Valor_Total)'
      #9'   ,Valor_BC        = SUM(Valor_BCPIS)'
      #9'   ,Valor_PIS       = SUM(Valor_PIS)'
      #9'   ,Valor_COFINS    = SUM(VAlor_COFINS)'
      #9'   ,Ordem           = '#39'F1'#39
      #9'   ,Grupo           = null'
      #9'   ,Empresa         = '#39'MATRIZ'#39
      #9'   ,Apuracao        = null'
      #9'   ,DC              = null'
      'FROM   NotasItens'
      'WHERE  Saida_Entrada = 0'
      'AND    Apuracao_PISCOFINS = 1'
      'AND    YEAR(Data) = 2016'
      'AND    MONTH(Data) = 9'
      'AND    Cancelada <> 1'
      'AND    NFe_Denegada <> 1'
      'AND    Valor_Total > 0'
      'GROUP BY Aliquota_PIS, Aliquota_COFINS'
      
        '--------------------------------------------------------------[ ' +
        'PIS S/RECEITA DE VENDAS]----------------------------------------' +
        '-----------------------'
      'UNION ALL'
      'SELECT '#39'    PIS s/receitas de vendas'#39
      '       ,Aliquota_PIS    '
      #9'   ,Aliquota_COFINS'
      #9'   ,Valor_Total     = SUM(Valor_Total)'
      #9'   ,Valor_BC        = SUM(Valor_BCPIS)'
      #9'   ,Valor_PIS       = SUM(Valor_PIS)'
      #9'   ,Valor_COFINS    = SUM(VAlor_COFINS)'
      #9'   ,Ordem           = '#39'F2'#39
      #9'   ,Grupo           = null'
      #9'   ,Empresa         = '#39'MATRIZ'#39
      #9'   ,Apuracao        = '#39'PIS'#39
      #9'   ,DC              = null'
      'FROM   NotasItens'
      'WHERE  Saida_Entrada = 1'
      'AND    Apuracao_PISCOFINS = 1'
      'AND    YEAR(Data) = 2016'
      'AND    MONTH(Data) = 9'
      'AND    Cancelada <> 1'
      'AND    NFe_Denegada <> 1'
      'AND    Valor_Total > 0'
      'GROUP BY Aliquota_PIS, Aliquota_COFINS'
      ''
      
        '--------------------------------------------------------------[ ' +
        'CR'#201'DITO DO COFINS IPORTA'#199#195'O ]-----------------------------------' +
        '----------------------------'
      'UNION ALL'
      'SELECT '#39'APURA'#199#213'ES DA COFINS'#39
      '       ,Aliquota_PIS    = CAST(0 AS float)'
      #9'   ,Aliquota_COFINS = CAST(0 AS float)'
      #9'   ,Valor_Total     = CAST(0 AS money)'
      #9'   ,Valor_BC        = CAST(0 AS money)'
      #9'   ,Valor_PIS       = CAST(0 AS money)'
      #9'   ,Valor_COFINS    = CAST(0 AS money)'
      #9'   ,Ordem           = '#39'G0'#39
      #9'   ,Grupo           = '#39'TITULO'#39
      #9'   ,Empresa         = null'
      #9'   ,Apuracao        = null'
      #9'   ,DC              = null'
      'UNION ALL'
      'SELECT '#39'    Cr'#233'dito COFINS importa'#231#227'o'#39
      '       ,Aliquota_PIS    '
      #9'   ,Aliquota_COFINS'
      #9'   ,Valor_Total     = SUM(Valor_Total)'
      #9'   ,Valor_BC        = SUM(Valor_BCPIS)'
      #9'   ,Valor_PIS       = SUM(Valor_PIS)'
      #9'   ,Valor_COFINS    = SUM(VAlor_COFINS)'
      #9'   ,Ordem           = '#39'G1'#39
      #9'   ,Grupo           = null'
      #9'   ,Empresa         = '#39'MATRIZ'#39
      #9'   ,Apuracao        = null'
      #9'   ,DC              = null'
      'FROM   NotasItens'
      'WHERE  Saida_Entrada = 0'
      'AND    Apuracao_PISCOFINS = 1'
      'AND    YEAR(Data) = 2016'
      'AND    MONTH(Data) = 9'
      'AND    Cancelada <> 1'
      'AND    NFe_Denegada <> 1'
      'AND    Valor_Total > 0'
      'GROUP BY Aliquota_PIS, Aliquota_COFINS'
      
        '--------------------------------------------------------------[ ' +
        'COFINS S/RECEITA DE VENDAS]-------------------------------------' +
        '--------------------------'
      'UNION ALL'
      'SELECT '#39'    COFINS s/receitas de vendas'#39
      '       ,Aliquota_PIS    '
      #9'   ,Aliquota_COFINS'
      #9'   ,Valor_Total     = SUM(Valor_Total)'
      #9'   ,Valor_BC        = SUM(Valor_BCPIS)'
      #9'   ,Valor_PIS       = SUM(Valor_PIS)'
      #9'   ,Valor_COFINS    = SUM(VAlor_COFINS)'
      #9'   ,Ordem           = '#39'G2'#39
      #9'   ,Grupo           = null'
      #9'   ,Empresa         = '#39'MATRIZ'#39
      #9'   ,Apuracao        = null'
      #9'   ,DC              = null'
      'FROM   NotasItens'
      'WHERE  Saida_Entrada = 1'
      'AND    Apuracao_PISCOFINS = 1'
      'AND    YEAR(Data) = 2016'
      'AND    MONTH(Data) = 9'
      'AND    Cancelada <> 1'
      'AND    NFe_Denegada <> 1'
      'AND    Valor_Total > 0'
      'GROUP BY Aliquota_PIS, Aliquota_COFINS'
      ''
      
        'UPDATE #TEMP SET Valor_Total = (SELECT SUM(ISNULL(Valor_Total, 0' +
        '))  FROM #TEMP T2 WHERE SUBSTRING(T2.Ordem,1,1) = SUBSTRING(#TEM' +
        'P.Ordem,1,1))'
      
        '                ,Valor_BC    = (SELECT SUM(ISNULL(Valor_BC, 0)) ' +
        '    FROM #TEMP T2 WHERE SUBSTRING(T2.Ordem,1,1) = SUBSTRING(#TEM' +
        'P.Ordem,1,1))'
      
        '                ,Valor_PIS   = (SELECT SUM(ISNULL(Valor_PIS, 0))' +
        '    FROM #TEMP T2 WHERE SUBSTRING(T2.Ordem,1,1) = SUBSTRING(#TEM' +
        'P.Ordem,1,1))'
      
        '                ,Valor_COFINS= (SELECT SUM(ISNULL(Valor_COFINS, ' +
        '0)) FROM #TEMP T2 WHERE SUBSTRING(T2.Ordem,1,1) = SUBSTRING(#TEM' +
        'P.Ordem,1,1))'
      'WHERE #TEMP.Grupo = '#39'TITULO'#39
      ''
      
        'UPDATE #TEMP SET Valor_Total = (SELECT SUM(Valor_Total)  FROM #T' +
        'EMP T2 WHERE T2.Ordem = SUBSTRING(#TEMP.Ordem,1,2))'
      
        '                ,Valor_BC    = (SELECT SUM(Valor_BC)     FROM #T' +
        'EMP T2 WHERE T2.Ordem = SUBSTRING(#TEMP.Ordem,1,2))'
      
        '                ,Valor_PIS   = (SELECT SUM(Valor_PIS)    FROM #T' +
        'EMP T2 WHERE T2.Ordem = SUBSTRING(#TEMP.Ordem,1,2))'
      
        '                ,Valor_COFINS= (SELECT SUM(Valor_COFINS) FROM #T' +
        'EMP T2 WHERE T2.Ordem = SUBSTRING(#TEMP.Ordem,1,2))'
      'WHERE #TEMP.Grupo = '#39'TOTAL'#39
      ''
      'SELECT * FROM #TEMP'
      
        'ORDER BY Ordem, Descricao, Empresa, Aliquota_PIS, Aliquota_COFIN' +
        'S'
      ''
      'DROP TABLE #TEMP'
      '')
    FetchRows = 1
    Left = 232
    Top = 105
  end
  object pApuracao: TppDBPipeline
    DataSource = dstApuracao
    CloseDataSource = True
    UserName = 'pApuracao'
    Left = 310
    Top = 50
  end
  object dstApuracao: TDataSource
    DataSet = tApuracao2
    Left = 299
    Top = 101
  end
  object tEmpresas: TMSQuery
    Connection = Dados.Banco
    FetchRows = 1
    Left = 170
    Top = 103
  end
  object tSaldo: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 107
    Top = 102
  end
end
