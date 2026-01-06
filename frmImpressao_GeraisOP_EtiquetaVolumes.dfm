object Impressao_GeraisOP_EtiquetaVolumes: TImpressao_GeraisOP_EtiquetaVolumes
  Left = 530
  Top = 241
  BorderStyle = bsDialog
  Caption = 'Impressao_GeraisOP_EtiquetaVolumes'
  ClientHeight = 140
  ClientWidth = 405
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
  DesignSize = (
    405
    140)
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 405
    Height = 46
    Align = alTop
    Stretch = True
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 151
    Height = 21
    Caption = 'IMPRESS'#195'O - GERAIS'
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
    Width = 241
    Height = 18
    Caption = 'Etiquetas para volumes de Nota Fiscal.'
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
  object Image1: TImage
    Left = 366
    Top = 5
    Width = 34
    Height = 34
    Anchors = [akTop, akRight]
    Picture.Data = {
      055449636F6E0000010001002020100000000000E80200001600000028000000
      2000000040000000010004000000000080020000000000000000000000000000
      0000000000000000000080000080000000808000800000008000800080800000
      80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
      FFFFFF0000000000000000000000000000000000000000088888888888888880
      00000000000000000000000000000088000000000000000FFFFFFFFFFFFFFF08
      000000000000000F0FFFFFFFFFFF0F08000000000000000FFFFFFFFFFFFFFF08
      000000000000000F0FFFFFFFFFFF0F08000000000000000FFFFFFFFFFFFFFF08
      00000000000000000000000000000088000000000000000FFFFFFFFFFFFFFF08
      000000000000000F0FFFFFFFFFFF0F08000000000000000FFFFFFFFFFFFFFF08
      000000000000000F0FFFFFFFFFFF0F08000000000000000FFFFFFFFFFFFFFF08
      00000000000000000000000000000088000000000000000FFFFFFFFFFFFFFF08
      800000000000000F0FFFFFFFFFFF0F0F080000000000000FFFFFFFFFFFFFFF00
      F08000000000000F0FFFFFFFFFFF0F08FF0800000000000FFFFFFFFFFFFFFF00
      00080000000000000000000000000088FFF080000000000FFFFFFFFFFFFFFF08
      FFF080000000000F0FFFFFFFFFFF0F08FFF0800000000000FFFFFFFFFFFFFFF0
      0008800000000000F0FFFFFFFFFFF0F08FF08000000000000FFFFFFFFFFFFFFF
      08F0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FFFFFFFFFE0001FFFE0000FFFC0000FFFC0000FFFC0000FFFC0000FF
      FC0000FFFE0000FFFC0000FFFC0000FFFC0000FFFC0000FFFC0000FFFE0000FF
      FC00007FFC00003FFC00001FFC00000FFC00000FFE000007FC000007FC000007
      FE000007FE000007FF00000FFF80001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF}
  end
  object Panel1: TPanel
    Left = 0
    Top = 110
    Width = 405
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      405
      30)
    object bSair: TButton
      Left = 331
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
    object bImprimir: TButton
      Left = 257
      Top = 1
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Anchors = [akTop, akRight]
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bImprimirClick
    end
  end
  object StaticText1: TStaticText
    Left = 20
    Top = 68
    Width = 74
    Height = 21
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'N'#186' da Nota'
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
  object cNota: TRxSpinEdit
    Left = 96
    Top = 68
    Width = 106
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object StaticText2: TStaticText
    Left = 204
    Top = 68
    Width = 74
    Height = 21
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Volumes'
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
  object cVolumes: TRxSpinEdit
    Left = 280
    Top = 68
    Width = 106
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object rEtiquetaVolumes: TppReport
    AutoStop = False
    DataPipeline = pEtiqueta
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Cybersoft - Etiquetas de Volumes'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 60000
    PrinterSetup.mmPaperWidth = 100000
    PrinterSetup.PaperSize = 256
    Template.FileName = 'C:\Sistemas\Faturamento\Relatorios\Etiqueta_Volumes.rtm'
    Units = utMillimeters
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Portuguese (Brazil)'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
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
    PreviewFormSettings.ZoomPercentage = 120
    PreviewFormSettings.ZoomSetting = zsPercentage
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
    Left = 304
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pEtiqueta'
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 60000
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NF'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Times New Roman'
        Font.Size = 30
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 12435
        mmLeft = 14288
        mmTop = 10319
        mmWidth = 18521
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        Color = clBlack
        DataField = 'Nota'
        DataPipeline = pEtiqueta
        DisplayFormat = '000000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Times New Roman'
        Font.Size = 30
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'pEtiqueta'
        mmHeight = 12435
        mmLeft = 33073
        mmTop = 10319
        mmWidth = 53181
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        Color = clWindow
        DataField = 'Unidade'
        DataPipeline = pEtiqueta
        DisplayFormat = '00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 48
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pEtiqueta'
        mmHeight = 19473
        mmLeft = 23283
        mmTop = 26988
        mmWidth = 23283
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = '/'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 48
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 19579
        mmLeft = 46831
        mmTop = 26988
        mmWidth = 4763
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        Color = clWindow
        DataField = 'Volumes'
        DataPipeline = pEtiqueta
        DisplayFormat = '00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 48
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pEtiqueta'
        mmHeight = 19473
        mmLeft = 51858
        mmTop = 26988
        mmWidth = 24606
        BandType = 4
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Cybersoft Sistemas Ltda'
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 4
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 1651
        mmLeft = 82021
        mmTop = 57415
        mmWidth = 16933
        BandType = 4
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
  object tVolumes: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO EtiquetaVolumes'
      '  (Nota, Volumes, Unidade)'
      'VALUES'
      '  (:Nota, :Volumes, :Unidade)')
    SQLDelete.Strings = (
      'DELETE FROM EtiquetaVolumes'
      'WHERE'
      
        '  Nota = :Old_Nota AND Volumes = :Old_Volumes AND Unidade = :Old' +
        '_Unidade')
    SQLUpdate.Strings = (
      'UPDATE EtiquetaVolumes'
      'SET'
      '  Nota = :Nota, Volumes = :Volumes, Unidade = :Unidade'
      'WHERE'
      
        '  Nota = :Old_Nota AND Volumes = :Old_Volumes AND Unidade = :Old' +
        '_Unidade')
    SQLRefresh.Strings = (
      
        'SELECT EtiquetaVolumes.Nota, EtiquetaVolumes.Volumes, EtiquetaVo' +
        'lumes.Unidade FROM EtiquetaVolumes'
      
        'WHERE EtiquetaVolumes.Nota = :Nota AND EtiquetaVolumes.Volumes =' +
        ' :Volumes AND EtiquetaVolumes.Unidade = :Unidade ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM EtiquetaVolumes')
    FetchRows = 1
    Active = True
    Left = 201
    Top = 1
  end
  object dstVolumes: TDataSource
    DataSet = tVolumes
    Left = 231
    Top = 1
  end
  object pEtiqueta: TppDBPipeline
    DataSource = dstVolumes
    UserName = 'pEtiqueta'
    Left = 272
    object pEtiquetappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota'
      FieldName = 'Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object pEtiquetappField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Volumes'
      FieldName = 'Volumes'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object pEtiquetappField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'Unidade'
      FieldName = 'Unidade'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
  end
end
