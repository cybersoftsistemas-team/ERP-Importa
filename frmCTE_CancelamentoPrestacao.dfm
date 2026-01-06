object CTE_CancelamentoPrestacao: TCTE_CancelamentoPrestacao
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'CTE_CancelamentoPrestacao'
  ClientHeight = 499
  ClientWidth = 1002
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
    Width = 1002
    Height = 40
    Align = alTop
    Stretch = True
    ExplicitWidth = 804
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
    Width = 330
    Height = 18
    Caption = 'Cancelamento de presta'#231#227'o de servi'#231'o em desacordo.'
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
  object Grade: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 43
    Width = 996
    Height = 250
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
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Nota'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 67
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
        Width = 68
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
        Width = 325
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
        Width = 297
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Manifesto_Protocolo'
        Title.Alignment = taCenter
        Title.Caption = 'Protocolo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 102
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Manifesto_DataProtocolo'
        Title.Alignment = taCenter
        Title.Caption = 'Data Prot'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 111
        Visible = True
      end>
  end
  object cMsgCTE: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 295
    Width = 996
    Height = 156
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
    ExplicitTop = 296
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 464
    Width = 996
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    object bSair: TButton
      Left = 923
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
      '      ,Manifesto_Protocolo'
      '      ,Manifesto_DataProtocolo'
      'from NotasTerceiros'
      '--where Modelo = 57'
      'order by Data_Emissao, Nota')
    Left = 536
    Top = 141
    object IntegerField1: TIntegerField
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
    object tCTEManifesto_Protocolo: TStringField
      FieldName = 'Manifesto_Protocolo'
      FixedChar = True
      Size = 15
    end
    object tCTEManifesto_DataProtocolo: TDateTimeField
      FieldName = 'Manifesto_DataProtocolo'
    end
  end
  object dstCTE: TDataSource
    DataSet = tCTE
    Left = 538
    Top = 194
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 486
    Top = 140
  end
end
