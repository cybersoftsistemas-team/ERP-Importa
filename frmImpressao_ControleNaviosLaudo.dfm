object Impressao_ControleNaviosLaudo: TImpressao_ControleNaviosLaudo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Impressao_ControleNaviosLaudo'
  ClientHeight = 281
  ClientWidth = 539
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
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
    Width = 539
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitLeft = -8
    ExplicitTop = 8
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 255
    Height = 21
    Caption = 'IMPRESS'#195'O - CONTROLE DE NAVIOS'
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
    Width = 122
    Height = 18
    Caption = 'Hist'#243'rico de Laudos'
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
    Top = 251
    Width = 539
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      539
      30)
    object bSair: TButton
      Left = 472
      Top = 1
      Width = 66
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bImprimir: TButton
      Left = 406
      Top = 1
      Width = 66
      Height = 28
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '&Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      OnClick = bImprimirClick
    end
  end
  object cNavio: TRxDBLookupCombo
    Left = 83
    Top = 77
    Width = 436
    Height = 21
    DropDownCount = 8
    DisplayAllFields = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Ordem'
    LookupDisplay = 'Navio;Ordem;Status'
    LookupSource = dstNavios
    ParentFont = False
    TabOrder = 1
  end
  object StaticText7: TStaticText
    Left = 20
    Top = 77
    Width = 62
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Navio'
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
  object cStatus: TRadioGroup
    AlignWithMargins = True
    Left = 20
    Top = 114
    Width = 125
    Height = 110
    Margins.Top = 1
    Caption = 'Status'
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Ativo'
      'Em Andamento'
      'Encerrado')
    TabOrder = 3
  end
  object cSaida: TRadioGroup
    AlignWithMargins = True
    Left = 166
    Top = 114
    Width = 110
    Height = 67
    Margins.Top = 1
    Caption = 'Sa'#237'da'
    ItemIndex = 1
    Items.Strings = (
      'Gerar PDF'
      'Gerar EXCEL')
    TabOrder = 4
  end
  object tNavios: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'select Ordem, Navio, Status from ControleNavios')
    Left = 202
    Top = 114
    object tNaviosOrdem: TIntegerField
      DisplayWidth = 4
      FieldName = 'Ordem'
    end
    object tNaviosNavio: TStringField
      DisplayWidth = 25
      FieldName = 'Navio'
      Size = 30
    end
    object tNaviosStatus: TStringField
      FieldName = 'Status'
      Size = 15
    end
  end
  object dstNavios: TDataSource
    DataSet = tNavios
    Left = 201
    Top = 159
  end
  object tLaudo: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      
        'select Navio = (select cn.Navio from Cybersoft_Cadastros.dbo.Con' +
        'troleNavios cn where cn.Ordem = cnl.Navio)'
      '      ,cnb.BL'
      '      ,cnl.Laudo'
      '      ,Porto = cnb.Porto'
      
        '      ,Armazem = (select frn.Nome from Fornecedores frn where fr' +
        'n.Codigo = cnb.Armazem)'
      
        '      ,Nota = (select nin.Nota from NotasItensNavios nin where n' +
        'in.Navio = cnl.Navio and nin.Saida_Entrada = 0 and nin.DI = cnb.' +
        'DI)'
      
        '      ,DI = (select pd.Numero_Declaracao from ProcessosDocumento' +
        's pd where pd.Navio_Ordem = cnl.Navio and pd.Numero_BL = cnb.BL)'
      '      ,cnl.Data_Atracacao'
      '      ,cnl.Data_Operacao'
      '      ,cnl.Quantidade_M320'
      '      ,cnl.Quantidade_LT20'
      '      ,cnl.Quantidade_RecebidaM320'
      '      ,cnl.Quantidade_RecebidaLT20'
      '      ,cnl.Variacao_DesLT'
      '      ,cnl.Variacao_DesPerc'
      '      ,Obs = cnl.Observacao'
      
        '      ,Status = (select cn.Status from Cybersoft_Cadastros.dbo.C' +
        'ontroleNavios cn where cn.Ordem = cnl.Navio)'
      'from ControleNaviosLaudo cnl'
      'inner Join ControleNaviosBL cnb on cnb.Navio = cnl.Navio'
      'where cnl.Registro is not null'
      'order by Navio, Laudo')
    Active = True
    Left = 264
    Top = 116
  end
  object rLaudo: TppReport
    AutoStop = False
    DataPipeline = pBL
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Historico de BL'#39's'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 2540
    PrinterSetup.mmMarginRight = 2540
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Sistemas_XE\Faturamento\Codigo_Fonte\Relatorios\Controle_Navi' +
      'osBL.rtm'
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
    PreviewFormSettings.PageBorder.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
    PreviewFormSettings.PageBorder.Visible = True
    PreviewFormSettings.PageBorder.Weight = 0.748799979686737100
    PreviewFormSettings.PageBorder.Shadow = True
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.PageDisplay = pdContinuous
    PreviewFormSettings.WindowState = wsMaximized
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
    Left = 397
    Top = 65
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pBL'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 22860
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'NAVIO'
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 0
        mmTop = 18362
        mmWidth = 28652
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'ARMAZ'#201'M'
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 69024
        mmTop = 18362
        mmWidth = 56053
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'DATA CARREG.'
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 125448
        mmTop = 18362
        mmWidth = 13635
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'TON VAC'
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 139679
        mmTop = 18362
        mmWidth = 16484
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'TON AIR'
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 156743
        mmTop = 18362
        mmWidth = 16484
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label102'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'QTDE M'#179' (15'#176') '
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 173744
        mmTop = 18362
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'QTDE M'#179' (20'#176') '
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 190674
        mmTop = 18362
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'QTDE LT'
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 207607
        mmTop = 18362
        mmWidth = 16404
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'OBSERVA'#199#195'O'
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 224439
        mmTop = 18362
        mmWidth = 51933
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label16'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'STATUS'
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 276920
        mmTop = 18362
        mmWidth = 14818
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText17'
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
        mmLeft = 115
        mmTop = 3169
        mmWidth = 291027
        BandType = 0
        LayerName = Foreground
      end
      object lTitulo: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lTitulo'
        AutoSize = False
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'Hist'#243'rico de Laudos'
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
        mmLeft = 115
        mmTop = 10048
        mmWidth = 291027
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
        mmHeight = 16317
        mmLeft = 1149
        mmTop = 968
        mmWidth = 21796
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'BL N'#186
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 50242
        mmTop = 18256
        mmWidth = 18392
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.BorderPositions = [bpLeft, bpTop, bpRight, bpBottom]
        Border.mmPadding = 0
        Caption = 'LAUDO'
        Color = 8542039
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        VerticalAlignment = avCenter
        mmHeight = 4233
        mmLeft = 28914
        mmTop = 18256
        mmWidth = 20801
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
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Navio'
        DataPipeline = pBL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pBL'
        mmHeight = 3090
        mmLeft = 0
        mmTop = 0
        mmWidth = 28652
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'Armazem'
        DataPipeline = pBL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pBL'
        mmHeight = 3090
        mmLeft = 69024
        mmTop = 0
        mmWidth = 56053
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'Data_Carregamento'
        DataPipeline = pBL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pBL'
        mmHeight = 3090
        mmLeft = 125448
        mmTop = 0
        mmWidth = 13635
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'Ton_Vac'
        DataPipeline = pBL
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pBL'
        mmHeight = 3090
        mmLeft = 139607
        mmTop = 0
        mmWidth = 16484
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'Ton_Air'
        DataPipeline = pBL
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pBL'
        mmHeight = 3090
        mmLeft = 156713
        mmTop = 0
        mmWidth = 16484
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText102'
        Border.mmPadding = 0
        DataField = 'Qtde_M315'
        DataPipeline = pBL
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pBL'
        mmHeight = 3090
        mmLeft = 173744
        mmTop = 0
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'Quantidade_M320'
        DataPipeline = pBL
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pBL'
        mmHeight = 3090
        mmLeft = 190673
        mmTop = -14
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'Quantidade_LT20'
        DataPipeline = pBL
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pBL'
        mmHeight = 3090
        mmLeft = 207607
        mmTop = 75
        mmWidth = 16404
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'Obs'
        DataPipeline = pBL
        DisplayFormat = ',##0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pBL'
        mmHeight = 3090
        mmLeft = 224439
        mmTop = 75
        mmWidth = 51933
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText16'
        Border.mmPadding = 0
        DataField = 'Status'
        DataPipeline = pBL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pBL'
        mmHeight = 3175
        mmLeft = 276920
        mmTop = 0
        mmWidth = 14818
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'BL'
        DataPipeline = pBL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pBL'
        mmHeight = 3175
        mmLeft = 50266
        mmTop = 0
        mmWidth = 18315
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'Laudo'
        DataPipeline = pBL
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pBL'
        mmHeight = 3175
        mmLeft = 29104
        mmTop = 115
        mmWidth = 20536
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label103'
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
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 529
        mmWidth = 47625
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
        mmLeft = 114038
        mmTop = 529
        mmWidth = 47096
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
        mmLeft = 161398
        mmTop = 529
        mmWidth = 26194
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
        mmLeft = 274205
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
        Weight = 0.750000000000000000
        mmHeight = 1153
        mmLeft = 0
        mmTop = 0
        mmWidth = 291951
        BandType = 8
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 272351
        mmTop = 265
        mmWidth = 1852
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
  object pBL: TppDBPipeline
    DataSource = dstLaudo
    CloseDataSource = True
    UserName = 'pLaudo'
    Left = 396
    Top = 118
    object pBLppField1: TppField
      FieldAlias = 'Navio'
      FieldName = 'Navio'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object pBLppField2: TppField
      FieldAlias = 'BL'
      FieldName = 'BL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 1
    end
    object pBLppField3: TppField
      FieldAlias = 'Laudo'
      FieldName = 'Laudo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 2
    end
    object pBLppField4: TppField
      FieldAlias = 'Porto'
      FieldName = 'Porto'
      FieldLength = 30
      DisplayWidth = 30
      Position = 3
    end
    object pBLppField5: TppField
      FieldAlias = 'Armazem'
      FieldName = 'Armazem'
      FieldLength = 60
      DisplayWidth = 60
      Position = 4
    end
    object pBLppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota'
      FieldName = 'Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object pBLppField7: TppField
      FieldAlias = 'DI'
      FieldName = 'DI'
      FieldLength = 15
      DisplayWidth = 15
      Position = 6
    end
    object pBLppField8: TppField
      FieldAlias = 'Data_Atracacao'
      FieldName = 'Data_Atracacao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 7
    end
    object pBLppField9: TppField
      FieldAlias = 'Data_Operacao'
      FieldName = 'Data_Operacao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 8
    end
    object pBLppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade_M320'
      FieldName = 'Quantidade_M320'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object pBLppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade_LT20'
      FieldName = 'Quantidade_LT20'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object pBLppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade_RecebidaM320'
      FieldName = 'Quantidade_RecebidaM320'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object pBLppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'Quantidade_RecebidaLT20'
      FieldName = 'Quantidade_RecebidaLT20'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object pBLppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'Variacao_DesLT'
      FieldName = 'Variacao_DesLT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object pBLppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'Variacao_DesPerc'
      FieldName = 'Variacao_DesPerc'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object pBLppField16: TppField
      FieldAlias = 'Obs'
      FieldName = 'Obs'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 15
      Searchable = False
      Sortable = False
    end
    object pBLppField17: TppField
      FieldAlias = 'Status'
      FieldName = 'Status'
      FieldLength = 15
      DisplayWidth = 15
      Position = 16
    end
  end
  object dstLaudo: TDataSource
    DataSet = tLaudo
    Left = 264
    Top = 166
  end
  object pEmpresas: TppDBPipeline
    DataSource = dstEmpresas
    CloseDataSource = True
    UserName = 'pEmpresas'
    Left = 399
    Top = 165
  end
  object tEmpresas: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'select Ordem, Navio, Status from ControleNavios')
    Left = 330
    Top = 116
  end
  object dstEmpresas: TDataSource
    DataSet = tEmpresas
    Left = 331
    Top = 167
  end
end
