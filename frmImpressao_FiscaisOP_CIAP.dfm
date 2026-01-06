object Impressao_FiscaisOP_CIAP: TImpressao_FiscaisOP_CIAP
  Left = 511
  Top = 315
  BorderStyle = bsDialog
  Caption = 'Impressao_FiscaisOP_CIAP'
  ClientHeight = 157
  ClientWidth = 474
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
    Width = 474
    Height = 46
    Align = alTop
    Stretch = True
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
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
    Left = 8
    Top = 22
    Width = 393
    Height = 18
    Caption = 'Controle de Cr'#233'dito ICMS do Ativo Permanente (CIAP Mod."C").'
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
    Top = 127
    Width = 474
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      474
      30)
    object bSair: TButton
      Left = 408
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
      Left = 343
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
  object cImpressora: TRadioGroup
    Left = 187
    Top = 55
    Width = 278
    Height = 61
    Caption = 'Impressora'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Matricial'
      'Jato deTinta')
    TabOrder = 1
  end
  object cData: TDateEdit
    Left = 75
    Top = 78
    Width = 106
    Height = 21
    CheckOnExit = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    GlyphKind = gkCustom
    Glyph.Data = {
      D2080000424DD208000000000000360000002800000026000000130000000100
      1800000000009C08000000000000000000000000000000000000171717151515
      1515151515151515151515151515151515151515151515151515151515151515
      1515151515151515151515151515151516161617171715151515151515151515
      1515151515151515151515151515151515151515151515151515151515151515
      15151515151515151516161600005A5A5A555555565656555555555555565656
      5656565757575858585858585757575757575555555555555555555555555555
      555555555959595A5A5A55555556565655555555555556565656565657575758
      5858585858575757575757555555555555555555555555555555555555595959
      0000767676B9B9B9AEAEAEABABABAAAAAAA9A9A9A7A7A7A6A6A6A3A3A3A3A3A3
      A6A6A6ABABABB3B3B3B6B6B6B2B2B2AEAEAEACACACB0B0B0B7B7B7767676B9B9
      B9AEAEAEABABABAAAAAAA9A9A9A7A7A7A6A6A6A3A3A3A3A3A3A6A6A6ABABABB3
      B3B3B6B6B6B2B2B2AEAEAEACACACB0B0B0B7B7B700009E9E9EFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFBFBFBF6F6F6F2F2F2E6E6E6CFCFCFBEBEBEC5C5C5
      E1E1E1FDFDFDFEFEFEFEFEFEFCFCFC9E9E9EFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEFEFEFBFBFBF6F6F6FFFFFFFFFFFFCFCFCFBEBEBEC5C5C5E1E1E1FDFDFDFE
      FEFEFEFEFEFCFCFC0000818181FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FEFEE7E7E7BCBCBCC6C6C6EDEDEDE9E9E9B9B9B98D8D8D8D8D8DCCCCCCFEFEFE
      F0F0F0818181FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFF
      FFFFFFFFEDEDEDE9E9E9B9B9B98D8D8D8D8D8DCCCCCCFEFEFEF0F0F000006A6A
      6AFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFECFCFCF565656515151D0
      D0D0FEFEFEFEFEFEF3F3F3AFAFAF7D7D7DBCBCBCE3E3E36A6A6AFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFEFEFEFFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFEFE
      FEF3F3F3AFAFAF7D7D7DBCBCBCE3E3E30000565656F8F8F8FEFEFEFEFEFEFEFE
      FEFEFEFEFEFEFEFEFEFED3D3D33636362D2D2DCCCCCCFEFEFEFEFEFEFEFEFEFE
      FEFECFCFCFABABABB5B5B5565656F8F8F8FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
      FFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFECFCFCFABAB
      ABB5B5B50000424242F0F0F0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDDDD
      DD2121210F0F0FC2C2C2FEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFEFEFEAEAEAE42
      4242F0F0F0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFC0C0C0C0C0C0FFFFFF
      FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFEFEFEAEAEAE0000333333E7E7E7
      FEFEFEFBFBFBFBFBFBFCFCFCF3F3F3C8C8C8D3D3D31A1A1A030303B3B3B3FEFE
      FEFDFDFDFDFDFDFDFDFDFEFEFEFEFEFEA7A7A7333333E7E7E7FEFEFEFBFBFBFB
      FBFBFFFFFFFFFFFFFFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFDFDFDFDFDFD
      FDFDFDFEFEFEFEFEFEA7A7A70000252525D6D6D6FEFEFEF6F6F6F6F6F6FCFCFC
      EEEEEE1919191010100D0D0D0D0D0DB3B3B3FEFEFEF8F8F8F8F8F8F8F8F8F9F9
      F9FEFEFE8E8E8E252525D6D6D6FEFEFEF6F6F6F6F6F6FFFFFFC0C0C0C0C0C0C0
      C0C0C0C0C0FFFFFFFFFFFFFEFEFEF8F8F8F8F8F8F8F8F8F9F9F9FEFEFE8E8E8E
      00001A1A1AC4C4C4FDFEFDF2F3F2F3F5F2F4F5F3FAFBF99B9C9A313231151614
      282928BCBDBCFEFEFEF5F6F5F6F7F5F6F7F5F7F9F6FEFEFE7C7C7B1A1A1AC4C4
      C4FDFDFDF2F2F2F3F3F3F4F4F4FAFAFAC0C0C0C0C0C0C0C0C0FFFFFFFFFFFFFE
      FEFEF5F5F5F6F6F6F6F6F6F7F7F7FEFEFE7B7B7B0000131313B3B6B2FDFEFCEE
      F0ECEFF2EDF0F5EEF4F9F1FEFEFEE6EBE4787D75686C66CED1CCFCFEFBF7FEF2
      F5FBF2F4F8F2F6FBF3FEFEFE696A69131313B4B4B4FDFDFDEEEEEEF0F0F0F2F2
      F2F6F6F6FFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFCFCFCF9F9F9F7F7F7F5F5F5F8
      F8F8FEFEFE696969000020231EAA7D7CE1C1A2E6CAB0E4C59DE7C99BE3C184E5
      C27EEACA83EFD697EED497EBCC85EBCC85E8C67CEBCE93EACB95E5C485E4C289
      4A4739212121818181BABABAC5C5C5BCBCBCBEBEBEB2B2B2B1B1B1B7B7B7C5C5
      C5C4C4C4B9B9B9B9B9B9B3B3B3BFBFBFBDBDBDB4B4B4B4B4B443434300002E35
      2A7D5545D1A475DEBB97E0BE8DDEB877CE963FC1852FC7892FD7A53DE9C876E8
      C46CE1B756CA8B2FD9A849E2BB71DEB36CC9954935321F3131315454549A9A9A
      B3B3B3B2B2B2A8A8A88181817171717474748A8A8AB2B2B2ADADAD9E9E9E7575
      75909090A8A8A8A2A2A28383832C2C2C000022271F7E5858A0693FA9703EB47D
      43BA823FBC8538BA7F2FC0832FC89236D9AA58DBAD5BD8A957C1852FCC9743D2
      A15BD2A35FBF8A532C2B222424245B5B5B616161666666717171737373737373
      6C6C6C6F6F6F7B7B7B9696969999999595957171718383839090909393937E7E
      7E28282800001318107C58617E532F85562F935E2FAB775BAE7748AE732FB075
      2FB47A2FB6782FB6782FC0873DBA8970B27833AA712FA2692F9E683F23232215
      15155E5E5E4C4C4C4F4F4F5555557373736E6E6E646464656565696969686868
      6868687676768686866969696262625D5D5D61616122222200000C10093F391D
      473A0050410045380068655D4946394F4000776300705D007360007D67004F45
      11757A72342C066754006856004C3E011C1B1B0D0D0D3131312929292F2F2F28
      28286262624242422E2E2E4747474343434545454A4A4A363636777777212121
      3C3C3C3E3E3E2D2D2D1B1B1B00000D110A3E3719463900534400292203686C64
      464B422A22007F69006E5C007A66005A4A00191710888F842926196A57006957
      00483B001B1B1B0E0E0E2E2E2E2929293131311919196969694747471818184B
      4B4B4242424949493535351515158B8B8B2222223E3E3E3E3E3E2A2A2A1B1B1B
      00000D110A3E371A493B003A310B1A1D186A6A6A3C3D3B0000004035007F6A00
      594A0003020010110F818181161A14302A0E695700493C001B1B1B0E0E0E2F2F
      2F2A2A2A2626261B1B1B6A6A6A3C3C3C0000002626264C4C4C35353501010110
      10108181811717172222223E3E3E2B2B2B1B1B1B0000}
    NumGlyphs = 2
    ParentFont = False
    YearDigits = dyFour
    TabOrder = 2
  end
  object StaticText1: TStaticText
    Left = 11
    Top = 78
    Width = 62
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Data Final'
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
  object tImobilizado: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      
        'SELECT (SELECT DISTINCT Natureza_Codigo FROM NotasTerceirosItens' +
        ' WHERE(Nota = Imobilizado.Nota) AND (Codigo_Mercadoria = Imobili' +
        'zado.Codigo)) AS Natureza_Codigo,'
      '       Nota, '
      '       0 AS Saida_Entrada,'
      '       Data_Nota AS Data_EntradaSaida,'
      '       Codigo AS Codigo_Mercadoria,'
      '       Descricao AS Descricao_Mercadoria, '
      '       ICMS_Proprio AS CIAP_ValorICMS,'
      '       0 AS ICMS_Saida'
      'FROM   Imobilizado'
      'WHERE (Data_Nota <= '#39'08/31/2011'#39') '
      '      AND Saida_Nota IS NULL'
      'UNION ALL'
      
        'SELECT (SELECT DISTINCT Natureza_Codigo FROM NotasTerceirosItens' +
        ' WHERE(Nota = Imobilizado.Nota) AND (Codigo_Mercadoria = Imobili' +
        'zado.Codigo)),'
      '       Saida_Nota, '
      '       1,'
      '       Saida_DataNota,'
      '       Codigo,'
      '       Descricao, '
      '       0,'
      '       ICMS_Proprio'
      'FROM   Imobilizado'
      'WHERE (Data_Nota <= '#39'08/31/2011'#39') '
      '      AND Saida_Nota IS NOT NULL')
    Left = 9
    Top = 48
  end
  object tNotas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      
        'SELECT SUM(Valor_TotalProdutos) AS Total_Produtos, SUM(Valor_Tot' +
        'alNota) AS Total_Nota FROM NotasFiscais'
      
        'WHERE (YEAR(Data_Emissao) = :pAno AND MONTH(Data_Emissao) = :pMe' +
        's AND Valor_ICMS <> 0)')
    Active = True
    Left = 72
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pAno'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'pMes'
        Value = Null
      end>
    object tNotasTotal_Produtos: TCurrencyField
      FieldName = 'Total_Produtos'
      Origin = '.'
      ReadOnly = True
    end
    object tNotasTotal_Nota: TCurrencyField
      FieldName = 'Total_Nota'
      Origin = '.'
      ReadOnly = True
    end
  end
  object rCIAP: TppReport
    AutoStop = False
    DataPipeline = ppImobilizado
    NoDataBehaviors = [ndBlankReport]
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
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
    Template.FileName = 'C:\Sistemas\Faturamento\Codigo Fonte\Relatorios\CIAP.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    BeforePrint = rCIAPBeforePrint
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
    Left = 216
    Top = 8
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'ppImobilizado'
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = ppHeaderBand1BeforePrint
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 45508
      mmPrintPosition = 0
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape3'
        Shape = stRoundRect
        mmHeight = 12435
        mmLeft = 0
        mmTop = 32808
        mmWidth = 197644
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape2'
        Shape = stRoundRect
        mmHeight = 10584
        mmLeft = 265
        mmTop = 0
        mmWidth = 20373
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        Shape = stRoundRect
        mmHeight = 10584
        mmLeft = 20902
        mmTop = 0
        mmWidth = 176742
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CONTROLE DE CR'#201'DITO DO ICMS DO ATIVO PERMANENTE (CIAP)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 21430
        mmTop = 1059
        mmWidth = 175685
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'MODELO C'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 21430
        mmTop = 5555
        mmWidth = 175685
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'M'#202'S/ANO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2822
        mmLeft = 1059
        mmTop = 1059
        mmWidth = 18786
        BandType = 0
        LayerName = Foreground1
      end
      object lMesAno: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lMesAno'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '06/2009'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 1059
        mmTop = 5555
        mmWidth = 18786
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape4'
        Shape = stRoundRect
        mmHeight = 10319
        mmLeft = 0
        mmTop = 17463
        mmWidth = 197644
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = '(01) IDENTIFICA'#199#195'O DO CONTRIBUINTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2921
        mmLeft = 0
        mmTop = 14023
        mmWidth = 47710
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NOME:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2822
        mmLeft = 1059
        mmTop = 18785
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ENDERE'#199'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2822
        mmLeft = 1058
        mmTop = 23019
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = ppEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEmpresas'
        mmHeight = 3703
        mmLeft = 18785
        mmTop = 18521
        mmWidth = 82022
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'Bairro'
        DataPipeline = ppEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEmpresas'
        mmHeight = 3704
        mmLeft = 114036
        mmTop = 22754
        mmWidth = 35719
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
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2822
        mmLeft = 101336
        mmTop = 18785
        mmWidth = 12172
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'I.ESTADUAL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2822
        mmLeft = 150548
        mmTop = 18785
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'IE'
        DataPipeline = ppEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEmpresas'
        mmHeight = 3704
        mmLeft = 169598
        mmTop = 18521
        mmWidth = 22225
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'BAIRRO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2822
        mmLeft = 101336
        mmTop = 23019
        mmWidth = 12171
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'CNPJ'
        DataPipeline = ppEmpresas
        DisplayFormat = '##.###.###/####-##;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEmpresas'
        mmHeight = 3704
        mmLeft = 114036
        mmTop = 18521
        mmWidth = 33602
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'MUNIC'#205'PIO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2822
        mmLeft = 150548
        mmTop = 23019
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground1
      end
      object lEndereco: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lEndereco'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'lEndereco'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 18785
        mmTop = 22754
        mmWidth = 82021
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'Nome'
        DataPipeline = ppMunicipios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppMunicipios'
        mmHeight = 3704
        mmLeft = 169598
        mmTop = 22754
        mmWidth = 27252
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = '(02) DEMONSTRATIVO DA BASE DO CREDITO A SER APROPRIADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2921
        mmLeft = 0
        mmTop = 29369
        mmWidth = 79206
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'IDENTIFICA'#199#195'O DO BEM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2822
        mmLeft = 794
        mmTop = 33602
        mmWidth = 133350
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 12700
        mmLeft = 134409
        mmTop = 32808
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 265
        mmTop = 37042
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label14'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'VALOR DO ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2822
        mmLeft = 135202
        mmTop = 33602
        mmWidth = 61913
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line1'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 16404
        mmTop = 37306
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label15'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'C'#211'DIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2822
        mmLeft = 528
        mmTop = 39423
        mmWidth = 15611
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label16'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DATA DA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2822
        mmLeft = 16933
        mmTop = 38100
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ENTRADA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2822
        mmLeft = 16934
        mmTop = 41010
        mmWidth = 17198
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 34396
        mmTop = 37306
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label18'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NOTA FISCAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2822
        mmLeft = 34925
        mmTop = 39952
        mmWidth = 20638
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 55827
        mmTop = 37306
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label19'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'DESCRI'#199#195'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2822
        mmLeft = 56355
        mmTop = 39423
        mmWidth = 77788
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 155575
        mmTop = 37306
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label20'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'ENTRADA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2822
        mmLeft = 135202
        mmTop = 38100
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label201'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '(CR'#201'DITO)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2822
        mmLeft = 135202
        mmTop = 41010
        mmWidth = 20109
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label202'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'SA'#205'DA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2822
        mmLeft = 156104
        mmTop = 38100
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label23'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '(BAIXA)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2822
        mmLeft = 156104
        mmTop = 41010
        mmWidth = 20109
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 176477
        mmTop = 37306
        mmWidth = 2646
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label24'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'SALDO ACUMUL.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2822
        mmLeft = 177007
        mmTop = 38100
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label25'
        AutoSize = False
        Border.mmPadding = 0
        Caption = '(BASE CR'#201'DITO)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2822
        mmLeft = 177008
        mmTop = 41010
        mmWidth = 20109
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine30: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line30'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 265
        mmTop = 4498
        mmWidth = 20108
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line9'
        Border.mmPadding = 0
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 43656
        mmWidth = 5292
        BandType = 0
        LayerName = Foreground1
      end
      object lMovimento: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lMovimento'
        Angle = 45
        Border.mmPadding = 0
        Caption = 'N'#195'O HOUVE MOVIMENTO NO PER'#205'ODO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16737843
        Font.Name = 'LLRubberGrotesque'
        Font.Size = 40
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 146579
        mmLeft = 16933
        mmTop = 8731
        mmWidth = 146579
        BandType = 0
        LayerName = Foreground1
        RotatedOriginLeft = 111
        RotatedOriginTop = 133298
      end
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'Codigo_Mercadoria'
        DataPipeline = ppImobilizado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppImobilizado'
        mmHeight = 3556
        mmLeft = 528
        mmTop = 414
        mmWidth = 15611
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'Data_EntradaSaida'
        DataPipeline = ppImobilizado
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppImobilizado'
        mmHeight = 3556
        mmLeft = 16934
        mmTop = 414
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'Nota'
        DataPipeline = ppImobilizado
        DisplayFormat = '0000000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppImobilizado'
        mmHeight = 3556
        mmLeft = 34925
        mmTop = 414
        mmWidth = 20638
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        DataField = 'CIAP_ValorICMS'
        DataPipeline = ppImobilizado
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppImobilizado'
        mmHeight = 3556
        mmLeft = 135202
        mmTop = 414
        mmWidth = 20109
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        Anchors = [atLeft, atBottom]
        Border.mmPadding = 0
        DataField = 'ICMS_Saida'
        DataPipeline = ppImobilizado
        DisplayFormat = '###,###,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppImobilizado'
        mmHeight = 3556
        mmLeft = 156104
        mmTop = 414
        mmWidth = 20109
        BandType = 4
        LayerName = Foreground1
      end
      object lDescricao: TppMemo
        DesignLayer = ppDesignLayer2
        UserName = 'lDescricao'
        Border.mmPadding = 0
        Caption = 'lDescricao'
        CharWrap = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        RemoveEmptyLines = False
        Stretch = True
        Transparent = True
        mmHeight = 3556
        mmLeft = 56355
        mmTop = 414
        mmWidth = 77788
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line8'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 134409
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line10'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 34396
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine11: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line11'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 16404
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine12: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line12'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 155575
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine13: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line13'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 176477
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine14: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line14'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 197300
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine15: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line15'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine16: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line16'
        Border.mmPadding = 0
        ParentHeight = True
        Position = lpLeft
        StretchWithParent = True
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 55827
        mmTop = 0
        mmWidth = 2646
        BandType = 4
        LayerName = Foreground1
      end
      object lSaldo: TppVariable
        DesignLayer = ppDesignLayer2
        UserName = 'lSaldo'
        Anchors = [atLeft, atBottom]
        AutoSize = False
        Border.mmPadding = 0
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtCurrency
        DisplayFormat = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        OnCalc = lSaldoCalc
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3260
        mmLeft = 177007
        mmTop = 529
        mmWidth = 20109
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppLine17: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line17'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 197909
        BandType = 8
        LayerName = Foreground1
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label26'
        Border.mmPadding = 0
        Caption = 'Cybersoft Sistemas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3175
        mmLeft = 0
        mmTop = 529
        mmWidth = 24553
        BandType = 8
        LayerName = Foreground1
      end
      object lData: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lData'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Cybersoft Sistemas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 96309
        mmTop = 529
        mmWidth = 78317
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine18: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line18'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 93927
        mmTop = 0
        mmWidth = 2117
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine19: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line19'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 175948
        mmTop = 0
        mmWidth = 2117
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 178330
        mmTop = 529
        mmWidth = 18521
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine20: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line20'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 27781
        mmTop = 0
        mmWidth = 2117
        BandType = 8
        LayerName = Foreground1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'Contador_Nome'
        DataPipeline = ppEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEmpresas'
        mmHeight = 3175
        mmLeft = 29104
        mmTop = 529
        mmWidth = 52123
        BandType = 8
        LayerName = Foreground1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'Contador_CRC'
        DataPipeline = ppEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppEmpresas'
        mmHeight = 3175
        mmLeft = 81756
        mmTop = 529
        mmWidth = 11906
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppSummaryBand1: TppSummaryBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppSubReport1: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppSaldo'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 794
        mmWidth = 197300
        BandType = 7
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppSaldo
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
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
          DataPipelineName = 'ppSaldo'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 19844
            mmPrintPosition = 0
            object ppShape6: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape6'
              Shape = stRoundRect
              mmHeight = 15875
              mmLeft = 0
              mmTop = 3969
              mmWidth = 197644
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel4: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label4'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'OPERA'#199#213'ES E PRESTA'#199#213'ES'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 27781
              mmTop = 4498
              mmWidth = 64823
              BandType = 1
              LayerName = Foreground
            end
            object ppLine31: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line31'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 15875
              mmLeft = 92869
              mmTop = 3969
              mmWidth = 2646
              BandType = 1
              LayerName = Foreground
            end
            object ppLine32: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line32'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 27252
              mmTop = 7673
              mmWidth = 65617
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel28: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label303'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'COEFICIENTE'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 2910
              mmLeft = 93398
              mmTop = 4498
              mmWidth = 20373
              BandType = 1
              LayerName = Foreground
            end
            object ppLine33: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line33'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 15875
              mmLeft = 27252
              mmTop = 3969
              mmWidth = 2910
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel44: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label44'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'M'#202'S'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 529
              mmTop = 10319
              mmWidth = 26458
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel48: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label48'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'TR'#205'BUTADAS /'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 27781
              mmTop = 8467
              mmWidth = 32015
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel50: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label50'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '(1)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 27781
              mmTop = 15346
              mmWidth = 32015
              BandType = 1
              LayerName = Foreground
            end
            object ppLine34: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line34'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11906
              mmLeft = 60061
              mmTop = 7938
              mmWidth = 2646
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel51: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label51'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'TOTAL DAS SA'#205'DAS'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 60590
              mmTop = 8467
              mmWidth = 32015
              BandType = 1
              LayerName = Foreground
            end
            object ppLine35: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line35'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 11377
              mmLeft = 114036
              mmTop = 3969
              mmWidth = 2646
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel52: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label52'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '(2)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 60590
              mmTop = 15346
              mmWidth = 32015
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel53: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label53'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'DE CR'#201'DITO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 2910
              mmLeft = 93398
              mmTop = 7938
              mmWidth = 20373
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel54: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label54'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '(3= 1:2)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 2910
              mmLeft = 93398
              mmTop = 15346
              mmWidth = 20373
              BandType = 1
              LayerName = Foreground
            end
            object ppLine36: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line36'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 15875
              mmLeft = 114036
              mmTop = 3969
              mmWidth = 2646
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel55: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label55'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'SALDO ACUMULADO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 2910
              mmLeft = 114565
              mmTop = 4498
              mmWidth = 32015
              BandType = 1
              LayerName = Foreground
            end
            object ppLine37: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line37'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 15875
              mmLeft = 146844
              mmTop = 3969
              mmWidth = 2646
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel56: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label56'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'BASE DO CR'#201'DITO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 2910
              mmLeft = 114565
              mmTop = 7938
              mmWidth = 32015
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel57: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label57'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'A SER APROPRIADO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 2910
              mmLeft = 114565
              mmTop = 11642
              mmWidth = 32015
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel58: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label58'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '(4)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 2910
              mmLeft = 114564
              mmTop = 15346
              mmWidth = 32014
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel59: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label401'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'CR'#201'DITO A SER'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 2910
              mmLeft = 167216
              mmTop = 4498
              mmWidth = 29898
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel60: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label60'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'APROPRIADO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 2910
              mmLeft = 167216
              mmTop = 7938
              mmWidth = 29898
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel61: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label61'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '(6= 3x4:5)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 2910
              mmLeft = 167216
              mmTop = 15346
              mmWidth = 29898
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel62: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label62'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'FRA'#199#195'O'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 2910
              mmLeft = 147373
              mmTop = 4498
              mmWidth = 19050
              BandType = 1
              LayerName = Foreground
            end
            object ppLine38: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line38'
              Border.mmPadding = 0
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 15875
              mmLeft = 166688
              mmTop = 3969
              mmWidth = 1058
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel63: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label63'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'MENSAL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 2910
              mmLeft = 147373
              mmTop = 7938
              mmWidth = 19050
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel64: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label64'
              AutoSize = False
              Border.mmPadding = 0
              Caption = '(5)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGray
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              WordWrap = True
              mmHeight = 2910
              mmLeft = 147374
              mmTop = 15346
              mmWidth = 19050
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel27: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label27'
              Border.mmPadding = 0
              Caption = 
                '(03) DEMONSTRATIVO DA APURA'#199#195'O DO CR'#201'DITO A SER EFETIVAMENTE APR' +
                'OPRIADO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              Transparent = True
              mmHeight = 2921
              mmLeft = 0
              mmTop = 794
              mmWidth = 105876
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel29: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label29'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'EXPORTA'#199#195'O'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2910
              mmLeft = 27781
              mmTop = 11906
              mmWidth = 32015
              BandType = 1
              LayerName = Foreground
            end
          end
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 3969
            mmPrintPosition = 0
            object ppDBText11: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText11'
              Border.mmPadding = 0
              DataField = 'Mes'
              DataPipeline = ppSaldo
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppSaldo'
              mmHeight = 2921
              mmLeft = 1323
              mmTop = 794
              mmWidth = 25665
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText14: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText14'
              Border.mmPadding = 0
              DataField = 'Total_Produtos'
              DataPipeline = ppSaldo
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppSaldo'
              mmHeight = 2910
              mmLeft = 27780
              mmTop = 794
              mmWidth = 30956
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText15: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText15'
              Border.mmPadding = 0
              DataField = 'Total_Nota'
              DataPipeline = ppSaldo
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppSaldo'
              mmHeight = 2910
              mmLeft = 60854
              mmTop = 794
              mmWidth = 30956
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText16: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText16'
              Border.mmPadding = 0
              DataField = 'Coeficiente'
              DataPipeline = ppSaldo
              DisplayFormat = ',##0.0000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppSaldo'
              mmHeight = 2910
              mmLeft = 93399
              mmTop = 794
              mmWidth = 19315
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText17: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText17'
              Border.mmPadding = 0
              DataField = 'Saldo'
              DataPipeline = ppSaldo
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppSaldo'
              mmHeight = 2910
              mmLeft = 114564
              mmTop = 794
              mmWidth = 30956
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText18: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText18'
              Border.mmPadding = 0
              DataField = 'Fracao'
              DataPipeline = ppSaldo
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppSaldo'
              mmHeight = 2910
              mmLeft = 147374
              mmTop = 794
              mmWidth = 19050
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText19: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText19'
              Border.mmPadding = 0
              DataField = 'Credito'
              DataPipeline = ppSaldo
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppSaldo'
              mmHeight = 2910
              mmLeft = 167216
              mmTop = 794
              mmWidth = 28840
              BandType = 4
              LayerName = Foreground
            end
            object ppLine22: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line22'
              Border.mmPadding = 0
              Pen.Style = psDot
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 27252
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppLine23: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line23'
              Border.mmPadding = 0
              Pen.Style = psDot
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 0
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppLine24: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line24'
              Border.mmPadding = 0
              Pen.Style = psDot
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 60061
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppLine25: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line25'
              Border.mmPadding = 0
              Pen.Style = psDot
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 92869
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppLine26: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line26'
              Border.mmPadding = 0
              Pen.Style = psDot
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 114036
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppLine27: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line27'
              Border.mmPadding = 0
              Pen.Style = psDot
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 146844
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppLine28: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line28'
              Border.mmPadding = 0
              Pen.Style = psDot
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 166688
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
            object ppLine29: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line29'
              Border.mmPadding = 0
              Pen.Style = psDot
              ParentHeight = True
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 197300
              mmTop = 0
              mmWidth = 2646
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand2: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 4763
            mmPrintPosition = 0
            object ppLine39: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line39'
              Border.mmPadding = 0
              Weight = 0.750000000000000000
              mmHeight = 3969
              mmLeft = 265
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
        end
      end
      object ppLine21: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line21'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
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
    object ppParameterList1: TppParameterList
    end
  end
  object ppImobilizado: TppDBPipeline
    DataSource = dstImobilizado
    UserName = 'Imobilizado'
    Left = 304
    Top = 8
  end
  object dstImobilizado: TDataSource
    DataSet = tImobilizado
    Left = 40
    Top = 48
  end
  object ppEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    UserName = 'Empresas'
    Left = 336
    Top = 8
    object ppEmpresasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 3
      Position = 0
    end
    object ppEmpresasppField2: TppField
      FieldAlias = 'Razao_Social'
      FieldName = 'Razao_Social'
      FieldLength = 50
      DisplayWidth = 35
      Position = 1
    end
    object ppEmpresasppField3: TppField
      FieldAlias = 'Nome_Fantasia'
      FieldName = 'Nome_Fantasia'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppEmpresasppField4: TppField
      FieldAlias = 'Rua'
      FieldName = 'Rua'
      FieldLength = 30
      DisplayWidth = 30
      Position = 3
    end
    object ppEmpresasppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'Rua_Numero'
      FieldName = 'Rua_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppEmpresasppField6: TppField
      FieldAlias = 'Complemento'
      FieldName = 'Complemento'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object ppEmpresasppField7: TppField
      FieldAlias = 'Bairro'
      FieldName = 'Bairro'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object ppEmpresasppField8: TppField
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 7
    end
    object ppEmpresasppField9: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 8
    end
    object ppEmpresasppField10: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 12
      Position = 9
    end
    object ppEmpresasppField11: TppField
      FieldAlias = 'IE'
      FieldName = 'IE'
      FieldLength = 14
      DisplayWidth = 14
      Position = 10
    end
    object ppEmpresasppField12: TppField
      FieldAlias = 'IM'
      FieldName = 'IM'
      FieldLength = 14
      DisplayWidth = 14
      Position = 11
    end
    object ppEmpresasppField13: TppField
      FieldAlias = 'Junta_Codigo'
      FieldName = 'Junta_Codigo'
      FieldLength = 12
      DisplayWidth = 12
      Position = 12
    end
    object ppEmpresasppField14: TppField
      FieldAlias = 'Junta_Data'
      FieldName = 'Junta_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
    object ppEmpresasppField15: TppField
      FieldAlias = 'Ramo_Atividade'
      FieldName = 'Ramo_Atividade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object ppEmpresasppField16: TppField
      FieldAlias = 'Codigo_Atividade'
      FieldName = 'Codigo_Atividade'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
    object ppEmpresasppField17: TppField
      FieldAlias = 'Responsavel'
      FieldName = 'Responsavel'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object ppEmpresasppField18: TppField
      FieldAlias = 'Email'
      FieldName = 'Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 17
    end
    object ppEmpresasppField19: TppField
      FieldAlias = 'Site'
      FieldName = 'Site'
      FieldLength = 60
      DisplayWidth = 60
      Position = 18
    end
    object ppEmpresasppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'Duplicata'
      FieldName = 'Duplicata'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppEmpresasppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Saida'
      FieldName = 'Nota_Saida'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object ppEmpresasppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Entrada'
      FieldName = 'Nota_Entrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object ppEmpresasppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Servico'
      FieldName = 'Nota_Servico'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object ppEmpresasppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_Eletronica'
      FieldName = 'Nota_Eletronica'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object ppEmpresasppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'Memorando_Exportacao'
      FieldName = 'Memorando_Exportacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object ppEmpresasppField26: TppField
      FieldAlias = 'Sincronizar_NumeroNF'
      FieldName = 'Sincronizar_NumeroNF'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 25
    end
    object ppEmpresasppField27: TppField
      FieldAlias = 'Mascara_PlanoContas'
      FieldName = 'Mascara_PlanoContas'
      FieldLength = 20
      DisplayWidth = 20
      Position = 26
    end
    object ppEmpresasppField28: TppField
      FieldAlias = 'Codigo_Reduzido'
      FieldName = 'Codigo_Reduzido'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 27
    end
    object ppEmpresasppField29: TppField
      FieldAlias = 'Diretor'
      FieldName = 'Diretor'
      FieldLength = 50
      DisplayWidth = 50
      Position = 28
    end
    object ppEmpresasppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Numero'
      FieldName = 'Diario_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object ppEmpresasppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'Diario_Pagina'
      FieldName = 'Diario_Pagina'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object ppEmpresasppField32: TppField
      FieldAlias = 'Ultimo_Encerramento'
      FieldName = 'Ultimo_Encerramento'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 31
    end
    object ppEmpresasppField33: TppField
      FieldAlias = 'NFServico_Modelo'
      FieldName = 'NFServico_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 32
    end
    object ppEmpresasppField34: TppField
      FieldAlias = 'NFServico_Serie'
      FieldName = 'NFServico_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 33
    end
    object ppEmpresasppField35: TppField
      FieldAlias = 'NFEntrada_Modelo'
      FieldName = 'NFEntrada_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 34
    end
    object ppEmpresasppField36: TppField
      FieldAlias = 'NFEntrada_Serie'
      FieldName = 'NFEntrada_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 35
    end
    object ppEmpresasppField37: TppField
      FieldAlias = 'NFSaida_Modelo'
      FieldName = 'NFSaida_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 36
    end
    object ppEmpresasppField38: TppField
      FieldAlias = 'NFSaida_Serie'
      FieldName = 'NFSaida_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 37
    end
    object ppEmpresasppField39: TppField
      FieldAlias = 'Matriz_Filial'
      FieldName = 'Matriz_Filial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 38
    end
    object ppEmpresasppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Filial'
      FieldName = 'Numero_Filial'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 3
      Position = 39
    end
    object ppEmpresasppField41: TppField
      FieldAlias = 'NFEletronica_Modelo'
      FieldName = 'NFEletronica_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 40
    end
    object ppEmpresasppField42: TppField
      FieldAlias = 'NFEletronica_Serie'
      FieldName = 'NFEletronica_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 41
    end
    object ppEmpresasppField43: TppField
      FieldAlias = 'NFEletronica_Layout'
      FieldName = 'NFEletronica_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 42
    end
    object ppEmpresasppField44: TppField
      FieldAlias = 'Certificado_Digital'
      FieldName = 'Certificado_Digital'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'Numero_Lote'
      FieldName = 'Numero_Lote'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 44
    end
    object ppEmpresasppField46: TppField
      FieldAlias = 'Inscricao_SUFRAMA'
      FieldName = 'Inscricao_SUFRAMA'
      FieldLength = 9
      DisplayWidth = 9
      Position = 45
    end
    object ppEmpresasppField47: TppField
      FieldAlias = 'Contador_Nome'
      FieldName = 'Contador_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 46
    end
    object ppEmpresasppField48: TppField
      FieldAlias = 'Contador_CNPJ'
      FieldName = 'Contador_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 47
    end
    object ppEmpresasppField49: TppField
      FieldAlias = 'Contador_CPF'
      FieldName = 'Contador_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 48
    end
    object ppEmpresasppField50: TppField
      FieldAlias = 'Contador_CRC'
      FieldName = 'Contador_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 49
    end
    object ppEmpresasppField51: TppField
      FieldAlias = 'Contador_CEP'
      FieldName = 'Contador_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 50
    end
    object ppEmpresasppField52: TppField
      FieldAlias = 'Contador_Rua'
      FieldName = 'Contador_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 51
    end
    object ppEmpresasppField53: TppField
      FieldAlias = 'Contador_Numero'
      FieldName = 'Contador_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 52
    end
    object ppEmpresasppField54: TppField
      FieldAlias = 'Contador_Complemento'
      FieldName = 'Contador_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 53
    end
    object ppEmpresasppField55: TppField
      FieldAlias = 'Contador_Bairro'
      FieldName = 'Contador_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 54
    end
    object ppEmpresasppField56: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Municipio'
      FieldName = 'Contador_Municipio'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 55
    end
    object ppEmpresasppField57: TppField
      FieldAlias = 'Contador_Telefone'
      FieldName = 'Contador_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 56
    end
    object ppEmpresasppField58: TppField
      FieldAlias = 'Contador_FAX'
      FieldName = 'Contador_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 57
    end
    object ppEmpresasppField59: TppField
      FieldAlias = 'Contador_Email'
      FieldName = 'Contador_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 58
    end
    object ppEmpresasppField60: TppField
      FieldAlias = 'Contador_Estado'
      FieldName = 'Contador_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 59
    end
    object ppEmpresasppField61: TppField
      FieldAlias = 'Data_Constituicao'
      FieldName = 'Data_Constituicao'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 60
    end
    object ppEmpresasppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tributacao'
      FieldName = 'Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 61
    end
    object ppEmpresasppField63: TppField
      Alignment = taRightJustify
      FieldAlias = 'Municipio_Codigo'
      FieldName = 'Municipio_Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 62
    end
    object ppEmpresasppField64: TppField
      FieldAlias = 'Diretor_CPF'
      FieldName = 'Diretor_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 63
    end
    object ppEmpresasppField65: TppField
      FieldAlias = 'Responsavel_CPF'
      FieldName = 'Responsavel_CPF'
      FieldLength = 11
      DisplayWidth = 11
      Position = 64
    end
    object ppEmpresasppField66: TppField
      FieldAlias = 'Responsavel_Funcao'
      FieldName = 'Responsavel_Funcao'
      FieldLength = 50
      DisplayWidth = 50
      Position = 65
    end
    object ppEmpresasppField67: TppField
      FieldAlias = 'Banco_Dados'
      FieldName = 'Banco_Dados'
      FieldLength = 50
      DisplayWidth = 50
      Position = 66
    end
    object ppEmpresasppField68: TppField
      FieldAlias = 'Banco_Contabilidade'
      FieldName = 'Banco_Contabilidade'
      FieldLength = 50
      DisplayWidth = 50
      Position = 67
    end
    object ppEmpresasppField69: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente'
      FieldName = 'Ambiente'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 68
    end
    object ppEmpresasppField70: TppField
      FieldAlias = 'Licensa_NFE_Util'
      FieldName = 'Licensa_NFE_Util'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 69
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField71: TppField
      FieldAlias = 'Processo_Automatico'
      FieldName = 'Processo_Automatico'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 70
    end
    object ppEmpresasppField72: TppField
      FieldAlias = 'Processo'
      FieldName = 'Processo'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 71
    end
    object ppEmpresasppField73: TppField
      Alignment = taRightJustify
      FieldAlias = 'Apuracao_IPI'
      FieldName = 'Apuracao_IPI'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 72
    end
    object ppEmpresasppField74: TppField
      FieldAlias = 'Perfil_SPED'
      FieldName = 'Perfil_SPED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 73
    end
    object ppEmpresasppField75: TppField
      Alignment = taRightJustify
      FieldAlias = 'Tipo_Atividade'
      FieldName = 'Tipo_Atividade'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 74
    end
    object ppEmpresasppField76: TppField
      FieldAlias = 'Vencimento_Certificado'
      FieldName = 'Vencimento_Certificado'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 75
    end
    object ppEmpresasppField77: TppField
      FieldAlias = 'UF_WebService'
      FieldName = 'UF_WebService'
      FieldLength = 10
      DisplayWidth = 10
      Position = 76
    end
    object ppEmpresasppField78: TppField
      Alignment = taRightJustify
      FieldAlias = 'Regime_Apuracao'
      FieldName = 'Regime_Apuracao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 77
    end
    object ppEmpresasppField79: TppField
      FieldAlias = 'Mascara_Processo'
      FieldName = 'Mascara_Processo'
      FieldLength = 7
      DisplayWidth = 7
      Position = 78
    end
    object ppEmpresasppField80: TppField
      FieldAlias = 'Incentivo_Fiscal'
      FieldName = 'Incentivo_Fiscal'
      FieldLength = 20
      DisplayWidth = 20
      Position = 79
    end
    object ppEmpresasppField81: TppField
      FieldAlias = 'Email_SMTP'
      FieldName = 'Email_SMTP'
      FieldLength = 80
      DisplayWidth = 80
      Position = 80
    end
    object ppEmpresasppField82: TppField
      FieldAlias = 'Email_Senha'
      FieldName = 'Email_Senha'
      FieldLength = 30
      DisplayWidth = 30
      Position = 81
    end
    object ppEmpresasppField83: TppField
      FieldAlias = 'Email_MsgEnvioNFE'
      FieldName = 'Email_MsgEnvioNFE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 82
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField84: TppField
      FieldAlias = 'Email_MsgCancelamento'
      FieldName = 'Email_MsgCancelamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 83
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField85: TppField
      Alignment = taRightJustify
      FieldAlias = 'Email_Porta'
      FieldName = 'Email_Porta'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 84
    end
    object ppEmpresasppField86: TppField
      FieldAlias = 'Email_ID'
      FieldName = 'Email_ID'
      FieldLength = 80
      DisplayWidth = 80
      Position = 85
    end
    object ppEmpresasppField87: TppField
      FieldAlias = 'Distribuidora'
      FieldName = 'Distribuidora'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 86
    end
    object ppEmpresasppField88: TppField
      FieldAlias = 'Fechamento_Financeiro'
      FieldName = 'Fechamento_Financeiro'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 87
    end
    object ppEmpresasppField89: TppField
      FieldAlias = 'Modulo_Comercial'
      FieldName = 'Modulo_Comercial'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 88
    end
    object ppEmpresasppField90: TppField
      FieldAlias = 'Consolidar'
      FieldName = 'Consolidar'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 89
    end
    object ppEmpresasppField91: TppField
      Alignment = taRightJustify
      FieldAlias = 'Pedido_Nota'
      FieldName = 'Pedido_Nota'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 5
      Position = 90
    end
    object ppEmpresasppField92: TppField
      FieldAlias = 'Email_Copia'
      FieldName = 'Email_Copia'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 91
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField93: TppField
      FieldAlias = 'Email_SSL'
      FieldName = 'Email_SSL'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 92
    end
    object ppEmpresasppField94: TppField
      FieldAlias = 'Email_Autenticacao'
      FieldName = 'Email_Autenticacao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 93
    end
    object ppEmpresasppField95: TppField
      FieldAlias = 'Email_Metodo'
      FieldName = 'Email_Metodo'
      FieldLength = 20
      DisplayWidth = 20
      Position = 94
    end
    object ppEmpresasppField96: TppField
      FieldAlias = 'CartaCorrecao_Layout'
      FieldName = 'CartaCorrecao_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 95
    end
    object ppEmpresasppField97: TppField
      FieldAlias = 'CNAE'
      FieldName = 'CNAE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 96
    end
    object ppEmpresasppField98: TppField
      FieldAlias = 'Email_MsgEnvioCCE'
      FieldName = 'Email_MsgEnvioCCE'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 97
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField99: TppField
      Alignment = taRightJustify
      FieldAlias = 'Nota_EletronicaEntrada'
      FieldName = 'Nota_EletronicaEntrada'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 98
    end
    object ppEmpresasppField100: TppField
      FieldAlias = 'NFEletronica_ModeloEntrada'
      FieldName = 'NFEletronica_ModeloEntrada'
      FieldLength = 2
      DisplayWidth = 2
      Position = 99
    end
    object ppEmpresasppField101: TppField
      FieldAlias = 'NFEletronica_SerieEntrada'
      FieldName = 'NFEletronica_SerieEntrada'
      FieldLength = 3
      DisplayWidth = 3
      Position = 100
    end
    object ppEmpresasppField102: TppField
      FieldAlias = 'NFEletronica_Numeracao'
      FieldName = 'NFEletronica_Numeracao'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 101
    end
    object ppEmpresasppField103: TppField
      Alignment = taRightJustify
      FieldAlias = 'Logomarca_Largura'
      FieldName = 'Logomarca_Largura'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 102
    end
    object ppEmpresasppField104: TppField
      FieldAlias = 'Pagamento'
      FieldName = 'Pagamento'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 103
    end
    object ppEmpresasppField105: TppField
      FieldAlias = 'Modulo_Emprestimos'
      FieldName = 'Modulo_Emprestimos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 104
    end
    object ppEmpresasppField106: TppField
      FieldAlias = 'Modulo_XMLCTe'
      FieldName = 'Modulo_XMLCTe'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 105
    end
    object ppEmpresasppField107: TppField
      FieldAlias = 'Regime'
      FieldName = 'Regime'
      FieldLength = 1
      DisplayWidth = 1
      Position = 106
    end
    object ppEmpresasppField108: TppField
      FieldAlias = 'Modulo_Vendas'
      FieldName = 'Modulo_Vendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 107
    end
    object ppEmpresasppField109: TppField
      Alignment = taRightJustify
      FieldAlias = 'CTE_Numero'
      FieldName = 'CTE_Numero'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 108
    end
    object ppEmpresasppField110: TppField
      FieldAlias = 'CTE_Modelo'
      FieldName = 'CTE_Modelo'
      FieldLength = 2
      DisplayWidth = 2
      Position = 109
    end
    object ppEmpresasppField111: TppField
      FieldAlias = 'CTE_Serie'
      FieldName = 'CTE_Serie'
      FieldLength = 3
      DisplayWidth = 3
      Position = 110
    end
    object ppEmpresasppField112: TppField
      FieldAlias = 'CTE_Layout'
      FieldName = 'CTE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 111
    end
    object ppEmpresasppField113: TppField
      FieldAlias = 'Modulo_Logistica'
      FieldName = 'Modulo_Logistica'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 112
    end
    object ppEmpresasppField114: TppField
      FieldAlias = 'Modulo_Boleto'
      FieldName = 'Modulo_Boleto'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 113
    end
    object ppEmpresasppField115: TppField
      FieldAlias = 'Telefone1'
      FieldName = 'Telefone1'
      FieldLength = 11
      DisplayWidth = 11
      Position = 114
    end
    object ppEmpresasppField116: TppField
      FieldAlias = 'Telefone2'
      FieldName = 'Telefone2'
      FieldLength = 11
      DisplayWidth = 11
      Position = 115
    end
    object ppEmpresasppField117: TppField
      FieldAlias = 'Fax'
      FieldName = 'Fax'
      FieldLength = 11
      DisplayWidth = 11
      Position = 116
    end
    object ppEmpresasppField118: TppField
      FieldAlias = 'Modulo_SISCOMEXWEB'
      FieldName = 'Modulo_SISCOMEXWEB'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 117
    end
    object ppEmpresasppField119: TppField
      FieldAlias = 'Modulo_ECommerce'
      FieldName = 'Modulo_ECommerce'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 118
    end
    object ppEmpresasppField120: TppField
      FieldAlias = 'Modulo_ManifestoDest'
      FieldName = 'Modulo_ManifestoDest'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 119
    end
    object ppEmpresasppField121: TppField
      FieldAlias = 'Manifesto_LayOut'
      FieldName = 'Manifesto_LayOut'
      FieldLength = 10
      DisplayWidth = 10
      Position = 120
    end
    object ppEmpresasppField122: TppField
      FieldAlias = 'UF_WebServiceManifesto'
      FieldName = 'UF_WebServiceManifesto'
      FieldLength = 10
      DisplayWidth = 10
      Position = 121
    end
    object ppEmpresasppField123: TppField
      FieldAlias = 'Modulo_Televendas'
      FieldName = 'Modulo_Televendas'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 122
    end
    object ppEmpresasppField124: TppField
      FieldAlias = 'Email_MsgOrcamento'
      FieldName = 'Email_MsgOrcamento'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 123
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField125: TppField
      FieldAlias = 'Email_MsgBoleto'
      FieldName = 'Email_MsgBoleto'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 124
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField126: TppField
      FieldAlias = 'PISCOFINS_F100'
      FieldName = 'PISCOFINS_F100'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 125
    end
    object ppEmpresasppField127: TppField
      FieldAlias = 'Logo'
      FieldName = 'Logo'
      FieldLength = 120
      DisplayWidth = 120
      Position = 126
    end
    object ppEmpresasppField128: TppField
      FieldAlias = 'Modulo_ConsultaProdutos'
      FieldName = 'Modulo_ConsultaProdutos'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 127
    end
    object ppEmpresasppField129: TppField
      FieldAlias = 'Modulo_Contabil'
      FieldName = 'Modulo_Contabil'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 128
    end
    object ppEmpresasppField130: TppField
      FieldAlias = 'Modulo_EnviarArmazem'
      FieldName = 'Modulo_EnviarArmazem'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 129
    end
    object ppEmpresasppField131: TppField
      FieldAlias = 'Versao_DLL'
      FieldName = 'Versao_DLL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 130
    end
    object ppEmpresasppField132: TppField
      FieldAlias = 'Desativada'
      FieldName = 'Desativada'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 131
    end
    object ppEmpresasppField133: TppField
      FieldAlias = 'Menu_Inventario'
      FieldName = 'Menu_Inventario'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 132
    end
    object ppEmpresasppField134: TppField
      Alignment = taRightJustify
      FieldAlias = 'Ambiente_GNRE'
      FieldName = 'Ambiente_GNRE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 133
    end
    object ppEmpresasppField135: TppField
      FieldAlias = 'GNRE_Layout'
      FieldName = 'GNRE_Layout'
      FieldLength = 10
      DisplayWidth = 10
      Position = 134
    end
    object ppEmpresasppField136: TppField
      FieldAlias = 'Modulo_GNRE'
      FieldName = 'Modulo_GNRE'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 135
    end
    object ppEmpresasppField137: TppField
      FieldAlias = 'Modulo_DadosDI'
      FieldName = 'Modulo_DadosDI'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 136
    end
    object ppEmpresasppField138: TppField
      Alignment = taRightJustify
      FieldAlias = 'Contador_Qualificacao'
      FieldName = 'Contador_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 137
    end
    object ppEmpresasppField139: TppField
      FieldAlias = 'Contador_CRCUF'
      FieldName = 'Contador_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 138
    end
    object ppEmpresasppField140: TppField
      FieldAlias = 'Contador_CRCData'
      FieldName = 'Contador_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 139
    end
    object ppEmpresasppField141: TppField
      FieldAlias = 'NIRE'
      FieldName = 'NIRE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 140
    end
    object ppEmpresasppField142: TppField
      FieldAlias = 'Fechamento_FinanceiroFinal'
      FieldName = 'Fechamento_FinanceiroFinal'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 141
    end
    object ppEmpresasppField143: TppField
      Alignment = taRightJustify
      FieldAlias = 'SPED_CTAPlanoRef'
      FieldName = 'SPED_CTAPlanoRef'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 142
    end
    object ppEmpresasppField144: TppField
      FieldAlias = 'Contador_CRCSequencial'
      FieldName = 'Contador_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 143
    end
    object ppEmpresasppField145: TppField
      FieldAlias = 'Refis'
      FieldName = 'Refis'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 144
    end
    object ppEmpresasppField146: TppField
      FieldAlias = 'Paes'
      FieldName = 'Paes'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 145
    end
    object ppEmpresasppField147: TppField
      Alignment = taRightJustify
      FieldAlias = 'Forma_Tributacao'
      FieldName = 'Forma_Tributacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 146
    end
    object ppEmpresasppField148: TppField
      FieldAlias = 'Extincao_RTT'
      FieldName = 'Extincao_RTT'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 147
    end
    object ppEmpresasppField149: TppField
      Alignment = taRightJustify
      FieldAlias = 'Qtde_SCP'
      FieldName = 'Qtde_SCP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 148
    end
    object ppEmpresasppField150: TppField
      FieldAlias = 'Natureza_Juridica'
      FieldName = 'Natureza_Juridica'
      FieldLength = 10
      DisplayWidth = 10
      Position = 149
    end
    object ppEmpresasppField151: TppField
      FieldAlias = 'NIRE_Data'
      FieldName = 'NIRE_Data'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 150
    end
    object ppEmpresasppField152: TppField
      FieldAlias = 'Representante_Bairro'
      FieldName = 'Representante_Bairro'
      FieldLength = 60
      DisplayWidth = 60
      Position = 151
    end
    object ppEmpresasppField153: TppField
      FieldAlias = 'Representante_CEP'
      FieldName = 'Representante_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 152
    end
    object ppEmpresasppField154: TppField
      FieldAlias = 'Representante_CNPJ'
      FieldName = 'Representante_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 153
    end
    object ppEmpresasppField155: TppField
      FieldAlias = 'Representante_Complemento'
      FieldName = 'Representante_Complemento'
      FieldLength = 60
      DisplayWidth = 60
      Position = 154
    end
    object ppEmpresasppField156: TppField
      FieldAlias = 'Representante_CPF'
      FieldName = 'Representante_CPF'
      FieldLength = 12
      DisplayWidth = 12
      Position = 155
    end
    object ppEmpresasppField157: TppField
      FieldAlias = 'Representante_CRC'
      FieldName = 'Representante_CRC'
      FieldLength = 10
      DisplayWidth = 10
      Position = 156
    end
    object ppEmpresasppField158: TppField
      FieldAlias = 'Representante_CRCData'
      FieldName = 'Representante_CRCData'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 157
    end
    object ppEmpresasppField159: TppField
      FieldAlias = 'Representante_CRCSequencial'
      FieldName = 'Representante_CRCSequencial'
      FieldLength = 15
      DisplayWidth = 15
      Position = 158
    end
    object ppEmpresasppField160: TppField
      FieldAlias = 'Representante_CRCUF'
      FieldName = 'Representante_CRCUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 159
    end
    object ppEmpresasppField161: TppField
      FieldAlias = 'Representante_Email'
      FieldName = 'Representante_Email'
      FieldLength = 60
      DisplayWidth = 60
      Position = 160
    end
    object ppEmpresasppField162: TppField
      FieldAlias = 'Representante_Estado'
      FieldName = 'Representante_Estado'
      FieldLength = 2
      DisplayWidth = 2
      Position = 161
    end
    object ppEmpresasppField163: TppField
      FieldAlias = 'Representante_FAX'
      FieldName = 'Representante_FAX'
      FieldLength = 10
      DisplayWidth = 10
      Position = 162
    end
    object ppEmpresasppField164: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Municipio'
      FieldName = 'Representante_Municipio'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 163
    end
    object ppEmpresasppField165: TppField
      FieldAlias = 'Representante_Nome'
      FieldName = 'Representante_Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 164
    end
    object ppEmpresasppField166: TppField
      FieldAlias = 'Representante_Numero'
      FieldName = 'Representante_Numero'
      FieldLength = 10
      DisplayWidth = 10
      Position = 165
    end
    object ppEmpresasppField167: TppField
      Alignment = taRightJustify
      FieldAlias = 'Representante_Qualificacao'
      FieldName = 'Representante_Qualificacao'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 166
    end
    object ppEmpresasppField168: TppField
      FieldAlias = 'Representante_Rua'
      FieldName = 'Representante_Rua'
      FieldLength = 60
      DisplayWidth = 60
      Position = 167
    end
    object ppEmpresasppField169: TppField
      FieldAlias = 'Representante_Telefone'
      FieldName = 'Representante_Telefone'
      FieldLength = 10
      DisplayWidth = 10
      Position = 168
    end
    object ppEmpresasppField170: TppField
      FieldAlias = 'Contador_SignatarioResp'
      FieldName = 'Contador_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 169
    end
    object ppEmpresasppField171: TppField
      FieldAlias = 'Representante_SignatarioResp'
      FieldName = 'Representante_SignatarioResp'
      FieldLength = 1
      DisplayWidth = 1
      Position = 170
    end
    object ppEmpresasppField172: TppField
      FieldAlias = 'Autorizacao_NFECNPJ'
      FieldName = 'Autorizacao_NFECNPJ'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 171
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField173: TppField
      FieldAlias = 'Autorizacao_NFECPF'
      FieldName = 'Autorizacao_NFECPF'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 10
      Position = 172
      Searchable = False
      Sortable = False
    end
    object ppEmpresasppField174: TppField
      Alignment = taRightJustify
      FieldAlias = 'Encerramento_Contabil'
      FieldName = 'Encerramento_Contabil'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 173
    end
  end
  object ppMunicipios: TppDBPipeline
    DataSource = Dados.dsMunicipios
    UserName = 'Municipios'
    Left = 368
    Top = 8
    object ppMunicipiosppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Codigo'
      FieldName = 'Codigo'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppMunicipiosppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Estado'
      FieldName = 'Estado'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppMunicipiosppField3: TppField
      FieldAlias = 'Nome'
      FieldName = 'Nome'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
  end
  object dstNotas: TDataSource
    DataSet = tNotas
    Left = 104
    Top = 48
  end
  object tSaldo: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT CASE WHEN MONTH(Data_Emissao) = 1 THEN '#39'Janeiro'#39'  '
      '            WHEN MONTH(Data_Emissao) = 2 THEN '#39'Fevereiro'#39'  '
      '            WHEN MONTH(Data_Emissao) = 3 THEN '#39'Mar'#231'o'#39'  '
      '            WHEN MONTH(Data_Emissao) = 4 THEN '#39'Abril'#39'  '
      '            WHEN MONTH(Data_Emissao) = 5 THEN '#39'Maio'#39'  '
      '            WHEN MONTH(Data_Emissao) = 6 THEN '#39'Junho'#39'  '
      '            WHEN MONTH(Data_Emissao) = 7 THEN '#39'Julho'#39'  '
      '            WHEN MONTH(Data_Emissao) = 8 THEN '#39'Agosto'#39'  '
      '            WHEN MONTH(Data_Emissao) = 9 THEN '#39'Setembro'#39'  '
      '            WHEN MONTH(Data_Emissao) =10 THEN '#39'Outubro'#39'  '
      '            WHEN MONTH(Data_Emissao) =11 THEN '#39'Novembro'#39'  '
      '            WHEN MONTH(Data_Emissao) =12 THEN '#39'Dezembro'#39'  '
      '       END AS Mes,'
      '       SUM(Valor_TotalProdutos) AS Total_Produtos, '
      '       SUM(Valor_TotalNota) AS Total_Nota,'
      
        '       SUM(Valor_TotalProdutos) / SUM(Valor_TotalNota) AS Coefic' +
        'iente,'
      
        '       CASE WHEN MONTH(Data_Emissao) = 1 THEN (SELECT SUM(ICMS_P' +
        'roprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'#39#39') <= '#39'01' +
        #39'+'#39'2011'#39') AND (MONTH(Data_Nota) <= 1) )'
      
        '            WHEN MONTH(Data_Emissao) = 2 THEN (SELECT SUM(ICMS_P' +
        'roprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'#39#39') <= '#39'02' +
        #39'+'#39'2011'#39') AND (MONTH(Data_Nota) <= 2) )'
      
        '            WHEN MONTH(Data_Emissao) = 3 THEN (SELECT SUM(ICMS_P' +
        'roprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'#39#39') <= '#39'03' +
        #39'+'#39'2011'#39') AND (MONTH(Data_Nota) <= 3) )'
      
        '            WHEN MONTH(Data_Emissao) = 4 THEN (SELECT SUM(ICMS_P' +
        'roprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'#39#39') <= '#39'04' +
        #39'+'#39'2011'#39') AND (MONTH(Data_Nota) <= 4) )'
      
        '            WHEN MONTH(Data_Emissao) = 5 THEN (SELECT SUM(ICMS_P' +
        'roprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'#39#39') <= '#39'05' +
        #39'+'#39'2011'#39') AND (MONTH(Data_Nota) <= 5) )'
      
        '            WHEN MONTH(Data_Emissao) = 6 THEN (SELECT SUM(ICMS_P' +
        'roprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'#39#39') <= '#39'06' +
        #39'+'#39'2011'#39') AND (MONTH(Data_Nota) <= 6) )'
      
        '            WHEN MONTH(Data_Emissao) = 7 THEN (SELECT SUM(ICMS_P' +
        'roprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'#39#39') <= '#39'07' +
        #39'+'#39'2011'#39') AND (MONTH(Data_Nota) <= 7) )'
      
        '            WHEN MONTH(Data_Emissao) = 8 THEN (SELECT SUM(ICMS_P' +
        'roprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'#39#39') <= '#39'08' +
        #39'+'#39'2011'#39') AND (MONTH(Data_Nota) <= 8) )'
      
        '            WHEN MONTH(Data_Emissao) = 9 THEN (SELECT SUM(ICMS_P' +
        'roprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'#39#39') <= '#39'09' +
        #39'+'#39'2011'#39') AND (MONTH(Data_Nota) <= 9) )'
      
        '            WHEN MONTH(Data_Emissao) =10 THEN (SELECT SUM(ICMS_P' +
        'roprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'#39#39') <= '#39'10' +
        #39'+'#39'2011'#39') AND (MONTH(Data_Nota) <=10) )'
      
        '            WHEN MONTH(Data_Emissao) =11 THEN (SELECT SUM(ICMS_P' +
        'roprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'#39#39') <= '#39'11' +
        #39'+'#39'2011'#39') AND (MONTH(Data_Nota) <=11) )'
      
        '            WHEN MONTH(Data_Emissao) =12 THEN (SELECT SUM(ICMS_P' +
        'roprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'#39#39') <= '#39'12' +
        #39'+'#39'2011'#39') AND (MONTH(Data_Nota) <=12) )'
      '       END AS Saldo,'
      
        '       '#39'1/'#39'+ (SELECT CAST(Parcelas_CIAP AS varchar(3)) FROM Cybe' +
        'rsoft_Cadastros.dbo.Configuracao) AS Fracao,'
      ''
      
        '       CASE WHEN MONTH(Data_Emissao) = 1 THEN ((SELECT SUM(ICMS_' +
        'Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'#39#39') <= '#39'0' +
        '1'#39'+'#39'2011'#39') AND (MONTH(Data_Nota) <= 1)) * SUM(Valor_TotalProduto' +
        's)/SUM(Valor_TotalNota)) / (SELECT Parcelas_CIAP FROM Cybersoft_' +
        'Cadastros.dbo.Configuracao)'
      
        '            WHEN MONTH(Data_Emissao) = 2 THEN ((SELECT SUM(ICMS_' +
        'Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'#39#39') <= '#39'0' +
        '2'#39'+'#39'2011'#39') AND (MONTH(Data_Nota) <= 2)) * SUM(Valor_TotalProduto' +
        's)/SUM(Valor_TotalNota)) / (SELECT Parcelas_CIAP FROM Cybersoft_' +
        'Cadastros.dbo.Configuracao)'
      
        '            WHEN MONTH(Data_Emissao) = 3 THEN ((SELECT SUM(ICMS_' +
        'Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'#39#39') <= '#39'0' +
        '3'#39'+'#39'2011'#39') AND (MONTH(Data_Nota) <= 3)) * SUM(Valor_TotalProduto' +
        's)/SUM(Valor_TotalNota)) / (SELECT Parcelas_CIAP FROM Cybersoft_' +
        'Cadastros.dbo.Configuracao)'
      
        '            WHEN MONTH(Data_Emissao) = 4 THEN ((SELECT SUM(ICMS_' +
        'Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'#39#39') <= '#39'0' +
        '4'#39'+'#39'2011'#39') AND (MONTH(Data_Nota) <= 4)) * SUM(Valor_TotalProduto' +
        's)/SUM(Valor_TotalNota)) / (SELECT Parcelas_CIAP FROM Cybersoft_' +
        'Cadastros.dbo.Configuracao)'
      
        '            WHEN MONTH(Data_Emissao) = 5 THEN ((SELECT SUM(ICMS_' +
        'Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'#39#39') <= '#39'0' +
        '5'#39'+'#39'2011'#39') AND (MONTH(Data_Nota) <= 5)) * SUM(Valor_TotalProduto' +
        's)/SUM(Valor_TotalNota)) / (SELECT Parcelas_CIAP FROM Cybersoft_' +
        'Cadastros.dbo.Configuracao)'
      
        '            WHEN MONTH(Data_Emissao) = 6 THEN ((SELECT SUM(ICMS_' +
        'Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'#39#39') <= '#39'0' +
        '6'#39'+'#39'2011'#39') AND (MONTH(Data_Nota) <= 6)) * SUM(Valor_TotalProduto' +
        's)/SUM(Valor_TotalNota)) / (SELECT Parcelas_CIAP FROM Cybersoft_' +
        'Cadastros.dbo.Configuracao)'
      
        '            WHEN MONTH(Data_Emissao) = 7 THEN ((SELECT SUM(ICMS_' +
        'Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'#39#39') <= '#39'0' +
        '7'#39'+'#39'2011'#39') AND (MONTH(Data_Nota) <= 7)) * SUM(Valor_TotalProduto' +
        's)/SUM(Valor_TotalNota)) / (SELECT Parcelas_CIAP FROM Cybersoft_' +
        'Cadastros.dbo.Configuracao)'
      
        '            WHEN MONTH(Data_Emissao) = 8 THEN ((SELECT SUM(ICMS_' +
        'Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'#39#39') <= '#39'0' +
        '8'#39'+'#39'2011'#39') AND (MONTH(Data_Nota) <= 8)) * SUM(Valor_TotalProduto' +
        's)/SUM(Valor_TotalNota)) / (SELECT Parcelas_CIAP FROM Cybersoft_' +
        'Cadastros.dbo.Configuracao)'
      
        '            WHEN MONTH(Data_Emissao) = 9 THEN ((SELECT SUM(ICMS_' +
        'Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'#39#39') <= '#39'0' +
        '9'#39'+'#39'2011'#39') AND (MONTH(Data_Nota) <= 9)) * SUM(Valor_TotalProduto' +
        's)/SUM(Valor_TotalNota)) / (SELECT Parcelas_CIAP FROM Cybersoft_' +
        'Cadastros.dbo.Configuracao)'
      
        '            WHEN MONTH(Data_Emissao) =10 THEN ((SELECT SUM(ICMS_' +
        'Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'#39#39') <= '#39'1' +
        '0'#39'+'#39'2011'#39') AND (MONTH(Data_Nota) <=10)) * SUM(Valor_TotalProduto' +
        's)/SUM(Valor_TotalNota)) / (SELECT Parcelas_CIAP FROM Cybersoft_' +
        'Cadastros.dbo.Configuracao)'
      
        '            WHEN MONTH(Data_Emissao) =11 THEN ((SELECT SUM(ICMS_' +
        'Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'#39#39') <= '#39'1' +
        '1'#39'+'#39'2011'#39') AND (MONTH(Data_Nota) <=11)) * SUM(Valor_TotalProduto' +
        's)/SUM(Valor_TotalNota)) / (SELECT Parcelas_CIAP FROM Cybersoft_' +
        'Cadastros.dbo.Configuracao)'
      
        '            WHEN MONTH(Data_Emissao) =12 THEN ((SELECT SUM(ICMS_' +
        'Proprio) FROM Imobilizado WHERE(ISNULL(Fim_Apropriacao,'#39#39') <= '#39'1' +
        '2'#39'+'#39'2011'#39') AND (MONTH(Data_Nota) <=12)) * SUM(Valor_TotalProduto' +
        's)/SUM(Valor_TotalNota)) / (SELECT Parcelas_CIAP FROM Cybersoft_' +
        'Cadastros.dbo.Configuracao)'
      '       END AS Credito'
      'FROM   NotasFiscais '
      'WHERE (YEAR(Data_Emissao) = 2011) AND (Valor_ICMS <> 0)'
      'GROUP BY YEAR(Data_Emissao), MONTH(Data_Emissao)'
      ''
      '')
    Left = 136
    Top = 48
  end
  object dstSaldo: TDataSource
    DataSet = tSaldo
    Left = 168
    Top = 48
  end
  object ppSaldo: TppDBPipeline
    DataSource = dstSaldo
    UserName = 'ppSaldo'
    Left = 272
    Top = 8
    object ppSaldoppField1: TppField
      FieldAlias = 'Mes'
      FieldName = 'Mes'
      FieldLength = 9
      DisplayWidth = 9
      Position = 0
    end
    object ppSaldoppField2: TppField
      FieldAlias = 'Total_Produtos'
      FieldName = 'Total_Produtos'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 1
    end
    object ppSaldoppField3: TppField
      FieldAlias = 'Total_Nota'
      FieldName = 'Total_Nota'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 2
    end
    object ppSaldoppField4: TppField
      FieldAlias = 'Coeficiente'
      FieldName = 'Coeficiente'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 3
    end
    object ppSaldoppField5: TppField
      FieldAlias = 'Saldo'
      FieldName = 'Saldo'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 4
    end
    object ppSaldoppField6: TppField
      FieldAlias = 'Fracao'
      FieldName = 'Fracao'
      FieldLength = 5
      DisplayWidth = 5
      Position = 5
    end
    object ppSaldoppField7: TppField
      FieldAlias = 'Credito'
      FieldName = 'Credito'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 6
    end
  end
end
