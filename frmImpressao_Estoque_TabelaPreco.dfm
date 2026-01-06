object Impressao_Estoque_TabelaPreco: TImpressao_Estoque_TabelaPreco
  Left = 516
  Top = 331
  BorderStyle = bsDialog
  Caption = 'Impressao_Estoque_TabelaPreco'
  ClientHeight = 401
  ClientWidth = 940
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
    Width = 940
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitWidth = 410
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 165
    Height = 21
    Caption = 'IMPRESS'#195'O - ESTOQUE'
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
    Width = 108
    Height = 18
    Caption = 'Tabela de Pre'#231'os.'
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
    Top = 371
    Width = 940
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      940
      30)
    object bSair: TButton
      Left = 873
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
      Left = 807
      Top = 1
      Width = 66
      Height = 28
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      OnClick = bImprimirClick
    end
  end
  object cOrdem: TRadioGroup
    Left = 16
    Top = 125
    Width = 137
    Height = 155
    Caption = 'Ordem de Impress'#227'o'
    ItemIndex = 5
    Items.Strings = (
      'C'#243'digo'
      'C'#243'digo do Fabricante'
      'Descri'#231#227'o'
      'Valor'
      'Quantidade'
      'Linha')
    TabOrder = 1
  end
  object cExcel: TCheckBox
    Left = 16
    Top = 328
    Width = 111
    Height = 17
    Caption = 'Enviar para Excel'
    TabOrder = 2
  end
  object cSaldo: TCheckBox
    Left = 16
    Top = 304
    Width = 159
    Height = 17
    Caption = 'Apenas Produtos com Saldo.'
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
  object cLinhas: TDBLookupComboBox
    Left = 86
    Top = 61
    Width = 221
    Height = 21
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyField = 'Codigo'
    ListField = 'Codigo;Descricao'
    ListFieldIndex = 1
    ListSource = Dados.dsProdutosLinhas
    ParentFont = False
    TabOrder = 4
  end
  object lNome: TStaticText
    Left = 16
    Top = 61
    Width = 69
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Linha'
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
  object cTodas: TCheckBox
    Left = 311
    Top = 63
    Width = 58
    Height = 17
    Caption = 'Todas'
    Checked = True
    State = cbChecked
    TabOrder = 6
    OnClick = cTodasClick
  end
  object cProdNome: TDBLookupComboBox
    Left = 165
    Top = 84
    Width = 756
    Height = 21
    DropDownRows = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyField = 'Codigo'
    ListField = 'Codigo;Descricao'
    ListFieldIndex = 1
    ListSource = Dados.dsProdutos
    ParentFont = False
    TabOrder = 7
    OnClick = cProdNomeClick
  end
  object StaticText1: TStaticText
    Left = 16
    Top = 84
    Width = 69
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
  object cProdCod: TEdit
    Left = 86
    Top = 84
    Width = 77
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnExit = cProdCodExit
  end
  object rTabela: TppReport
    AutoStop = False
    DataPipeline = pProdutos
    NoDataBehaviors = [ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Cybersoft - Controle de Estoque do Processo'
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
      'C:\Sistemas\Faturamento\Codigo Fonte\Relatorios\Processos_Estoqu' +
      'e.rtm'
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
    Left = 288
    Top = 8
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pProdutos'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 21431
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
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
        mmHeight = 4995
        mmLeft = 24606
        mmTop = 265
        mmWidth = 172773
        BandType = 0
        LayerName = Foreground
      end
      object lTitulo: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTitulo'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Tabela de Pre'#231'os'
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
        mmLeft = 24606
        mmTop = 5821
        mmWidth = 172773
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
        mmHeight = 16404
        mmLeft = 0
        mmTop = 0
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground
      end
      object lDescr: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTitulo1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = '[ ]'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 24606
        mmTop = 11906
        mmWidth = 172773
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'DESCRI'#199#195'O'
        Color = 16762566
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 76843
        mmTop = 17727
        mmWidth = 76666
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'COD'
        Color = 16762566
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 0
        mmTop = 17727
        mmWidth = 11119
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'UM'
        Color = 16762566
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 153299
        mmTop = 17727
        mmWidth = 5760
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'ESTOQUE'
        Color = 16762566
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 158818
        mmTop = 17727
        mmWidth = 20334
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'VALOR'
        Color = 16762566
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 178913
        mmTop = 17727
        mmWidth = 18224
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'COD FAB'
        Color = 16762566
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 11119
        mmTop = 17727
        mmWidth = 15765
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'COD SKU'
        Color = 16762566
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 26600
        mmTop = 17727
        mmWidth = 17218
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.Visible = True
        Border.mmPadding = 0
        Caption = 'LINHA'
        Color = 16762566
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 3704
        mmLeft = 43656
        mmTop = 17727
        mmWidth = 33432
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsBDiagonal
      Background1.Gradient.EndColor = clSilver
      Background1.Gradient.StartColor = 16777192
      Background2.Brush.Color = 15400917
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3439
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        CharWrap = True
        Border.Style = psDot
        Border.mmPadding = 0
        DataField = 'Codigo'
        DataPipeline = pProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProdutos'
        mmHeight = 3001
        mmLeft = 0
        mmTop = 0
        mmWidth = 10083
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        CharWrap = True
        Anchors = [atLeft, atTop, atBottom]
        BlankWhenZero = True
        Border.Style = psDot
        Border.mmPadding = 0
        DataField = 'Disponivel'
        DataPipeline = pProdutos
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProdutos'
        mmHeight = 3001
        mmLeft = 158818
        mmTop = 0
        mmWidth = 19276
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        CharWrap = True
        Border.Style = psDot
        Border.mmPadding = 0
        DataField = 'Codigo_Fabricante'
        DataPipeline = pProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProdutos'
        mmHeight = 2910
        mmLeft = 11289
        mmTop = 1
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        CharWrap = True
        Anchors = [atLeft, atTop, atBottom]
        Border.Style = psDot
        Border.mmPadding = 0
        DataField = 'Unidade'
        DataPipeline = pProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProdutos'
        mmHeight = 3001
        mmLeft = 153299
        mmTop = 0
        mmWidth = 5518
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        CharWrap = True
        Border.Style = psDot
        Border.mmPadding = 0
        DataField = 'Codigo_SKU'
        DataPipeline = pProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProdutos'
        mmHeight = 3001
        mmLeft = 28294
        mmTop = 0
        mmWidth = 15524
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        CharWrap = True
        Anchors = [atLeft, atTop, atBottom]
        BlankWhenZero = True
        Border.Style = psDot
        Border.mmPadding = 0
        DataField = 'Valor_Venda'
        DataPipeline = pProdutos
        DisplayFormat = ',##0.0000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProdutos'
        mmHeight = 2759
        mmLeft = 178913
        mmTop = 0
        mmWidth = 17014
        BandType = 4
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Style = psDot
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3001
        mmLeft = 196835
        mmTop = -60
        mmWidth = 161
        BandType = 4
        LayerName = Foreground
      end
      object ppDBMemo1: TppDBMemo
        DesignLayer = ppDesignLayer1
        UserName = 'DBMemo1'
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'Descricao'
        DataPipeline = pProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'pProdutos'
        mmHeight = 3220
        mmLeft = 77622
        mmTop = 0
        mmWidth = 74245
        BandType = 4
        LayerName = Foreground
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        CharWrap = True
        Border.Style = psDot
        Border.mmPadding = 0
        DataField = 'Linha'
        DataPipeline = pProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pProdutos'
        mmHeight = 2910
        mmLeft = 44806
        mmTop = 0
        mmWidth = 31750
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
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
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2879
        mmLeft = 2450
        mmTop = 529
        mmWidth = 43519
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
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
        mmLeft = 71967
        mmTop = 0
        mmWidth = 56092
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer1
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
        mmLeft = 129646
        mmTop = 529
        mmWidth = 26194
        BandType = 8
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3175
        mmLeft = 48683
        mmTop = 0
        mmWidth = 13229
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
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
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
        BandType = 8
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3175
        mmLeft = 178859
        mmTop = 0
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
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
  object pProdutos: TppDBPipeline
    DataSource = dsProdutos
    CloseDataSource = True
    UserName = 'pProdutos'
    Left = 176
    Top = 8
  end
  object pEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    CloseDataSource = True
    UserName = 'pEmpresas'
    Left = 232
    Top = 8
  end
  object tProdutos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'DROP TABLE #TEMP'
      ''
      'SELECT Codigo'
      '      ,Codigo_Fabricante'
      '      ,Codigo_SKU'
      
        '      ,Descricao = replace(Descricao, '#39'<{'#39'+ltrim(rtrim(cast(Codi' +
        'go as varchar(10))))+'#39'}>'#39', '#39#39')'
      '      ,Unidade'
      '      ,Estoque_Disponivel'
      '      ,Valor_Venda'
      
        '      ,Disponivel = (SELECT CAST((ISNULL((SELECT SUM(Quantidade)' +
        ' FROM NotasItens            WHERE(Codigo_Mercadoria = Codigo) AN' +
        'D (Saida_Entrada = 0) AND (Movimenta_Estoque = 1) AND (Cancelada' +
        ' <> 1) AND (ISNULL(NFe_Denegada, 0) = 0)), 0) +'
      
        '                                 ISNULL((SELECT SUM(Quantidade) ' +
        'FROM NotasTerceirosItens   WHERE(Codigo_Mercadoria = Codigo) AND' +
        ' (Movimenta_Estoque = 1)), 0) +'
      
        '                                 ISNULL((SELECT SUM(Quantidade_E' +
        'ntrada) FROM ProdutosTransferencia WHERE(Produto_Entrada   = Cod' +
        'igo) ), 0) -'
      
        '                                 ISNULL((SELECT SUM(Quantidade) ' +
        'FROM NotasItens            WHERE(Codigo_Mercadoria = Codigo) AND' +
        ' (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) AND (Cancelada ' +
        '<> 1) AND (ISNULL(NFe_Denegada, 0) = 0)), 0) -'
      
        '                                 ISNULL((SELECT SUM(Quantidade) ' +
        'FROM PedidosItens          WHERE(Codigo_Mercadoria = Codigo) AND' +
        ' (Saida_Entrada = 1) AND (Movimenta_Estoque = 1) ), 0)) -'
      
        '                                 ISNULL((SELECT SUM(Quantidade) ' +
        'FROM ProdutosTransferencia WHERE(Produto_Saida     = Codigo) ), ' +
        '0) AS DECIMAL(14,3)) -'
      
        '                                 ISNULL((SELECT SUM(Quantidade) ' +
        'FROM PedidosRepresentantesItens PRI WHERE Codigo_Mercadoria = Co' +
        'digo AND ISNULL(Faturamento, 0) = 0 AND ISNULL(Faturado, 0) = 0'
      
        '                                                                ' +
        '                  AND (SELECT ISNULL(Cancelado, 0) FROM PedidosR' +
        'epresentantes PR WHERE PR.Pedido = PRI.Pedido) = 0'
      
        '                                                                ' +
        '                  AND (SELECT ISNULL(Liberado , 0) FROM PedidosR' +
        'epresentantes PR WHERE PR.Pedido = PRI.Pedido) = 1), 0))'
      
        '         ,Linha = (select Descricao from ProdutosLinhas where Co' +
        'digo = Linha)'
      'INTO #TEMP'
      'FROM Produtos'
      ''
      'SELECT * '
      'FROM #TEMP'
      'WHERE Disponivel > 0'
      'ORDER BY Codigo'
      '')
    Left = 458
    Top = 143
  end
  object dsProdutos: TDataSource
    DataSet = tProdutos
    Left = 517
    Top = 143
  end
end
