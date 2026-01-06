object Utilitarios_LayOutXMLNFS: TUtilitarios_LayOutXMLNFS
  Left = 434
  Top = 134
  BorderStyle = bsDialog
  Caption = 'Utilitarios_LayOutXMLNFS'
  ClientHeight = 779
  ClientWidth = 1399
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = MenuCampos
  PopupMode = pmAuto
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 1399
    Height = 45
    Align = alTop
    Stretch = True
    ExplicitWidth = 994
  end
  object RxLabel3: TRxLabel
    Left = 5
    Top = 2
    Width = 199
    Height = 23
    Caption = 'IMPORTA'#199#195'O DE DADOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ShadowColor = clBlack
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel4: TRxLabel
    Left = 5
    Top = 22
    Width = 308
    Height = 18
    Caption = 'Importa'#231#227'o do Plano de Contas em arquivo texto.'
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
  object Panel1: TPanel
    Left = 0
    Top = 749
    Width = 1399
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bImportar: TButton
      Left = 1235
      Top = 1
      Width = 90
      Height = 28
      Align = alRight
      Caption = '&Testar Layout'
      TabOrder = 0
      OnClick = bImportarClick
    end
    object bSair: TButton
      Left = 1325
      Top = 1
      Width = 73
      Height = 28
      Align = alRight
      Caption = '&Sair'
      TabOrder = 1
      OnClick = bSairClick
    end
    object bSalvar: TButton
      Left = 1141
      Top = 1
      Width = 94
      Height = 28
      Align = alRight
      Caption = '&Salvar Layout'
      TabOrder = 2
      OnClick = bSalvarClick
    end
    object bLimpar: TButton
      Left = 1052
      Top = 1
      Width = 89
      Height = 28
      Align = alRight
      Caption = '&Limpar Tudo'
      TabOrder = 3
      OnClick = bLimparClick
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 6
    Top = 51
    Width = 1387
    Height = 73
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 1
    object StaticText2: TStaticText
      Left = 11
      Top = 14
      Width = 80
      Height = 23
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Arquivo'
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
    object cArquivo: TFilenameEdit
      Left = 92
      Top = 14
      Width = 950
      Height = 21
      Filter = 'All files (*.*)|*.xml'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NumGlyphs = 1
      ParentFont = False
      TabOrder = 1
      Text = ''
      OnChange = cArquivoChange
    end
    object StaticText3: TStaticText
      Left = 1051
      Top = 14
      Width = 80
      Height = 23
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'XML Vers'#227'o'
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
    object Edit1: TEdit
      Left = 1132
      Top = 14
      Width = 69
      Height = 21
      TabOrder = 3
    end
    object StaticText4: TStaticText
      Left = 1203
      Top = 14
      Width = 80
      Height = 23
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'XML Encoding'
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
    object Edit2: TEdit
      Left = 1284
      Top = 14
      Width = 69
      Height = 21
      TabOrder = 5
    end
    object StaticText1: TStaticText
      Left = 11
      Top = 39
      Width = 80
      Height = 21
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Municpio'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 6
      Transparent = False
      StyleElements = []
    end
    object cMun: TDBLookupComboBox
      Left = 92
      Top = 39
      Width = 264
      Height = 21
      DropDownRows = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Nome;UF;Codigo'
      ListSource = dsMuni
      ParentFont = False
      TabOrder = 7
      OnExit = cMunExit
    end
    object StaticText5: TStaticText
      Left = 360
      Top = 39
      Width = 80
      Height = 23
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'XML Vers'#227'o'
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
    object cCodmun: TEdit
      Left = 441
      Top = 39
      Width = 113
      Height = 21
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnChange = cCodmunChange
    end
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 6
    Top = 134
    Width = 1387
    Height = 609
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    ActivePage = TabSheet2
    Align = alBottom
    TabHeight = 25
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Layout NFS'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Splitter1: TSplitter
        AlignWithMargins = True
        Left = 579
        Top = 3
        Width = 5
        Height = 568
        Color = clSilver
        ParentColor = False
        ResizeStyle = rsUpdate
        ExplicitLeft = 460
        ExplicitTop = 124
        ExplicitHeight = 619
      end
      object XML: TTreeView
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 570
        Height = 568
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 2365440
        Font.Height = -11
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        HideSelection = False
        HotTrack = True
        Indent = 20
        ParentFont = False
        PopupMenu = MenuCampos
        RowSelect = True
        TabOrder = 0
        StyleElements = [seClient, seBorder]
      end
      object gCampos: TStringGrid
        AlignWithMargins = True
        Left = 590
        Top = 3
        Width = 786
        Height = 568
        Align = alClient
        Color = clWhite
        ColCount = 15
        DefaultColWidth = 130
        DefaultRowHeight = 18
        FixedColor = clHighlight
        RowCount = 120
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12615680
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        GradientEndColor = clMoneyGreen
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goTabs, goRowSelect]
        ParentFont = False
        PopupMenu = MenuOp
        TabOrder = 1
        RowHeights = (
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18
          18)
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados ds NFS'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cDados: TMemo
        Left = 0
        Top = 0
        Width = 1379
        Height = 574
        Align = alClient
        Color = 5190912
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        Lines.Strings = (
          'Memo1')
        ParentFont = False
        TabOrder = 0
        StyleElements = [seBorder]
      end
    end
  end
  object MenuCampos: TPopupMenu
    Alignment = paCenter
    AutoPopup = False
    Left = 243
    Top = 235
  end
  object Temp: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 306
    Top = 235
  end
  object XMLDoc: TXMLDocument
    Left = 352
    Top = 235
    DOMVendorDesc = 'MSXML'
  end
  object Municipios: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'select * from Cybersoft_Cadastros.dbo.Municipios')
    Left = 177
    Top = 235
    object MunicipiosCodigo: TIntegerField
      Alignment = taCenter
      DisplayWidth = 6
      FieldName = 'Codigo'
    end
    object MunicipiosEstado: TSmallintField
      DisplayWidth = 2
      FieldName = 'Estado'
    end
    object MunicipiosNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object MunicipiosUF: TStringField
      Alignment = taCenter
      DisplayWidth = 3
      FieldName = 'UF'
      Size = 2
    end
  end
  object dsMuni: TDataSource
    DataSet = Municipios
    Left = 177
    Top = 289
  end
  object MenuOp: TPopupMenu
    Alignment = paCenter
    Left = 246
    Top = 289
    object MenuItem1: TMenuItem
      Caption = 'Limpar'
      OnClick = MenuItem1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
    end
  end
end
