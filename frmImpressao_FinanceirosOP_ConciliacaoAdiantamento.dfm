object Impressao_FinanceirosOP_ConciliacaoAdiantamento: TImpressao_FinanceirosOP_ConciliacaoAdiantamento
  Left = 660
  Top = 486
  BorderStyle = bsDialog
  Caption = 'Impressao_FinanceirosOP_ConciliacaoAdiantamento'
  ClientHeight = 249
  ClientWidth = 533
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
    Width = 533
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitWidth = 562
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 195
    Height = 21
    Caption = 'IMPRESS'#195'O - FINANCEIROS'
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
    Width = 190
    Height = 18
    Caption = 'Concilia'#231#227'o de adiantamentos'
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
    Top = 219
    Width = 533
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitTop = 207
    DesignSize = (
      533
      30)
    object bSair: TButton
      Left = 466
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
      Left = 400
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
    object bLimpar: TButton
      Left = 334
      Top = 1
      Width = 66
      Height = 28
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '&Limpar'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 2
      OnClick = bLimparClick
    end
  end
  object StaticText4: TStaticText
    Left = 22
    Top = 66
    Width = 70
    Height = 21
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Processo N'#186
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
  object cProcesso: TRxDBLookupCombo
    Left = 94
    Top = 66
    Width = 145
    Height = 21
    DropDownCount = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    LookupField = 'Processo'
    LookupDisplay = 'Processo'
    LookupDisplayIndex = 1
    LookupSource = Dados.dsProcessosDOC
    ParentFont = False
    TabOrder = 2
  end
  object lFornecedor: TStaticText
    Left = 22
    Top = 89
    Width = 70
    Height = 21
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Fornecedor'
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
  object cFornecedor: TRxDBLookupCombo
    Left = 94
    Top = 89
    Width = 418
    Height = 21
    DropDownCount = 15
    DropDownWidth = 500
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'CNPJ;Nome'
    LookupDisplayIndex = 1
    LookupSource = Dados.dsFornecedores
    ParentFont = False
    TabOrder = 4
    OnChange = cFornecedorChange
  end
  object StaticText1: TStaticText
    Left = 22
    Top = 112
    Width = 70
    Height = 21
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Cliente'
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
  object cCliente: TRxDBLookupCombo
    Left = 94
    Top = 112
    Width = 418
    Height = 21
    DropDownCount = 15
    DropDownWidth = 500
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'CNPJ;Nome'
    LookupDisplayIndex = 1
    LookupSource = Dados.dsClientes
    ParentFont = False
    TabOrder = 6
    OnChange = cClienteChange
  end
  object cExcel: TCheckBox
    Left = 22
    Top = 179
    Width = 153
    Height = 17
    Caption = 'Enviar dados para o EXCEL'
    TabOrder = 7
  end
  object StaticText2: TStaticText
    Left = 22
    Top = 135
    Width = 70
    Height = 21
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Banco'
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
  object cBanco: TRxDBLookupCombo
    Left = 94
    Top = 135
    Width = 418
    Height = 21
    DropDownCount = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'Conta;Nome'
    LookupDisplayIndex = 1
    LookupSource = Dados.dsBancos
    ParentFont = False
    TabOrder = 9
    OnChange = cClienteChange
  end
  object tAdiantamentos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT PagarReceber.Numero,'
      '       PagarReceber.Data_Documento,'
      '       PagarReceber.Processo,'
      '       PagarReceber.Valor_Operacao,'
      
        '       Beneficiario = (SELECT Nome FROM Fornecedores WHERE Forne' +
        'cedores.Codigo = PagarReceber.Fornecedor),'
      
        '       (SELECT Conta FROM Bancos WHERE(Codigo = PagarReceber.Ban' +
        'co)) AS Banco_Conta,'
      '       PagarReceber.Numero_Documento,'
      '       PagarReceber.Centro_Custo,'
      '       PagarReceber.Numero_FormaTipo,'
      '       PagarReceber.Adiantamento_Numero,'
      '       ClassificacaoFinanceira.Descricao,'
      '       Fornecedor,'
      '       Cliente,'
      
        '       Beneficiario_Cod = isnull(CLiente, 0) + isnull(Fornecedor' +
        ', 0)'
      'FROM   PagarReceber, ClassificacaoFinanceira'
      
        'WHERE  (PagarReceber.Classificacao = ClassificacaoFinanceira.Cod' +
        'igo AND ClassificacaoFinanceira.Adiantamento = 1)'
      'ORDER  BY Processo')
    Active = True
    Left = 129
    Top = 99
    object tAdiantamentosNumero: TLargeintField
      DisplayWidth = 6
      FieldName = 'Numero'
      Origin = 'PagarReceber.Numero'
    end
    object tAdiantamentosData_Documento: TDateTimeField
      DisplayWidth = 10
      FieldName = 'Data_Documento'
      Origin = 'PagarReceber.Data_Documento'
    end
    object tAdiantamentosProcesso: TStringField
      DisplayWidth = 10
      FieldName = 'Processo'
      Origin = 'PagarReceber.Processo'
      Size = 15
    end
    object tAdiantamentosBeneficiario: TStringField
      FieldName = 'Beneficiario'
      Origin = '.'
      ReadOnly = True
      Size = 60
    end
    object tAdiantamentosNumero_Documento: TStringField
      FieldName = 'Numero_Documento'
      Origin = 'PagarReceber.Numero_Documento'
      Size = 15
    end
    object tAdiantamentosCentro_Custo: TStringField
      FieldName = 'Centro_Custo'
      Origin = 'PagarReceber.Centro_Custo'
      Size = 10
    end
    object tAdiantamentosNumero_FormaTipo: TStringField
      FieldName = 'Numero_FormaTipo'
      Origin = 'PagarReceber.Numero_FormaTipo'
      Size = 15
    end
    object tAdiantamentosBanco_Conta: TStringField
      FieldName = 'Banco_Conta'
      Origin = '.'
      ReadOnly = True
      Size = 15
    end
    object tAdiantamentosAdiantamento_Numero: TLargeintField
      DisplayWidth = 6
      FieldName = 'Adiantamento_Numero'
      Origin = 'PagarReceber.Adiantamento_Numero'
    end
    object tAdiantamentosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'ClassificacaoFinanceira.Descricao'
      Size = 60
    end
    object tAdiantamentosValor_Operacao: TCurrencyField
      FieldName = 'Valor_Operacao'
      Origin = 'PagarReceber.Valor_Operacao'
    end
    object tAdiantamentosFornecedor: TSmallintField
      FieldName = 'Fornecedor'
      Origin = 'PagarReceber.Fornecedor'
    end
    object tAdiantamentosCliente: TSmallintField
      FieldName = 'Cliente'
      Origin = 'PagarReceber.Cliente'
    end
    object tAdiantamentosBeneficiario_Cod: TSmallintField
      FieldName = 'Beneficiario_Cod'
      ReadOnly = True
    end
  end
  object dstAdiantamentos: TDataSource
    DataSet = tAdiantamentos
    Left = 129
    Top = 147
  end
  object rConciliacaoAdForn: TppReport
    AutoStop = False
    DataPipeline = pPrestacao
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'F05 - Concilia'#231#227'o de Adiantamentos'
    PrinterSetup.Duplex = dpHorizontal
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
      'C:\Sistemas\Faturamento\Codigo Fonte\Relatorios\FinanceirosConci' +
      'liacaoAdiantamento.rtm'
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
    Left = 444
    Top = 147
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pPrestacao'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 18521
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
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
        mmLeft = 28310
        mmTop = 0
        mmWidth = 168239
        BandType = 0
        LayerName = Foreground1
      end
      object lTitulo: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lTitulo'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Concilia'#231#227'o de adiantamentos a Fornecedores'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 28310
        mmTop = 7144
        mmWidth = 168239
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 17727
        mmWidth = 197644
        BandType = 0
        LayerName = Foreground1
      end
      object iLogoFor: TppImage
        DesignLayer = ppDesignLayer2
        UserName = 'iLogoFor'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 16933
        mmLeft = 0
        mmTop = 0
        mmWidth = 27517
        BandType = 0
        LayerName = Foreground1
      end
    end
    object bDetalhe: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object fFaixa: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'fFaixa'
        Brush.Color = 12582847
        Pen.Style = psClear
        Shape = stRoundRect
        Visible = False
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 197115
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Data_Documento'
        DataPipeline = pPrestacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pPrestacao'
        mmHeight = 2540
        mmLeft = 1059
        mmTop = 0
        mmWidth = 12172
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'Numero_Documento'
        DataPipeline = pPrestacao
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPrestacao'
        mmHeight = 2646
        mmLeft = 15080
        mmTop = 265
        mmWidth = 11377
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'Centro_Custo'
        DataPipeline = pPrestacao
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPrestacao'
        mmHeight = 2646
        mmLeft = 28047
        mmTop = 265
        mmWidth = 26988
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'Processo'
        DataPipeline = pPrestacao
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPrestacao'
        mmHeight = 2646
        mmLeft = 56622
        mmTop = 265
        mmWidth = 16139
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'Descricao'
        DataPipeline = pPrestacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPrestacao'
        mmHeight = 2646
        mmLeft = 74082
        mmTop = 265
        mmWidth = 59266
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'Banco_Conta'
        DataPipeline = pPrestacao
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPrestacao'
        mmHeight = 2646
        mmLeft = 134938
        mmTop = 265
        mmWidth = 15611
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'Valor_Operacao'
        DataPipeline = pPrestacao
        DisplayFormat = '#,##0.00'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pPrestacao'
        mmHeight = 2646
        mmLeft = 152400
        mmTop = 265
        mmWidth = 21430
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'Valor_Baixado'
        DataPipeline = pPrestacao
        DisplayFormat = '#,##0.00'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pPrestacao'
        mmHeight = 2646
        mmLeft = 174890
        mmTop = 265
        mmWidth = 21697
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
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
        BandType = 8
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = 'Cybersoft Sistemas Ltda. (ERP Importa)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2498
        mmLeft = 0
        mmTop = 529
        mmWidth = 37804
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2498
        mmLeft = 180975
        mmTop = 529
        mmWidth = 15875
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtDocumentName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2498
        mmLeft = 79914
        mmTop = 531
        mmWidth = 34375
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable3'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 117740
        mmTop = 531
        mmWidth = 19558
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 39952
        mmTop = 0
        mmWidth = 3969
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 179917
        mmTop = 265
        mmWidth = 3704
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppSummaryBand1: TppSummaryBand
      BeforePrint = ppSummaryBand1BeforePrint
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object lDescricao_TipoP: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lDescricao_TipoP'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TOTAL DOS PAGAMENTOS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 120121
        mmTop = 1852
        mmWidth = 31750
        BandType = 7
        LayerName = Foreground1
      end
      object cPago: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'cPago'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        OnCalc = cPagoCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 152400
        mmTop = 1852
        mmWidth = 21430
        BandType = 7
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 197115
        BandType = 7
        LayerName = Foreground1
      end
      object lDescricao_TipoR: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lDescricao_TipoR'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'SALDO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 120121
        mmTop = 5027
        mmWidth = 31750
        BandType = 7
        LayerName = Foreground1
      end
      object lSaldoForn: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'cDiferenca1'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtCurrency
        DisplayFormat = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Tahoma'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2540
        mmLeft = 152400
        mmTop = 5027
        mmWidth = 21430
        BandType = 7
        LayerName = Foreground1
      end
      object cTotalBaixado: TppDBCalc
        DesignLayer = ppDesignLayer2
        UserName = 'cTotalBaixado'
        Border.mmPadding = 0
        DataField = 'Valor_Baixado'
        DataPipeline = pPrestacao
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pPrestacao'
        mmHeight = 2910
        mmLeft = 174890
        mmTop = 1852
        mmWidth = 21697
        BandType = 7
        LayerName = Foreground1
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'Adiantamento_Numero'
      DataPipeline = pPrestacao
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'pPrestacao'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 27517
        mmPrintPosition = 0
        object ppLabel15: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label15'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'BENEFICI'#193'RIO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 6
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2497
          mmLeft = 0
          mmTop = 1059
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape1: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape1'
          Anchors = [atLeft, atBottom]
          Brush.Color = 8404992
          Shape = stRoundRect
          mmHeight = 4763
          mmLeft = 0
          mmTop = 22754
          mmWidth = 13494
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel2: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label2'
          Anchors = [atLeft, atBottom]
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'DT.DOC.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 265
          mmTop = 23548
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape3: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape3'
          Anchors = [atLeft, atBottom]
          Brush.Color = 8404992
          Shape = stRoundRect
          mmHeight = 4763
          mmLeft = 13758
          mmTop = 22754
          mmWidth = 12965
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel4: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label4'
          Anchors = [atLeft, atBottom]
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'N'#186' DOC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 14288
          mmTop = 23548
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape4: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape4'
          Anchors = [atLeft, atBottom]
          Brush.Color = 8404992
          Shape = stRoundRect
          mmHeight = 4763
          mmLeft = 26988
          mmTop = 22754
          mmWidth = 28310
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel5: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label5'
          Anchors = [atLeft, atBottom]
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'CENTRO CUSTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 27252
          mmTop = 23548
          mmWidth = 26988
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape5: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape5'
          Anchors = [atLeft, atBottom]
          Brush.Color = 8404992
          Shape = stRoundRect
          mmHeight = 4763
          mmLeft = 55563
          mmTop = 22754
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel6: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label6'
          Anchors = [atLeft, atBottom]
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'PROCESSO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 55827
          mmTop = 23548
          mmWidth = 16140
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape8: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape8'
          Anchors = [atLeft, atBottom]
          Brush.Color = 8404992
          Shape = stRoundRect
          mmHeight = 4763
          mmLeft = 73025
          mmTop = 22754
          mmWidth = 60325
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel9: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label9'
          Anchors = [atLeft, atBottom]
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'CLASSIFICA'#199#195'O FINANCEIRA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 73290
          mmTop = 23548
          mmWidth = 59267
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape9: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape9'
          Anchors = [atLeft, atBottom]
          Brush.Color = 8404992
          Shape = stRoundRect
          mmHeight = 4763
          mmLeft = 133615
          mmTop = 22754
          mmWidth = 17463
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel10: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label10'
          Anchors = [atLeft, atBottom]
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'CONTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 134144
          mmTop = 23548
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape11: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape101'
          Anchors = [atLeft, atBottom]
          Brush.Color = 8404992
          Shape = stRoundRect
          mmHeight = 4763
          mmLeft = 151342
          mmTop = 22754
          mmWidth = 22490
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel12: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label12'
          Anchors = [atLeft, atBottom]
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'VALOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 151607
          mmTop = 23548
          mmWidth = 21431
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppShape12: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape12'
          Anchors = [atLeft, atBottom]
          Brush.Color = 8404992
          Shape = stRoundRect
          mmHeight = 4763
          mmLeft = 173912
          mmTop = 22680
          mmWidth = 23468
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel14: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label14'
          Anchors = [atLeft, atBottom]
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'VLR BAIXA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 174441
          mmTop = 23474
          mmWidth = 22342
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppDBText13: TppDBText
          DesignLayer = ppDesignLayer2
          UserName = 'DBText13'
          AutoSize = True
          Border.mmPadding = 0
          DataField = 'Beneficiario'
          DataPipeline = pAdiantamentos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'pAdiantamentos'
          mmHeight = 2646
          mmLeft = 16140
          mmTop = 1058
          mmWidth = 38629
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppSubReport2: TppSubReport
          DesignLayer = ppDesignLayer2
          UserName = 'SubReport2'
          ExpandAll = True
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          TraverseAllData = False
          DataPipelineName = 'pAdiantamentos'
          mmHeight = 5027
          mmLeft = 0
          mmTop = 5556
          mmWidth = 197300
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppChildReport2: TppChildReport
            AutoStop = False
            DataPipeline = pAdiantamentos
            PrinterSetup.BinName = 'Default'
            PrinterSetup.DocumentName = 'F05 - Concilia'#231#227'o de Adiantamentos'
            PrinterSetup.Duplex = dpHorizontal
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
            DataPipelineName = 'pAdiantamentos'
            object ppTitleBand1: TppTitleBand
              Background.Brush.Style = bsClear
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 10054
              mmPrintPosition = 0
              object ppShape2: TppShape
                DesignLayer = ppDesignLayer1
                UserName = 'Shape2'
                Anchors = [atLeft, atBottom]
                Brush.Color = 8404992
                Pen.Width = 0
                Shape = stRoundRect
                mmHeight = 4763
                mmLeft = 0
                mmTop = 5291
                mmWidth = 14817
                BandType = 1
                LayerName = Foreground
              end
              object ppLabel1: TppLabel
                DesignLayer = ppDesignLayer1
                UserName = 'Label1'
                Anchors = [atLeft, atBottom]
                AutoSize = False
                Border.mmPadding = 0
                Caption = 'DATA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 2910
                mmLeft = 0
                mmTop = 6085
                mmWidth = 13758
                BandType = 1
                LayerName = Foreground
              end
              object ppShape6: TppShape
                DesignLayer = ppDesignLayer1
                UserName = 'Shape6'
                Anchors = [atLeft, atBottom]
                Brush.Color = 8404992
                Pen.Width = 0
                Shape = stRoundRect
                mmHeight = 4763
                mmLeft = 15081
                mmTop = 5291
                mmWidth = 17198
                BandType = 1
                LayerName = Foreground
              end
              object ppLabel3: TppLabel
                DesignLayer = ppDesignLayer1
                UserName = 'Label3'
                Anchors = [atLeft, atBottom]
                AutoSize = False
                Border.mmPadding = 0
                Caption = 'N'#186
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 2910
                mmLeft = 15610
                mmTop = 6085
                mmWidth = 15610
                BandType = 1
                LayerName = Foreground
              end
              object ppShape7: TppShape
                DesignLayer = ppDesignLayer1
                UserName = 'Shape7'
                Anchors = [atLeft, atBottom]
                Brush.Color = 8404992
                Pen.Width = 0
                Shape = stRoundRect
                mmHeight = 4763
                mmLeft = 32544
                mmTop = 5291
                mmWidth = 28310
                BandType = 1
                LayerName = Foreground
              end
              object ppLabel7: TppLabel
                DesignLayer = ppDesignLayer1
                UserName = 'Label7'
                Anchors = [atLeft, atBottom]
                AutoSize = False
                Border.mmPadding = 0
                Caption = 'VALOR'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 2910
                mmLeft = 33338
                mmTop = 6085
                mmWidth = 26458
                BandType = 1
                LayerName = Foreground
              end
              object ppShape10: TppShape
                DesignLayer = ppDesignLayer1
                UserName = 'Shape10'
                Anchors = [atLeft, atBottom]
                Brush.Color = 8404992
                Pen.Width = 0
                Shape = stRoundRect
                mmHeight = 4763
                mmLeft = 61119
                mmTop = 5291
                mmWidth = 28046
                BandType = 1
                LayerName = Foreground
              end
              object ppLabel8: TppLabel
                DesignLayer = ppDesignLayer1
                UserName = 'Label8'
                Anchors = [atLeft, atBottom]
                AutoSize = False
                Border.mmPadding = 0
                Caption = 'PROCESSO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 2910
                mmLeft = 61383
                mmTop = 6085
                mmWidth = 26988
                BandType = 1
                LayerName = Foreground
              end
              object ppShape13: TppShape
                DesignLayer = ppDesignLayer1
                UserName = 'Shape102'
                Anchors = [atLeft, atBottom]
                Brush.Color = 14803425
                Shape = stRoundRect
                mmHeight = 4763
                mmLeft = 0
                mmTop = 0
                mmWidth = 197049
                BandType = 1
                LayerName = Foreground
              end
              object ppLabel11: TppLabel
                DesignLayer = ppDesignLayer1
                UserName = 'Label2'
                Anchors = [atLeft, atBottom]
                AutoSize = False
                Border.mmPadding = 0
                Caption = 'ADIANTAMENTOS EFETUADOS'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 2921
                mmLeft = 0
                mmTop = 794
                mmWidth = 197049
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
              object ppDBText15: TppDBText
                DesignLayer = ppDesignLayer1
                UserName = 'DBText3'
                Border.mmPadding = 0
                DataField = 'Numero'
                DataPipeline = pAdiantamentos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'pAdiantamentos'
                mmHeight = 2910
                mmLeft = 15080
                mmTop = 0
                mmWidth = 17198
                BandType = 4
                LayerName = Foreground
              end
              object ppDBText16: TppDBText
                DesignLayer = ppDesignLayer1
                UserName = 'DBText6'
                Border.mmPadding = 0
                DataField = 'Valor_Operacao'
                DataPipeline = pAdiantamentos
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pAdiantamentos'
                mmHeight = 2910
                mmLeft = 33338
                mmTop = 0
                mmWidth = 26459
                BandType = 4
                LayerName = Foreground
              end
              object ppDBText17: TppDBText
                DesignLayer = ppDesignLayer1
                UserName = 'DBText7'
                Border.mmPadding = 0
                DataField = 'Processo'
                DataPipeline = pAdiantamentos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                DataPipelineName = 'pAdiantamentos'
                mmHeight = 2381
                mmLeft = 61382
                mmTop = 0
                mmWidth = 26988
                BandType = 4
                LayerName = Foreground
              end
              object ppDBText18: TppDBText
                DesignLayer = ppDesignLayer1
                UserName = 'DBText11'
                Border.mmPadding = 0
                DataField = 'Data_Documento'
                DataPipeline = pAdiantamentos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'pAdiantamentos'
                mmHeight = 2879
                mmLeft = 0
                mmTop = 0
                mmWidth = 14816
                BandType = 4
                LayerName = Foreground
              end
            end
            object ppSummaryBand2: TppSummaryBand
              BeforePrint = ppSummaryBand2BeforePrint
              Background.Brush.Style = bsClear
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 3704
              mmPrintPosition = 0
              object lTotalAdiantamentos: TppDBCalc
                DesignLayer = ppDesignLayer1
                UserName = 'lTotalAdiantamentos'
                Border.mmPadding = 0
                DataField = 'Valor_Operacao'
                DataPipeline = pAdiantamentos
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pAdiantamentos'
                mmHeight = 2921
                mmLeft = 33338
                mmTop = 782
                mmWidth = 26459
                BandType = 7
                LayerName = Foreground
              end
              object ppLabel17: TppLabel
                DesignLayer = ppDesignLayer1
                UserName = 'Label17'
                Border.mmPadding = 0
                Caption = 'TOTAL'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2910
                mmLeft = 15610
                mmTop = 794
                mmWidth = 16669
                BandType = 7
                LayerName = Foreground
              end
              object ppLine2: TppLine
                DesignLayer = ppDesignLayer1
                UserName = 'Line2'
                Border.mmPadding = 0
                Weight = 0.750000000000000000
                mmHeight = 1323
                mmLeft = 0
                mmTop = 0
                mmWidth = 88636
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
        object ppShape14: TppShape
          DesignLayer = ppDesignLayer2
          UserName = 'Shape14'
          Anchors = [atLeft, atBottom]
          Brush.Color = 14803425
          Shape = stRoundRect
          mmHeight = 4763
          mmLeft = 0
          mmTop = 17463
          mmWidth = 197546
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
        object ppLabel16: TppLabel
          DesignLayer = ppDesignLayer2
          UserName = 'Label16'
          Anchors = [atLeft, atBottom]
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'PRESTA'#199#195'O DE CONTAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 0
          mmTop = 18256
          mmWidth = 196384
          BandType = 3
          GroupNo = 0
          LayerName = Foreground1
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
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
  object pEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    UserName = 'pEmpresas'
    Left = 368
    Top = 99
    object pEmpresasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
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
  end
  object pAdiantamentos: TppDBPipeline
    DataSource = dstAdiantamentos
    UserName = 'pAdiantamentos'
    Left = 288
    Top = 99
    object pAdiantamentosppField1: TppField
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 6
      Position = 0
    end
    object pAdiantamentosppField2: TppField
      FieldAlias = 'Data_Documento'
      FieldName = 'Data_Documento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 10
      Position = 1
    end
    object pAdiantamentosppField3: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 15
      DisplayWidth = 10
      Position = 2
    end
    object pAdiantamentosppField4: TppField
      FieldAlias = 'Beneficiario'
      FieldName = 'Beneficiario'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object pAdiantamentosppField5: TppField
      FieldAlias = 'Numero_Documento'
      FieldName = 'Numero_Documento'
      FieldLength = 15
      DisplayWidth = 15
      Position = 4
    end
    object pAdiantamentosppField6: TppField
      FieldAlias = 'Centro_Custo'
      FieldName = 'Centro_Custo'
      FieldLength = 10
      DisplayWidth = 10
      Position = 5
    end
    object pAdiantamentosppField7: TppField
      FieldAlias = 'Numero_FormaTipo'
      FieldName = 'Numero_FormaTipo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 6
    end
    object pAdiantamentosppField8: TppField
      FieldAlias = 'Banco_Conta'
      FieldName = 'Banco_Conta'
      FieldLength = 15
      DisplayWidth = 15
      Position = 7
    end
    object pAdiantamentosppField9: TppField
      FieldAlias = 'Adiantamento_Numero'
      FieldName = 'Adiantamento_Numero'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 6
      Position = 8
    end
    object pAdiantamentosppField10: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 60
      DisplayWidth = 60
      Position = 9
    end
    object pAdiantamentosppField11: TppField
      FieldAlias = 'Valor_Operacao'
      FieldName = 'Valor_Operacao'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 10
    end
    object pAdiantamentosppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'Fornecedor'
      FieldName = 'Fornecedor'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object pAdiantamentosppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'Cliente'
      FieldName = 'Cliente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object pAdiantamentosppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'Beneficiario_Cod'
      FieldName = 'Beneficiario_Cod'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
  end
  object tPrestacao: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT PagarReceber.Numero, '
      '       PagarReceber.Data_Documento,'
      '       PagarReceber.Processo,'
      '       PagarReceber.Valor_Operacao,'
      
        '       (SELECT SUM(Valor) FROM PagarReceberBaixas WHERE(PagarRec' +
        'eberBaixas.Numero = PagarReceber.Numero)) AS Valor_Baixado,'
      '       CASE '
      
        '           WHEN PagarReceber.Cliente    <> 0 THEN (SELECT Nome F' +
        'ROM Clientes     WHERE(Clientes.Codigo = PagarReceber.Cliente))'
      
        '           WHEN PagarReceber.Fornecedor <> 0 THEN (SELECT Nome F' +
        'ROM Fornecedores WHERE(Fornecedores.Codigo = PagarReceber.Fornec' +
        'edor))'
      '       END AS Beneficiario,'
      
        '       isnull(PagarReceber.Cliente, 0) + isnull(PagarReceber.For' +
        'necedor, 0) as Beneficiario_Cod,'
      
        '      (SELECT Conta FROM Bancos WHERE(Codigo = PagarReceber.Banc' +
        'o)) AS Banco_Conta,'
      '      PagarReceber.Numero_Documento,'
      '      PagarReceber.Centro_Custo,'
      '      PagarReceber.Numero_FormaTipo,'
      '      PagarReceber.Adiantamento_Numero,'
      '      ClassificacaoFinanceira.Descricao'
      'FROM   PagarReceber, ClassificacaoFinanceira'
      
        'WHERE  (PagarReceber.Classificacao = ClassificacaoFinanceira.Cod' +
        'igo AND ClassificacaoFinanceira.Adiantamento = 0)'
      'ORDER  BY Processo')
    Active = True
    Left = 215
    Top = 99
    object tPrestacaoNumero: TLargeintField
      FieldName = 'Numero'
      Origin = 'PagarReceber.Numero'
    end
    object tPrestacaoData_Documento: TDateTimeField
      FieldName = 'Data_Documento'
      Origin = 'PagarReceber.Data_Documento'
    end
    object tPrestacaoProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'PagarReceber.Processo'
      Size = 15
    end
    object tPrestacaoBeneficiario: TStringField
      FieldName = 'Beneficiario'
      Origin = '.'
      ReadOnly = True
      Size = 60
    end
    object tPrestacaoBanco_Conta: TStringField
      FieldName = 'Banco_Conta'
      Origin = '.'
      ReadOnly = True
      Size = 15
    end
    object tPrestacaoNumero_Documento: TStringField
      FieldName = 'Numero_Documento'
      Origin = 'PagarReceber.Numero_Documento'
      Size = 15
    end
    object tPrestacaoCentro_Custo: TStringField
      FieldName = 'Centro_Custo'
      Origin = 'PagarReceber.Centro_Custo'
      Size = 10
    end
    object tPrestacaoNumero_FormaTipo: TStringField
      FieldName = 'Numero_FormaTipo'
      Origin = 'PagarReceber.Numero_FormaTipo'
      Size = 15
    end
    object tPrestacaoAdiantamento_Numero: TLargeintField
      FieldName = 'Adiantamento_Numero'
      Origin = 'PagarReceber.Adiantamento_Numero'
    end
    object tPrestacaoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'ClassificacaoFinanceira.Descricao'
      Size = 60
    end
    object tPrestacaoValor_Baixado: TCurrencyField
      FieldName = 'Valor_Baixado'
      Origin = '.'
      ReadOnly = True
    end
    object tPrestacaoValor_Operacao: TCurrencyField
      FieldName = 'Valor_Operacao'
      Origin = 'PagarReceber.Valor_Operacao'
    end
    object tPrestacaoBeneficiario_Cod: TSmallintField
      FieldName = 'Beneficiario_Cod'
      ReadOnly = True
    end
  end
  object dstPrestacao: TDataSource
    DataSet = tPrestacao
    Left = 215
    Top = 147
  end
  object pPrestacao: TppDBPipeline
    DataSource = dstPrestacao
    UserName = 'pPrestacao'
    Left = 288
    Top = 147
    object pPrestacaoppField1: TppField
      FieldAlias = 'Numero'
      FieldName = 'Numero'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 0
    end
    object pPrestacaoppField2: TppField
      FieldAlias = 'Data_Documento'
      FieldName = 'Data_Documento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object pPrestacaoppField3: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 2
    end
    object pPrestacaoppField4: TppField
      FieldAlias = 'Beneficiario'
      FieldName = 'Beneficiario'
      FieldLength = 60
      DisplayWidth = 60
      Position = 3
    end
    object pPrestacaoppField5: TppField
      FieldAlias = 'Banco_Conta'
      FieldName = 'Banco_Conta'
      FieldLength = 15
      DisplayWidth = 15
      Position = 4
    end
    object pPrestacaoppField6: TppField
      FieldAlias = 'Numero_Documento'
      FieldName = 'Numero_Documento'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object pPrestacaoppField7: TppField
      FieldAlias = 'Centro_Custo'
      FieldName = 'Centro_Custo'
      FieldLength = 10
      DisplayWidth = 10
      Position = 6
    end
    object pPrestacaoppField8: TppField
      FieldAlias = 'Numero_FormaTipo'
      FieldName = 'Numero_FormaTipo'
      FieldLength = 15
      DisplayWidth = 15
      Position = 7
    end
    object pPrestacaoppField9: TppField
      FieldAlias = 'Adiantamento_Numero'
      FieldName = 'Adiantamento_Numero'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 8
    end
    object pPrestacaoppField10: TppField
      FieldAlias = 'Descricao'
      FieldName = 'Descricao'
      FieldLength = 60
      DisplayWidth = 60
      Position = 9
    end
    object pPrestacaoppField11: TppField
      FieldAlias = 'Valor_Baixado'
      FieldName = 'Valor_Baixado'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 10
    end
    object pPrestacaoppField12: TppField
      FieldAlias = 'Valor_Operacao'
      FieldName = 'Valor_Operacao'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 11
    end
    object pPrestacaoppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'Beneficiario_Cod'
      FieldName = 'Beneficiario_Cod'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
  end
  object rConciliacaoAdCli: TppReport
    AutoStop = False
    DataPipeline = pPrestacao
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'F05 - Concilia'#231#227'o de Adiantamentos'
    PrinterSetup.Duplex = dpHorizontal
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
      'C:\Sistemas\Faturamento\Codigo Fonte\Relatorios\FinanceirosConci' +
      'liacaoAdiantamento.rtm'
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
    Left = 444
    Top = 98
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pPrestacao'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 18521
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText2'
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
        mmLeft = 28310
        mmTop = 0
        mmWidth = 169069
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'lTitulo'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Concilia'#231#227'o de adiantamentos de Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 28310
        mmTop = 7144
        mmWidth = 169069
        BandType = 0
        LayerName = BandLayer4
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line6'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        Pen.Width = 0
        Style = lsDouble
        mmHeight = 794
        mmLeft = 0
        mmTop = 17727
        mmWidth = 197644
        BandType = 0
        LayerName = BandLayer4
      end
      object iLogoCli: TppImage
        DesignLayer = ppDesignLayer4
        UserName = 'iLogo'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 16933
        mmLeft = 0
        mmTop = 0
        mmWidth = 27517
        BandType = 0
        LayerName = BandLayer4
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3175
      mmPrintPosition = 0
      object ppShape15: TppShape
        DesignLayer = ppDesignLayer4
        UserName = 'fFaixa'
        Brush.Color = 12582847
        Pen.Style = psClear
        Shape = stRoundRect
        Visible = False
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 197115
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Data_Documento'
        DataPipeline = pPrestacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pPrestacao'
        mmHeight = 2540
        mmLeft = 319
        mmTop = 296
        mmWidth = 12764
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'Numero_Documento'
        DataPipeline = pPrestacao
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPrestacao'
        mmHeight = 2646
        mmLeft = 14288
        mmTop = 265
        mmWidth = 12004
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'Centro_Custo'
        DataPipeline = pPrestacao
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPrestacao'
        mmHeight = 2646
        mmLeft = 27417
        mmTop = 265
        mmWidth = 27503
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText19: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'Processo'
        DataPipeline = pPrestacao
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPrestacao'
        mmHeight = 2646
        mmLeft = 55992
        mmTop = 265
        mmWidth = 16472
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText20: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'Descricao'
        DataPipeline = pPrestacao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPrestacao'
        mmHeight = 2646
        mmLeft = 73457
        mmTop = 265
        mmWidth = 59451
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText21: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'Banco_Conta'
        DataPipeline = pPrestacao
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPrestacao'
        mmHeight = 2646
        mmLeft = 133995
        mmTop = 265
        mmWidth = 16683
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText22: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'Valor_Operacao'
        DataPipeline = pPrestacao
        DisplayFormat = '#,##0.00'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pPrestacao'
        mmHeight = 2646
        mmLeft = 151773
        mmTop = 265
        mmWidth = 21598
        BandType = 4
        LayerName = BandLayer4
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer4
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'Valor_Baixado'
        DataPipeline = pPrestacao
        DisplayFormat = '#,##0.00'
        Font.Charset = HEBREW_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pPrestacao'
        mmHeight = 2646
        mmLeft = 174625
        mmTop = 265
        mmWidth = 22235
        BandType = 4
        LayerName = BandLayer4
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
        BandType = 8
        LayerName = BandLayer4
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = 'Cybersoft Sistemas Ltda. (ERP Importa)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2498
        mmLeft = 0
        mmTop = 529
        mmWidth = 37804
        BandType = 8
        LayerName = BandLayer4
      end
      object ppSystemVariable4: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2498
        mmLeft = 180975
        mmTop = 529
        mmWidth = 15875
        BandType = 8
        LayerName = BandLayer4
      end
      object ppSystemVariable5: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtDocumentName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2498
        mmLeft = 79914
        mmTop = 531
        mmWidth = 34375
        BandType = 8
        LayerName = BandLayer4
      end
      object ppSystemVariable6: TppSystemVariable
        DesignLayer = ppDesignLayer4
        UserName = 'SystemVariable3'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 117740
        mmTop = 531
        mmWidth = 19558
        BandType = 8
        LayerName = BandLayer4
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 39952
        mmTop = 0
        mmWidth = 3969
        BandType = 8
        LayerName = BandLayer4
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 179917
        mmTop = 265
        mmWidth = 3704
        BandType = 8
        LayerName = BandLayer4
      end
    end
    object ppSummaryBand3: TppSummaryBand
      AfterGenerate = ppSummaryBand3AfterGenerate
      BeforePrint = ppSummaryBand1BeforePrint
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 16404
      mmPrintPosition = 0
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'lDescricao_TipoP'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TOTAL DOS RECEBIMENTOS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2985
        mmLeft = 123029
        mmTop = 1852
        mmWidth = 28443
        BandType = 7
        LayerName = BandLayer4
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer4
        UserName = 'Line3'
        Border.mmPadding = 0
        Pen.Style = psDot
        Pen.Width = 0
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 197115
        BandType = 7
        LayerName = BandLayer4
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'lDescricao_TipoR'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'SALDO EM ABERTO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2985
        mmLeft = 123029
        mmTop = 5471
        mmWidth = 28443
        BandType = 7
        LayerName = BandLayer4
      end
      object lSaldoAberto: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'cDiferenca1'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2985
        mmLeft = 151773
        mmTop = 5471
        mmWidth = 21598
        BandType = 7
        LayerName = BandLayer4
      end
      object lTotalRec: TppDBCalc
        DesignLayer = ppDesignLayer4
        UserName = 'DBCalc1'
        Border.mmPadding = 0
        DataField = 'Valor_Operacao'
        DataPipeline = pPrestacao
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pPrestacao'
        mmHeight = 2985
        mmLeft = 151773
        mmTop = 1852
        mmWidth = 21598
        BandType = 7
        LayerName = BandLayer4
      end
      object lTotalBaixa: TppDBCalc
        DesignLayer = ppDesignLayer4
        UserName = 'lTotalBaixa'
        Border.mmPadding = 0
        DataField = 'Valor_Baixado'
        DataPipeline = pPrestacao
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'pPrestacao'
        mmHeight = 2985
        mmLeft = 174890
        mmTop = 1852
        mmWidth = 21697
        BandType = 7
        LayerName = BandLayer4
      end
      object ppLabel38: TppLabel
        DesignLayer = ppDesignLayer4
        UserName = 'lDescricao_TipoR1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'SALDO CLIENTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2985
        mmLeft = 123029
        mmTop = 8996
        mmWidth = 28443
        BandType = 7
        LayerName = BandLayer4
      end
      object lSaldoCli: TppVariable
        DesignLayer = ppDesignLayer4
        UserName = 'lSaldoCli'
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 1
        DataType = dtCurrency
        DisplayFormat = '###,###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2985
        mmLeft = 151773
        mmTop = 8996
        mmWidth = 21598
        BandType = 7
        LayerName = BandLayer4
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'Beneficiario_Cod'
      DataPipeline = pPrestacao
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'pPrestacao'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        BeforeGenerate = ppGroupHeaderBand2BeforeGenerate
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        PrintHeight = phDynamic
        mmBottomOffset = 0
        mmHeight = 24606
        mmPrintPosition = 0
        object ppLabel22: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label15'
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'BENEFICI'#193'RIO:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Calibri'
          Font.Size = 6
          Font.Style = []
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          Transparent = True
          mmHeight = 2497
          mmLeft = 0
          mmTop = 1059
          mmWidth = 15610
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppShape16: TppShape
          DesignLayer = ppDesignLayer4
          UserName = 'Shape1'
          Anchors = [atLeft, atBottom]
          Brush.Color = 8404992
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 4467
          mmLeft = 0
          mmTop = 19031
          mmWidth = 13494
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel23: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label2'
          Anchors = [atLeft, atBottom]
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'DT.DOC.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Size = 6
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 265
          mmTop = 19973
          mmWidth = 12835
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppShape17: TppShape
          DesignLayer = ppDesignLayer4
          UserName = 'Shape3'
          Anchors = [atLeft, atBottom]
          Brush.Color = 8404992
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 4467
          mmLeft = 13758
          mmTop = 19031
          mmWidth = 12965
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel24: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label4'
          Anchors = [atLeft, atBottom]
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'N'#186' DOC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Size = 6
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 14288
          mmTop = 19825
          mmWidth = 12004
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppShape18: TppShape
          DesignLayer = ppDesignLayer4
          UserName = 'Shape4'
          Anchors = [atLeft, atBottom]
          Brush.Color = 8404992
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 4467
          mmLeft = 26988
          mmTop = 19031
          mmWidth = 28310
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel25: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label5'
          Anchors = [atLeft, atBottom]
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'CENTRO CUSTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Size = 6
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 27417
          mmTop = 19825
          mmWidth = 27503
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppShape19: TppShape
          DesignLayer = ppDesignLayer4
          UserName = 'Shape5'
          Anchors = [atLeft, atBottom]
          Brush.Color = 8404992
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 4467
          mmLeft = 55563
          mmTop = 19031
          mmWidth = 17198
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel26: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label6'
          Anchors = [atLeft, atBottom]
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'PROCESSO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Size = 6
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 55992
          mmTop = 19973
          mmWidth = 16472
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppShape20: TppShape
          DesignLayer = ppDesignLayer4
          UserName = 'Shape8'
          Anchors = [atLeft, atBottom]
          Brush.Color = 8404992
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 4467
          mmLeft = 73025
          mmTop = 19031
          mmWidth = 60325
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel27: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label9'
          Anchors = [atLeft, atBottom]
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'CLASSIFICA'#199#195'O FINANCEIRA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Size = 6
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 73457
          mmTop = 19825
          mmWidth = 59451
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppShape21: TppShape
          DesignLayer = ppDesignLayer4
          UserName = 'Shape9'
          Anchors = [atLeft, atBottom]
          Brush.Color = 8404992
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 4467
          mmLeft = 133615
          mmTop = 19031
          mmWidth = 17463
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel28: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label10'
          Anchors = [atLeft, atBottom]
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'CONTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Size = 6
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 133995
          mmTop = 19825
          mmWidth = 16683
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppShape22: TppShape
          DesignLayer = ppDesignLayer4
          UserName = 'Shape101'
          Anchors = [atLeft, atBottom]
          Brush.Color = 8404992
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 4467
          mmLeft = 151342
          mmTop = 19031
          mmWidth = 22490
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel29: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label12'
          Anchors = [atLeft, atBottom]
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'VALOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Size = 6
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 151773
          mmTop = 19825
          mmWidth = 21598
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppShape23: TppShape
          DesignLayer = ppDesignLayer4
          UserName = 'Shape12'
          Anchors = [atLeft, atBottom]
          Brush.Color = 8404992
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 4467
          mmLeft = 174096
          mmTop = 19031
          mmWidth = 23194
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel30: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label14'
          Anchors = [atLeft, atBottom]
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'VLR BAIXA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Calibri'
          Font.Size = 6
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 174625
          mmTop = 19825
          mmWidth = 22235
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppDBText24: TppDBText
          DesignLayer = ppDesignLayer4
          UserName = 'DBText13'
          Border.mmPadding = 0
          DataField = 'Beneficiario'
          DataPipeline = pPrestacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Tahoma'
          Font.Size = 6
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'pPrestacao'
          mmHeight = 2646
          mmLeft = 16140
          mmTop = 1058
          mmWidth = 167570
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppSubReport1: TppSubReport
          DesignLayer = ppDesignLayer4
          UserName = 'SubReport2'
          ExpandAll = True
          NewPrintJob = False
          OutlineSettings.CreateNode = True
          TraverseAllData = False
          DataPipelineName = 'pAdiantamentos'
          mmHeight = 4134
          mmLeft = 0
          mmTop = 5556
          mmWidth = 197300
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmMinHeight = 0
          object ppChildReport1: TppChildReport
            AutoStop = False
            DataPipeline = pAdiantamentos
            PrinterSetup.BinName = 'Default'
            PrinterSetup.DocumentName = 'F05 - Concilia'#231#227'o de Adiantamentos'
            PrinterSetup.Duplex = dpHorizontal
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
            DataPipelineName = 'pAdiantamentos'
            object ppTitleBand2: TppTitleBand
              Background.Brush.Style = bsClear
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 10319
              mmPrintPosition = 0
              object ppShape24: TppShape
                DesignLayer = ppDesignLayer3
                UserName = 'Shape2'
                Anchors = [atLeft, atBottom]
                Brush.Color = 8404992
                Pen.Width = 0
                Shape = stRoundRect
                mmHeight = 4319
                mmLeft = 0
                mmTop = 5112
                mmWidth = 14817
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel31: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label1'
                Anchors = [atLeft, atBottom]
                AutoSize = False
                Border.mmPadding = 0
                Caption = 'DATA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Name = 'Calibri'
                Font.Size = 6
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 2910
                mmLeft = 332
                mmTop = 5906
                mmWidth = 14090
                BandType = 1
                LayerName = Foreground2
              end
              object ppShape25: TppShape
                DesignLayer = ppDesignLayer3
                UserName = 'Shape6'
                Anchors = [atLeft, atBottom]
                Brush.Color = 8404992
                Pen.Width = 0
                Shape = stRoundRect
                mmHeight = 4319
                mmLeft = 15081
                mmTop = 5112
                mmWidth = 17198
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel32: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label3'
                Anchors = [atLeft, atBottom]
                AutoSize = False
                Border.mmPadding = 0
                Caption = 'N'#186
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Name = 'Calibri'
                Font.Size = 6
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 2910
                mmLeft = 15592
                mmTop = 5906
                mmWidth = 16256
                BandType = 1
                LayerName = Foreground2
              end
              object ppShape26: TppShape
                DesignLayer = ppDesignLayer3
                UserName = 'Shape7'
                Anchors = [atLeft, atBottom]
                Brush.Color = 8404992
                Pen.Width = 0
                Shape = stRoundRect
                mmHeight = 4319
                mmLeft = 32544
                mmTop = 5112
                mmWidth = 28310
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel33: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label7'
                Anchors = [atLeft, atBottom]
                AutoSize = False
                Border.mmPadding = 0
                Caption = 'VALOR'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Name = 'Calibri'
                Font.Size = 6
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 2910
                mmLeft = 33006
                mmTop = 5906
                mmWidth = 27454
                BandType = 1
                LayerName = Foreground2
              end
              object ppShape27: TppShape
                DesignLayer = ppDesignLayer3
                UserName = 'Shape10'
                Anchors = [atLeft, atBottom]
                Brush.Color = 8404992
                Pen.Width = 0
                Shape = stRoundRect
                mmHeight = 4319
                mmLeft = 61119
                mmTop = 5112
                mmWidth = 28046
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel34: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label8'
                Anchors = [atLeft, atBottom]
                AutoSize = False
                Border.mmPadding = 0
                Caption = 'PROCESSO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Name = 'Calibri'
                Font.Size = 6
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 2910
                mmLeft = 61549
                mmTop = 5906
                mmWidth = 27320
                BandType = 1
                LayerName = Foreground2
              end
              object ppShape28: TppShape
                DesignLayer = ppDesignLayer3
                UserName = 'Shape102'
                Anchors = [atLeft, atBottom]
                Brush.Color = 14803425
                Pen.Width = 0
                Shape = stRoundRect
                mmHeight = 4763
                mmLeft = 0
                mmTop = -179
                mmWidth = 197381
                BandType = 1
                LayerName = Foreground2
              end
              object ppLabel35: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label2'
                Anchors = [atLeft, atBottom]
                AutoSize = False
                Border.mmPadding = 0
                Caption = 'ADIANTAMENTOS RECEBIDOS'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 6
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taCentered
                Transparent = True
                mmHeight = 2921
                mmLeft = 0
                mmTop = 615
                mmWidth = 197381
                BandType = 1
                LayerName = Foreground2
              end
            end
            object ppDetailBand3: TppDetailBand
              Background1.Brush.Style = bsClear
              Background2.Brush.Style = bsClear
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 3175
              mmPrintPosition = 0
              object ppDBText25: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText3'
                Border.mmPadding = 0
                DataField = 'Numero'
                DataPipeline = pAdiantamentos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'pAdiantamentos'
                mmHeight = 2911
                mmLeft = 15080
                mmTop = 147
                mmWidth = 17198
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText26: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText6'
                Border.mmPadding = 0
                DataField = 'Valor_Operacao'
                DataPipeline = pAdiantamentos
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 6
                Font.Style = []
                ParentDataPipeline = False
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pAdiantamentos'
                mmHeight = 2911
                mmLeft = 33338
                mmTop = 147
                mmWidth = 26459
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText27: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText7'
                Border.mmPadding = 0
                DataField = 'Processo'
                DataPipeline = pAdiantamentos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 6
                Font.Style = []
                Transparent = True
                DataPipelineName = 'pAdiantamentos'
                mmHeight = 2911
                mmLeft = 61382
                mmTop = 147
                mmWidth = 26988
                BandType = 4
                LayerName = Foreground2
              end
              object ppDBText28: TppDBText
                DesignLayer = ppDesignLayer3
                UserName = 'DBText11'
                Border.mmPadding = 0
                DataField = 'Data_Documento'
                DataPipeline = pAdiantamentos
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 6
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'pAdiantamentos'
                mmHeight = 2911
                mmLeft = 0
                mmTop = 147
                mmWidth = 14816
                BandType = 4
                LayerName = Foreground2
              end
            end
            object ppSummaryBand4: TppSummaryBand
              BeforePrint = ppSummaryBand2BeforePrint
              Background.Brush.Style = bsClear
              Border.mmPadding = 0
              mmBottomOffset = 0
              mmHeight = 3704
              mmPrintPosition = 0
              object lTotalAdCli: TppDBCalc
                DesignLayer = ppDesignLayer3
                UserName = 'lTotalAdiantamentos'
                Border.mmPadding = 0
                DataField = 'Valor_Operacao'
                DataPipeline = pAdiantamentos
                DisplayFormat = ',##0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 6
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'pAdiantamentos'
                mmHeight = 2921
                mmLeft = 33338
                mmTop = 782
                mmWidth = 26459
                BandType = 7
                LayerName = Foreground2
              end
              object ppLabel36: TppLabel
                DesignLayer = ppDesignLayer3
                UserName = 'Label17'
                Border.mmPadding = 0
                Caption = 'TOTAL'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Calibri'
                Font.Size = 6
                Font.Style = [fsBold]
                FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
                FormFieldSettings.FormFieldType = fftNone
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2646
                mmLeft = 26723
                mmTop = 794
                mmWidth = 5556
                BandType = 7
                LayerName = Foreground2
              end
              object ppLine12: TppLine
                DesignLayer = ppDesignLayer3
                UserName = 'Line2'
                Border.mmPadding = 0
                Pen.Style = psDot
                Pen.Width = 0
                mmHeight = 1323
                mmLeft = 0
                mmTop = 0
                mmWidth = 88636
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
        object ppShape29: TppShape
          DesignLayer = ppDesignLayer4
          UserName = 'Shape14'
          Anchors = [atLeft, atBottom]
          Brush.Color = 14803425
          Pen.Width = 0
          Shape = stRoundRect
          mmHeight = 4467
          mmLeft = 0
          mmTop = 13888
          mmWidth = 197380
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
        object ppLabel37: TppLabel
          DesignLayer = ppDesignLayer4
          UserName = 'Label16'
          Anchors = [atLeft, atBottom]
          AutoSize = False
          Border.mmPadding = 0
          Caption = 'PRESTA'#199#195'O DE CONTAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = [fsBold]
          FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
          FormFieldSettings.FormFieldType = fftNone
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 296
          mmTop = 14681
          mmWidth = 196402
          BandType = 3
          GroupNo = 0
          LayerName = BandLayer4
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        Background.Brush.Style = bsClear
        Border.mmPadding = 0
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppDesignLayers4: TppDesignLayers
      object ppDesignLayer4: TppDesignLayer
        UserName = 'BandLayer4'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
end
