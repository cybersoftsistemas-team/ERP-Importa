object Utilitarios_Script: TUtilitarios_Script
  Left = 353
  Top = 166
  ActiveControl = cScript
  BorderStyle = bsToolWindow
  Caption = 'Utilitarios_Script'
  ClientHeight = 589
  ClientWidth = 1222
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Barra: TStatusBar
    Left = 0
    Top = 563
    Width = 1222
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    Panels = <
      item
        Width = 780
      end
      item
        Alignment = taCenter
        Width = 90
      end
      item
        Alignment = taCenter
        Width = 200
      end
      item
        Width = 90
      end>
    UseSystemFont = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1222
    Height = 63
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      1222
      63)
    object cBanco: TRadioGroup
      Left = 8
      Top = 10
      Width = 353
      Height = 49
      Caption = 'Banco de Dados'
      Columns = 3
      Items.Strings = (
        'Contabilidade'
        'Cadastros'
        'Movimento')
      TabOrder = 0
    end
    object bExecutar: TButton
      Left = 540
      Top = 16
      Width = 101
      Height = 35
      Caption = '&Executar (F5)'
      TabOrder = 1
      OnClick = bExecutarClick
    end
    object cHabilitar: TCheckBox
      Left = 373
      Top = 29
      Width = 108
      Height = 17
      Caption = 'Habilitar edi'#231#227'o.'
      TabOrder = 2
      OnClick = cHabilitarClick
    end
    object bSair: TButton
      Left = 1128
      Top = 16
      Width = 81
      Height = 35
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      TabOrder = 3
      OnClick = bSairClick
    end
  end
  object cScript: TMemo
    Left = 5
    Top = 63
    Width = 857
    Height = 156
    Color = 6579300
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      'cScript')
    ParentFont = False
    TabOrder = 2
    OnKeyDown = cScriptKeyDown
  end
  object Grade: TRxDBGrid
    Left = 5
    Top = 221
    Width = 857
    Height = 220
    DataSource = dstScript
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Courier New'
    TitleFont.Style = []
    OnCellClick = GradeCellClick
    OnDrawColumnCell = GradeDrawColumnCell
    OnKeyDown = GradeKeyDown
    OnKeyUp = GradeKeyUp
    RowColor2 = 16776176
  end
  object Panel1: TPanel
    Left = 863
    Top = 63
    Width = 359
    Height = 500
    Align = alRight
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    TabOrder = 4
    object gCampos: TStringGrid
      Left = 1
      Top = 1
      Width = 357
      Height = 498
      Align = alClient
      ColCount = 4
      DefaultRowHeight = 18
      FixedCols = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Courier New'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
      ParentFont = False
      TabOrder = 0
      OnClick = gCamposClick
      ColWidths = (
        30
        207
        66
        29)
    end
  end
  object ScriptSaida: TMemo
    Left = 5
    Top = 446
    Width = 756
    Height = 115
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      'ScriptSaida')
    ParentFont = False
    TabOrder = 5
  end
  object bScript: TButton
    Left = 764
    Top = 448
    Width = 93
    Height = 35
    Caption = '&Script Inser'#231#227'o'
    TabOrder = 6
    OnClick = bScriptClick
  end
  object bSalvar: TButton
    Left = 764
    Top = 488
    Width = 93
    Height = 35
    Caption = 'Sal&var'
    TabOrder = 7
    OnClick = bSalvarClick
  end
  object tScript: TMSQuery
    Connection = Dados.Banco
    FetchRows = 1000
    AfterScroll = tScriptAfterScroll
    FetchAll = False
    Left = 424
    Top = 96
  end
  object dstScript: TDataSource
    DataSet = tScript
    Left = 488
    Top = 96
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco
    FetchRows = 100
    FetchAll = False
    Left = 424
    Top = 160
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 488
    Top = 8
  end
end
