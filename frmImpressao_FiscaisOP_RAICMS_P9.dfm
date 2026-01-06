object Impressao_FiscaisOP_RAICMS_P9: TImpressao_FiscaisOP_RAICMS_P9
  Left = 799
  Top = 366
  BorderStyle = bsDialog
  Caption = 'Impressao_FiscaisOP_RAICMS_P9'
  ClientHeight = 290
  ClientWidth = 494
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
    Width = 494
    Height = 37
    Align = alTop
    Stretch = True
    ExplicitWidth = 332
  end
  object RxLabel1: TRxLabel
    Left = 4
    Top = 1
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
  object RxLabel2: TRxLabel
    Left = 4
    Top = 16
    Width = 282
    Height = 18
    Caption = 'Livro Registro de Apura'#231#227'o do ICMS (Mod.P9)'
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
    Top = 261
    Width = 494
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      494
      29)
    object bSair: TButton
      Left = 427
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
      Left = 361
      Top = 1
      Width = 66
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
  object StaticText2: TStaticText
    Left = 19
    Top = 53
    Width = 87
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Per'#237'odo'
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
  object cMes: TComboBox
    Left = 108
    Top = 53
    Width = 127
    Height = 21
    DropDownCount = 12
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemIndex = 0
    ParentFont = False
    TabOrder = 2
    Text = 'Janeiro'
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
  object cAno: TRxSpinEdit
    Left = 237
    Top = 53
    Width = 62
    Height = 21
    Decimal = 0
    Value = 2008.000000000000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object StaticText4: TStaticText
    Left = 19
    Top = 76
    Width = 87
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
    TabOrder = 4
    Transparent = False
    StyleElements = []
  end
  object cOrigem: TRadioGroup
    Left = 19
    Top = 124
    Width = 227
    Height = 112
    Caption = 'Origem da Mercadoria'
    ItemIndex = 3
    Items.Strings = (
      'Importado'
      'Importado Adquirido Mercado Interno'
      'Nacional'
      'Todos')
    TabOrder = 5
  end
  object cIncent: TRxDBLookupCombo
    Left = 108
    Top = 76
    Width = 191
    Height = 21
    DropDownCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'Nome'
    LookupSource = Dados.dsIncentivosFiscais
    ParentFont = False
    TabOrder = 6
  end
  object tEntradas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT 0 AS SE, '
      '       Natureza_Codigo, '
      '       SUM(Valor_TotalNota) as Valor_Contabil, '
      '       SUM(BCICMS) AS Valor_BCICMS, '
      '       SUM(Valor_ICMS) AS Valor_ICMS,'
      '       0 AS Valor_Isentas, '
      '       SUM(Valor_TotalNota-BCICMS) AS Valor_Outras '
      'FROM NotasFiscais'
      
        'WHERE (Saida_Entrada = 0) AND (Cancelada <> 1) AND (MONTH(Data_E' +
        'missao) = 7 AND YEAR(Data_Emissao) = 2011)'
      'GROUP BY Natureza_Codigo'
      ''
      'UNION ALL'
      'SELECT 0,'
      '       Natureza_Codigo, '
      '       SUM(Valor_TotalNota), '
      '       SUM(Valor_BCICMSOper), '
      '       SUM(Valor_ICMSOper), '
      '       SUM(Valor_IsentasICMS),  '
      '       SUM(Valor_OutrasICMS)'
      'FROM NotasTerceiros'
      'WHERE (MONTH(Data_Entrada) = 7 AND YEAR(Data_Entrada) = 2011)'
      'GROUP BY Natureza_Codigo'
      ''
      'UNION ALL'
      'SELECT 1,'
      '       Natureza_Codigo, '
      '       SUM(Valor_TotalNota), '
      '       SUM(BCICMS), '
      '       SUM(Valor_ICMS),'
      '       CAST(0 AS money), '
      '       SUM(Valor_TotalProdutos)'
      'FROM NotasFiscais'
      
        'WHERE (Saida_Entrada = 1) AND (Cancelada <> 1) AND (MONTH(Data_E' +
        'missao) = 7 AND YEAR(Data_Emissao) = 2011)'
      'GROUP BY Natureza_Codigo'
      'ORDER BY Natureza_Codigo')
    FetchRows = 1
    Active = True
    Left = 42
    Top = 169
    object tEntradasNatureza_Codigo: TStringField
      FieldName = 'Natureza_Codigo'
      Origin = '.'
      EditMask = '#.###;0; '
      Size = 4
    end
    object tEntradasValor_Contabil: TCurrencyField
      FieldName = 'Valor_Contabil'
      Origin = '.'
      ReadOnly = True
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object tEntradasValor_BCICMS: TCurrencyField
      FieldName = 'Valor_BCICMS'
      Origin = '.'
      ReadOnly = True
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object tEntradasValor_ICMS: TCurrencyField
      FieldName = 'Valor_ICMS'
      Origin = '.'
      ReadOnly = True
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object tEntradasValor_Isentas: TCurrencyField
      FieldName = 'Valor_Isentas'
      Origin = '.'
      ReadOnly = True
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object tEntradasValor_Outras: TCurrencyField
      FieldName = 'Valor_Outras'
      Origin = '.'
      ReadOnly = True
      DisplayFormat = '###,###,###,##0.00'
      EditFormat = '###,###,###,##0.00'
    end
    object tEntradasSE: TIntegerField
      FieldName = 'SE'
      Origin = '.'
      ReadOnly = True
    end
  end
  object tSaidas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      
        'SELECT Natureza_Codigo, SUM(Valor_TotalNota) as Valor_Contabil, ' +
        'SUM(BCICMS), SUM(Valor_ICMS)'
      'FROM NotasFiscais'
      
        'WHERE (Saida_Entrada = 0) AND (Valor_ICMS <> 0) AND (Cancelada =' +
        ' 0)'
      'GROUP BY Natureza_Codigo'
      'UNION '
      
        'SELECT Natureza_Codigo, SUM(Valor_TotalNota), SUM(Valor_BCICMSOp' +
        'er), SUM(Valor_ICMSOper)'
      'FROM NotasTerceiros'
      'WHERE (Valor_ICMSOper <> 0)'
      'GROUP BY Natureza_Codigo'
      'ORDER BY Natureza_Codigo'
      '')
    FetchRows = 1
    Left = 100
    Top = 169
  end
  object tEstados: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      
        'SELECT SUM(Valor_TotalNota) AS Valor_Contabil, SUM(BCICMS) AS Va' +
        'lor_BCICMS, SUM(Valor_ICMS) AS Valor_ICMS,'
      
        '       0 AS Valor_Isentas, SUM(Valor_TotalNota-BCICMS) AS Valor_' +
        'Outras'
      'FROM NotasFiscais'
      
        'WHERE (Saida_Entrada = 0) AND (Cancelada = 0) AND (Estado = '#39'ES'#39 +
        ')'
      ' '
      'UNION'
      
        'SELECT SUM(Valor_TotalNota), SUM(Valor_BCICMSOper), SUM(Valor_IC' +
        'MSOper), SUM(Valor_IsentasICMS), SUM(Valor_OutrasICMS)'
      'FROM NotasTerceiros'
      'WHERE (Estado = '#39'ES'#39')'
      ''
      '')
    FetchRows = 1
    Left = 71
    Top = 169
  end
  object tOutros: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      '')
    FetchRows = 1
    Left = 129
    Top = 169
  end
  object tIsentas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      '')
    FetchRows = 1
    Left = 158
    Top = 169
  end
  object tCIAP: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      '')
    FetchRows = 1
    Left = 187
    Top = 169
  end
  object tNotas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      '')
    FetchRows = 1
    Left = 215
    Top = 169
  end
  object tICMS: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      '')
    FetchRows = 1
    Left = 243
    Top = 169
  end
  object rApuracaoICMS: TppReport
    AutoStop = False
    DataPipeline = pEntradas
    NoDataBehaviors = [ndBlankReport]
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Registro de Apura'#231#227'o de ICMS'
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
      'C:\Sistemas\Faturamento\Codigo Fonte\Relatorios\LivroApuracao_IC' +
      'MS.rtm'
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
    Left = 208
    Top = 65535
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pEntradas'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 19579
      mmPrintPosition = 0
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        Pen.Width = 0
        mmHeight = 5027
        mmLeft = 265
        mmTop = 0
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'REGISTRO DE APURA'#199#195'O DE ICMS'
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        mmHeight = 3969
        mmLeft = 794
        mmTop = 529
        mmWidth = 196321
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape2'
        Pen.Width = 0
        mmHeight = 13494
        mmLeft = 265
        mmTop = 4763
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'FIRMA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3471
        mmLeft = 1058
        mmTop = 5291
        mmWidth = 36248
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'INSCRI'#199#195'O ESTADUAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3471
        mmLeft = 1058
        mmTop = 9525
        mmWidth = 36248
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'FOLHA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3471
        mmLeft = 1058
        mmTop = 13758
        mmWidth = 36248
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3471
        mmLeft = 91546
        mmTop = 9525
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PER'#205'ODO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3471
        mmLeft = 91546
        mmTop = 13758
        mmWidth = 15610
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = oEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'oEmpresa'
        mmHeight = 3440
        mmLeft = 38100
        mmTop = 5292
        mmWidth = 156898
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'IE'
        DataPipeline = oEmpresa
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'oEmpresa'
        mmHeight = 3440
        mmLeft = 38100
        mmTop = 9525
        mmWidth = 794
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        AutoSize = True
        Border.mmPadding = 0
        DataField = 'CNPJ'
        DataPipeline = oEmpresa
        DisplayFormat = '99.999.999/9999-99;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'oEmpresa'
        mmHeight = 3440
        mmLeft = 107686
        mmTop = 9525
        mmWidth = 793
        BandType = 0
        LayerName = Foreground1
      end
      object lPeriodo: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lPeriodo'
        Border.mmPadding = 0
        Caption = 'lPeriodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3440
        mmLeft = 107686
        mmTop = 13758
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPageNo
        DisplayFormat = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 38100
        mmTop = 13758
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      AfterPrint = ppDetailBand1AfterPrint
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Natureza_Codigo'
        DataPipeline = pEntradas
        DisplayFormat = '#.###;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pEntradas'
        mmHeight = 3440
        mmLeft = 17727
        mmTop = 0
        mmWidth = 15875
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Valor_Contabil'
        DataPipeline = pEntradas
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pEntradas'
        mmHeight = 3440
        mmLeft = 34396
        mmTop = 0
        mmWidth = 32015
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Valor_BCICMS'
        DataPipeline = pEntradas
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pEntradas'
        mmHeight = 3440
        mmLeft = 67998
        mmTop = 0
        mmWidth = 30692
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Valor_ICMS'
        DataPipeline = pEntradas
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pEntradas'
        mmHeight = 3440
        mmLeft = 100277
        mmTop = 0
        mmWidth = 30956
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Valor_Isentas'
        DataPipeline = pEntradas
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pEntradas'
        mmHeight = 3440
        mmLeft = 132821
        mmTop = 0
        mmWidth = 30956
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        BlankWhenZero = True
        Border.mmPadding = 0
        DataField = 'Valor_Outras'
        DataPipeline = pEntradas
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pEntradas'
        mmHeight = 3440
        mmLeft = 164836
        mmTop = 0
        mmWidth = 31485
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        mmHeight = 3440
        mmLeft = 33602
        mmTop = 0
        mmWidth = 2381
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        mmHeight = 3440
        mmLeft = 17198
        mmTop = 0
        mmWidth = 2117
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        mmHeight = 3440
        mmLeft = 265
        mmTop = 0
        mmWidth = 265
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        mmHeight = 3440
        mmLeft = 67204
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        StretchWithParent = True
        mmHeight = 3440
        mmLeft = 99484
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        mmHeight = 3440
        mmLeft = 132027
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpLeft
        mmHeight = 3440
        mmLeft = 164571
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line8'
        Border.mmPadding = 0
        Pen.Width = 0
        ParentHeight = True
        Position = lpRight
        mmHeight = 3440
        mmLeft = 194734
        mmTop = 0
        mmWidth = 2910
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLine159: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line40'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1323
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
        BandType = 8
        LayerName = Foreground1
      end
      object ppLabel122: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label57'
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
        mmLeft = 0
        mmTop = 529
        mmWidth = 45773
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 178859
        mmTop = 529
        mmWidth = 18785
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable5: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable3'
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
        mmLeft = 54504
        mmTop = 529
        mmWidth = 61119
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable6: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable4'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 116417
        mmTop = 529
        mmWidth = 26194
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine160: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line42'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3175
        mmLeft = 46831
        mmTop = 265
        mmWidth = 6615
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine161: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line43'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3175
        mmLeft = 177271
        mmTop = 265
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        PrintBehavior = pbSection
        ResetPageNo = False
        TraverseAllData = False
        DataPipelineName = 'pApuracao'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 7
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = pApuracao
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Registro de Apura'#231#227'o de ICMS'
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
          DataPipelineName = 'pApuracao'
          object ppDetailBand2: TppDetailBand
            BeforePrint = ppDetailBand2BeforePrint
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 210344
            mmPrintPosition = 0
            object ppShape42: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape42'
              Brush.Color = clSilver
              Brush.Style = bsDiagCross
              Pen.Mode = pmMask
              Pen.Width = 0
              mmHeight = 8467
              mmLeft = 132027
              mmTop = 77258
              mmWidth = 65352
              BandType = 4
              LayerName = Foreground
            end
            object ppShape41: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape41'
              Brush.Color = clSilver
              Brush.Style = bsDiagCross
              Pen.Mode = pmMask
              Pen.Width = 0
              mmHeight = 8466
              mmLeft = 132027
              mmTop = 46302
              mmWidth = 65352
              BandType = 4
              LayerName = Foreground
            end
            object ppShape43: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape43'
              Pen.Width = 0
              mmHeight = 23019
              mmLeft = 132027
              mmTop = 54504
              mmWidth = 65352
              BandType = 4
              LayerName = Foreground
            end
            object ppLine14: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line14'
              Border.mmPadding = 0
              Pen.Width = 0
              mmHeight = 2646
              mmLeft = 131498
              mmTop = 46302
              mmWidth = 65881
              BandType = 4
              LayerName = Foreground
            end
            object ppShape44: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape44'
              Pen.Width = 0
              mmHeight = 15610
              mmLeft = 132027
              mmTop = 85461
              mmWidth = 65352
              BandType = 4
              LayerName = Foreground
            end
            object ppShape27: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape27'
              Pen.Width = 0
              mmHeight = 4233
              mmLeft = 164571
              mmTop = 23813
              mmWidth = 32808
              BandType = 4
              LayerName = Foreground
            end
            object ppShape26: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape26'
              Pen.Width = 0
              mmHeight = 4233
              mmLeft = 132027
              mmTop = 23813
              mmWidth = 32808
              BandType = 4
              LayerName = Foreground
            end
            object ppShape25: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape25'
              Pen.Width = 0
              mmHeight = 4498
              mmLeft = 132027
              mmTop = 19579
              mmWidth = 65352
              BandType = 4
              LayerName = Foreground
            end
            object ppShape24: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape24'
              Pen.Width = 0
              mmHeight = 8467
              mmLeft = 0
              mmTop = 19579
              mmWidth = 132292
              BandType = 4
              LayerName = Foreground
            end
            object ppShape28: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape28'
              Pen.Width = 0
              mmHeight = 31485
              mmLeft = 0
              mmTop = 46302
              mmWidth = 132292
              BandType = 4
              LayerName = Foreground
            end
            object ppShape3: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape3'
              Pen.Width = 0
              mmHeight = 5027
              mmLeft = 0
              mmTop = 0
              mmWidth = 197644
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel14: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label14'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'RESUMO DA APURA'#199#195'O DO IMPOSTO'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 10
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 3969
              mmLeft = 529
              mmTop = 529
              mmWidth = 196586
              BandType = 4
              LayerName = Foreground
            end
            object ppShape23: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape23'
              Pen.Width = 0
              mmHeight = 13494
              mmLeft = 0
              mmTop = 4763
              mmWidth = 197644
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel15: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label15'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'FIRMA:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 3175
              mmTop = 5292
              mmWidth = 36248
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel17: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label17'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'INSCRI'#199#195'O ESTADUAL:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 3175
              mmTop = 9525
              mmWidth = 36248
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel21: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label21'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'FOLHA:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 3175
              mmTop = 13758
              mmWidth = 36248
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel22: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label22'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'CNPJ:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 93663
              mmTop = 9525
              mmWidth = 15610
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel23: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label23'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'PER'#205'ODO:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 93663
              mmTop = 13758
              mmWidth = 15610
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText10: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText10'
              Border.mmPadding = 0
              DataField = 'Razao_Social'
              DataPipeline = oEmpresa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'oEmpresa'
              mmHeight = 3440
              mmLeft = 40217
              mmTop = 5292
              mmWidth = 156898
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText11: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText11'
              AutoSize = True
              Border.mmPadding = 0
              DataField = 'IE'
              DataPipeline = oEmpresa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'oEmpresa'
              mmHeight = 3471
              mmLeft = 40217
              mmTop = 9525
              mmWidth = 12954
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText12: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText12'
              AutoSize = True
              Border.mmPadding = 0
              DataField = 'CNPJ'
              DataPipeline = oEmpresa
              DisplayFormat = '99.999.999/9999-99;0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'oEmpresa'
              mmHeight = 3471
              mmLeft = 109802
              mmTop = 9525
              mmWidth = 23791
              BandType = 4
              LayerName = Foreground
            end
            object lPeriodo2: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'lPeriodo1'
              Border.mmPadding = 0
              Caption = 'lPeriodo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 109802
              mmTop = 13758
              mmWidth = 18521
              BandType = 4
              LayerName = Foreground
            end
            object ppSystemVariable2: TppSystemVariable
              DesignLayer = ppDesignLayer1
              UserName = 'SystemVariable2'
              Border.mmPadding = 0
              VarType = vtPageNo
              DisplayFormat = '000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 40217
              mmTop = 13758
              mmWidth = 8996
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel25: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label25'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'D'#201'BITO DO IMPOSTO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3528
              mmLeft = 794
              mmTop = 22225
              mmWidth = 130969
              BandType = 4
              LayerName = Foreground
            end
            object ppLine10: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line10'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpRight
              mmHeight = 19315
              mmLeft = 194205
              mmTop = 26988
              mmWidth = 3175
              BandType = 4
              LayerName = Foreground
            end
            object ppLine11: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line101'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpRight
              mmHeight = 18785
              mmLeft = 161661
              mmTop = 27516
              mmWidth = 3175
              BandType = 4
              LayerName = Foreground
            end
            object ppLine12: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line12'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpRight
              mmHeight = 18256
              mmLeft = 129117
              mmTop = 28046
              mmWidth = 3175
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel26: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label26'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'VALORES'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3528
              mmLeft = 132557
              mmTop = 20108
              mmWidth = 64294
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel27: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label27'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'COLUNA AUXILIAR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3528
              mmLeft = 132558
              mmTop = 24077
              mmWidth = 31750
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel28: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label28'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'SOMA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3528
              mmLeft = 164836
              mmTop = 24077
              mmWidth = 31750
              BandType = 4
              LayerName = Foreground
            end
            object ppLine13: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line13'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 18256
              mmLeft = 0
              mmTop = 28046
              mmWidth = 3175
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel29: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label29'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '01 - POR SA'#205'DAS/PRESTA'#199#213'ES COM D'#201'BITO DO IMPOSTO. '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 795
              mmTop = 28311
              mmWidth = 130440
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel30: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label30'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '02 - OUTROS D'#201'BITOS    '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 795
              mmTop = 32014
              mmWidth = 130440
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel31: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label31'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '03 - ESTORNO DE CR'#201'DITOS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 795
              mmTop = 35720
              mmWidth = 130440
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel32: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label32'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '04 - SUBTOTAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 795
              mmTop = 39423
              mmWidth = 130439
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel33: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label33'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'CR'#201'DITO DO IMPOSTO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3528
              mmLeft = 794
              mmTop = 48683
              mmWidth = 130969
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel34: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label34'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '05 - POR ENTRADAS/AQUISI'#199#213'ES COM CR'#201'DITO DO IMPOSTO          '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 795
              mmTop = 55033
              mmWidth = 130440
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel35: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label301'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '06 - OUTROS CREDITOS    '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 795
              mmTop = 58738
              mmWidth = 130440
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel36: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label36'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '07 - ESTORNO DE D'#201'BITO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 795
              mmTop = 62442
              mmWidth = 130440
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel37: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label37'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '08 - SUBTOTAL '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 795
              mmTop = 66146
              mmWidth = 130440
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel38: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label38'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '09 - SALDO CREDOR DO PER'#205'ODO ANTERIOR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 794
              mmTop = 69850
              mmWidth = 130440
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel39: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label39'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '10 - TOTAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 794
              mmTop = 73554
              mmWidth = 130440
              BandType = 4
              LayerName = Foreground
            end
            object ppShape29: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape29'
              Pen.Width = 0
              mmHeight = 23813
              mmLeft = 0
              mmTop = 77258
              mmWidth = 132292
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel24: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label24'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'APURA'#199#195'O DO SALDO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3528
              mmLeft = 794
              mmTop = 79640
              mmWidth = 130969
              BandType = 4
              LayerName = Foreground
            end
            object ppLine15: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line15'
              Border.mmPadding = 0
              Pen.Width = 0
              mmHeight = 2646
              mmLeft = 131234
              mmTop = 77258
              mmWidth = 65881
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel40: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label40'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '11 - SALDO DEVEDOR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 794
              mmTop = 85990
              mmWidth = 130440
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel41: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label41'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '12 - DEDU'#199#213'ES'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 794
              mmTop = 89694
              mmWidth = 130440
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel42: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label42'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '13 - IMPOSTO A RECOLHER'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 795
              mmTop = 93398
              mmWidth = 130440
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel43: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label43'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '14 - SALDO CREDOR A TRANSPORTA P/O PER'#205'ODO SEGUINTE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 3440
              mmLeft = 794
              mmTop = 97102
              mmWidth = 130440
              BandType = 4
              LayerName = Foreground
            end
            object ppLine16: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line16'
              Border.mmPadding = 0
              Pen.Width = 0
              mmHeight = 2646
              mmLeft = 0
              mmTop = 54504
              mmWidth = 197380
              BandType = 4
              LayerName = Foreground
            end
            object ppLine17: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line17'
              Border.mmPadding = 0
              Pen.Width = 0
              mmHeight = 2646
              mmLeft = 0
              mmTop = 85461
              mmWidth = 197380
              BandType = 4
              LayerName = Foreground
            end
            object ppShape30: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape30'
              Pen.Width = 0
              mmHeight = 5556
              mmLeft = 0
              mmTop = 100806
              mmWidth = 197380
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel44: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label44'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'INFORMA'#199#213'ES COMPLEMENTARES'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3440
              mmLeft = 529
              mmTop = 101865
              mmWidth = 196321
              BandType = 4
              LayerName = Foreground
            end
            object ppShape31: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape301'
              Pen.Width = 0
              mmHeight = 5556
              mmLeft = 0
              mmTop = 106098
              mmWidth = 128588
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel45: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label45'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'GUIAS DE RECOLHIMENTO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3528
              mmLeft = 1058
              mmTop = 107156
              mmWidth = 126471
              BandType = 4
              LayerName = Foreground
            end
            object ppShape32: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape32'
              Pen.Width = 0
              mmHeight = 5556
              mmLeft = 0
              mmTop = 111390
              mmWidth = 25665
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel46: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label46'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'N'#218'MERO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3528
              mmLeft = 1058
              mmTop = 112448
              mmWidth = 23548
              BandType = 4
              LayerName = Foreground
            end
            object ppShape33: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape33'
              Pen.Width = 0
              mmHeight = 5556
              mmLeft = 25400
              mmTop = 111390
              mmWidth = 17992
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel47: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label47'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'DATA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3528
              mmLeft = 26458
              mmTop = 112448
              mmWidth = 15875
              BandType = 4
              LayerName = Foreground
            end
            object ppShape34: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape34'
              Pen.Width = 0
              mmHeight = 5556
              mmLeft = 43127
              mmTop = 111390
              mmWidth = 28046
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel48: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label48'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'VALOR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3528
              mmLeft = 44186
              mmTop = 112448
              mmWidth = 25929
              BandType = 4
              LayerName = Foreground
            end
            object ppShape35: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape35'
              Pen.Width = 0
              mmHeight = 5556
              mmLeft = 70908
              mmTop = 111390
              mmWidth = 57679
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel49: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label49'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'ORG'#195'O ARRECADADOR'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3528
              mmLeft = 71967
              mmTop = 112448
              mmWidth = 55563
              BandType = 4
              LayerName = Foreground
            end
            object ppShape36: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape36'
              Pen.Width = 0
              mmHeight = 5556
              mmLeft = 128323
              mmTop = 106098
              mmWidth = 69056
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel50: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label50'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'GUIAS DE INFORMA'#199#195'O'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3528
              mmLeft = 129382
              mmTop = 107156
              mmWidth = 66940
              BandType = 4
              LayerName = Foreground
            end
            object ppShape37: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape37'
              Pen.Width = 0
              mmHeight = 5556
              mmLeft = 128323
              mmTop = 111390
              mmWidth = 25665
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel51: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label51'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'DATA ENTREGA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3528
              mmLeft = 129382
              mmTop = 112448
              mmWidth = 23548
              BandType = 4
              LayerName = Foreground
            end
            object ppShape38: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape38'
              Pen.Width = 0
              mmHeight = 5556
              mmLeft = 153723
              mmTop = 111390
              mmWidth = 43656
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel52: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label52'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'LOCAL ENTREGA'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3528
              mmLeft = 154782
              mmTop = 112448
              mmWidth = 41540
              BandType = 4
              LayerName = Foreground
            end
            object ppShape39: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape302'
              Pen.Width = 0
              mmHeight = 5556
              mmLeft = 0
              mmTop = 123825
              mmWidth = 197380
              BandType = 4
              LayerName = Foreground
            end
            object ppLabel53: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label53'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'OBSERVA'#199#213'ES'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3440
              mmLeft = 1058
              mmTop = 124884
              mmWidth = 196321
              BandType = 4
              LayerName = Foreground
            end
            object ppLine18: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line18'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 7408
              mmLeft = 0
              mmTop = 116681
              mmWidth = 3175
              BandType = 4
              LayerName = Foreground
            end
            object ppLine19: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line19'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 7408
              mmLeft = 25400
              mmTop = 116417
              mmWidth = 3175
              BandType = 4
              LayerName = Foreground
            end
            object ppLine20: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line20'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 7408
              mmLeft = 43127
              mmTop = 116417
              mmWidth = 3175
              BandType = 4
              LayerName = Foreground
            end
            object ppLine21: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line21'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 7408
              mmLeft = 70908
              mmTop = 116681
              mmWidth = 3175
              BandType = 4
              LayerName = Foreground
            end
            object ppLine22: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line22'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 7408
              mmLeft = 128323
              mmTop = 116417
              mmWidth = 3175
              BandType = 4
              LayerName = Foreground
            end
            object ppLine23: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line23'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 7408
              mmLeft = 153723
              mmTop = 116417
              mmWidth = 3175
              BandType = 4
              LayerName = Foreground
            end
            object ppLine24: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line24'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpRight
              mmHeight = 12700
              mmLeft = 194205
              mmTop = 108744
              mmWidth = 3175
              BandType = 4
              LayerName = Foreground
            end
            object ppShape40: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape40'
              Pen.Width = 0
              mmHeight = 69056
              mmLeft = 0
              mmTop = 121444
              mmWidth = 197380
              BandType = 4
              LayerName = Foreground
            end
            object ppDBCalc1: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              DataField = 'Debito_Imposto'
              DataPipeline = pApuracao
              DisplayFormat = ',##0.00;-,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pApuracao'
              mmHeight = 3440
              mmLeft = 164836
              mmTop = 28311
              mmWidth = 31750
              BandType = 4
              LayerName = Foreground
            end
            object ppDBCalc2: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc2'
              Border.mmPadding = 0
              DataField = 'Outros_Debitos'
              DataPipeline = pApuracao
              DisplayFormat = ',##0.00;-,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pApuracao'
              mmHeight = 3440
              mmLeft = 132558
              mmTop = 32014
              mmWidth = 31750
              BandType = 4
              LayerName = Foreground
            end
            object ppDBCalc3: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc3'
              Border.mmPadding = 0
              DataField = 'Estorno_Credito'
              DataPipeline = pApuracao
              DisplayFormat = ',##0.00;-,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pApuracao'
              mmHeight = 3440
              mmLeft = 132558
              mmTop = 35720
              mmWidth = 31750
              BandType = 4
              LayerName = Foreground
            end
            object pSubTotDebAux: TppVariable
              DesignLayer = ppDesignLayer1
              UserName = 'pSubTotDebAux'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 0
              DataType = dtCurrency
              DisplayFormat = ',##0.00;-,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              OnCalc = pSubTotDebAuxCalc
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3471
              mmLeft = 132558
              mmTop = 39423
              mmWidth = 31750
              BandType = 4
              LayerName = Foreground
            end
            object pSubTotDebSoma: TppVariable
              DesignLayer = ppDesignLayer1
              UserName = 'pSubTotDebSoma'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 1
              DataType = dtCurrency
              DisplayFormat = ',##0.00;-,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              OnCalc = pSubTotDebSomaCalc
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3471
              mmLeft = 164836
              mmTop = 39423
              mmWidth = 31750
              BandType = 4
              LayerName = Foreground
            end
            object ppDBCalc5: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc5'
              Border.mmPadding = 0
              DataField = 'Estorno_Debito'
              DataPipeline = pApuracao
              DisplayFormat = ',##0.00;-,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pApuracao'
              mmHeight = 3440
              mmLeft = 132558
              mmTop = 62442
              mmWidth = 31750
              BandType = 4
              LayerName = Foreground
            end
            object pSubTotalCreditoAux: TppVariable
              DesignLayer = ppDesignLayer1
              UserName = 'pSubTotDebAux1'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 2
              DataType = dtCurrency
              DisplayFormat = ',##0.00;-,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              OnCalc = pSubTotalCreditoAuxCalc
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 132558
              mmTop = 66146
              mmWidth = 31750
              BandType = 4
              LayerName = Foreground
            end
            object pSubTotCreSoma: TppVariable
              DesignLayer = ppDesignLayer1
              UserName = 'pSubTotCreSoma'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 3
              DataType = dtCurrency
              DisplayFormat = ',##0.00;-,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 164836
              mmTop = 66146
              mmWidth = 31750
              BandType = 4
              LayerName = Foreground
            end
            object pTotalICMSE: TppVariable
              DesignLayer = ppDesignLayer1
              UserName = 'pTotalICMSE'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 4
              DataType = dtCurrency
              DisplayFormat = ',##0.00;-,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 164836
              mmTop = 54504
              mmWidth = 31750
              BandType = 4
              LayerName = Foreground
            end
            object pOutrosCreditos: TppVariable
              DesignLayer = ppDesignLayer1
              UserName = 'pOutrosCreditos'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 5
              DataType = dtCurrency
              DisplayFormat = ',##0.00;-,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 132557
              mmTop = 58738
              mmWidth = 31750
              BandType = 4
              LayerName = Foreground
            end
            object pSaldoCredorAnterior: TppDBCalc
              OnPrint = pSaldoCredorAnteriorPrint
              DesignLayer = ppDesignLayer1
              UserName = 'pSaldoCredorAnterior'
              Border.mmPadding = 0
              DataField = 'Saldo_ICMS'
              DataPipeline = pApuracao
              DisplayFormat = ',##0.00;-,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'pApuracao'
              mmHeight = 3440
              mmLeft = 164836
              mmTop = 69850
              mmWidth = 31750
              BandType = 4
              LayerName = Foreground
            end
            object pTotalCreditos: TppVariable
              DesignLayer = ppDesignLayer1
              UserName = 'pTotalCreditos'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 6
              DataType = dtCurrency
              DisplayFormat = ',##0.00;-,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 164836
              mmTop = 73554
              mmWidth = 31750
              BandType = 4
              LayerName = Foreground
            end
            object pSaldoDevedor: TppVariable
              DesignLayer = ppDesignLayer1
              UserName = 'pSaldoDevedor'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 7
              DataType = dtCurrency
              DisplayFormat = ',##0.00;-,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 164836
              mmTop = 85461
              mmWidth = 31750
              BandType = 4
              LayerName = Foreground
            end
            object pDeducoes: TppVariable
              DesignLayer = ppDesignLayer1
              UserName = 'pDeducoes'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 9
              DataType = dtCurrency
              DisplayFormat = ',##0.00;-,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 164836
              mmTop = 93398
              mmWidth = 31750
              BandType = 4
              LayerName = Foreground
            end
            object pSaldoCredor: TppVariable
              DesignLayer = ppDesignLayer1
              UserName = 'pSaldoCredor'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 8
              DataType = dtCurrency
              DisplayFormat = ',##0.00;-,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 164836
              mmTop = 97102
              mmWidth = 31750
              BandType = 4
              LayerName = Foreground
            end
            object pTotalDebitos: TppVariable
              DesignLayer = ppDesignLayer1
              UserName = 'pTotalDebitos'
              AutoSize = False
              Border.mmPadding = 0
              BlankWhenZero = False
              CalcOrder = 10
              DataType = dtCurrency
              DisplayFormat = ',##0.00;-,##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 8
              Font.Style = []
              OnCalc = pSubTotDebSomaCalc
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3471
              mmLeft = 164836
              mmTop = 43127
              mmWidth = 31750
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppFooterBand2: TppFooterBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 3440
            mmPrintPosition = 0
            object ppLine25: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line401'
              Border.mmPadding = 0
              Pen.Width = 0
              mmHeight = 1323
              mmLeft = 0
              mmTop = 0
              mmWidth = 197380
              BandType = 8
              LayerName = Foreground
            end
            object ppLabel54: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label54'
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
              mmLeft = 0
              mmTop = 529
              mmWidth = 45773
              BandType = 8
              LayerName = Foreground
            end
            object ppSystemVariable3: TppSystemVariable
              DesignLayer = ppDesignLayer1
              UserName = 'SystemVariable1'
              Border.mmPadding = 0
              VarType = vtPageSetDesc
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 178859
              mmTop = 529
              mmWidth = 18785
              BandType = 8
              LayerName = Foreground
            end
            object ppSystemVariable7: TppSystemVariable
              DesignLayer = ppDesignLayer1
              UserName = 'SystemVariable7'
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
              mmLeft = 54504
              mmTop = 529
              mmWidth = 61119
              BandType = 8
              LayerName = Foreground
            end
            object ppSystemVariable8: TppSystemVariable
              DesignLayer = ppDesignLayer1
              UserName = 'SystemVariable8'
              Border.mmPadding = 0
              VarType = vtPrintDateTime
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              mmHeight = 2910
              mmLeft = 116417
              mmTop = 529
              mmWidth = 26194
              BandType = 8
              LayerName = Foreground
            end
            object ppLine26: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line26'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 3175
              mmLeft = 46831
              mmTop = 265
              mmWidth = 6615
              BandType = 8
              LayerName = Foreground
            end
            object ppLine27: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line27'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 3175
              mmLeft = 177271
              mmTop = 265
              mmWidth = 3704
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
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'SE'
      DataPipeline = pEntradas
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'pEntradas'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        BeforePrint = ppGroupHeaderBand1BeforePrint
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 23019
        mmPrintPosition = 0
        object ppShape4: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape4'
          Pen.Width = 0
          mmHeight = 18256
          mmLeft = 265
          mmTop = 4763
          mmWidth = 33867
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape6: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape6'
          Pen.Width = 0
          mmHeight = 13758
          mmLeft = 16933
          mmTop = 9260
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object lTitulo1: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lTitulo1'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'E N T R A D A S'
          Color = 13882323
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 10
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          mmHeight = 4276
          mmLeft = 265
          mmTop = 0
          mmWidth = 197380
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel8: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label8'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'CODIFICA'#199#195'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3528
          mmLeft = 265
          mmTop = 5292
          mmWidth = 33602
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape5: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape5'
          Pen.Width = 0
          mmHeight = 13758
          mmLeft = 265
          mmTop = 9260
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel9: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label9'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'CONTABIL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3528
          mmLeft = 529
          mmTop = 14552
          mmWidth = 16669
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel10: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label10'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'FISCAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3528
          mmLeft = 17727
          mmTop = 14552
          mmWidth = 15875
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape7: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape7'
          Pen.Width = 0
          mmHeight = 18256
          mmLeft = 33602
          mmTop = 4763
          mmWidth = 33867
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel11: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label11'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'VALORES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3528
          mmLeft = 34131
          mmTop = 10319
          mmWidth = 32808
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel12: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label12'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'CONTABEIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3528
          mmLeft = 34131
          mmTop = 14552
          mmWidth = 32808
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape8: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape8'
          Pen.Width = 0
          mmHeight = 9260
          mmLeft = 67204
          mmTop = 4763
          mmWidth = 130440
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel13: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label13'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'ICMS - VALORES FISCAIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3528
          mmLeft = 67733
          mmTop = 5292
          mmWidth = 129117
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape9: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape9'
          Pen.Width = 0
          mmHeight = 5027
          mmLeft = 67204
          mmTop = 8996
          mmWidth = 65088
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape10: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape10'
          Pen.Width = 0
          mmHeight = 5027
          mmLeft = 132027
          mmTop = 8996
          mmWidth = 65617
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object pDebCred: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'pDebCred'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'OPERA'#199#213'ES COM CR'#201'DITO DO IMPOSTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3528
          mmLeft = 67733
          mmTop = 9525
          mmWidth = 64029
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object pSemDebCred: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'pSemDebCred'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'OPERA'#199#213'ES SEM CR'#201'DITO DO IMPOSTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3528
          mmLeft = 132557
          mmTop = 9525
          mmWidth = 64029
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape12: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape12'
          Pen.Width = 0
          mmHeight = 9260
          mmLeft = 67204
          mmTop = 13758
          mmWidth = 32544
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel16: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label16'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'BASE DE C'#193'LCULO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3528
          mmLeft = 67733
          mmTop = 16140
          mmWidth = 31485
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape11: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape11'
          Pen.Width = 0
          mmHeight = 9260
          mmLeft = 99484
          mmTop = 13758
          mmWidth = 32808
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object pImpDebCred: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'pImpDebCred'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'IMPOSTO CREDITADO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3528
          mmLeft = 100013
          mmTop = 16140
          mmWidth = 31750
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape13: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape13'
          Pen.Width = 0
          mmHeight = 9260
          mmLeft = 132027
          mmTop = 13758
          mmWidth = 32808
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel18: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label18'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'ISENTAS OU'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3528
          mmLeft = 132557
          mmTop = 14288
          mmWidth = 31750
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape14: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape14'
          Pen.Width = 0
          mmHeight = 9260
          mmLeft = 164571
          mmTop = 13758
          mmWidth = 33073
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel19: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label19'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'OUTRAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3528
          mmLeft = 165100
          mmTop = 16140
          mmWidth = 31750
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel20: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label20'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'N'#195'O TRIBUTADAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3528
          mmLeft = 132557
          mmTop = 18521
          mmWidth = 31750
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        AfterPrint = ppGroupFooterBand1AfterPrint
        BeforePrint = ppGroupFooterBand1BeforePrint
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 24606
        mmPrintPosition = 0
        object ppShape22: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape22'
          Pen.Width = 0
          mmHeight = 5027
          mmLeft = 265
          mmTop = 16140
          mmWidth = 197380
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape16: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape16'
          Pen.Width = 0
          mmHeight = 16404
          mmLeft = 265
          mmTop = 4763
          mmWidth = 33602
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape15: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape15'
          Pen.Width = 0
          mmHeight = 5027
          mmLeft = 265
          mmTop = 0
          mmWidth = 197380
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object lTitulo2: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lTitulo2'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'SUBTOTAIS ENTRADAS'
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
          mmLeft = 1323
          mmTop = 794
          mmWidth = 196321
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object lCFOP1: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lCFOP1'
          AutoSize = False
          Border.mmPadding = 0
          Caption = '1.00   DO ESTADO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3440
          mmLeft = 794
          mmTop = 5556
          mmWidth = 32808
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object lCFOP2: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lCFOP2'
          AutoSize = False
          Border.mmPadding = 0
          Caption = '2.00   DE OUTROS ESTADOS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3440
          mmLeft = 794
          mmTop = 9260
          mmWidth = 32808
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape17: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape17'
          Pen.Width = 0
          mmHeight = 11906
          mmLeft = 33602
          mmTop = 4763
          mmWidth = 33867
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape18: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape18'
          Pen.Width = 0
          mmHeight = 11906
          mmLeft = 67204
          mmTop = 4763
          mmWidth = 32544
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape19: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape19'
          Pen.Width = 0
          mmHeight = 11906
          mmLeft = 99484
          mmTop = 4763
          mmWidth = 32808
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape20: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape20'
          Pen.Width = 0
          mmHeight = 11906
          mmLeft = 132027
          mmTop = 4763
          mmWidth = 32808
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape21: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape21'
          Pen.Width = 0
          mmHeight = 11906
          mmLeft = 164571
          mmTop = 4763
          mmWidth = 33073
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object pTotalContabil1: TppVariable
          DesignLayer = ppDesignLayer2
          UserName = 'pTotalContabil1'
          AutoSize = False
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 0
          DataType = dtCurrency
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 34397
          mmTop = 5556
          mmWidth = 32278
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object pTotalContabil2: TppVariable
          DesignLayer = ppDesignLayer2
          UserName = 'pTotalContabil2'
          AutoSize = False
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 1
          DataType = dtCurrency
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 34397
          mmTop = 9260
          mmWidth = 32278
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object pTotalBC1: TppVariable
          DesignLayer = ppDesignLayer2
          UserName = 'pTotalBC1'
          AutoSize = False
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 2
          DataType = dtCurrency
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 67732
          mmTop = 5556
          mmWidth = 31222
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object pTotalBC2: TppVariable
          DesignLayer = ppDesignLayer2
          UserName = 'pTotalBC2'
          AutoSize = False
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 3
          DataType = dtCurrency
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 67732
          mmTop = 9260
          mmWidth = 31222
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object pTotalImposto1: TppVariable
          DesignLayer = ppDesignLayer2
          UserName = 'pTotalImposto1'
          AutoSize = False
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 4
          DataType = dtCurrency
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 100277
          mmTop = 5556
          mmWidth = 31222
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object pTotalImposto2: TppVariable
          DesignLayer = ppDesignLayer2
          UserName = 'pTotalImposto2'
          AutoSize = False
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 5
          DataType = dtCurrency
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 100277
          mmTop = 9260
          mmWidth = 31222
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object lCFOP3: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lCFOP3'
          AutoSize = False
          Border.mmPadding = 0
          Caption = '3.00   DO EXTERIOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 3440
          mmLeft = 794
          mmTop = 12965
          mmWidth = 32809
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object pTotalContabil3: TppVariable
          DesignLayer = ppDesignLayer2
          UserName = 'pTotalContabil3'
          AutoSize = False
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 6
          DataType = dtCurrency
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 34397
          mmTop = 12965
          mmWidth = 32278
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object pTotalBC3: TppVariable
          DesignLayer = ppDesignLayer2
          UserName = 'pTotalBC3'
          AutoSize = False
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 7
          DataType = dtCurrency
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 67732
          mmTop = 12965
          mmWidth = 31222
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object pTotalImposto3: TppVariable
          DesignLayer = ppDesignLayer2
          UserName = 'pTotalImposto3'
          AutoSize = False
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 8
          DataType = dtCurrency
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 100277
          mmTop = 12965
          mmWidth = 31222
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object pTotalIsentas1: TppVariable
          DesignLayer = ppDesignLayer2
          UserName = 'pTotalIsentas1'
          AutoSize = False
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 9
          DataType = dtCurrency
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 132821
          mmTop = 5556
          mmWidth = 31221
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object pTotalIsentas2: TppVariable
          DesignLayer = ppDesignLayer2
          UserName = 'pTotalIsentas2'
          AutoSize = False
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 10
          DataType = dtCurrency
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 132821
          mmTop = 9260
          mmWidth = 31221
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object pTotalIsentas3: TppVariable
          DesignLayer = ppDesignLayer2
          UserName = 'pTotalIsentas3'
          AutoSize = False
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 11
          DataType = dtCurrency
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 132822
          mmTop = 12965
          mmWidth = 31221
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object pTotalOutras1: TppVariable
          DesignLayer = ppDesignLayer2
          UserName = 'pTotalOutras1'
          AutoSize = False
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 12
          DataType = dtCurrency
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 165365
          mmTop = 5556
          mmWidth = 31221
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object pTotalOutras2: TppVariable
          DesignLayer = ppDesignLayer2
          UserName = 'pTotalOutras2'
          AutoSize = False
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 13
          DataType = dtCurrency
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 165365
          mmTop = 9260
          mmWidth = 31221
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object pTotalOutras3: TppVariable
          DesignLayer = ppDesignLayer2
          UserName = 'pTotalOutras3'
          AutoSize = False
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 14
          DataType = dtCurrency
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3440
          mmLeft = 165364
          mmTop = 12965
          mmWidth = 31221
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel7: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label7'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'TOTAIS'
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
          mmLeft = 794
          mmTop = 16933
          mmWidth = 32809
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object pTotalGeralContabil: TppVariable
          DesignLayer = ppDesignLayer2
          UserName = 'pTotalGeralContabil'
          AutoSize = False
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 15
          DataType = dtCurrency
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3471
          mmLeft = 34397
          mmTop = 16933
          mmWidth = 32279
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object pTotalGeralBC: TppVariable
          DesignLayer = ppDesignLayer2
          UserName = 'pTotalGeralBC'
          AutoSize = False
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 16
          DataType = dtCurrency
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3471
          mmLeft = 67732
          mmTop = 16933
          mmWidth = 31222
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object pTotalGeralImposto: TppVariable
          DesignLayer = ppDesignLayer2
          UserName = 'pTotalGeralImposto'
          AutoSize = False
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 17
          DataType = dtCurrency
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3471
          mmLeft = 100277
          mmTop = 16933
          mmWidth = 31222
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object pTotalGeralIsentas: TppVariable
          DesignLayer = ppDesignLayer2
          UserName = 'pTotalGeralIsentas'
          AutoSize = False
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 18
          DataType = dtCurrency
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3471
          mmLeft = 132822
          mmTop = 16933
          mmWidth = 31221
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object pTotalGeralOutras: TppVariable
          DesignLayer = ppDesignLayer2
          UserName = 'pTotalGeralOutras'
          AutoSize = False
          Border.mmPadding = 0
          BlankWhenZero = False
          CalcOrder = 19
          DataType = dtCurrency
          DisplayFormat = ',##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3471
          mmLeft = 165364
          mmTop = 16933
          mmWidth = 31221
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLine9: TppLine
          DesignLayer = ppDesignLayer2
          UserName = 'Line9'
          Border.mmPadding = 0
          Pen.Width = 0
          mmHeight = 1323
          mmLeft = 265
          mmTop = 16404
          mmWidth = 33867
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
        end
        object lMovimento: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'lMovimento'
          Angle = 45
          Border.mmPadding = 0
          Caption = 'N'#195'O HOUVE MOVIMENTO NO PER'#205'ODO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Name = 'LLRubberGrotesque'
          Font.Size = 28
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 142937
          mmLeft = 25929
          mmTop = -22024
          mmWidth = 142937
          BandType = 5
          GroupNo = 0
          LayerName = Foreground1
          RotatedOriginLeft = 0
          RotatedOriginTop = 133187
        end
      end
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
  object dstEntradas: TDataSource
    DataSet = tEntradas
    Left = 122
    Top = 108
  end
  object pEntradas: TppDBPipeline
    DataSource = dstEntradas
    UserName = 'pEntradas'
    Left = 120
    object pEntradasppField1: TppField
      FieldAlias = 'Natureza_Codigo'
      FieldName = 'Natureza_Codigo'
      FieldLength = 4
      DisplayWidth = 4
      Position = 0
    end
    object pEntradasppField2: TppField
      FieldAlias = 'Valor_Contabil'
      FieldName = 'Valor_Contabil'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 1
    end
    object pEntradasppField3: TppField
      FieldAlias = 'Valor_BCICMS'
      FieldName = 'Valor_BCICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 2
    end
    object pEntradasppField4: TppField
      FieldAlias = 'Valor_ICMS'
      FieldName = 'Valor_ICMS'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 3
    end
    object pEntradasppField5: TppField
      FieldAlias = 'Valor_Isentas'
      FieldName = 'Valor_Isentas'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 4
    end
    object pEntradasppField6: TppField
      FieldAlias = 'Valor_Outras'
      FieldName = 'Valor_Outras'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 5
    end
    object pEntradasppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'SE'
      FieldName = 'SE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
  end
  object oEmpresa: TppDBPipeline
    DataSource = Dados.dsEmpresas
    UserName = 'pEmpresa'
    Left = 120
    Top = 56
    object oEmpresappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 2
      Position = 0
    end
    object oEmpresappField2: TppField
      FieldAlias = 'Razao_Social'
      FieldName = 'Razao_Social'
      FieldLength = 50
      DisplayWidth = 28
      Position = 1
    end
    object oEmpresappField3: TppField
      FieldAlias = 'Nome_Fantasia'
      FieldName = 'Nome_Fantasia'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object oEmpresappField4: TppField
      FieldAlias = 'Rua'
      FieldName = 'Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object oEmpresappField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Rua_Numero'
      FieldName = 'Rua_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object oEmpresappField6: TppField
      FieldAlias = 'Complemento'
      FieldName = 'Complemento'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object oEmpresappField7: TppField
      FieldAlias = 'Bairro'
      FieldName = 'Bairro'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object oEmpresappField8: TppField
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 7
    end
    object oEmpresappField9: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 8
    end
    object oEmpresappField10: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 12
      Position = 9
    end
    object oEmpresappField11: TppField
      FieldAlias = 'IE'
      FieldName = 'IE'
      FieldLength = 14
      DisplayWidth = 14
      Position = 10
    end
    object oEmpresappField12: TppField
      FieldAlias = 'IM'
      FieldName = 'IM'
      FieldLength = 14
      DisplayWidth = 14
      Position = 11
    end
    object oEmpresappField13: TppField
      FieldAlias = 'Junta_Codigo'
      FieldName = 'Junta_Codigo'
      FieldLength = 12
      DisplayWidth = 12
      Position = 12
    end
    object oEmpresappField14: TppField
      FieldAlias = 'Junta_Data'
      FieldName = 'Junta_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
    object oEmpresappField15: TppField
      FieldAlias = 'Ramo_Atividade'
      FieldName = 'Ramo_Atividade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object oEmpresappField16: TppField
      FieldAlias = 'Codigo_Atividade'
      FieldName = 'Codigo_Atividade'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
    object oEmpresappField17: TppField
      FieldAlias = 'Responsavel'
      FieldName = 'Responsavel'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object oEmpresappField18: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 17
    end
    object oEmpresappField19: TppField
      FieldAlias = 'Site'
      FieldName = 'Site'
      FieldLength = 60
      DisplayWidth = 60
      Position = 18
    end
    object oEmpresappField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'Duplicata'
      FieldName = 'Duplicata'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object oEmpresappField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Saida'
      FieldName = 'Nota_Saida'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object oEmpresappField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Entrada'
      FieldName = 'Nota_Entrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object oEmpresappField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Servico'
      FieldName = 'Nota_Servico'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object oEmpresappField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Eletronica'
      FieldName = 'Nota_Eletronica'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object oEmpresappField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'Memorando_Exportacao'
      FieldName = 'Memorando_Exportacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object oEmpresappField26: TppField
      FieldAlias = 'Sincronizar_NumeroNF'
      FieldName = 'Sincronizar_NumeroNF'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 25
    end
    object oEmpresappField27: TppField
      FieldAlias = 'Mascara_PlanoContas'
      FieldName = 'Mascara_PlanoContas'
      FieldLength = 20
      DisplayWidth = 20
      Position = 26
    end
    object oEmpresappField28: TppField
      FieldAlias = 'Codigo_Reduzido'
      FieldName = 'Codigo_Reduzido'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 27
    end
    object oEmpresappField29: TppField
      FieldAlias = 'Diretor'
      FieldName = 'Diretor'
      FieldLength = 50
      DisplayWidth = 50
      Position = 28
    end
    object oEmpresappField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Numero'
      FieldName = 'Diario_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object oEmpresappField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Pagina'
      FieldName = 'Diario_Pagina'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object oEmpresappField32: TppField
      FieldAlias = 'Ultimo_Encerramento'
      FieldName = 'Ultimo_Encerramento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 31
    end
    object oEmpresappField33: TppField
      FieldAlias = 'NFServico_Modelo'
      FieldName = 'NFServico_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 32
    end
    object oEmpresappField34: TppField
      FieldAlias = 'NFServico_Serie'
      FieldName = 'NFServico_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 33
    end
    object oEmpresappField35: TppField
      FieldAlias = 'NFEntrada_Modelo'
      FieldName = 'NFEntrada_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 34
    end
    object oEmpresappField36: TppField
      FieldAlias = 'NFEntrada_Serie'
      FieldName = 'NFEntrada_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 35
    end
    object oEmpresappField37: TppField
      FieldAlias = 'NFSaida_Modelo'
      FieldName = 'NFSaida_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 36
    end
    object oEmpresappField38: TppField
      FieldAlias = 'NFSaida_Serie'
      FieldName = 'NFSaida_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 37
    end
    object oEmpresappField39: TppField
      FieldAlias = 'Matriz_Filial'
      FieldName = 'Matriz_Filial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 38
    end
    object oEmpresappField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Filial'
      FieldName = 'Numero_Filial'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 2
      Position = 39
    end
    object oEmpresappField41: TppField
      FieldAlias = 'NFEletronica_Modelo'
      FieldName = 'NFEletronica_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 40
    end
    object oEmpresappField42: TppField
      FieldAlias = 'NFEletronica_Serie'
      FieldName = 'NFEletronica_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 41
    end
    object oEmpresappField43: TppField
      FieldAlias = 'NFEletronica_Layout'
      FieldName = 'NFEletronica_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 42
    end
    object oEmpresappField44: TppField
      FieldAlias = 'Certificado_Digital'
      FieldName = 'Certificado_Digital'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 43
      Searchable = False
      Sortable = False
    end
    object oEmpresappField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Lote'
      FieldName = 'Numero_Lote'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 44
    end
    object oEmpresappField46: TppField
      FieldAlias = 'Inscricao_SUFRAMA'
      FieldName = 'Inscricao_SUFRAMA'
      FieldLength = 9
      DisplayWidth = 9
      Position = 45
    end
    object oEmpresappField47: TppField
      FieldAlias = 'Contador_Nome'
      FieldName = 'Contador_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 46
    end
    object oEmpresappField48: TppField
      FieldAlias = 'Contador_CNPJ'
      FieldName = 'Contador_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 47
    end
    object oEmpresappField49: TppField
      FieldAlias = 'Contador_CPF'
      FieldName = 'Contador_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 48
    end
    object oEmpresappField50: TppField
      FieldAlias = 'Contador_CRC'
      FieldName = 'Contador_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 49
    end
    object oEmpresappField51: TppField
      FieldAlias = 'Contador_CEP'
      FieldName = 'Contador_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 50
    end
    object oEmpresappField52: TppField
      FieldAlias = 'Contador_Rua'
      FieldName = 'Contador_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 51
    end
    object oEmpresappField53: TppField
      FieldAlias = 'Contador_Numero'
      FieldName = 'Contador_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 52
    end
    object oEmpresappField54: TppField
      FieldAlias = 'Contador_Complemento'
      FieldName = 'Contador_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 53
    end
    object oEmpresappField55: TppField
      FieldAlias = 'Contador_Bairro'
      FieldName = 'Contador_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 54
    end
    object oEmpresappField56: TppField
      FieldAlias = 'Contador_Telefone'
      FieldName = 'Contador_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 55
    end
    object oEmpresappField57: TppField
      FieldAlias = 'Contador_FAX'
      FieldName = 'Contador_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 56
    end
    object oEmpresappField58: TppField
      FieldAlias = 'Contador_Email'
      FieldName = 'Contador_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 57
    end
    object oEmpresappField59: TppField
      FieldAlias = 'Contador_Estado'
      FieldName = 'Contador_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 58
    end
    object oEmpresappField60: TppField
      FieldAlias = 'Data_Constituicao'
      FieldName = 'Data_Constituicao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 59
    end
    object oEmpresappField61: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tributacao'
      FieldName = 'Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 60
    end
    object oEmpresappField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'Municipio_Codigo'
      FieldName = 'Municipio_Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 61
    end
    object oEmpresappField63: TppField
      FieldAlias = 'Diretor_CPF'
      FieldName = 'Diretor_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 62
    end
    object oEmpresappField64: TppField
      FieldAlias = 'Responsavel_CPF'
      FieldName = 'Responsavel_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 63
    end
    object oEmpresappField65: TppField
      FieldAlias = 'Responsavel_Funcao'
      FieldName = 'Responsavel_Funcao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 64
    end
    object oEmpresappField66: TppField
      FieldAlias = 'Banco_Dados'
      FieldName = 'Banco_Dados'
      FieldLength = 50
      DisplayWidth = 50
      Position = 65
    end
    object oEmpresappField67: TppField
      FieldAlias = 'Banco_Contabilidade'
      FieldName = 'Banco_Contabilidade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 66
    end
    object oEmpresappField68: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente'
      FieldName = 'Ambiente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 67
    end
    object oEmpresappField69: TppField
      FieldAlias = 'Licensa_NFE_Util'
      FieldName = 'Licensa_NFE_Util'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 68
      Searchable = False
      Sortable = False
    end
    object oEmpresappField70: TppField
      FieldAlias = 'Processo_Automatico'
      FieldName = 'Processo_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 69
    end
    object oEmpresappField71: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 70
    end
    object oEmpresappField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'Apuracao_IPI'
      FieldName = 'Apuracao_IPI'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 71
    end
    object oEmpresappField73: TppField
      FieldAlias = 'Perfil_SPED'
      FieldName = 'Perfil_SPED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 72
    end
    object oEmpresappField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Atividade'
      FieldName = 'Tipo_Atividade'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 73
    end
    object oEmpresappField75: TppField
      FieldAlias = 'Vencimento_Certificado'
      FieldName = 'Vencimento_Certificado'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 74
    end
    object oEmpresappField76: TppField
      FieldAlias = 'UF_WebService'
      FieldName = 'UF_WebService'
      FieldLength = 10
      DisplayWidth = 10
      Position = 75
    end
    object oEmpresappField77: TppField
      Alignment = taRightJustify
      FieldAlias = 'Regime_Apuracao'
      FieldName = 'Regime_Apuracao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 76
    end
    object oEmpresappField78: TppField
      FieldAlias = 'Mascara_Processo'
      FieldName = 'Mascara_Processo'
      FieldLength = 7
      DisplayWidth = 7
      Position = 77
    end
    object oEmpresappField79: TppField
      FieldAlias = 'Incentivo_Fiscal'
      FieldName = 'Incentivo_Fiscal'
      FieldLength = 20
      DisplayWidth = 20
      Position = 78
    end
    object oEmpresappField80: TppField
      FieldAlias = 'Email_SMTP'
      FieldName = 'Email_SMTP'
      FieldLength = 80
      DisplayWidth = 80
      Position = 79
    end
    object oEmpresappField81: TppField
      FieldAlias = 'Email_Senha'
      FieldName = 'Email_Senha'
      FieldLength = 30
      DisplayWidth = 30
      Position = 80
    end
    object oEmpresappField82: TppField
      FieldAlias = 'Email_MsgEnvioNFE'
      FieldName = 'Email_MsgEnvioNFE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 81
      Searchable = False
      Sortable = False
    end
    object oEmpresappField83: TppField
      FieldAlias = 'Email_MsgCancelamento'
      FieldName = 'Email_MsgCancelamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 82
      Searchable = False
      Sortable = False
    end
    object oEmpresappField84: TppField
      Alignment = taRightJustify
      FieldAlias = 'Email_Porta'
      FieldName = 'Email_Porta'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 83
    end
    object oEmpresappField85: TppField
      FieldAlias = 'Email_ID'
      FieldName = 'Email_ID'
      FieldLength = 80
      DisplayWidth = 80
      Position = 84
    end
    object oEmpresappField86: TppField
      FieldAlias = 'Distribuidora'
      FieldName = 'Distribuidora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 85
    end
    object oEmpresappField87: TppField
      FieldAlias = 'Fechamento_Financeiro'
      FieldName = 'Fechamento_Financeiro'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 86
    end
    object oEmpresappField88: TppField
      FieldAlias = 'Modulo_Comercial'
      FieldName = 'Modulo_Comercial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 87
    end
    object oEmpresappField89: TppField
      FieldAlias = 'Consolidar'
      FieldName = 'Consolidar'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 88
    end
    object oEmpresappField90: TppField
      FieldAlias = 'Email_Copia'
      FieldName = 'Email_Copia'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 89
      Searchable = False
      Sortable = False
    end
    object oEmpresappField91: TppField
      FieldAlias = 'Email_SSL'
      FieldName = 'Email_SSL'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 90
    end
    object oEmpresappField92: TppField
      FieldAlias = 'Email_Autenticacao'
      FieldName = 'Email_Autenticacao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 91
    end
    object oEmpresappField93: TppField
      FieldAlias = 'Email_Metodo'
      FieldName = 'Email_Metodo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 92
    end
    object oEmpresappField94: TppField
      FieldAlias = 'CartaCorrecao_Layout'
      FieldName = 'CartaCorrecao_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 93
    end
    object oEmpresappField95: TppField
      FieldAlias = 'CNAE'
      FieldName = 'CNAE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 94
    end
    object oEmpresappField96: TppField
      FieldAlias = 'Email_MsgEnvioCCE'
      FieldName = 'Email_MsgEnvioCCE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 95
      Searchable = False
      Sortable = False
    end
    object oEmpresappField97: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_EletronicaEntrada'
      FieldName = 'Nota_EletronicaEntrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 96
    end
    object oEmpresappField98: TppField
      FieldAlias = 'NFEletronica_ModeloEntrada'
      FieldName = 'NFEletronica_ModeloEntrada'
      FieldLength = 2
      DisplayWidth = 2
      Position = 97
    end
    object oEmpresappField99: TppField
      FieldAlias = 'NFEletronica_SerieEntrada'
      FieldName = 'NFEletronica_SerieEntrada'
      FieldLength = 3
      DisplayWidth = 3
      Position = 98
    end
    object oEmpresappField100: TppField
      FieldAlias = 'NFEletronica_Numeracao'
      FieldName = 'NFEletronica_Numeracao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 99
    end
    object oEmpresappField101: TppField
      Alignment = taRightJustify
      FieldAlias = 'Logomarca_Largura'
      FieldName = 'Logomarca_Largura'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 100
    end
    object oEmpresappField102: TppField
      FieldAlias = 'Pagamento'
      FieldName = 'Pagamento'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 101
    end
    object oEmpresappField103: TppField
      FieldAlias = 'Modulo_Emprestimos'
      FieldName = 'Modulo_Emprestimos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 102
    end
    object oEmpresappField104: TppField
      FieldAlias = 'Modulo_XMLCTe'
      FieldName = 'Modulo_XMLCTe'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 103
    end
    object oEmpresappField105: TppField
      FieldAlias = 'Regime'
      FieldName = 'Regime'
      FieldLength = 1
      DisplayWidth = 1
      Position = 104
    end
    object oEmpresappField106: TppField
      FieldAlias = 'Modulo_Vendas'
      FieldName = 'Modulo_Vendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 105
    end
    object oEmpresappField107: TppField
      Alignment = taRightJustify
      FieldAlias = 'CTE_Numero'
      FieldName = 'CTE_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 106
    end
    object oEmpresappField108: TppField
      FieldAlias = 'CTE_Modelo'
      FieldName = 'CTE_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 107
    end
    object oEmpresappField109: TppField
      FieldAlias = 'CTE_Serie'
      FieldName = 'CTE_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 108
    end
    object oEmpresappField110: TppField
      FieldAlias = 'CTE_Layout'
      FieldName = 'CTE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 109
    end
    object oEmpresappField111: TppField
      FieldAlias = 'Modulo_Logistica'
      FieldName = 'Modulo_Logistica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 110
    end
    object oEmpresappField112: TppField
      FieldAlias = 'Modulo_Boleto'
      FieldName = 'Modulo_Boleto'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 111
    end
    object oEmpresappField113: TppField
      FieldAlias = 'Telefone1'
      FieldName = 'Telefone1'
      FieldLength = 11
      DisplayWidth = 11
      Position = 112
    end
    object oEmpresappField114: TppField
      FieldAlias = 'Telefone2'
      FieldName = 'Telefone2'
      FieldLength = 11
      DisplayWidth = 11
      Position = 113
    end
    object oEmpresappField115: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 11
      DisplayWidth = 11
      Position = 114
    end
    object oEmpresappField116: TppField
      FieldAlias = 'Modulo_SISCOMEXWEB'
      FieldName = 'Modulo_SISCOMEXWEB'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 115
    end
    object oEmpresappField117: TppField
      FieldAlias = 'Modulo_ECommerce'
      FieldName = 'Modulo_ECommerce'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 116
    end
    object oEmpresappField118: TppField
      FieldAlias = 'Modulo_ManifestoDest'
      FieldName = 'Modulo_ManifestoDest'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 117
    end
    object oEmpresappField119: TppField
      FieldAlias = 'Manifesto_LayOut'
      FieldName = 'Manifesto_LayOut'
      FieldLength = 10
      DisplayWidth = 10
      Position = 118
    end
    object oEmpresappField120: TppField
      FieldAlias = 'UF_WebServiceManifesto'
      FieldName = 'UF_WebServiceManifesto'
      FieldLength = 10
      DisplayWidth = 10
      Position = 119
    end
    object oEmpresappField121: TppField
      FieldAlias = 'Modulo_Televendas'
      FieldName = 'Modulo_Televendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 120
    end
    object oEmpresappField122: TppField
      FieldAlias = 'Email_MsgOrcamento'
      FieldName = 'Email_MsgOrcamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 121
      Searchable = False
      Sortable = False
    end
    object oEmpresappField123: TppField
      FieldAlias = 'Email_MsgBoleto'
      FieldName = 'Email_MsgBoleto'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 122
      Searchable = False
      Sortable = False
    end
    object oEmpresappField124: TppField
      FieldAlias = 'PISCOFINS_F100'
      FieldName = 'PISCOFINS_F100'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 123
    end
    object oEmpresappField125: TppField
      FieldAlias = 'Logo'
      FieldName = 'Logo'
      FieldLength = 120
      DisplayWidth = 120
      Position = 124
    end
    object oEmpresappField126: TppField
      FieldAlias = 'Modulo_ConsultaProdutos'
      FieldName = 'Modulo_ConsultaProdutos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 125
    end
    object oEmpresappField127: TppField
      FieldAlias = 'Modulo_Contabil'
      FieldName = 'Modulo_Contabil'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 126
    end
    object oEmpresappField128: TppField
      FieldAlias = 'Modulo_EnviarArmazem'
      FieldName = 'Modulo_EnviarArmazem'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 127
    end
    object oEmpresappField129: TppField
      FieldAlias = 'Versao_DLL'
      FieldName = 'Versao_DLL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 128
    end
    object oEmpresappField130: TppField
      FieldAlias = 'Desativada'
      FieldName = 'Desativada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 129
    end
    object oEmpresappField131: TppField
      FieldAlias = 'Menu_Inventario'
      FieldName = 'Menu_Inventario'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 130
    end
    object oEmpresappField132: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_GNRE'
      FieldName = 'Ambiente_GNRE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 131
    end
    object oEmpresappField133: TppField
      FieldAlias = 'GNRE_Layout'
      FieldName = 'GNRE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 132
    end
    object oEmpresappField134: TppField
      FieldAlias = 'Modulo_GNRE'
      FieldName = 'Modulo_GNRE'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 133
    end
    object oEmpresappField135: TppField
      FieldAlias = 'Modulo_DadosDI'
      FieldName = 'Modulo_DadosDI'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 134
    end
    object oEmpresappField136: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Qualificacao'
      FieldName = 'Contador_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 135
    end
    object oEmpresappField137: TppField
      FieldAlias = 'Contador_CRCUF'
      FieldName = 'Contador_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 136
    end
    object oEmpresappField138: TppField
      FieldAlias = 'Contador_CRCData'
      FieldName = 'Contador_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 137
    end
    object oEmpresappField139: TppField
      FieldAlias = 'NIRE'
      FieldName = 'NIRE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 138
    end
    object oEmpresappField140: TppField
      FieldAlias = 'Fechamento_FinanceiroFinal'
      FieldName = 'Fechamento_FinanceiroFinal'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 139
    end
    object oEmpresappField141: TppField
      Alignment = taRightJustify
      FieldAlias = 'SPED_CTAPlanoRef'
      FieldName = 'SPED_CTAPlanoRef'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 140
    end
    object oEmpresappField142: TppField
      FieldAlias = 'Contador_CRCSequencial'
      FieldName = 'Contador_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 141
    end
    object oEmpresappField143: TppField
      FieldAlias = 'Refis'
      FieldName = 'Refis'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 142
    end
    object oEmpresappField144: TppField
      FieldAlias = 'Paes'
      FieldName = 'Paes'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 143
    end
    object oEmpresappField145: TppField
      Alignment = taRightJustify
      FieldAlias = 'Forma_Tributacao'
      FieldName = 'Forma_Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 144
    end
    object oEmpresappField146: TppField
      FieldAlias = 'Extincao_RTT'
      FieldName = 'Extincao_RTT'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 145
    end
    object oEmpresappField147: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtde_SCP'
      FieldName = 'Qtde_SCP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 146
    end
    object oEmpresappField148: TppField
      FieldAlias = 'Natureza_Juridica'
      FieldName = 'Natureza_Juridica'
      FieldLength = 10
      DisplayWidth = 10
      Position = 147
    end
    object oEmpresappField149: TppField
      FieldAlias = 'NIRE_Data'
      FieldName = 'NIRE_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 148
    end
    object oEmpresappField150: TppField
      FieldAlias = 'Representante_Bairro'
      FieldName = 'Representante_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 149
    end
    object oEmpresappField151: TppField
      FieldAlias = 'Representante_CEP'
      FieldName = 'Representante_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 150
    end
    object oEmpresappField152: TppField
      FieldAlias = 'Representante_CNPJ'
      FieldName = 'Representante_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 151
    end
    object oEmpresappField153: TppField
      FieldAlias = 'Representante_Complemento'
      FieldName = 'Representante_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 152
    end
    object oEmpresappField154: TppField
      FieldAlias = 'Representante_CPF'
      FieldName = 'Representante_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 153
    end
    object oEmpresappField155: TppField
      FieldAlias = 'Representante_CRC'
      FieldName = 'Representante_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 154
    end
    object oEmpresappField156: TppField
      FieldAlias = 'Representante_CRCData'
      FieldName = 'Representante_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 155
    end
    object oEmpresappField157: TppField
      FieldAlias = 'Representante_CRCSequencial'
      FieldName = 'Representante_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 156
    end
    object oEmpresappField158: TppField
      FieldAlias = 'Representante_CRCUF'
      FieldName = 'Representante_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 157
    end
    object oEmpresappField159: TppField
      FieldAlias = 'Representante_Email'
      FieldName = 'Representante_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 158
    end
    object oEmpresappField160: TppField
      FieldAlias = 'Representante_Estado'
      FieldName = 'Representante_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 159
    end
    object oEmpresappField161: TppField
      FieldAlias = 'Representante_FAX'
      FieldName = 'Representante_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 160
    end
    object oEmpresappField162: TppField
      FieldAlias = 'Representante_Nome'
      FieldName = 'Representante_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 161
    end
    object oEmpresappField163: TppField
      FieldAlias = 'Representante_Numero'
      FieldName = 'Representante_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 162
    end
    object oEmpresappField164: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Qualificacao'
      FieldName = 'Representante_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 163
    end
    object oEmpresappField165: TppField
      FieldAlias = 'Representante_Rua'
      FieldName = 'Representante_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 164
    end
    object oEmpresappField166: TppField
      FieldAlias = 'Representante_Telefone'
      FieldName = 'Representante_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 165
    end
    object oEmpresappField167: TppField
      FieldAlias = 'Contador_SignatarioResp'
      FieldName = 'Contador_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 166
    end
    object oEmpresappField168: TppField
      FieldAlias = 'Representante_SignatarioResp'
      FieldName = 'Representante_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 167
    end
    object oEmpresappField169: TppField
      FieldAlias = 'Autorizacao_NFECNPJ'
      FieldName = 'Autorizacao_NFECNPJ'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 168
      Searchable = False
      Sortable = False
    end
    object oEmpresappField170: TppField
      FieldAlias = 'Autorizacao_NFECPF'
      FieldName = 'Autorizacao_NFECPF'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 169
      Searchable = False
      Sortable = False
    end
    object oEmpresappField171: TppField
      Alignment = taRightJustify
      FieldAlias = 'Encerramento_Contabil'
      FieldName = 'Encerramento_Contabil'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 170
    end
    object oEmpresappField172: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Municipio'
      FieldName = 'Contador_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 171
    end
    object oEmpresappField173: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Municipio'
      FieldName = 'Representante_Municipio'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 172
    end
    object oEmpresappField174: TppField
      FieldAlias = 'Classificacao_Tributaria'
      FieldName = 'Classificacao_Tributaria'
      FieldLength = 2
      DisplayWidth = 2
      Position = 173
    end
    object oEmpresappField175: TppField
      Alignment = taRightJustify
      FieldAlias = 'Obrigada_ECD'
      FieldName = 'Obrigada_ECD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 174
    end
    object oEmpresappField176: TppField
      Alignment = taRightJustify
      FieldAlias = 'Desoneracao_Folha'
      FieldName = 'Desoneracao_Folha'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 175
    end
    object oEmpresappField177: TppField
      Alignment = taRightJustify
      FieldAlias = 'Isencao_Multa'
      FieldName = 'Isencao_Multa'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 176
    end
    object oEmpresappField178: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_REINF'
      FieldName = 'Ambiente_REINF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 177
    end
    object oEmpresappField179: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_Sequencia'
      FieldName = 'REINF_Sequencia'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 178
    end
    object oEmpresappField180: TppField
      FieldAlias = 'REINF_ModoLancamento'
      FieldName = 'REINF_ModoLancamento'
      FieldLength = 10
      DisplayWidth = 10
      Position = 179
    end
    object oEmpresappField181: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_ProcEmi'
      FieldName = 'REINF_ProcEmi'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 180
    end
    object oEmpresappField182: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_tpInsc'
      FieldName = 'REINF_tpInsc'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 181
    end
    object oEmpresappField183: TppField
      Alignment = taRightJustify
      FieldAlias = 'REINF_indSitPJ'
      FieldName = 'REINF_indSitPJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 182
    end
    object oEmpresappField184: TppField
      FieldAlias = 'REINF_ideEFR'
      FieldName = 'REINF_ideEFR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 183
    end
    object oEmpresappField185: TppField
      FieldAlias = 'REINF_VerProc'
      FieldName = 'REINF_VerProc'
      FieldLength = 5
      DisplayWidth = 5
      Position = 184
    end
    object oEmpresappField186: TppField
      FieldAlias = 'REINF_iniValid'
      FieldName = 'REINF_iniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 185
    end
    object oEmpresappField187: TppField
      FieldAlias = 'REINF_fimValid'
      FieldName = 'REINF_fimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 186
    end
    object oEmpresappField188: TppField
      FieldAlias = 'REINF_AltiniValid'
      FieldName = 'REINF_AltiniValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 187
    end
    object oEmpresappField189: TppField
      FieldAlias = 'REINF_AltfimValid'
      FieldName = 'REINF_AltfimValid'
      FieldLength = 7
      DisplayWidth = 7
      Position = 188
    end
    object oEmpresappField190: TppField
      FieldAlias = 'Versao_REINF'
      FieldName = 'Versao_REINF'
      FieldLength = 10
      DisplayWidth = 10
      Position = 189
    end
    object oEmpresappField191: TppField
      FieldAlias = 'EmissaoNFE_Bloqueada'
      FieldName = 'EmissaoNFE_Bloqueada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 190
    end
    object oEmpresappField192: TppField
      FieldAlias = 'EmissaoNFE_BloqueadaUsuario'
      FieldName = 'EmissaoNFE_BloqueadaUsuario'
      FieldLength = 80
      DisplayWidth = 80
      Position = 191
    end
    object oEmpresappField193: TppField
      FieldAlias = 'MOdulo_Despacho'
      FieldName = 'MOdulo_Despacho'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 192
    end
    object oEmpresappField194: TppField
      Alignment = taRightJustify
      FieldAlias = 'Processo_Exp'
      FieldName = 'Processo_Exp'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 193
    end
    object oEmpresappField195: TppField
      Alignment = taRightJustify
      FieldAlias = 'PO'
      FieldName = 'PO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 194
    end
    object oEmpresappField196: TppField
      FieldAlias = 'PO_Automatico'
      FieldName = 'PO_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 195
    end
    object oEmpresappField197: TppField
      FieldAlias = 'Mascara_ProcessoExp'
      FieldName = 'Mascara_ProcessoExp'
      FieldLength = 7
      DisplayWidth = 7
      Position = 196
    end
    object oEmpresappField198: TppField
      FieldAlias = 'Mascara_PO'
      FieldName = 'Mascara_PO'
      FieldLength = 7
      DisplayWidth = 7
      Position = 197
    end
    object oEmpresappField199: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_CTe'
      FieldName = 'Ambiente_CTe'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 198
    end
    object oEmpresappField200: TppField
      FieldAlias = 'Transportadora'
      FieldName = 'Transportadora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 199
    end
    object oEmpresappField201: TppField
      FieldAlias = 'RNTRC'
      FieldName = 'RNTRC'
      FieldLength = 8
      DisplayWidth = 8
      Position = 200
    end
    object oEmpresappField202: TppField
      FieldAlias = 'Assinatura'
      FieldName = 'Assinatura'
      FieldLength = 120
      DisplayWidth = 120
      Position = 201
    end
    object oEmpresappField203: TppField
      FieldAlias = 'Classificacao_ContribIPI'
      FieldName = 'Classificacao_ContribIPI'
      FieldLength = 2
      DisplayWidth = 2
      Position = 202
    end
    object oEmpresappField204: TppField
      FieldAlias = 'Envio_Backup'
      FieldName = 'Envio_Backup'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 203
    end
    object oEmpresappField205: TppField
      FieldAlias = 'ECommerce_Data'
      FieldName = 'ECommerce_Data'
      FieldLength = 10
      DisplayWidth = 10
      Position = 204
    end
    object oEmpresappField206: TppField
      FieldAlias = 'Processo_AutomaticoExp'
      FieldName = 'Processo_AutomaticoExp'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 205
    end
    object oEmpresappField207: TppField
      FieldAlias = 'ECommerce_Hora'
      FieldName = 'ECommerce_Hora'
      FieldLength = 10
      DisplayWidth = 10
      Position = 206
    end
    object oEmpresappField208: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_Armazem'
      FieldName = 'Ambiente_Armazem'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 207
    end
    object oEmpresappField209: TppField
      FieldAlias = 'Lancamento_Contabil'
      FieldName = 'Lancamento_Contabil'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 208
    end
    object oEmpresappField210: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pedido_Nota'
      FieldName = 'Pedido_Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 209
    end
    object oEmpresappField211: TppField
      Alignment = taRightJustify
      FieldAlias = 'Layout_Estoque'
      FieldName = 'Layout_Estoque'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 210
    end
    object oEmpresappField212: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ultimo_NSU'
      FieldName = 'Ultimo_NSU'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 211
    end
    object oEmpresappField213: TppField
      FieldAlias = 'UF_WEBServiceEPEC'
      FieldName = 'UF_WEBServiceEPEC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 212
    end
    object oEmpresappField214: TppField
      FieldAlias = 'Licensa_CTE_Util'
      FieldName = 'Licensa_CTE_Util'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 213
      Searchable = False
      Sortable = False
    end
    object oEmpresappField215: TppField
      FieldAlias = 'UF_WebServiceCTe'
      FieldName = 'UF_WebServiceCTe'
      FieldLength = 10
      DisplayWidth = 10
      Position = 214
    end
    object oEmpresappField216: TppField
      FieldAlias = 'Email_Criptografia'
      FieldName = 'Email_Criptografia'
      FieldLength = 20
      DisplayWidth = 20
      Position = 215
    end
  end
  object tApuracao: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      
        'SELECT (SELECT SUM(Valor_ICMS) FROM NotasFiscais WHERE (Saida_En' +
        'trada = 1) AND (Cancelada <> 1) AND (MONTH(Data_Emissao) = 7 AND' +
        ' YEAR(Data_Emissao) = 2011)) AS Debito_Imposto,'
      
        '       (SELECT SUM((Valor_OutrasICMS * 18) - (Valor_OutrasICMS *' +
        ' (Aliquota_ICMSOper/100)) ) FROM NotasTerceiros, Cybersoft_Cadas' +
        'tros.dbo.Natureza WHERE (MONTH(Data_Entrada) = 7 AND YEAR(Data_E' +
        'ntrada) = 2011) AND (Estado <> '#39'ES'#39') AND (RTRIM(Processo) = '#39#39') ' +
        'AND (Cybersoft_Cadastros.dbo.Natureza.Codigo = NotasTerceiros.Na' +
        'tureza_Codigo AND Cybersoft_Cadastros.dbo.Natureza.Diferencial_I' +
        'CMS = 1)) AS Outros_Debitos,'
      
        '       (SELECT SUM(Valor) FROM Estorno WHERE(MONTH(Data) = 7 AND' +
        ' YEAR(Data) = 2011) AND (Debito_Credito = 0) AND (Imposto = '#39'ICM' +
        'S'#39')) AS Estorno_Credito,'
      
        '       (SELECT SUM(Valor) FROM Estorno WHERE(MONTH(Data) = 7 AND' +
        ' YEAR(Data) = 2011) AND (Debito_Credito = 1) AND (Imposto = '#39'ICM' +
        'S'#39')) AS Estorno_Debito,'
      
        '       (SELECT Saldo FROM SaldoICMS WHERE (Mes_Ano = '#39'092012'#39')) ' +
        'AS Saldo_ICMS'
      '')
    FetchRows = 1
    Left = 272
    Top = 169
  end
  object dstApuracao: TDataSource
    DataSet = tApuracao
    Left = 272
    Top = 108
  end
  object pApuracao: TppDBPipeline
    DataSource = dstApuracao
    UserName = 'pApuracao'
    Left = 208
    Top = 56
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 22
    Top = 104
  end
end
