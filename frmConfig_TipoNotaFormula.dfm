object Config_TipoNotaFormula: TConfig_TipoNotaFormula
  Left = 622
  Top = 318
  BorderStyle = bsDialog
  Caption = 'Config_TipoNotaFormula'
  ClientHeight = 562
  ClientWidth = 765
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lCampo: TLabel
    Left = 4
    Top = 300
    Width = 758
    Height = 18
    Alignment = taCenter
    AutoSize = False
    Caption = 'F'#243'rmula do Campo'
    Color = 16744576
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
  end
  object Label2: TLabel
    Left = 4
    Top = 41
    Width = 758
    Height = 18
    Alignment = taCenter
    AutoSize = False
    Caption = 'Campos calcul'#225'veis'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
  end
  object Panel4: TPanel
    Left = 0
    Top = 532
    Width = 765
    Height = 30
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    TabOrder = 0
    object bLimpar: TButton
      Left = 3
      Top = 1
      Width = 72
      Height = 28
      Hint = 'Limpar toda a f'#243'rmula'
      Caption = '&Limpar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bLimparClick
    end
    object bAdicionar: TButton
      Left = 75
      Top = 1
      Width = 72
      Height = 28
      Hint = 'Adicionar campo '#225' nota'
      Caption = '&Adicionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bAdicionarClick
    end
    object bSair: TButton
      Left = 692
      Top = 1
      Width = 72
      Height = 28
      Hint = 'Cancela as modifica'#231#245'es da nova f'#243'rmula e sai.'
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bSairClick
      ExplicitLeft = 691
    end
    object bTestar: TButton
      Left = 615
      Top = 1
      Width = 77
      Height = 28
      Hint = 'Confirma a nova f'#243'rmula e sai.'
      Align = alRight
      Caption = '&Testar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bTestarClick
    end
    object bInventario: TButton
      Left = 147
      Top = 1
      Width = 165
      Height = 28
      Hint = 'Adicionar campo '#225' nota'
      Caption = '&Recalcular Valor do Inventario'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bInventarioClick
    end
  end
  object Grade: TDBGrid
    Left = 4
    Top = 60
    Width = 758
    Height = 210
    DataSource = Dados.dsCampos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Calibri'
    TitleFont.Style = []
    OnDblClick = GradeDblClick
    OnMouseDown = GradeMouseDown
    Columns = <
      item
        Expanded = False
        FieldName = 'Referencia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Tabela de Refer'#234'ncia'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 194
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 542
        Visible = True
      end>
  end
  object lCSTPIS: TStaticText
    Left = 5
    Top = 11
    Width = 114
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Tabela de Refer'#234'ncia'
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
  object cTabelas: TRxDBLookupCombo
    Left = 121
    Top = 11
    Width = 630
    Height = 21
    DropDownCount = 8
    DisplayAllFields = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Referencia'
    LookupDisplay = 'Referencia; Tabela'
    LookupSource = dstCampos
    ParentFont = False
    TabOrder = 3
    OnChange = cTabelasChange
  end
  object PageControl1: TPageControl
    Left = 4
    Top = 321
    Width = 758
    Height = 207
    ActivePage = TabSheet1
    TabHeight = 28
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'Formula Textual'
      object cFormula: TMemo
        Left = 0
        Top = 0
        Width = 750
        Height = 169
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvRaised
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        StyleElements = [seBorder]
        OnDragDrop = cFormulaDragDrop
        OnDragOver = cFormulaDragOver
        OnEnter = cFormulaEnter
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Formula (Variaveis)'
      ImageIndex = 1
      object cCalculo: TMemo
        Left = 0
        Top = 0
        Width = 750
        Height = 169
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvRaised
        Color = 8645372
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        StyleElements = [seBorder]
        OnDragDrop = cFormulaDragDrop
        OnDragOver = cFormulaDragOver
        OnEnter = cFormulaEnter
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'LOG'
      ImageIndex = 2
      object cLog: TMemo
        Left = 0
        Top = 0
        Width = 750
        Height = 169
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvRaised
        Color = 16766894
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        StyleElements = [seBorder]
        OnDragDrop = cFormulaDragDrop
        OnDragOver = cFormulaDragOver
        OnEnter = cFormulaEnter
      end
    end
  end
  object StaticText1: TStaticText
    Left = 5
    Top = 271
    Width = 52
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Pesquisa'
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
  object cPesquisa: TEdit
    Left = 58
    Top = 271
    Width = 690
    Height = 21
    TabOrder = 6
    OnChange = cPesquisaChange
  end
  object msg: TPanel
    Left = 75
    Top = 408
    Width = 598
    Height = 57
    Color = clRed
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 7
    Visible = False
    object Label1: TLabel
      Left = 45
      Top = 16
      Width = 505
      Height = 19
      Caption = 
        'Recalculo dos valores do inventario das notas fiscais em adament' +
        'o...Aguarde.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
  end
  object mMacro: TCalcExpress
    Formula = '0'
    Left = 505
    Top = 393
  end
  object dstCampos: TDataSource
    DataSet = tCampos
    Left = 352
    Top = 392
  end
  object tCampos: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT * FROM Campos')
    FetchRows = 1
    Left = 431
    Top = 392
    object tCamposReferencia: TStringField
      FieldName = 'Referencia'
      Size = 40
    end
    object tCamposTabela: TStringField
      FieldName = 'Tabela'
      Size = 30
    end
  end
  object tTotal: TMSQuery
    Connection = Dados.Banco
    FetchRows = 1
    Left = 431
    Top = 456
  end
  object tTotaliza: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 503
    Top = 456
  end
end
