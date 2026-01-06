object CTE_PrestacaoDesacordo: TCTE_PrestacaoDesacordo
  AlignWithMargins = True
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'CTE_PrestacaoDesacordo'
  ClientHeight = 647
  ClientWidth = 830
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 830
    Height = 40
    Align = alTop
    Stretch = True
    ExplicitLeft = 8
    ExplicitTop = -4
    ExplicitWidth = 814
  end
  object RxLabel3: TRxLabel
    Left = 5
    Top = 1
    Width = 247
    Height = 21
    Caption = 'Conhecimento de Transporte (CT-e)'
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
  object lTitulo: TRxLabel
    Left = 4
    Top = 17
    Width = 220
    Height = 18
    Caption = 'Presta'#231#227'o de servi'#231'o em desacordo.'
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
  object Label1: TLabel
    Left = 5
    Top = 284
    Width = 286
    Height = 13
    Caption = 'Descri'#231#227'o do evento de presta'#231#227'o de servi'#231'o em desacordo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Grade: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 43
    Width = 824
    Height = 237
    Align = alTop
    DataSource = dstCTE
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = GradeCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Nota'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data_Emissao'
        Title.Alignment = taCenter
        Title.Caption = 'Emiss'#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFe_cNF'
        Title.Alignment = taCenter
        Title.Caption = 'Chave'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 328
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fornecedor'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 309
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 24
        Visible = True
      end>
  end
  object cMsgCTE: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 411
    Width = 824
    Height = 188
    Margins.Bottom = 10
    Align = alBottom
    BevelOuter = bvRaised
    Color = 16768667
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Pitch = fpFixed
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    WantReturns = False
    StyleElements = [seFont, seBorder]
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 612
    Width = 824
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    object bSair: TButton
      Left = 751
      Top = 1
      Width = 72
      Height = 30
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bPesquisa: TButton
      Left = 1
      Top = 1
      Width = 76
      Height = 30
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Align = alLeft
      Caption = 'Pes&quisa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bPesquisaClick
    end
    object bExecutar: TButton
      Left = 77
      Top = 1
      Width = 78
      Height = 30
      Cursor = crHandPoint
      Hint = '   Mostrar os itens da nota fiscal.'
      Align = alLeft
      Caption = '&Executar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bExecutarClick
    end
  end
  object cDescricao: TMemo
    Left = 3
    Top = 299
    Width = 824
    Height = 75
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object StaticText140: TStaticText
    Left = 4
    Top = 384
    Width = 121
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Web Service CT-e'
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
  object cUF: TDBComboBox
    Left = 127
    Top = 384
    Width = 114
    Height = 21
    DataField = 'UF_WebServiceCTe'
    DataSource = Dados.dsEmpresas
    DropDownCount = 15
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Items.Strings = (
      'AC'
      'AL'
      'AM'
      'AP'
      'BA'
      'BA3'
      'CE'
      'DF'
      'ES'
      'GO'
      'MA'
      'MG'
      'MS'
      'MT'
      'PA'
      'PB'
      'PE'
      'PI'
      'PR'
      'PR3'
      'RJ'
      'RN'
      'RO'
      'RR'
      'RS'
      'SC'
      'SCAN'
      'SE'
      'SP'
      'SP3'
      'SVAN'
      'SVC-AN'
      'SVC-RS'
      'SVRS'
      'TO')
    ParentFont = False
    Sorted = True
    TabOrder = 5
  end
  object tCTE: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Nota'
      '      ,Data_Emissao'
      '      ,NFe_cNF'
      '      ,Nfe_Protocolo'
      '      ,Cod_Fornecedor = Fornecedor'
      
        '      ,Fornecedor = (select Nome from Fornecedores where Codigo ' +
        '= Fornecedor)'
      '      ,Estado'
      'from NotasTerceiros'
      '--where Modelo = 57'
      'order by Data_Emissao, Nota')
    Active = True
    Left = 547
    Top = 138
    object IntegerField1: TIntegerField
      Alignment = taCenter
      FieldName = 'Nota'
      Origin = 'NotasTerceiros.Nota'
      DisplayFormat = '000000000'
    end
    object DateTimeField1: TDateTimeField
      Alignment = taCenter
      FieldName = 'Data_Emissao'
      Origin = 'NotasTerceiros.Data_Emissao'
    end
    object StringField1: TStringField
      Alignment = taCenter
      FieldName = 'NFe_cNF'
      Origin = 'NotasTerceiros.NFe_cNF'
      EditMask = '##.##.##.##.##.###.###/####-##-###.###.###-###-###.###.###-#;0'
      Size = 44
    end
    object StringField2: TStringField
      FieldName = 'Fornecedor'
      Origin = '.'
      ReadOnly = True
      Size = 60
    end
    object tCTENfe_Protocolo: TStringField
      FieldName = 'Nfe_Protocolo'
      FixedChar = True
      Size = 15
    end
    object tCTECod_Fornecedor: TSmallintField
      FieldName = 'Cod_Fornecedor'
    end
    object tCTEEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 2
    end
  end
  object dstCTE: TDataSource
    DataSet = tCTE
    Left = 547
    Top = 190
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 459
    Top = 138
  end
end
