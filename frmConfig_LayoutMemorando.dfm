object Config_LayoutMemorando: TConfig_LayoutMemorando
  Left = 367
  Top = 171
  BorderStyle = bsDialog
  Caption = 'Config_LayoutMemorando'
  ClientHeight = 565
  ClientWidth = 577
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 577
    Height = 40
    Align = alTop
    Stretch = True
  end
  object RxLabel1: TRxLabel
    Left = 5
    Top = 0
    Width = 225
    Height = 21
    Caption = 'MEMORANDO DE EXPORTA'#199#195'O'
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
    Left = 5
    Top = 16
    Width = 425
    Height = 18
    Caption = 'Configura'#231#227'o do layout de impress'#227'o do memorando de exporta'#231#227'o.'
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
  object Grade: TRxDBGrid
    Left = 5
    Top = 43
    Width = 566
    Height = 417
    Color = clBtnFace
    Ctl3D = True
    DataSource = Dados.dsImpressaoMemorando
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = GradeDrawColumnCell
    OnDblClick = GradeDblClick
    FixedCols = 1
    RowColor2 = 16776176
    TitleButtons = True
    Columns = <
      item
        Expanded = False
        FieldName = 'Descricao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 283
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Posicao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Pos'
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
        FieldName = 'Linha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Coluna'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tamanho'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 58
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 53
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 536
    Width = 577
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object bSair: TButton
      Left = 500
      Top = 1
      Width = 75
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 245
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsImpressaoMemorando
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit]
      Ctl3D = True
      Hints.Strings = (
        'Vai para o primeiro registro.'
        'Volta para o registro anterior.'
        'Vai para o pr'#243'ximo registro.'
        'Vai para o '#250'ltimo registro.'
        'Inlcuir um novo registro.'
        'Deletar o registro atual.'
        'Altera o registro atual.'
        'Salvar o registro no banco de dados.'
        'Cancelar as modifica'#231#245'es feitas no registro atual.'
        'Atualizar inform'#231#245'es do banco de dados.')
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
    object bExportar: TButton
      Left = 246
      Top = 1
      Width = 107
      Height = 28
      Hint = 'Exportar as configura'#231#245'es do layout'
      Caption = '&Exportar Layout'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bExportarClick
    end
    object bImportar: TButton
      Left = 353
      Top = 1
      Width = 107
      Height = 28
      Hint = 'Exportar as configura'#231#245'es do layout'
      Caption = '&Importar Layout'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bImportarClick
    end
  end
  object StaticText12: TStaticText
    Left = 5
    Top = 477
    Width = 218
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Incrementar/Decrementar todas as colunas'
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
    Left = 5
    Top = 500
    Width = 218
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Incrementar/Decrementar todas as linha'
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
  object cLinha: TRxSpinEdit
    Left = 225
    Top = 500
    Width = 56
    Height = 21
    Alignment = taRightJustify
    Decimal = 0
    MaxValue = 210.000000000000000000
    MinValue = -210.000000000000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object cColuna: TRxSpinEdit
    Left = 225
    Top = 477
    Width = 56
    Height = 21
    Alignment = taRightJustify
    Decimal = 0
    MaxValue = 210.000000000000000000
    MinValue = -210.000000000000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object bExecCol: TBitBtn
    Left = 282
    Top = 476
    Width = 63
    Height = 23
    Caption = 'Executar'
    TabOrder = 6
    OnClick = bExecColClick
  end
  object bExecLin: TBitBtn
    Left = 282
    Top = 499
    Width = 63
    Height = 23
    Caption = 'Executar'
    TabOrder = 7
    OnClick = bExecLinClick
  end
end
