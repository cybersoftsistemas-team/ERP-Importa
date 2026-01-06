object Cadastro_Detalhes: TCadastro_Detalhes
  Left = 574
  Top = 315
  BorderStyle = bsDialog
  Caption = 'Cadastro_Detalhes'
  ClientHeight = 396
  ClientWidth = 435
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
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 435
    Height = 46
    Align = alTop
    Stretch = True
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 81
    Height = 21
    Caption = 'PRODUTOS'
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
  object RxLabel4: TRxLabel
    Left = 8
    Top = 22
    Width = 363
    Height = 18
    Caption = 'Cadastros da tabela de Lotes/Detalhamento dos produtos.'
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
    Top = 366
    Width = 435
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      Left = 368
      Top = 1
      Width = 67
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
      Width = 279
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsDetalhes
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Ctl3D = True
      Hints.Strings = (
        'Vai para o primeiro registro.'
        'Volta para o registro anterior.'
        'Vai para o pr'#243'ximo registro.'
        'Vai para o '#250'ltimo registro.'
        'Inlcuir um novo registro.'
        'Deletar o registro atual.'
        'Altera o reistro atual.'
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
  end
  object Panel2: TPanel
    Left = 4
    Top = 50
    Width = 428
    Height = 102
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 1
    object StaticText1: TStaticText
      Left = 5
      Top = 5
      Width = 60
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'C'#243'digo'
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
    object cCodigo: TDBEdit
      Left = 67
      Top = 5
      Width = 58
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Codigo'
      DataSource = Dados.dsDetalhes
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object StaticText5: TStaticText
      Left = 5
      Top = 28
      Width = 60
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Descri'#231#227'o'
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
    object cDescricao: TDBEdit
      Left = 67
      Top = 28
      Width = 356
      Height = 21
      DataField = 'Descricao'
      DataSource = Dados.dsDetalhes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 5
      Top = 54
      Width = 228
      Height = 43
      Caption = 'Tipo'
      Columns = 2
      DataField = 'Tipo'
      DataSource = Dados.dsDetalhes
      Items.Strings = (
        'Lote'
        'Detalhamento')
      TabOrder = 4
      Values.Strings = (
        '0'
        '1')
    end
  end
  object Grade: TRxDBGrid
    Left = 4
    Top = 155
    Width = 428
    Height = 206
    DataSource = Dados.dsDetalhes
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    RowColor2 = 16776176
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 360
        Visible = True
      end>
  end
  object tCodigo: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM Detalhes')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 324
  end
  object tPesquisa: TMSQuery
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 356
  end
end
