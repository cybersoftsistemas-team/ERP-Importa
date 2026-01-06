object Utilitarios_ImportarXML: TUtilitarios_ImportarXML
  Left = 434
  Top = 134
  BorderStyle = bsDialog
  Caption = 'Utilitarios_ImportarXML'
  ClientHeight = 755
  ClientWidth = 1280
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 1280
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
  object bAtu: TSpeedButton
    Left = 933
    Top = 54
    Width = 44
    Height = 41
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0052A60052A6004FA0004C9A004A9600479000448A00448A
      00438800448A00438800448A00438800448A00438800448A004388004388003F
      80003F80FFFFFFFFFFFFFFFFFF005DBD0059B50060C2005DBD005DBD0059B500
      56AE0056AE0052A60056AE0052A60052A60052A60056AE0052A60052A60052A6
      0056AE0052A6004A96003F80003F80FFFFFFFFFFFF005DBD0075ED007BF8007B
      F80073E80073E80073E8006DDC006DDC006DDC006DDC006DDC006DDC006DDC00
      6DDC006DDC006DDC006DDC006FE00068D2004A96003F80FFFFFFFFFFFF0068D2
      007EFE007EFE007BF8007BF80075ED0075ED0073E80073E8006DDC006DDC006D
      DC006DDC006DDC006DDC006DDC006DDC006DDC006FE0006DDC0056AE004388FF
      FFFFFFFFFF006DDC0380FF007EFE007BF8007BF80075ED0077F00073E80073E8
      006DDC006DDC006DDC006DDC006DDC006DDC006DDC006DDC006DDC006DDC006D
      DC0056AE004388FFFFFFFFFFFF006DDC0B84FF0B84FF0380FF007EFE007BF800
      7BF8107CE980BAF6EFF6FDFFFFFFFFFFFFEFF6FD80B6ED1075DC0068D2006DDC
      006DDC006DDC006DDC0052A6004388FFFFFFFFFFFF0073E81689FF1689FF1186
      FE0B84FF0380FF1283F8CFE6FDFFFFFFFFFFFFBFDCF9BFDCF9EFF6FDFFFFFFCF
      E3F81075DC006DDC006DDC006DDC006DDC0052A6004388FFFFFFFFFFFF0073E8
      2792FF2893FF1E8EFF1689FF0B84FF90C6FFFFFFFFCFE6FD1283F80075ED0075
      ED107BE8CFE6FDFFFFFF80B6ED006DDC0068D2006DDC006DDC0056AE004388FF
      FFFFFFFFFF0073E8409EFE409EFE2893FF2792FF1689FFEFF6FDEFF6FD1186FE
      007BF8007BF80077F00075ED107BE8FFFFFFEFF6FD006DDC006DDC006DDC006D
      DC0052A6004388FFFFFFFFFFFF0073E858AAFF58AAFF409EFE218FFF1E8EFFFF
      FFFFC1E0FF0380FF1186FE007EFE007BF8007BF80075EDBFDCF9FFFFFF0073E8
      006DDC006DDC006DDC0056AE004388FFFFFFFFFFFF0073E873B8FF73B8FF4EA6
      FF2893FF2792FFFFFFFFC1E0FF0B84FF42A0FFFFFFFF409EFE007BF8007BF800
      75ED0075ED0073E80073E8006FE0006DDC0056AE004388FFFFFFFFFFFF0073E8
      80BEFE84C1FF58AAFF2893FF3096FFE3F0FFFFFFFF2893FF4EA6FFFFFFFFFFFF
      FFBFDCF9218FFF0077F0007BF80075ED0073E80075ED006FE00056AE00448AFF
      FFFFFFFFFF0073E88BC4FF90C6FF61B0FF379AFF3096FF90C6FFFFFFFFD1E8FF
      61B0FFFFFFFFFFFFFFFFFFFFFFFFFF80BEFE1283F80077F00075ED0075ED0073
      E80059B5004C9AFFFFFFFFFFFF0073E890C6FF95C9FF68B3FF409EFE379AFF27
      92FFC1E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFFF007BF8
      007BF8007BF80075ED005DBD0052A6FFFFFFFFFFFF0073E895C9FF9DCDFF73B8
      FF409EFE42A0FF409EFE2792FF8BC4FFE3F0FFFFFFFFFFFFFFFFFFFFFFFFFF95
      C9FF1689FF007EFE007BF8007BF8007BF8005FC00056AEFFFFFFFFFFFF0073E8
      9DCDFFA5D1FF80BEFE4EA6FF58AAFF4EA6FF409EFE2893FF61B0FFFFFFFFFFFF
      FFC1E0FF2893FF0B84FF0B84FF0380FF007EFE007EFE007BF80064CA0056AEFF
      FFFFFFFFFF0073E89DCDFFADD5FF95C9FF4EA6FF58AAFF53A8FF42A0FF409EFE
      61B0FFFFFFFF61B0FF2792FF1E8EFF1186FE0B84FF0B84FF0380FF0380FF007E
      FE0068D2005DBDFFFFFFFFFFFF0073E89DCDFFB4D9FFADD5FF73B8FF68B3FF61
      B0FF53A8FF4EA6FF409EFE379AFF409EFE2893FF218FFF1E8EFF0B84FF1186FE
      0B84FF0B84FF0380FF0068D20060C2FFFFFFFFFFFF0073E890C6FFB1D7FFBFDC
      F9B4D9FFADD5FFA5D1FF9DCDFF8BC4FF80BEFE61B0FF58AAFF42A0FF2893FF1E
      8EFF1186FE1186FE0B84FF1186FE0B84FF0073E80060C2FFFFFFFFFFFF0073E8
      80BEFE9DCDFFB4D9FFB4D9FFBFDCF9B4D9FFA5D1FF9DCDFF90C6FF80BEFE61B0
      FF4EA6FF3096FF218FFF1E8EFF1186FE1186FE1186FE1186FE0073E80068D2FF
      FFFFFFFFFF0073E8007EFE80BEFE8BC4FF9DCDFF9DCDFF9DCDFF9DCDFF8BC4FF
      80BEFE68B3FF61B0FF409EFE3096FF1E8EFF1186FE1186FE0B84FF1186FE0380
      FF006DDC0068D2FFFFFFFFFFFFFFFFFF0073E80073E80073E80073E80073E800
      73E80073E80073E80073E80073E8006FE00073E80073E8006FE00073E80073E8
      0073E80073E80068D2006DDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    OnClick = cArquivoChange
  end
  object StaticText2: TStaticText
    Left = 3
    Top = 49
    Width = 80
    Height = 23
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
    Left = 84
    Top = 49
    Width = 501
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
  object Panel1: TPanel
    Left = 0
    Top = 728
    Width = 1280
    Height = 27
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    object bImportar: TButton
      Left = 1139
      Top = 1
      Width = 75
      Height = 25
      Align = alRight
      Caption = '&Importar'
      Enabled = False
      TabOrder = 0
      OnClick = bImportarClick
    end
    object Button3: TButton
      Left = 1214
      Top = 1
      Width = 65
      Height = 25
      Align = alRight
      Caption = '&Sair'
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object cTab: TComboBox
    Left = 84
    Top = 74
    Width = 229
    Height = 23
    DropDownCount = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnChange = cTabChange
  end
  object StaticText6: TStaticText
    Left = 3
    Top = 74
    Width = 80
    Height = 23
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Tabela'
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
  object cCampoReg: TCheckBox
    Left = 5
    Top = 100
    Width = 163
    Height = 17
    Caption = 'Tabela tem Campo "Registro"'
    TabOrder = 5
  end
  object cRepetir: TCheckBox
    Left = 5
    Top = 118
    Width = 160
    Height = 17
    Caption = 'N'#227'o Repetir "Campo Chave"'
    Checked = True
    State = cbChecked
    TabOrder = 6
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 159
    Width = 1274
    Height = 566
    ActivePage = TabSheet1
    Align = alBottom
    TabHeight = 23
    TabOrder = 7
    TabWidth = 100
    object TabSheet1: TTabSheet
      Caption = 'Arquivo XML'
      object XML: TTreeView
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 528
        Height = 527
        Align = alLeft
        Color = 16773360
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16744576
        Font.Height = -12
        Font.Name = 'JetBrains Mono'
        Font.Style = []
        Indent = 19
        ParentFont = False
        PopupMenu = MenuCampos
        RowSelect = True
        TabOrder = 0
        StyleElements = [seClient, seBorder]
      end
      object gCampos: TStringGrid
        AlignWithMargins = True
        Left = 537
        Top = 3
        Width = 726
        Height = 527
        Align = alClient
        Color = clWhite
        ColCount = 6
        DefaultColWidth = 116
        DefaultRowHeight = 16
        FixedCols = 0
        RowCount = 100
        FixedRows = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goThumbTracking]
        ParentFont = False
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados do XML'
      ImageIndex = 1
      object Grade: TStringGrid
        Left = 0
        Top = 0
        Width = 1266
        Height = 533
        Align = alClient
        Color = clWhite
        ColCount = 2
        DefaultColWidth = 120
        DefaultRowHeight = 16
        FixedCols = 0
        RowCount = 3
        FixedRows = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goThumbTracking]
        ParentFont = False
        TabOrder = 0
        ColWidths = (
          222
          198)
      end
    end
  end
  object StaticText1: TStaticText
    Left = 316
    Top = 74
    Width = 77
    Height = 23
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Campo Chave'
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
  object cCampoChave: TComboBox
    Left = 395
    Top = 74
    Width = 342
    Height = 23
    DropDownCount = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnChange = cTabChange
  end
  object cLimpar: TCheckBox
    Left = 5
    Top = 136
    Width = 179
    Height = 17
    Caption = 'Limpar a tabela antes de importar'
    Checked = True
    State = cbChecked
    TabOrder = 10
  end
  object cMai: TRadioGroup
    Left = 316
    Top = 107
    Width = 421
    Height = 46
    Caption = 'Tipo de Formata'#231#227'o do Texto'
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Original'
      'Mai'#250'sculo'
      'Primeira letra Mai'#250'sculo')
    TabOrder = 11
  end
  object StaticText3: TStaticText
    Left = 587
    Top = 49
    Width = 80
    Height = 23
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
    TabOrder = 12
    Transparent = False
    StyleElements = []
  end
  object Edit1: TEdit
    Left = 668
    Top = 49
    Width = 69
    Height = 21
    TabOrder = 13
  end
  object StaticText4: TStaticText
    Left = 739
    Top = 49
    Width = 80
    Height = 23
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
    TabOrder = 14
    Transparent = False
    StyleElements = []
  end
  object Edit2: TEdit
    Left = 820
    Top = 49
    Width = 69
    Height = 21
    TabOrder = 15
  end
  object Tabelas: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 523
    Top = 2
  end
  object MenuCampos: TPopupMenu
    Alignment = paCenter
    AutoPopup = False
    Left = 587
    Top = 2
    object este1: TMenuItem
      Caption = 'Teste'
    end
  end
  object Temp: TMSQuery
    Connection = Dados.Banco
    Left = 475
    Top = 1
  end
  object tReg: TMSQuery
    Connection = Dados.Banco
    Left = 419
    Top = 2
  end
  object XMLDoc: TXMLDocument
    Left = 680
    Top = 2
    DOMVendorDesc = 'MSXML'
  end
end
