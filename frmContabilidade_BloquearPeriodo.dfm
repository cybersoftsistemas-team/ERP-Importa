object Contabilidade_BloquearPeriodo: TContabilidade_BloquearPeriodo
  Left = 566
  Top = 150
  BorderStyle = bsDialog
  Caption = 'Contabilidade_BloquearPeriodo'
  ClientHeight = 563
  ClientWidth = 312
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 312
    Height = 46
    Align = alTop
    Stretch = True
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 117
    Height = 21
    Caption = 'CONTABILIDADE'
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
    Left = 8
    Top = 23
    Width = 167
    Height = 18
    Caption = 'Bloquear per'#237'odo contabil.'
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
    Top = 533
    Width = 312
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      312
      30)
    object bSair: TButton
      Left = 247
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
    object bBloquearMes: TButton
      Left = 1
      Top = 1
      Width = 70
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Caption = '&Desbl.M'#234's'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bBloquearMesClick
    end
    object bBloqTudo: TButton
      Left = 70
      Top = 1
      Width = 69
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Caption = 'Bloq.&Tudo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bBloqTudoClick
    end
    object bDesTudo: TButton
      Left = 138
      Top = 1
      Width = 78
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Caption = 'Desbl.T&udo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bDesTudoClick
    end
  end
  object Grade: TRxDBGrid
    Left = 9
    Top = 102
    Width = 295
    Height = 424
    Color = clWhite
    Ctl3D = True
    DataSource = dsFechamentoContabil
    DefaultDrawing = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = GradeDrawColumnCell
    RowColor2 = 16776176
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Ano'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Mes'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome_Mes'
        Title.Alignment = taCenter
        Title.Caption = 'M'#234's'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 155
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fechado'
        Title.Alignment = taCenter
        Title.Caption = 'Sit'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 36
        Visible = True
      end>
  end
  object lDataPrevisao: TStaticText
    Left = 10
    Top = 55
    Width = 35
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Ano'
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
  object StaticText1: TStaticText
    Left = 10
    Top = 78
    Width = 35
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'M'#234's'
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
  object cFiltroAno: TRxSpinEdit
    Left = 47
    Top = 55
    Width = 69
    Height = 21
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnChange = cFiltroAnoChange
  end
  object cFiltroMes: TRxSpinEdit
    Left = 47
    Top = 78
    Width = 69
    Height = 21
    MaxValue = 12.000000000000000000
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnChange = cFiltroMesChange
  end
  object cTodosAno: TCheckBox
    Left = 118
    Top = 58
    Width = 57
    Height = 17
    Caption = 'Todos'
    Checked = True
    State = cbChecked
    TabOrder = 6
    OnClick = cTodosAnoClick
  end
  object cTodosMes: TCheckBox
    Left = 118
    Top = 79
    Width = 57
    Height = 17
    Caption = 'Todos'
    Checked = True
    State = cbChecked
    TabOrder = 7
    OnClick = cTodosMesClick
  end
  object PopupMenu1: TPopupMenu
    Left = 176
    Top = 8
    object Bloquears1: TMenuItem
      Caption = '&Bloquear / Desbloquear M'#234's'
      OnClick = Bloquears1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object BloquearTudo1: TMenuItem
      Caption = 'Bloquear &Tudo'
      OnClick = BloquearTudo1Click
    end
    object DesbloquearTudo1: TMenuItem
      Caption = 'Desbloquear T&udo'
      OnClick = DesbloquearTudo1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object ExcluirPeriodo1: TMenuItem
      Caption = '&Excluir Periodo'
      OnClick = ExcluirPeriodo1Click
    end
    object Cancelar1: TMenuItem
      Caption = '&Cancelar'
    end
  end
  object FechamentoContabil: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO FechamentoContabil'
      '  (Ano, Mes, Nome_Mes, Fechado)'
      'VALUES'
      '  (:Ano, :Mes, :Nome_Mes, :Fechado)')
    SQLDelete.Strings = (
      'DELETE FROM FechamentoContabil'
      'WHERE'
      '  Ano = :Old_Ano AND Mes = :Old_Mes')
    SQLUpdate.Strings = (
      'UPDATE FechamentoContabil'
      'SET'
      
        '  Ano = :Ano, Mes = :Mes, Nome_Mes = :Nome_Mes, Fechado = :Fecha' +
        'do'
      'WHERE'
      '  Ano = :Old_Ano AND Mes = :Old_Mes')
    SQLRefresh.Strings = (
      
        'SELECT FechamentoContabil.Ano, FechamentoContabil.Mes, Fechament' +
        'oContabil.Nome_Mes, FechamentoContabil.Fechado FROM FechamentoCo' +
        'ntabil'
      
        'WHERE FechamentoContabil.Ano = :Ano AND FechamentoContabil.Mes =' +
        ' :Mes ')
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT * FROM FechamentoContabil')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    AfterScroll = FechamentoContabilAfterScroll
    Left = 206
    Top = 8
    object FechamentoContabilAno: TSmallintField
      FieldName = 'Ano'
    end
    object FechamentoContabilMes: TSmallintField
      FieldName = 'Mes'
    end
    object FechamentoContabilNome_Mes: TStringField
      FieldName = 'Nome_Mes'
      Size = 9
    end
    object FechamentoContabilFechado: TBooleanField
      FieldName = 'Fechado'
    end
  end
  object dsFechamentoContabil: TDataSource
    DataSet = FechamentoContabil
    Left = 238
    Top = 8
  end
end
