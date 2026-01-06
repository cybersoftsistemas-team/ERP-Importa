object Financeiro_LancamentoDesdobrar: TFinanceiro_LancamentoDesdobrar
  Left = 375
  Top = 296
  BorderStyle = bsDialog
  Caption = 'Financeiro_LancamentoDesdobrar'
  ClientHeight = 336
  ClientWidth = 766
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
  object Panel1: TPanel
    Left = 0
    Top = 306
    Width = 766
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      766
      30)
    object bSair: TButton
      Left = 690
      Top = 1
      Width = 75
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
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 396
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsDesdobramento
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
  object RxDBGrid1: TRxDBGrid
    Left = 5
    Top = 84
    Width = 757
    Height = 184
    DataSource = Dados.dsDesdobramento
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    RowColor2 = 16776176
    Columns = <
      item
        Expanded = False
        FieldName = 'Registro'
        Title.Alignment = taCenter
        Title.Caption = 'Item'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Processo'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 97
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Classificacao'
        Title.Alignment = taCenter
        Title.Caption = 'Classifica'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Classificacao_Descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 374
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 104
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 5
    Top = 4
    Width = 757
    Height = 77
    BevelOuter = bvLowered
    TabOrder = 2
    object lClassificacao: TStaticText
      Left = 5
      Top = 5
      Width = 105
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Classifica'#231#227'o'
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
    object cClassificacao: TDBLookupComboBox
      Left = 112
      Top = 5
      Width = 506
      Height = 21
      DataField = 'Classificacao'
      DataSource = Dados.dsDesdobramento
      DropDownRows = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao;Tipo'
      ListFieldIndex = 1
      ListSource = Dados.dsClassificacaoFinanceira
      NullValueKey = 46
      ParentFont = False
      TabOrder = 1
    end
    object lProcesso: TStaticText
      Left = 5
      Top = 28
      Width = 105
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'N'#186' Processo'
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
    object cProcesso: TDBLookupComboBox
      Left = 112
      Top = 28
      Width = 129
      Height = 21
      DataField = 'Processo'
      DataSource = Dados.dsDesdobramento
      DropDownRows = 10
      DropDownWidth = 545
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Processo'
      ListField = 'Processo; Cliente_Nome; Numero_Declaracao'
      ListSource = Dados.dsProcessosDOC
      NullValueKey = 46
      ParentFont = False
      TabOrder = 3
    end
    object lValorDocumento: TStaticText
      Left = 5
      Top = 51
      Width = 105
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Parcela'
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
    object cValorItem: TDBEdit
      Left = 112
      Top = 51
      Width = 129
      Height = 21
      DataField = 'Valor'
      DataSource = Dados.dsDesdobramento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
  end
  object StaticText1: TStaticText
    Left = 5
    Top = 270
    Width = 609
    Height = 21
    Alignment = taRightJustify
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Total dos Desdobramentos  '
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
  object cTotal: TCurrencyEdit
    Left = 616
    Top = 270
    Width = 129
    Height = 21
    TabStop = False
    AutoSize = False
    DisplayFormat = ',0.00;-,0.00'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object tItem: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 622
    Top = 30
  end
  object tTotal: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 654
    Top = 30
  end
end
