object Impressao_Fiscais_ApuracaoICMSRecuperar: TImpressao_Fiscais_ApuracaoICMSRecuperar
  Left = 590
  Top = 361
  BorderStyle = bsDialog
  Caption = 'Apura'#231#227'o ICMS a Recuperar'
  ClientHeight = 191
  ClientWidth = 449
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 449
    Height = 37
    Align = alTop
    Stretch = True
    ExplicitWidth = 445
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
    Width = 192
    Height = 18
    Caption = 'Apura'#231#227'o do ICMS a Recuperar'
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
  object bLimparForma: TSpeedButton
    Left = 392
    Top = 86
    Width = 22
    Height = 22
    Hint = 'Limpa o campo da forma de pagamento.'
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
    OnClick = bLimparFormaClick
  end
  object SpeedButton1: TSpeedButton
    Left = 392
    Top = 108
    Width = 22
    Height = 22
    Hint = 'Limpa o campo da forma de pagamento.'
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
    OnClick = SpeedButton1Click
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
    Top = 161
    Width = 449
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 3
    DesignSize = (
      449
      30)
    object bSair: TButton
      Left = 384
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
      Left = 318
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
  object StaticText39: TStaticText
    Left = 34
    Top = 87
    Width = 93
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Incentivo Fiscal'
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
  object cBeneficio: TDBLookupComboBox
    Left = 129
    Top = 87
    Width = 263
    Height = 21
    DropDownRows = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyField = 'Nome'
    ListField = 'Estado;Nome'
    ListFieldIndex = 1
    ListSource = Dados.dsIncentivosFiscais
    NullValueKey = 46
    ParentFont = False
    TabOrder = 6
  end
  object StaticText1: TStaticText
    Left = 34
    Top = 110
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
    TabOrder = 7
    Transparent = False
    StyleElements = []
  end
  object cProcesso: TDBLookupComboBox
    Left = 129
    Top = 110
    Width = 263
    Height = 21
    DropDownRows = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyField = 'Processo'
    ListField = 'Processo;Numero_Declaracao'
    ListSource = Dados.dsProcessosDOC
    NullValueKey = 46
    ParentFont = False
    TabOrder = 8
  end
  object ppEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    AutoCreateFields = False
    UserName = 'Empresas'
    Left = 200
    Top = 4
  end
  object rApuracao: TppReport
    AutoStop = False
    DataPipeline = pApuracao
    NoDataBehaviors = [ndMessageDialog, ndBlankPage]
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Apuracao de ICMS a Recuperar'
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
    Template.FileName = 'C:\Sistemas\Faturamento\Imagens\Apuracao_ICMS_Retorno.rtm'
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
    Left = 339
    Top = 7
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pApuracao'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 29898
      mmPrintPosition = 0
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
        mmLeft = 152
        mmTop = 16404
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground
      end
      object lTitulo: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTitulo'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Apura'#231#227'o ICMS a Recuperar'
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
        mmLeft = 85990
        mmTop = 7408
        mmWidth = 48683
        BandType = 0
        LayerName = Foreground
      end
      object pNomeMes: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTitulo1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = ' Dezembro/2009 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3969
        mmLeft = 145786
        mmTop = 14816
        mmWidth = 24871
        BandType = 0
        LayerName = Foreground
      end
      object lEmpresa: TppDBText
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
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label102'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PROCESSO: '
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 8336
        mmLeft = 15584
        mmTop = 21696
        mmWidth = 21648
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label20'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TOTAL DA NOTA'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 37512
        mmTop = 25929
        mmWidth = 17571
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label201'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TOTAL BC'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 55311
        mmTop = 25929
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label22'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TOTAL ICMS'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 73171
        mmTop = 25929
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label23'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'RECUPERAR'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 8200
        mmLeft = 165600
        mmTop = 21696
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ICMS'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 8190
        mmLeft = 145230
        mmTop = 21696
        mmWidth = 20053
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label202'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ENTRADAS'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 37482
        mmTop = 21785
        mmWidth = 53520
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'SAIDAS'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 91279
        mmTop = 21777
        mmWidth = 53698
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label203'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TOTAL DA NOTA'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 91223
        mmTop = 25929
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TOTAL BC'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 109131
        mmTop = 25929
        mmWidth = 17727
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TOTAL ICMS'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3969
        mmLeft = 127166
        mmTop = 25929
        mmWidth = 17842
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Processo'
        DataPipeline = pApuracao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pApuracao'
        mmHeight = 3175
        mmLeft = 16910
        mmTop = 170
        mmWidth = 19974
        BandType = 4
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3487
        mmLeft = 15584
        mmTop = 0
        mmWidth = 3369
        BandType = 4
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Pen.Style = psDot
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3487
        mmLeft = 37165
        mmTop = 0
        mmWidth = 4125
        BandType = 4
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line6'
        Border.mmPadding = 0
        Pen.Style = psDot
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3487
        mmLeft = 109058
        mmTop = 0
        mmWidth = 3180
        BandType = 4
        LayerName = Foreground
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line14'
        Border.mmPadding = 0
        Pen.Style = psDot
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3487
        mmLeft = 127075
        mmTop = 0
        mmWidth = 3054
        BandType = 4
        LayerName = Foreground
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line15'
        Border.mmPadding = 0
        Pen.Style = psDot
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3487
        mmLeft = 144953
        mmTop = 0
        mmWidth = 2298
        BandType = 4
        LayerName = Foreground
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line16'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3487
        mmLeft = 183113
        mmTop = 0
        mmWidth = 2273
        BandType = 4
        LayerName = Foreground
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line101'
        Border.mmPadding = 0
        Pen.Style = psDot
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3487
        mmLeft = 90965
        mmTop = 0
        mmWidth = 2802
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Total_NotaS'
        DataPipeline = pApuracao
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pApuracao'
        mmHeight = 3175
        mmLeft = 91520
        mmTop = 170
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Total_BCS'
        DataPipeline = pApuracao
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pApuracao'
        mmHeight = 3175
        mmLeft = 109511
        mmTop = 170
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Total_ICMSS'
        DataPipeline = pApuracao
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pApuracao'
        mmHeight = 3175
        mmLeft = 127503
        mmTop = 170
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line11'
        Border.mmPadding = 0
        Pen.Style = psDot
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3487
        mmLeft = 55353
        mmTop = 0
        mmWidth = 3201
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText12'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Total_BCE'
        DataPipeline = pApuracao
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pApuracao'
        mmHeight = 3175
        mmLeft = 55849
        mmTop = 170
        mmWidth = 16296
        BandType = 4
        LayerName = Foreground
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line10'
        Border.mmPadding = 0
        Pen.Style = psDot
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3487
        mmLeft = 73095
        mmTop = 0
        mmWidth = 2802
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Total_ICMSE'
        DataPipeline = pApuracao
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pApuracao'
        mmHeight = 3175
        mmLeft = 73728
        mmTop = 170
        mmWidth = 16140
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'lValor4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Total_NotaE'
        DataPipeline = pApuracao
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pApuracao'
        mmHeight = 3175
        mmLeft = 37805
        mmTop = 170
        mmWidth = 16608
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'ICMS'
        DataPipeline = pApuracao
        DisplayFormat = ',##0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pApuracao'
        mmHeight = 3175
        mmLeft = 145580
        mmTop = 170
        mmWidth = 9260
        BandType = 4
        LayerName = Foreground
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line19'
        Border.mmPadding = 0
        Pen.Style = psDot
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3487
        mmLeft = 155256
        mmTop = 0
        mmWidth = 2298
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Recuperar'
        DataPipeline = pApuracao
        DisplayFormat = ',##0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pApuracao'
        mmHeight = 3175
        mmLeft = 155760
        mmTop = 170
        mmWidth = 8980
        BandType = 4
        LayerName = Foreground
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line20'
        Border.mmPadding = 0
        Pen.Style = psDot
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3487
        mmLeft = 165317
        mmTop = 0
        mmWidth = 2298
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        BlankWhenZero = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Total_Recup'
        DataPipeline = pApuracao
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pApuracao'
        mmHeight = 3175
        mmLeft = 165868
        mmTop = 170
        mmWidth = 16140
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
        mmHeight = 1307
        mmLeft = 68
        mmTop = -968
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
        mmTop = -461
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
        mmTop = -726
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
        mmTop = -461
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
        mmTop = -726
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
        mmTop = -197
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
        mmTop = -197
        mmWidth = 47625
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 19579
      mmPrintPosition = 0
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line17'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3175
        mmLeft = 15580
        mmTop = 0
        mmWidth = 167667
        BandType = 7
        LayerName = Foreground
      end
      object pFUNDAP: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'pFUNDAP'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'pApuracao'
        mmHeight = 3797
        mmLeft = 0
        mmTop = 7408
        mmWidth = 197380
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport: TppChildReport
          AutoStop = False
          DataPipeline = pApuracao
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Apuracao de ICMS a Recuperar'
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
          Version = '19.04'
          mmColumnWidth = 0
          DataPipelineName = 'pApuracao'
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 2117
            mmPrintPosition = 0
          end
          object ppSummaryBand3: TppSummaryBand
            BeforeGenerate = ppSummaryBand3BeforeGenerate
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 48154
            mmPrintPosition = 0
            object ppShape1: TppShape
              DesignLayer = ppDesignLayer2
              UserName = 'Shape1'
              Pen.Width = 0
              mmHeight = 40481
              mmLeft = 36513
              mmTop = 6879
              mmWidth = 125942
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBCalc1: TppDBCalc
              DesignLayer = ppDesignLayer2
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              DataField = 'Total_NotaS'
              DataPipeline = pApuracao
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pApuracao'
              mmHeight = 3175
              mmLeft = 137319
              mmTop = 8202
              mmWidth = 23813
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel2: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label2'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Total das Sa'#237'das'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 37835
              mmTop = 8202
              mmWidth = 74083
              BandType = 7
              LayerName = Foreground1
            end
            object lTotalRecup: TppDBCalc
              DesignLayer = ppDesignLayer2
              UserName = 'lTotalRecup3'
              Border.mmPadding = 0
              DataField = 'Total_Recup'
              DataPipeline = pApuracao
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pApuracao'
              mmHeight = 3175
              mmLeft = 137319
              mmTop = 22225
              mmWidth = 23813
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel8: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label3'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Total do ICMS a Recuperar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 37835
              mmTop = 22225
              mmWidth = 74083
              BandType = 7
              LayerName = Foreground1
            end
            object ppLine3: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line1'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 40217
              mmLeft = 114829
              mmTop = 6879
              mmWidth = 2117
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel9: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label4'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Cau'#231#227'o a ficar retido no BANDES'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 37835
              mmTop = 25665
              mmWidth = 74083
              BandType = 7
              LayerName = Foreground1
            end
            object lCaucao: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'lCaucao3'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '***'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 115888
              mmTop = 25665
              mmWidth = 19050
              BandType = 7
              LayerName = Foreground1
            end
            object lRetencaoBANDES: TppVariable
              DesignLayer = ppDesignLayer2
              UserName = 'lRetencaoBANDES4'
              AutoSize = False
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
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 137319
              mmTop = 25665
              mmWidth = 23813
              BandType = 7
              LayerName = Foreground1
            end
            object ppLine8: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line2'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 39952
              mmLeft = 135732
              mmTop = 6879
              mmWidth = 2117
              BandType = 7
              LayerName = Foreground1
            end
            object lTaxaCartorio: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'lTaxaCartorio2'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Taxa registro contrato cart'#243'rio'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 37835
              mmTop = 29104
              mmWidth = 74083
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel11: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label11'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Leil'#227'o'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 37835
              mmTop = 32544
              mmWidth = 74083
              BandType = 7
              LayerName = Foreground1
            end
            object lLeilao: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'lLeilao'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '***'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 115888
              mmTop = 32544
              mmWidth = 19050
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel13: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label5'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'L'#237'quido final (FUNDAP menos cau'#231#227'o, registro e leil'#227'o)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 37835
              mmTop = 35983
              mmWidth = 74083
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel14: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label6'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Retorno de 100% da cau'#231#227'o com reembolso de frete internacional'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 37835
              mmTop = 39423
              mmWidth = 74083
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel15: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label7'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'L'#237'quido Final'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 37835
              mmTop = 42863
              mmWidth = 76200
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel17: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label8'
              HyperlinkColor = 8404992
              AutoSize = False
              Border.mmPadding = 0
              Caption = ' APURA'#199#195'O FUNDAP'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3969
              mmLeft = 36513
              mmTop = 2910
              mmWidth = 125942
              BandType = 7
              LayerName = Foreground1
            end
            object lTaxaRegistro: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'lTaxaRegistro2'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '***'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 115888
              mmTop = 29104
              mmWidth = 19050
              BandType = 7
              LayerName = Foreground1
            end
            object lRegContrato: TppVariable
              DesignLayer = ppDesignLayer2
              UserName = 'lRegContrato'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
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
              mmHeight = 3175
              mmLeft = 137319
              mmTop = 29104
              mmWidth = 23813
              BandType = 7
              LayerName = Foreground1
            end
            object lValorLeilao: TppVariable
              DesignLayer = ppDesignLayer2
              UserName = 'lValorLeilao3'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
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
              mmHeight = 3175
              mmLeft = 137319
              mmTop = 32544
              mmWidth = 23813
              BandType = 7
              LayerName = Foreground1
            end
            object lLiquidoFUNDAP: TppVariable
              DesignLayer = ppDesignLayer2
              UserName = 'lLiquidoFUNDAP'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 3
              DataType = dtCurrency
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 137319
              mmTop = 35983
              mmWidth = 23813
              BandType = 7
              LayerName = Foreground1
            end
            object lReembolsoFrete: TppVariable
              DesignLayer = ppDesignLayer2
              UserName = 'lReembolsoFrete'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 4
              DataType = dtCurrency
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3175
              mmLeft = 137319
              mmTop = 39423
              mmWidth = 23813
              BandType = 7
              LayerName = Foreground1
            end
            object lLiquido: TppVariable
              DesignLayer = ppDesignLayer2
              UserName = 'lLiquido2'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 5
              Color = clSilver
              DataType = dtCurrency
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              mmHeight = 3175
              mmLeft = 137054
              mmTop = 42863
              mmWidth = 24077
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBCalc3: TppDBCalc
              DesignLayer = ppDesignLayer2
              UserName = 'DBCalc3'
              Border.mmPadding = 0
              DataField = 'Total_NotaE'
              DataPipeline = pApuracao
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pApuracao'
              mmHeight = 3175
              mmLeft = 137319
              mmTop = 15346
              mmWidth = 23813
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel16: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label9'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Total das Entradas'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 37835
              mmTop = 15346
              mmWidth = 74083
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel19: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label10'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Total do ICMS (Entradas)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 37835
              mmTop = 18785
              mmWidth = 74083
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBCalc4: TppDBCalc
              DesignLayer = ppDesignLayer2
              UserName = 'DBCalc4'
              Border.mmPadding = 0
              DataField = 'Total_ICMSE'
              DataPipeline = pApuracao
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pApuracao'
              mmHeight = 3175
              mmLeft = 137319
              mmTop = 18785
              mmWidth = 23813
              BandType = 7
              LayerName = Foreground1
            end
            object ppLine21: TppLine
              DesignLayer = ppDesignLayer2
              UserName = 'Line3'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              mmHeight = 1058
              mmLeft = 37835
              mmTop = 35983
              mmWidth = 123561
              BandType = 7
              LayerName = Foreground1
            end
            object ppLabel24: TppLabel
              DesignLayer = ppDesignLayer2
              UserName = 'Label12'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Total do ICMS (Saidas)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 37835
              mmTop = 11906
              mmWidth = 74083
              BandType = 7
              LayerName = Foreground1
            end
            object ppDBCalc5: TppDBCalc
              DesignLayer = ppDesignLayer2
              UserName = 'DBCalc5'
              Border.mmPadding = 0
              DataField = 'Total_ICMSS'
              DataPipeline = pApuracao
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pApuracao'
              mmHeight = 3175
              mmLeft = 137319
              mmTop = 11906
              mmWidth = 23813
              BandType = 7
              LayerName = Foreground1
            end
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
      object pINVEST: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'pINVEST'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'pApuracao'
        mmHeight = 3797
        mmLeft = 0
        mmTop = 11532
        mmWidth = 197380
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = pApuracao
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Apuracao de ICMS a Recuperar'
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
          Version = '19.04'
          mmColumnWidth = 0
          DataPipelineName = 'pApuracao'
          object ppDetailBand5: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 2117
            mmPrintPosition = 0
          end
          object ppSummaryBand4: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 33602
            mmPrintPosition = 0
            object ppShape2: TppShape
              DesignLayer = ppDesignLayer5
              UserName = 'Shape1'
              Pen.Width = 0
              mmHeight = 26988
              mmLeft = 36513
              mmTop = 5092
              mmWidth = 125942
              BandType = 7
              LayerName = Foreground3
            end
            object ppDBCalc6: TppDBCalc
              DesignLayer = ppDesignLayer5
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              DataField = 'Total_NotaS'
              DataPipeline = pApuracao
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pApuracao'
              mmHeight = 3175
              mmLeft = 138113
              mmTop = 5886
              mmWidth = 23813
              BandType = 7
              LayerName = Foreground3
            end
            object ppLabel25: TppLabel
              DesignLayer = ppDesignLayer5
              UserName = 'Label1'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Total das Sa'#237'das'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 37835
              mmTop = 5886
              mmWidth = 74083
              BandType = 7
              LayerName = Foreground3
            end
            object ppDBCalc7: TppDBCalc
              DesignLayer = ppDesignLayer5
              UserName = 'DBCalc2'
              Border.mmPadding = 0
              DataField = 'Total_NotaS_SIPI'
              DataPipeline = pApuracao
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pApuracao'
              mmHeight = 3175
              mmLeft = 138113
              mmTop = 9590
              mmWidth = 23813
              BandType = 7
              LayerName = Foreground3
            end
            object ppLabel26: TppLabel
              DesignLayer = ppDesignLayer5
              UserName = 'Label2'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Total das Saidas sem IPI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 37835
              mmTop = 9590
              mmWidth = 74083
              BandType = 7
              LayerName = Foreground3
            end
            object ppDBCalc8: TppDBCalc
              DesignLayer = ppDesignLayer5
              UserName = 'DBCalc8'
              Border.mmPadding = 0
              DataField = 'Total_Estab'
              DataPipeline = pApuracao
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pApuracao'
              mmHeight = 3175
              mmLeft = 138113
              mmTop = 23613
              mmWidth = 23813
              BandType = 7
              LayerName = Foreground3
            end
            object ppLabel27: TppLabel
              DesignLayer = ppDesignLayer5
              UserName = 'Label3'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Estabiliza'#231#227'o Fiscal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 37835
              mmTop = 23613
              mmWidth = 74083
              BandType = 7
              LayerName = Foreground3
            end
            object ppLine9: TppLine
              DesignLayer = ppDesignLayer5
              UserName = 'Line1'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 26723
              mmLeft = 115094
              mmTop = 5092
              mmWidth = 2117
              BandType = 7
              LayerName = Foreground3
            end
            object ppLine12: TppLine
              DesignLayer = ppDesignLayer5
              UserName = 'Line2'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 26988
              mmLeft = 136261
              mmTop = 5092
              mmWidth = 2117
              BandType = 7
              LayerName = Foreground3
            end
            object ppLabel35: TppLabel
              DesignLayer = ppDesignLayer5
              UserName = 'Label4'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'L'#237'quido Final'
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 37835
              mmTop = 27317
              mmWidth = 76200
              BandType = 7
              LayerName = Foreground3
            end
            object ppLabel36: TppLabel
              DesignLayer = ppDesignLayer5
              UserName = 'Label5'
              HyperlinkColor = 8404992
              AutoSize = False
              Border.mmPadding = 0
              Caption = ' APURA'#199#195'O INVEST'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3969
              mmLeft = 36513
              mmTop = 859
              mmWidth = 125942
              BandType = 7
              LayerName = Foreground3
            end
            object ppDBCalc9: TppDBCalc
              DesignLayer = ppDesignLayer5
              UserName = 'DBCalc3'
              Border.mmPadding = 0
              DataField = 'Total_Recup'
              DataPipeline = pApuracao
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pApuracao'
              mmHeight = 3175
              mmLeft = 138113
              mmTop = 16470
              mmWidth = 23813
              BandType = 7
              LayerName = Foreground3
            end
            object ppLabel38: TppLabel
              DesignLayer = ppDesignLayer5
              UserName = 'Label6'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Total do ICMS a Recuperar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 37835
              mmTop = 16470
              mmWidth = 74083
              BandType = 7
              LayerName = Foreground3
            end
            object ppLabel39: TppLabel
              DesignLayer = ppDesignLayer5
              UserName = 'Label7'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Total do ICMS a Pagar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 37835
              mmTop = 20174
              mmWidth = 74083
              BandType = 7
              LayerName = Foreground3
            end
            object ppDBCalc10: TppDBCalc
              DesignLayer = ppDesignLayer5
              UserName = 'DBCalc101'
              Border.mmPadding = 0
              DataField = 'Total_Pagar'
              DataPipeline = pApuracao
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pApuracao'
              mmHeight = 3175
              mmLeft = 138113
              mmTop = 20174
              mmWidth = 23813
              BandType = 7
              LayerName = Foreground3
            end
            object ppLabel40: TppLabel
              DesignLayer = ppDesignLayer5
              UserName = 'Label401'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Total do ICMS (Saidas)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 37835
              mmTop = 13030
              mmWidth = 74083
              BandType = 7
              LayerName = Foreground3
            end
            object ppDBCalc11: TppDBCalc
              DesignLayer = ppDesignLayer5
              UserName = 'DBCalc4'
              Border.mmPadding = 0
              DataField = 'Total_ICMSS'
              DataPipeline = pApuracao
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pApuracao'
              mmHeight = 3175
              mmLeft = 138113
              mmTop = 13030
              mmWidth = 23813
              BandType = 7
              LayerName = Foreground3
            end
            object ppDBCalc12: TppDBCalc
              DesignLayer = ppDesignLayer5
              UserName = 'DBCalc5'
              Border.mmPadding = 0
              Color = clSilver
              DataField = 'Total_Liquido'
              DataPipeline = pApuracao
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              VerticalAlignment = avCenter
              DataPipelineName = 'pApuracao'
              mmHeight = 3175
              mmLeft = 138113
              mmTop = 27317
              mmWidth = 23813
              BandType = 7
              LayerName = Foreground3
            end
            object ppLabel7: TppLabel
              DesignLayer = ppDesignLayer5
              UserName = 'Label8'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '1,00%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 116152
              mmTop = 19909
              mmWidth = 19050
              BandType = 7
              LayerName = Foreground3
            end
            object ppLabel28: TppLabel
              DesignLayer = ppDesignLayer5
              UserName = 'Label9'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '3,50%'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 116152
              mmTop = 23349
              mmWidth = 19050
              BandType = 7
              LayerName = Foreground3
            end
          end
          object ppDesignLayers5: TppDesignLayers
            object ppDesignLayer5: TppDesignLayer
              UserName = 'Foreground3'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
      object pPRODERO: TppSubReport
        DesignLayer = ppDesignLayer1
        UserName = 'pPRODERO'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'pApuracao'
        mmHeight = 3797
        mmLeft = 0
        mmTop = 15651
        mmWidth = 197380
        BandType = 7
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = pApuracao
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Apuracao de ICMS a Recuperar'
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
          Version = '19.04'
          mmColumnWidth = 0
          DataPipelineName = 'pApuracao'
          object ppDetailBand4: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 2117
            mmPrintPosition = 0
          end
          object ppSummaryBand5: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 26988
            mmPrintPosition = 0
            object ppShape3: TppShape
              DesignLayer = ppDesignLayer3
              UserName = 'Shape1'
              Pen.Width = 0
              mmHeight = 19500
              mmLeft = 42745
              mmTop = 5027
              mmWidth = 109718
              BandType = 7
              LayerName = PageLayer1
            end
            object ppDBCalc2: TppDBCalc
              DesignLayer = ppDesignLayer3
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              DataField = 'Total_NotaS'
              DataPipeline = pApuracao
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pApuracao'
              mmHeight = 3175
              mmLeft = 126429
              mmTop = 5888
              mmWidth = 23813
              BandType = 7
              LayerName = PageLayer1
            end
            object ppLabel29: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label1'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Total das Sa'#237'das'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 44067
              mmTop = 5888
              mmWidth = 74083
              BandType = 7
              LayerName = PageLayer1
            end
            object ppDBCalc13: TppDBCalc
              DesignLayer = ppDesignLayer3
              UserName = 'DBCalc2'
              Border.mmPadding = 0
              DataField = 'Total_NotaS_SIPI'
              DataPipeline = pApuracao
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pApuracao'
              mmHeight = 3175
              mmLeft = 126429
              mmTop = 9592
              mmWidth = 23813
              BandType = 7
              LayerName = PageLayer1
            end
            object ppLabel30: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label2'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Total das Saidas sem IPI'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 44067
              mmTop = 9592
              mmWidth = 74083
              BandType = 7
              LayerName = PageLayer1
            end
            object ppLine13: TppLine
              DesignLayer = ppDesignLayer3
              UserName = 'Line1'
              Border.mmPadding = 0
              Pen.Style = psDot
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 19235
              mmLeft = 121326
              mmTop = 5094
              mmWidth = 2117
              BandType = 7
              LayerName = PageLayer1
            end
            object ppLabel33: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label5'
              HyperlinkColor = 8404992
              AutoSize = False
              Border.mmPadding = 0
              Caption = ' APURA'#199#195'O PRODERO'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              VerticalAlignment = avCenter
              mmHeight = 3969
              mmLeft = 42745
              mmTop = 861
              mmWidth = 109718
              BandType = 7
              LayerName = PageLayer1
            end
            object ppDBCalc15: TppDBCalc
              DesignLayer = ppDesignLayer3
              UserName = 'DBCalc3'
              Border.mmPadding = 0
              Color = clSilver
              DataField = 'Total_Recup'
              DataPipeline = pApuracao
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              DataPipelineName = 'pApuracao'
              mmHeight = 3175
              mmLeft = 126429
              mmTop = 16472
              mmWidth = 23813
              BandType = 7
              LayerName = PageLayer1
            end
            object ppLabel34: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label6'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Total do ICMS a Recuperar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 44067
              mmTop = 16472
              mmWidth = 74083
              BandType = 7
              LayerName = PageLayer1
            end
            object ppLabel37: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label7'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Total do ICMS a Pagar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 44067
              mmTop = 20176
              mmWidth = 74083
              BandType = 7
              LayerName = PageLayer1
            end
            object ppDBCalc16: TppDBCalc
              DesignLayer = ppDesignLayer3
              UserName = 'DBCalc101'
              Border.mmPadding = 0
              Color = clSilver
              DataField = 'Total_Pagar'
              DataPipeline = pApuracao
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              DataPipelineName = 'pApuracao'
              mmHeight = 3175
              mmLeft = 126429
              mmTop = 20176
              mmWidth = 23813
              BandType = 7
              LayerName = PageLayer1
            end
            object ppLabel41: TppLabel
              DesignLayer = ppDesignLayer3
              UserName = 'Label401'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'Total do ICMS (Saidas)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              VerticalAlignment = avCenter
              mmHeight = 3175
              mmLeft = 44067
              mmTop = 13032
              mmWidth = 74083
              BandType = 7
              LayerName = PageLayer1
            end
            object ppDBCalc17: TppDBCalc
              DesignLayer = ppDesignLayer3
              UserName = 'DBCalc4'
              Border.mmPadding = 0
              DataField = 'Total_ICMSS'
              DataPipeline = pApuracao
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pApuracao'
              mmHeight = 3175
              mmLeft = 126429
              mmTop = 13032
              mmWidth = 23813
              BandType = 7
              LayerName = PageLayer1
            end
          end
          object ppDesignLayers3: TppDesignLayers
            object ppDesignLayer3: TppDesignLayer
              UserName = 'PageLayer1'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
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
  object tApuracao: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      
        '----------------------------------------------------------------' +
        '---------------------------[ PEGANDO TODAS AS ALIQUOTAS ]-------' +
        '----------------------------------------------------------------' +
        '-------------'
      'SELECT ICMS        = Aliquota_ICMSOper'
      
        '      ,Recuperar   = (SELECT Aliquota_Recuperar FROM RecuperarIC' +
        'MS WHERE NotasItens.Aliquota_ICMSOper = RecuperarICMS.Aliquota_I' +
        'CMS AND Beneficio = 1)'
      '      ,Processo'
      
        '      ,BC          = (SELECT Base_Calculo       FROM RecuperarIC' +
        'MS WHERE NotasItens.Aliquota_ICMSOper = RecuperarICMS.Aliquota_I' +
        'CMS AND Beneficio = 1)'
      '      ,Total_NotaE = CAST(0 AS money)'
      '      ,Total_BCE   = CAST(0 AS money)'
      '      ,Total_ICMSE = CAST(0 AS money)'
      '      ,Total_NotaS = CAST(0 AS money)'
      '      ,Total_NotaS_SIPI = CAST(0 AS money)'
      '      ,Total_BCS   = CAST(0 AS money)'
      '      ,Total_ICMSS = CAST(0 AS money)'
      '      ,Total_Recup = CAST(0 AS money)'
      '      ,Total_Pagar = CAST(0 AS money)'
      '      ,Total_Estab = CAST(0 AS money)'
      '      ,Total_Liquido = CAST(0 AS money)'
      'INTO #TEMP'
      'FROM  NotasItens'
      'WHERE Data BETWEEN '#39'03/01/2021'#39' AND '#39'03/31/2021'#39
      'AND   Aliquota_ICMSOper > 0'
      
        'AND   (SELECT Incentivo_Fiscal FROM NotasFiscais NF WHERE NF.Num' +
        'ero = NotasItens.Nota AND NF.Data_Emissao = NotasItens.Data) = '#39 +
        'FUNDAP'#39
      'AND   Cancelada <> 1'
      'AND   NFe_Denegada <> 1'
      'GROUP BY Aliquota_ICMSOper, Processo, Saida_Entrada'
      
        '----------------------------------------------------------------' +
        '------------------------[ SOMANDO OS TOTAIS DAS NOTAS - ENTRADAS' +
        ' ]--------------------------------------------------------------' +
        '-------------'
      
        'UPDATE #Temp SET Total_NotaE = ISNULL((SELECT SUM(Valor_TotalNot' +
        'a) FROM NotasFiscais '
      
        '                                       WHERE Numero IN(SELECT DI' +
        'STINCT Nota'
      #9#9#9#9#9#9#9#9'                       FROM   NotasItens'
      
        #9#9#9#9#9#9#9#9#9#9#9#9#9'   WHERE  Data BETWEEN '#39'03/01/2021'#39' AND '#39'03/31/2021' +
        #39
      #9#9#9#9#9#9#9#9#9#9#9#9#9'   AND    Saida_Entrada = 0'
      #9#9#9#9#9#9#9#9#9#9#9#9#9'   AND    Aliquota_ICMSOper = #Temp.ICMS'
      #9#9#9#9#9#9#9#9#9#9#9#9#9'   AND    Processo = #Temp.Processo'
      #9#9#9#9#9#9#9#9#9#9#9#9#9'   AND    Cancelada <> 1'
      #9#9#9#9#9#9#9#9#9#9#9#9#9'   AND    Nfe_Denegada <> 1'
      #9#9#9#9#9#9#9#9#9#9#9#9#9'   AND    Incentivo_Fiscal = '#39'FUNDAP'#39' )), 0) +'
      ''
      
        #9#9#9#9#9#9#9'   ISNULL((SELECT SUM(Valor_TotalNota) FROM NotasTerceiro' +
        's'
      
        #9#9#9#9#9#9#9'                           WHERE  Nota IN(SELECT DISTINCT' +
        ' Nota'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'  FROM   NotasTerceirosItens'
      
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'  WHERE  Data_Entrada BETWEEN '#39'03/01/2021'#39' AND ' +
        #39'03/31/2021'#39
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'  AND    Aliquota_ICMSOper = #Temp.ICMS'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'  AND    Processo = #Temp.Processo'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'  AND    Incentivo_Fiscal = '#39'FUNDAP'#39')), 0)'
      
        '                ,Total_BCE = ISNULL((SELECT SUM(BCICMS) FROM Not' +
        'asFiscais'
      
        #9#9#9#9#9#9#9'                            WHERE  Numero IN(SELECT DISTI' +
        'NCT Nota'
      #9#9#9#9#9#9#9#9#9'                                     FROM   NotasItens'
      
        #9#9#9#9#9#9#9#9#9#9'                                 WHERE  Data BETWEEN '#39 +
        '03/01/2021'#39' AND '#39'03/31/2021'#39
      '      '#9#9#9#9#9#9#9#9#9#9#9#9#9'                 AND    Saida_Entrada = 0'
      
        #9#9#9#9#9#9#9#9#9#9'                                 AND    Aliquota_ICMSO' +
        'per = #Temp.ICMS'
      
        #9#9#9#9#9#9#9#9#9#9'                                 AND    Processo = #Te' +
        'mp.Processo'
      '                  '#9#9#9#9#9#9#9#9#9#9#9#9#9'     AND    Cancelada <> 1'
      #9#9#9#9#9#9#9#9#9#9#9#9#9'                     AND    Nfe_Denegada <> 1'
      
        #9#9#9#9#9#9#9#9#9#9'                                 AND    Incentivo_Fisc' +
        'al = '#39'FUNDAP'#39')), 0) + '
      
        #9'   '#9#9#9#9' '#9'     ISNULL((SELECT SUM(Valor_BCICMSOper) FROM NotasTe' +
        'rceiros'
      
        #9#9#9#9#9#9#9#9#9#9'                          WHERE  Nota IN(SELECT DISTIN' +
        'CT Nota'
      #9#9#9#9#9#9#9#9#9#9'  '#9#9#9'              FROM   NotasTerceirosItens'
      
        '           '#9#9#9#9#9#9#9#9#9#9#9#9#9#9'  WHERE  Data_Entrada BETWEEN '#39'03/01/20' +
        '21'#39' AND '#39'03/31/2021'#39
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9'          AND    Aliquota_ICMSOper = #Temp.ICMS'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9'          AND    Processo = #Temp.Processo'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9'          AND    Incentivo_Fiscal = '#39'FUNDAP'#39')), 0)'
      
        '                ,Total_ICMSE = ISNULL((SELECT SUM(Valor_ICMS) FR' +
        'OM NotasFiscais'
      
        #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'  WHERE  Numero IN(SELECT DISTINCT Nota FROM Nota' +
        'sItens'
      
        #9#9#9#9#9#9#9#9#9#9'                                       WHERE  Data BET' +
        'WEEN '#39'03/01/2021'#39' AND '#39'03/31/2021'#39
      #9#9#9#9#9#9#9#9#9#9#9#9#9'                           AND    Saida_Entrada = 0'
      
        #9#9#9#9#9#9#9#9#9#9'                                       AND    Aliquota' +
        '_ICMSOper = #Temp.ICMS'
      
        #9#9#9#9#9#9#9#9#9#9'                                       AND    Processo' +
        ' = #Temp.Processo'
      ' '#9#9#9#9#9#9#9#9#9#9#9#9#9'                           AND    Cancelada <> 1'
      #9#9#9#9#9#9#9#9#9#9#9#9#9'                           AND    Nfe_Denegada <> 1'
      
        #9#9#9#9#9#9#9#9#9#9'                                       AND    Incentiv' +
        'o_Fiscal = '#39'FUNDAP'#39')), 0) + '
      
        '  '#9#9#9#9#9'           ISNULL((SELECT SUM(Valor_ICMSOper) FROM NotasT' +
        'erceiros'
      
        #9#9#9#9#9#9#9'                                      WHERE  Nota IN(SELE' +
        'CT DISTINCT Nota'
      
        #9#9#9#9#9#9#9#9#9#9'                                         FROM   NotasT' +
        'erceirosItens'
      
        #9#9#9#9#9#9#9#9#9#9'                                         WHERE  Data_E' +
        'ntrada BETWEEN '#39'03/01/2021'#39' AND '#39'03/31/2021'#39
      
        #9#9#9#9#9#9#9#9#9#9'                                         AND    Aliquo' +
        'ta_ICMSOper = #Temp.ICMS'
      
        #9#9#9#9#9#9#9#9#9#9'                                         AND    Proces' +
        'so = #Temp.Processo'
      
        '                    '#9#9#9#9#9#9#9#9#9'                         AND    Inc' +
        'entivo_Fiscal = '#39'FUNDAP'#39')), 0)'
      ''
      
        '----------------------------------------------------------------' +
        '------------------------[ SOMANDO OS TOTAIS DAS NOTAS - SAIDAS ]' +
        '----------------------------------------------------------------' +
        '-----------'
      
        '                ,Total_NotaS = ISNULL((SELECT SUM(Valor_TotalNot' +
        'a) FROM NotasFiscais'
      
        '                                                                ' +
        '   WHERE  Numero IN(SELECT DISTINCT Nota FROM NotasItens'
      
        '                                                                ' +
        '                    WHERE  Data BETWEEN '#39'03/01/2021'#39' AND '#39'03/31/' +
        '2021'#39
      
        #9#9#9#9#9#9'                                                          ' +
        '  AND    Saida_Entrada = 1'
      
        '                                                                ' +
        '                    AND    Cancelada <> 1'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'AND    NFe_Denegada <> 1'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'AND    Aliquota_ICMSOper = #Temp.ICMS'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'AND    Processo = #Temp.Processo'
      #9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9#9'AND    Incentivo_Fiscal = '#39'FUNDAP'#39')), 0)'
      '                ,Total_BCS = ISNULL((SELECT SUM(BCICMS)'
      '                              FROM   NotasFiscais'
      '                              WHERE  Numero IN(SELECT Nota'
      '                                               FROM   NotasItens'
      
        '                                               WHERE  Data BETWE' +
        'EN '#39'03/01/2021'#39' AND '#39'03/31/2021'#39
      
        '                                               AND    Saida_Entr' +
        'ada = 1'
      
        '                                               AND    Cancelada ' +
        '<> 1'
      
        '                                               AND    NFe_Denega' +
        'da <> 1'
      
        '                                               AND    Aliquota_I' +
        'CMSOper = #Temp.ICMS'
      
        '                                               AND    Processo =' +
        ' #Temp.Processo'
      
        '                                               AND Incentivo_Fis' +
        'cal = '#39'FUNDAP'#39')), 0)'
      '                ,Total_ICMSS = ISNULL((SELECT SUM(Valor_ICMS)'
      '                                FROM   NotasFiscais'
      '                                WHERE  Numero IN(SELECT Nota'
      #9#9#9#9#9#9#9#9#9#9#9#9' FROM   NotasItens'
      #9#9#9#9#9#9#9#9#9#9#9#9' WHERE  Data BETWEEN '#39'03/01/2021'#39' AND '#39'03/31/2021'#39
      
        '                                                 AND    Saida_En' +
        'trada = 1'
      #9#9#9#9#9#9#9#9#9#9#9#9' AND    Cancelada <> 1'
      #9#9#9#9#9#9#9#9#9#9#9#9' AND    NFe_Denegada <> 1'
      #9#9#9#9#9#9#9#9#9#9#9#9' AND    Aliquota_ICMSOper = #Temp.ICMS'
      #9#9#9#9#9#9#9#9#9#9#9#9' AND    Processo = #Temp.Processo)'
      
        '                                                 AND Incentivo_F' +
        'iscal = '#39'FUNDAP'#39' ), 0)'
      ''
      
        'UPDATE #Temp SET Total_Recup = CASE WHEN BC = '#39'TOTALNF'#39' THEN (To' +
        'tal_NotaS - Total_NotaE) * (Recuperar/100)'
      
        '                                    WHEN BC = '#39'VLRICMS'#39' THEN (To' +
        'tal_ICMSS - Total_ICMSE) * (Recuperar/100)'
      
        '                                    WHEN BC = '#39'BCICMS'#39'  THEN (To' +
        'tal_BCS   - Total_BCE)   * (Recuperar/100)'
      '                               END'
      'SELECT * FROM #Temp ORDER BY ICMS, Processo'
      'DROP TABLE #Temp')
    FetchRows = 1
    Left = 235
    Top = 90
  end
  object pApuracao: TppDBPipeline
    DataSource = dstApuracao
    CloseDataSource = True
    UserName = 'pApuracao'
    Left = 272
    Top = 4
  end
  object dstApuracao: TDataSource
    DataSet = tApuracao
    Left = 312
    Top = 88
  end
  object tEmpresas: TMSQuery
    Connection = Dados.Banco
    FetchRows = 1
    Left = 155
    Top = 98
  end
end
