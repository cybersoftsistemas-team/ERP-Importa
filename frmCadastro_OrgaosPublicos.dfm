object Cadastro_OrgaosPublicos: TCadastro_OrgaosPublicos
  Left = 484
  Top = 183
  HelpContext = 110
  BorderStyle = bsDialog
  Caption = 'Cadastro_OrgaosPublicos'
  ClientHeight = 515
  ClientWidth = 499
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 499
    Height = 37
    Align = alTop
    Stretch = True
  end
  object RxLabel3: TRxLabel
    Left = 4
    Top = 1
    Width = 137
    Height = 21
    Caption = 'ORG'#195'OS P'#218'BLICOS'
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
    Left = 4
    Top = 16
    Width = 266
    Height = 18
    Caption = 'Manuten'#231#227'o da tabela de org'#227'os p'#250'blicos.'
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
    Top = 484
    Width = 499
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      499
      31)
    object bSair: TButton
      Left = 424
      Top = 2
      Width = 75
      Height = 27
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akBottom]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      Left = 2
      Top = 2
      Width = 387
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsOrgaos
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
    Left = 5
    Top = 42
    Width = 490
    Height = 147
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 1
    object StaticText5: TStaticText
      Left = 5
      Top = 28
      Width = 95
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Nome'
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
    object StaticText2: TStaticText
      Left = 5
      Top = 51
      Width = 95
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Ambito'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 9
      Transparent = False
      StyleElements = []
    end
    object cNome: TDBEdit
      Left = 102
      Top = 28
      Width = 334
      Height = 21
      DataField = 'Nome'
      DataSource = Dados.dsOrgaos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object StaticText3: TStaticText
      Left = 5
      Top = 5
      Width = 95
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
      TabOrder = 10
      Transparent = False
      StyleElements = []
    end
    object cCodigo: TDBEdit
      Left = 102
      Top = 5
      Width = 75
      Height = 21
      DataField = 'Codigo'
      DataSource = Dados.dsOrgaos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object StaticText1: TStaticText
      Left = 5
      Top = 74
      Width = 95
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Estado/Munic'#237'pio'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 11
      Transparent = False
      StyleElements = []
    end
    object DBComboBox1: TDBComboBox
      Left = 102
      Top = 51
      Width = 131
      Height = 21
      DataField = 'Ambito'
      DataSource = Dados.dsOrgaos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Items.Strings = (
        'FEDERAL'
        'ESTADUAL'
        'MUNIC'#205'PAL')
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 102
      Top = 74
      Width = 195
      Height = 21
      DataField = 'Estado_Municipio'
      DataSource = Dados.dsOrgaos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object lContaPagamento: TStaticText
      Left = 5
      Top = 97
      Width = 95
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Conta'
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
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 192
      Top = 97
      Width = 294
      Height = 21
      DataField = 'Conta'
      DataSource = Dados.dsOrgaos
      DropDownRows = 15
      DropDownWidth = 400
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Conta;Codigo;Descricao'
      ListFieldIndex = 2
      ListSource = dmContab.dsPlanoContas
      NullValueKey = 46
      ParentFont = False
      TabOrder = 5
    end
    object cPagamentoConta: TDBEdit
      Left = 102
      Top = 97
      Width = 88
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Conta'
      DataSource = Dados.dsOrgaos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 102
      Top = 120
      Width = 88
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Historico'
      DataSource = Dados.dsOrgaos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object StaticText9: TStaticText
      Left = 5
      Top = 120
      Width = 95
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Hist'#243'rico'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 13
      Transparent = False
      StyleElements = []
    end
    object DBLookupComboBox7: TDBLookupComboBox
      Left = 192
      Top = 120
      Width = 294
      Height = 21
      DataField = 'Historico'
      DataSource = Dados.dsOrgaos
      DropDownRows = 15
      DropDownWidth = 400
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao'
      ListFieldIndex = 1
      ListSource = dmContab.dsHistoricos
      NullValueKey = 46
      ParentFont = False
      TabOrder = 7
    end
    object StaticText12: TStaticText
      Left = 180
      Top = 5
      Width = 45
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'CNPJ'
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
    object cCNPJ: TDBEdit
      Left = 228
      Top = 5
      Width = 138
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CNPJ'
      DataSource = Dados.dsOrgaos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 18
      ParentFont = False
      TabOrder = 15
    end
  end
  object Grade: TDBGrid
    Left = 5
    Top = 197
    Width = 490
    Height = 281
    DataSource = Dados.dsOrgaos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 331
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Ambito'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 76
        Visible = True
      end>
  end
  object tPesquisa: TMSQuery
    Connection = Dados.Banco
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 360
    Top = 4
  end
  object tPagarReceber: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 389
    Top = 4
  end
end
