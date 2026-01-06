object Utilitarios_Importar_NFe_TerceirosRastrearSeriais: TUtilitarios_Importar_NFe_TerceirosRastrearSeriais
  Left = 442
  Top = 205
  BorderStyle = bsToolWindow
  Caption = 'Utilitarios_Importar_NFe_TerceirosRastrearSeriais'
  ClientHeight = 532
  ClientWidth = 669
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gSeriais: TStringGrid
    Left = 4
    Top = 194
    Width = 659
    Height = 304
    ColCount = 3
    DefaultRowHeight = 18
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing]
    ParentFont = False
    TabOrder = 0
    ColWidths = (
      170
      399
      64)
  end
  object cDescricao: TMemo
    Left = 4
    Top = 53
    Width = 659
    Height = 140
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object cCodigo: TRxDBLookupCombo
    Left = 58
    Top = 5
    Width = 607
    Height = 21
    DropDownCount = 8
    DisplayAllFields = True
    FieldsDelimiter = '|'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo; Descricao_Reduzida'
    LookupDisplayIndex = 1
    LookupSource = Dados.dsProdutos
    ParentFont = False
    TabOrder = 2
    OnChange = cCodigoChange
  end
  object StaticText1: TStaticText
    Left = 5
    Top = 5
    Width = 51
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Produto'
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
  object Panel1: TPanel
    Left = 0
    Top = 502
    Width = 669
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 4
    DesignSize = (
      669
      30)
    object bSair: TButton
      Left = 595
      Top = 1
      Width = 74
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bRastrear: TButton
      Left = 436
      Top = 2
      Width = 75
      Height = 28
      Caption = '&Rastrear'
      Enabled = False
      TabOrder = 1
      OnClick = bRastrearClick
    end
    object bImportar: TButton
      Left = 517
      Top = 1
      Width = 75
      Height = 28
      Caption = '&Importar'
      Enabled = False
      TabOrder = 2
      OnClick = bImportarClick
    end
  end
  object StaticText4: TStaticText
    Left = 5
    Top = 28
    Width = 51
    Height = 21
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Tipo'
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
  object cTipo: TComboBox
    Left = 58
    Top = 28
    Width = 119
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnChange = cTipoChange
    Items.Strings = (
      'SERIAL'
      'CHASSI'
      'MOTOR')
  end
  object tRegistro: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 156
    Top = 382
  end
end
