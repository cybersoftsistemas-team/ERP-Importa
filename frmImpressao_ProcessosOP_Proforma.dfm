object Impressao_ProcessosOP_Proforma: TImpressao_ProcessosOP_Proforma
  Left = 773
  Top = 297
  BorderStyle = bsDialog
  Caption = 'Impressao_ProcessosOP_Proforma'
  ClientHeight = 460
  ClientWidth = 607
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
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 607
    Height = 40
    Align = alTop
    Stretch = True
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 0
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
    Top = 15
    Width = 198
    Height = 18
    Caption = 'Impress'#227'o da Proforma Invoice.'
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
    Top = 430
    Width = 607
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      607
      30)
    object bImprimir: TButton
      Left = 460
      Top = 1
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bImprimirClick
    end
    object bSair: TButton
      Left = 533
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
  end
  object Grade: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 43
    Width = 601
    Height = 348
    Align = alTop
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
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'Proforma_Numero'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Proforma'
        Width = 147
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Proforma_Data'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Processo'
        Title.Alignment = taCenter
        Width = 149
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total_Fatura'
        Title.Alignment = taCenter
        Title.Caption = 'Total (R$)'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total_FaturaME'
        Title.Alignment = taCenter
        Title.Caption = 'Total (ME)'
        Width = 98
        Visible = True
      end>
  end
  object StaticText5: TStaticText
    Left = 4
    Top = 394
    Width = 54
    Height = 21
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
  end
  object cPesquisa: TEdit
    Left = 60
    Top = 394
    Width = 544
    Height = 21
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object pEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    CloseDataSource = True
    UserName = 'pEmpresas'
    Left = 423
    Top = 71
  end
  object pProformaItens: TppDBPipeline
    DataSource = dstProformaItens
    CloseDataSource = True
    UserName = 'pProformaItens'
    Left = 423
    Top = 119
    object pProformaItensppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo_Mercadoria'
      FieldName = 'Codigo_Mercadoria'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object pProformaItensppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade'
      FieldName = 'Quantidade'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object pProformaItensppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade_MT'
      FieldName = 'Quantidade_MT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object pProformaItensppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade_Uni'
      FieldName = 'Quantidade_Uni'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object pProformaItensppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade_Vol'
      FieldName = 'Quantidade_Vol'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object pProformaItensppField6: TppField
      FieldAlias = 'Unidade'
      FieldName = 'Unidade'
      FieldLength = 3
      DisplayWidth = 3
      Position = 5
    end
    object pProformaItensppField7: TppField
      FieldAlias = 'Unidade_Vol'
      FieldName = 'Unidade_Vol'
      FieldLength = 3
      DisplayWidth = 3
      Position = 6
    end
    object pProformaItensppField8: TppField
      FieldAlias = 'Valor_Unitario'
      FieldName = 'Valor_Unitario'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 7
    end
    object pProformaItensppField9: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 8000
      DisplayWidth = 8000
      Position = 8
    end
    object pProformaItensppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor_Total'
      FieldName = 'Valor_Total'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
  end
  object pProforma: TppDBPipeline
    DataSource = dstProforma
    CloseDataSource = True
    UserName = 'pProforma'
    Left = 423
    Top = 170
  end
  object rInvoice: TppReport
    AutoStop = False
    DataPipeline = pProforma
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Cybersoft - Commercial Invoice'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4'
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
      'C:\Sistemas\Faturamento\Codigo_Fonte\Relatorios\ProcessosProform' +
      'a.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = rInvoiceBeforePrint
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
    Left = 423
    Top = 221
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pProforma'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 49213
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 16
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 6900
        mmLeft = 33073
        mmTop = 0
        mmWidth = 152929
        BandType = 0
        LayerName = Foreground1
      end
      object lEndereco: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lEndereco'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'lEndereco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3471
        mmLeft = 33073
        mmTop = 10319
        mmWidth = 152929
        BandType = 0
        LayerName = Foreground1
      end
      object lEndereco2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lEndereco1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'lEndereco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3471
        mmLeft = 33073
        mmTop = 13494
        mmWidth = 152929
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Hyperlink = 'mailto:abrasil@abrasilsc.com.br'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Email'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 3471
        mmLeft = 33073
        mmTop = 17198
        mmWidth = 152929
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'PROFORMA INVOICE / PROPOSAL'
        Color = clBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 14
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6085
        mmLeft = 57415
        mmTop = 29369
        mmWidth = 82286
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        Hyperlink = 'www.abrasil.com.br'
        HyperlinkColor = clBlack
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Site'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 3471
        mmLeft = 33073
        mmTop = 20373
        mmWidth = 152929
        BandType = 0
        LayerName = Foreground1
      end
      object iLogo: TppImage
        DesignLayer = ppDesignLayer2
        UserName = 'iLogo1'
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
        LayerName = Foreground1
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText27'
        HyperlinkColor = clBlack
        AutoSize = True
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'CNPJ'
        DataPipeline = pEmpresas
        DisplayFormat = '##.###.###/####-##;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 3439
        mmLeft = 41804
        mmTop = 6615
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label29'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3471
        mmLeft = 33073
        mmTop = 6615
        mmWidth = 13494
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine32: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line32'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 0
        mmTop = 27781
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Data_Extenso'
        DataPipeline = pProforma
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProforma'
        mmHeight = 4276
        mmLeft = 12435
        mmTop = 42333
        mmWidth = 38894
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Date:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4276
        mmLeft = 0
        mmTop = 42333
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Proforma Invoice:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 90752
        mmTop = 42333
        mmWidth = 26723
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Processo'
        DataPipeline = pProforma
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProforma'
        mmHeight = 4233
        mmLeft = 118798
        mmTop = 42333
        mmWidth = 35190
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine31: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line31'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        Style = lsDouble
        mmHeight = 3969
        mmLeft = 0
        mmTop = 37042
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 90223
      mmPrintPosition = 0
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape2'
        Pen.Width = 0
        mmHeight = 25135
        mmLeft = 97896
        mmTop = 21696
        mmWidth = 98161
        BandType = 4
        LayerName = Foreground1
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        Pen.Width = 0
        mmHeight = 82286
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Importer:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 265
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Importador_Nome'
        DataPipeline = pProforma
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProforma'
        mmHeight = 4276
        mmLeft = 1588
        mmTop = 3969
        mmWidth = 179917
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Reference N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 22225
        mmWidth = 20373
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Processo'
        DataPipeline = pProforma
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProforma'
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 25929
        mmWidth = 74877
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 3969
        mmLeft = 0
        mmTop = 30163
        mmWidth = 197380
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Terms of Sale:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 39158
        mmWidth = 24606
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label102'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Country of Origin:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 1058
        mmTop = 30692
        mmWidth = 24606
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText102'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Pais_OrigemNome'
        DataPipeline = pProforma
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProforma'
        mmHeight = 4233
        mmLeft = 1059
        mmTop = 34396
        mmWidth = 74877
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1852
        mmLeft = 0
        mmTop = 38629
        mmWidth = 197380
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Place of Shipment:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 78052
        mmTop = 30692
        mmWidth = 30956
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText13'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Local_Embarque'
        DataPipeline = pProforma
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProforma'
        mmHeight = 4233
        mmLeft = 78052
        mmTop = 34396
        mmWidth = 118269
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Destination:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 78052
        mmTop = 22225
        mmWidth = 30956
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText28'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Importador_Ender'
        DataPipeline = pProforma
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProforma'
        mmHeight = 4276
        mmLeft = 1588
        mmTop = 8202
        mmWidth = 179917
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText29: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText29'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Importador_Cida'
        DataPipeline = pProforma
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProforma'
        mmHeight = 4276
        mmLeft = 1588
        mmTop = 12435
        mmWidth = 179917
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText30: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText30'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Importador_Pais'
        DataPipeline = pProforma
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProforma'
        mmHeight = 4276
        mmLeft = 1588
        mmTop = 16669
        mmWidth = 179917
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Commercial terms:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 1588
        mmTop = 54504
        mmWidth = 24871
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 32279
        mmLeft = 76994
        mmTop = 21696
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBMemo3: TppDBMemo
        DesignLayer = ppDesignLayer2
        UserName = 'DBMemo3'
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'Termos_Comerciais'
        DataPipeline = pProforma
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        DataPipelineName = 'pProforma'
        mmHeight = 13229
        mmLeft = 1058
        mmTop = 58473
        mmWidth = 194998
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText14'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Local_Desembarque'
        DataPipeline = pProforma
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProforma'
        mmHeight = 4233
        mmLeft = 78052
        mmTop = 25929
        mmWidth = 118269
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Terms of Payment:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 78052
        mmTop = 39158
        mmWidth = 25135
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText17'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'Termos_Pagamento'
        DataPipeline = pProforma
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'pProforma'
        mmHeight = 10848
        mmLeft = 78052
        mmTop = 42598
        mmWidth = 118269
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText23'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataField = 'INCOTERMS'
        DataPipeline = pProforma
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProforma'
        mmHeight = 4233
        mmLeft = 1059
        mmTop = 42598
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line101'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1852
        mmLeft = 0
        mmTop = 21696
        mmWidth = 197380
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line102'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1852
        mmLeft = 0
        mmTop = 53975
        mmWidth = 197380
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line13'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1852
        mmLeft = 0
        mmTop = 71702
        mmWidth = 197380
        BandType = 4
        LayerName = Foreground1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Shipment Window:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3471
        mmLeft = 1588
        mmTop = 72231
        mmWidth = 22648
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        DataPipeline = pProformaItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pProformaItens'
        mmHeight = 4276
        mmLeft = 1588
        mmTop = 76200
        mmWidth = 193675
        BandType = 4
        LayerName = Foreground1
      end
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = True
        DataPipelineName = 'pProformaItens'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 84402
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = pProformaItens
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Cybersoft - Commercial Invoice'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'A4'
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
          DataPipelineName = 'pProformaItens'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppShape7: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape7'
              Brush.Color = clMoneyGreen
              Pen.Width = 0
              mmHeight = 4498
              mmLeft = 0
              mmTop = 0
              mmWidth = 81227
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel17: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label17'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'PRODUCT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3471
              mmLeft = 529
              mmTop = 529
              mmWidth = 79904
              BandType = 1
              LayerName = Foreground
            end
            object ppShape8: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape8'
              Brush.Color = clMoneyGreen
              Pen.Width = 0
              mmHeight = 4498
              mmLeft = 80963
              mmTop = 0
              mmWidth = 23813
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel18: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label18'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'No.KIND PKGS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3471
              mmLeft = 81492
              mmTop = 529
              mmWidth = 22754
              BandType = 1
              LayerName = Foreground
            end
            object ppShape9: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape9'
              Brush.Color = clMoneyGreen
              Pen.Width = 0
              mmHeight = 4498
              mmLeft = 104511
              mmTop = 0
              mmWidth = 23813
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel19: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label19'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'QTY UNIT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3471
              mmLeft = 105040
              mmTop = 529
              mmWidth = 22753
              BandType = 1
              LayerName = Foreground
            end
            object ppShape10: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape10'
              Brush.Color = clMoneyGreen
              Pen.Width = 0
              mmHeight = 4498
              mmLeft = 150284
              mmTop = 0
              mmWidth = 22490
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel20: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label20'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'UNIT VALUE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3471
              mmLeft = 150813
              mmTop = 529
              mmWidth = 21430
              BandType = 1
              LayerName = Foreground
            end
            object ppShape11: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape101'
              Brush.Color = clMoneyGreen
              Pen.Width = 0
              mmHeight = 4498
              mmLeft = 172509
              mmTop = 0
              mmWidth = 24871
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel21: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label201'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'TOTAL VALUE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3471
              mmLeft = 173038
              mmTop = 529
              mmWidth = 23813
              BandType = 1
              LayerName = Foreground
            end
            object ppShape3: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape3'
              Brush.Color = clMoneyGreen
              Pen.Width = 0
              mmHeight = 4498
              mmLeft = 128059
              mmTop = 0
              mmWidth = 22490
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel7: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label7'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'QTY MT'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3471
              mmLeft = 128588
              mmTop = 529
              mmWidth = 21431
              BandType = 1
              LayerName = Foreground
            end
          end
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 3704
            mmPrintPosition = 0
            object ppLine14: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line14'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              mmHeight = 3704
              mmLeft = 0
              mmTop = 0
              mmWidth = 3175
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText18: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText18'
              Anchors = [atLeft, atBottom]
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Quantidade'
              DataPipeline = pProformaItens
              DisplayFormat = '##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pProformaItens'
              mmHeight = 3703
              mmLeft = 81492
              mmTop = 0
              mmWidth = 16403
              BandType = 4
              LayerName = Foreground
            end
            object ppLine15: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line15'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              mmHeight = 3704
              mmLeft = 80963
              mmTop = 0
              mmWidth = 3175
              BandType = 4
              LayerName = Foreground
            end
            object ppLine16: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line16'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              mmHeight = 3704
              mmLeft = 104511
              mmTop = 0
              mmWidth = 3175
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText19: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText19'
              Anchors = [atLeft, atBottom]
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Unidade'
              DataPipeline = pProformaItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'pProformaItens'
              mmHeight = 3440
              mmLeft = 99219
              mmTop = 0
              mmWidth = 4763
              BandType = 4
              LayerName = Foreground
            end
            object ppLine17: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line17'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              mmHeight = 3704
              mmLeft = 150284
              mmTop = 0
              mmWidth = 3175
              BandType = 4
              LayerName = Foreground
            end
            object ppLine18: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line18'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              mmHeight = 3704
              mmLeft = 172509
              mmTop = 0
              mmWidth = 3175
              BandType = 4
              LayerName = Foreground
            end
            object ppLine19: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line19'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpRight
              mmHeight = 3704
              mmLeft = 194734
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object cUnitario: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'cUnitario'
              Anchors = [atLeft, atBottom]
              BlankWhenZero = True
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Valor_Unitario'
              DataPipeline = pProformaItens
              DisplayFormat = 'USD ,##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pProformaItens'
              mmHeight = 3703
              mmLeft = 150813
              mmTop = 0
              mmWidth = 20902
              BandType = 4
              LayerName = Foreground
            end
            object cTotal: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText201'
              Anchors = [atLeft, atBottom]
              BlankWhenZero = True
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Valor_Total'
              DataPipeline = pProformaItens
              DisplayFormat = 'USD ,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pProformaItens'
              mmHeight = 3703
              mmLeft = 174096
              mmTop = 0
              mmWidth = 22225
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText11: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText1'
              Anchors = [atLeft, atBottom]
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Quantidade_Uni'
              DataPipeline = pProformaItens
              DisplayFormat = '##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pProformaItens'
              mmHeight = 3703
              mmLeft = 104775
              mmTop = 0
              mmWidth = 16403
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText15: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText15'
              Anchors = [atLeft, atBottom]
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Unidade_Vol'
              DataPipeline = pProformaItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'pProformaItens'
              mmHeight = 3703
              mmLeft = 123031
              mmTop = 0
              mmWidth = 4763
              BandType = 4
              LayerName = Foreground
            end
            object ppLine2: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line2'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              ParentHeight = True
              Position = lpLeft
              mmHeight = 3704
              mmLeft = 128059
              mmTop = 0
              mmWidth = 3175
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText16: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText16'
              Anchors = [atLeft, atBottom]
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              DataField = 'Quantidade_MT'
              DataPipeline = pProformaItens
              DisplayFormat = '##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pProformaItens'
              mmHeight = 3703
              mmLeft = 128588
              mmTop = 0
              mmWidth = 20902
              BandType = 4
              LayerName = Foreground
            end
            object ppDBMemo1: TppDBMemo
              DesignLayer = ppDesignLayer1
              UserName = 'DBMemo1'
              Border.mmPadding = 0
              CharWrap = False
              DataField = 'Descricao'
              DataPipeline = pProformaItens
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = []
              RemoveEmptyLines = False
              Transparent = True
              DataPipelineName = 'pProformaItens'
              mmHeight = 3704
              mmLeft = 1588
              mmTop = 0
              mmWidth = 78317
              BandType = 4
              LayerName = Foreground
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeading = 0
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 35719
            mmPrintPosition = 0
            object ppShape5: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape5'
              Brush.Color = clMoneyGreen
              Pen.Width = 0
              mmHeight = 4498
              mmLeft = 60854
              mmTop = 265
              mmWidth = 136525
              BandType = 7
              LayerName = Foreground
            end
            object ppLine21: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line21'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 4763
              mmLeft = 172509
              mmTop = 0
              mmWidth = 2381
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel22: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label22'
              AutoSize = False
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'TOTAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3440
              mmLeft = 62177
              mmTop = 794
              mmWidth = 19050
              BandType = 7
              LayerName = Foreground
            end
            object ppLine22: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line22'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 4763
              mmLeft = 80963
              mmTop = 0
              mmWidth = 2381
              BandType = 7
              LayerName = Foreground
            end
            object ppLine23: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line23'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              mmHeight = 1058
              mmLeft = 0
              mmTop = 0
              mmWidth = 197380
              BandType = 7
              LayerName = Foreground
            end
            object ppLine24: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line24'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpRight
              mmHeight = 4763
              mmLeft = 195792
              mmTop = 0
              mmWidth = 1588
              BandType = 7
              LayerName = Foreground
            end
            object ppLine8: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line8'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 4763
              mmLeft = 104511
              mmTop = 0
              mmWidth = 2381
              BandType = 7
              LayerName = Foreground
            end
            object ppLine9: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line9'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 4763
              mmLeft = 128059
              mmTop = 0
              mmWidth = 2381
              BandType = 7
              LayerName = Foreground
            end
            object ppLine11: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line11'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 4763
              mmLeft = 150284
              mmTop = 0
              mmWidth = 2381
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc1: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              DataField = 'Quantidade'
              DataPipeline = pProformaItens
              DisplayFormat = '##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pProformaItens'
              mmHeight = 3440
              mmLeft = 81492
              mmTop = 794
              mmWidth = 16404
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc2: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc2'
              Border.mmPadding = 0
              DataField = 'Quantidade_Uni'
              DataPipeline = pProformaItens
              DisplayFormat = '##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pProformaItens'
              mmHeight = 3440
              mmLeft = 104775
              mmTop = 794
              mmWidth = 16403
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc3: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc3'
              Border.mmPadding = 0
              DataField = 'Quantidade_MT'
              DataPipeline = pProformaItens
              DisplayFormat = '##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pProformaItens'
              mmHeight = 3440
              mmLeft = 128588
              mmTop = 794
              mmWidth = 20902
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc4: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc4'
              Border.mmPadding = 0
              DataField = 'Valor_Total'
              DataPipeline = pProformaItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pProformaItens'
              mmHeight = 3440
              mmLeft = 174096
              mmTop = 794
              mmWidth = 22225
              BandType = 7
              LayerName = Foreground
            end
            object ppDBMemo2: TppDBMemo
              DesignLayer = ppDesignLayer1
              UserName = 'DBMemo2'
              KeepTogether = True
              Border.mmPadding = 0
              CharWrap = False
              DataField = 'Observacao'
              DataPipeline = pProforma
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 10
              Font.Style = []
              RemoveEmptyLines = False
              Stretch = True
              TextAlignment = taFullJustified
              Transparent = True
              DataPipelineName = 'pProforma'
              mmHeight = 20902
              mmLeft = 5027
              mmTop = 14817
              mmWidth = 188913
              BandType = 7
              LayerName = Foreground
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              mmLeading = 0
            end
            object ppLabel14: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label103'
              Border.Weight = 1.000000000000000000
              Border.mmPadding = 0
              Caption = 'Notes:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold, fsUnderline]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 0
              mmTop = 9790
              mmWidth = 7673
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
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label101'
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
        mmHeight = 2910
        mmLeft = 0
        mmTop = 529
        mmWidth = 45773
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
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
        mmLeft = 79375
        mmTop = 529
        mmWidth = 38894
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer2
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
        mmLeft = 118534
        mmTop = 529
        mmWidth = 24077
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 48154
        mmTop = 265
        mmWidth = 5821
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
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
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 178859
        mmTop = 265
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppSummaryBand2: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 12965
      mmPrintPosition = 0
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
    object ppParameterList1: TppParameterList
    end
  end
  object tProforma: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'USE Cybersoft_GRF_Matriz'
      'SET LANGUAGE English'
      'SELECT PD.Proforma_Numero'
      '      ,PD.Proforma_Data'
      '      ,PD.Processo'
      '      ,PD.Local_Embarque'
      '      ,PD.Local_Desembarque'
      '      ,PD.Navio_DataPrevista'
      '      ,PD.Navio_DataChegada'
      
        '      ,Importador_Nome  = (SELECT Nome FROM Clientes WHERE Codig' +
        'o = PD.Cliente)'
      
        '      ,Importador_Ender = (SELECT ISNULL(Rua, '#39#39')+ISNULL('#39', N'#186' '#39 +
        '+Rua_Numero, '#39#39')+'#39' - '#39'+Bairro FROM Clientes WHERE Codigo = PD.Cl' +
        'iente)'
      
        '      ,Importador_Cida  = (SELECT Municipio FROM Clientes WHERE ' +
        'Codigo = PD.Cliente)'
      
        '      ,Importador_Pais  = (SELECT Nome FROM Cybersoft_Cadastros.' +
        'dbo.Paises WHERE Codigo = PD.Pais)'
      
        '      ,Data_Extenso     = DateName(Month, PD.Proforma_Data) + '#39'-' +
        #39' + convert(varchar(02),DatePart(day, PD.Proforma_Data)) + '#39'-'#39' +' +
        ' convert(varchar(04),DatePart(Year, PD.Proforma_Data)) + '#39'.'#39' '
      '      ,PD.INCOTERMS'
      
        '      ,Pais_OrigemNome  = (SELECT Nome_Ingles FROM Cybersoft_Cad' +
        'astros.dbo.Paises WHERE Codigo = '#39'1058'#39')'
      
        '      ,Termos_Pagamento = (SELECT Descricao FROM CondicaoCambial' +
        ' WHERE Codigo = Condicao_Pagamento)'
      
        '      ,Termos_Comerciais= (SELECT Termos_Comerciais FROM Condica' +
        'oCambial WHERE Codigo = Condicao_Pagamento)'
      
        '      ,Observacao       = (SELECT Observacao FROM CondicaoCambia' +
        'l WHERE Codigo = Condicao_Pagamento)'
      
        '      ,Shipment_Window  = UPPER(convert(varchar(02),DatePart(day' +
        ', PD.Navio_DataPrevista ))+'#39' '#39'+DateName(Month, Navio_DataPrevist' +
        'a)+'#39' '#39'+convert(varchar(04),DatePart(Year, Navio_DataPrevista))+'
      
        '                          '#39' TRHOUGH '#39'++ convert(varchar(02),Date' +
        'Part(day, Navio_DataChegada))+'#39' '#39'+DateName(Month, Navio_DataCheg' +
        'ada)+'#39' '#39'+convert(varchar(04),DatePart(Year, Navio_DataChegada)))'
      '      ,Peso_Liquido     = PD.Peso_Liquido'
      '      ,Peso_Bruto       = PD.Peso_Bruto'
      
        '      ,Moeda            = (SELECT Simbolo FROM Cybersoft_Cadastr' +
        'os.dbo.Moedas WHERE Codigo = PD.Moeda_FOB)'
      'FROM ProcessosDocumentos PD'
      'WHERE ISNULL(Proforma_Numero, '#39#39') <> '#39#39)
    FetchRows = 1
    Left = 214
    Top = 84
  end
  object dstProforma: TDataSource
    DataSet = tProforma
    Left = 212
    Top = 139
  end
  object tProformaItens: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'USE Cybersoft_grf_mATRIZ'
      'SELECT Codigo_Mercadoria'
      '      ,Quantidade'
      
        '      ,Quantidade_MT  = Quantidade * (SELECT Quantidade_Unidade ' +
        'FROM Produtos WHERE Codigo = Codigo_Mercadoria)'
      
        '      ,Quantidade_Uni = (SELECT Quantidade_Unidade FROM Produtos' +
        ' WHERE Codigo = Codigo_Mercadoria)'
      
        '      ,Quantidade_Vol = (SELECT Quantidade_Volumes FROM Produtos' +
        ' WHERE Codigo = Codigo_Mercadoria)'
      
        '      ,Unidade        = (SELECT Unidade_Origem  FROM Produtos WH' +
        'ERE Codigo = Codigo_Mercadoria)'
      
        '      ,Unidade_Vol    = (SELECT Unidade_ORigem FROM Produtos WHE' +
        'RE Codigo = Codigo_Mercadoria)'
      '      ,Valor_Unitario'
      
        '      ,Descricao = (SELECT Replace(Descricao, '#39'<{'#39'+CAST(Codigo_M' +
        'ercadoria AS VARCHAR(10))+'#39'}>'#39', '#39' '#39') FROM Produtos WHERE Codigo ' +
        '= Codigo_Mercadoria)'
      
        '      ,Valor_Total = Valor_Unitario * (Quantidade * (SELECT Quan' +
        'tidade_Unidade FROM Produtos WHERE Codigo = Codigo_Mercadoria))'
      'FROM ProformaItens')
    FetchRows = 1
    Left = 289
    Top = 84
  end
  object dstProformaItens: TDataSource
    DataSet = tProformaItens
    Left = 290
    Top = 139
  end
end
