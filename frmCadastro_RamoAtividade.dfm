object Cadastro_RamoAtividade: TCadastro_RamoAtividade
  Left = 504
  Top = 185
  BorderStyle = bsDialog
  Caption = 'Cadastro_RamoAtividade'
  ClientHeight = 509
  ClientWidth = 582
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
  DesignSize = (
    582
    509)
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 582
    Height = 46
    Align = alTop
    Stretch = True
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 152
    Height = 21
    Caption = 'RAMO DE ATIVIDADE'
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
    Width = 236
    Height = 18
    Caption = 'Manuten'#231#227'o dos Ramos de Atividade.'
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
    Top = 479
    Width = 582
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      582
      30)
    object bSair: TButton
      Left = 514
      Top = 1
      Width = 68
      Height = 28
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
      Width = 342
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsRamoAtividade
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
    object bPesquisa: TButton
      Left = 343
      Top = 1
      Width = 68
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Caption = '&Pesquisa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 4
    Top = 50
    Width = 575
    Height = 206
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 1
    object StaticText1: TStaticText
      Left = 5
      Top = 5
      Width = 86
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
      TabOrder = 0
      Transparent = False
      StyleElements = []
    end
    object cCodigo: TDBEdit
      Left = 93
      Top = 5
      Width = 60
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Codigo'
      DataSource = Dados.dsRamoAtividade
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object StaticText5: TStaticText
      Left = 5
      Top = 28
      Width = 86
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
      Left = 93
      Top = 28
      Width = 474
      Height = 21
      DataField = 'Descricao'
      DataSource = Dados.dsRamoAtividade
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object GroupBox1: TGroupBox
      Left = 5
      Top = 129
      Width = 565
      Height = 70
      Caption = 'Cria'#231#227'o de contas autom'#225'tico no plano de contas'
      TabOrder = 4
      object StaticText2: TStaticText
        Left = 5
        Top = 20
        Width = 145
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Grupo (Fornecedores)'
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
      object DBLookupComboBox14: TDBLookupComboBox
        Left = 222
        Top = 20
        Width = 337
        Height = 21
        DataField = 'Conta_Fornecedor'
        DataSource = Dados.dsRamoAtividade
        DropDownRows = 10
        DropDownWidth = 400
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Conta;Codigo;Descricao'
        ListFieldIndex = 2
        ListSource = dmContab.dsPlanoContas
        NullValueKey = 46
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit1: TDBEdit
        Left = 152
        Top = 20
        Width = 68
        Height = 21
        DataField = 'Conta_Fornecedor'
        DataSource = Dados.dsRamoAtividade
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBLookupComboBox16: TDBLookupComboBox
        Left = 222
        Top = 43
        Width = 337
        Height = 21
        DataField = 'Conta_Adiantamento'
        DataSource = Dados.dsRamoAtividade
        DropDownRows = 10
        DropDownWidth = 400
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Conta;Codigo;Descricao'
        ListFieldIndex = 2
        ListSource = dmContab.dsPlanoContas
        NullValueKey = 46
        ParentFont = False
        TabOrder = 3
      end
      object StaticText39: TStaticText
        Left = 5
        Top = 43
        Width = 145
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Grupo Adiant. (Fornecedores)'
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
      object DBEdit4: TDBEdit
        Left = 152
        Top = 43
        Width = 68
        Height = 21
        DataField = 'Conta_Adiantamento'
        DataSource = Dados.dsRamoAtividade
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
    object GroupBox2: TGroupBox
      Left = 5
      Top = 59
      Width = 565
      Height = 63
      Caption = 'Utilizar filtro nos m'#243'dulos'
      TabOrder = 5
      object DBCheckBox1: TDBCheckBox
        Left = 7
        Top = 19
        Width = 120
        Height = 19
        Alignment = taLeftJustify
        Caption = 'Pedidos'
        DataField = 'Modulo_Pedidos'
        DataSource = Dados.dsRamoAtividade
        TabOrder = 0
      end
      object DBCheckBox2: TDBCheckBox
        Left = 148
        Top = 39
        Width = 120
        Height = 19
        Alignment = taLeftJustify
        Caption = 'Fornecedores'
        DataField = 'Modulo_Fornecedores'
        DataSource = Dados.dsRamoAtividade
        TabOrder = 1
      end
      object DBCheckBox3: TDBCheckBox
        Left = 148
        Top = 19
        Width = 120
        Height = 19
        Alignment = taLeftJustify
        Caption = 'Clientes'
        DataField = 'Modulo_Clientes'
        DataSource = Dados.dsRamoAtividade
        TabOrder = 2
      end
      object DBCheckBox4: TDBCheckBox
        Left = 289
        Top = 39
        Width = 120
        Height = 19
        Alignment = taLeftJustify
        Caption = 'Importa'#231#227'o de DI'
        DataField = 'Modulo_ImportaDI'
        DataSource = Dados.dsRamoAtividade
        TabOrder = 3
      end
      object DBCheckBox5: TDBCheckBox
        Left = 7
        Top = 39
        Width = 120
        Height = 19
        Alignment = taLeftJustify
        Caption = 'Importa'#231#227'o de NF-e'
        DataField = 'Modulo_ImportaNFe'
        DataSource = Dados.dsRamoAtividade
        TabOrder = 4
      end
      object DBCheckBox7: TDBCheckBox
        Left = 289
        Top = 19
        Width = 120
        Height = 19
        Alignment = taLeftJustify
        Caption = 'Processos'
        DataField = 'Modulo_Processo'
        DataSource = Dados.dsRamoAtividade
        TabOrder = 5
      end
      object DBCheckBox8: TDBCheckBox
        Left = 430
        Top = 19
        Width = 120
        Height = 19
        Alignment = taLeftJustify
        Caption = 'Container'
        DataField = 'Modulo_Container'
        DataSource = Dados.dsRamoAtividade
        TabOrder = 6
      end
      object DBCheckBox9: TDBCheckBox
        Left = 430
        Top = 39
        Width = 120
        Height = 19
        Alignment = taLeftJustify
        Caption = 'Nota Fiscal Terceiros'
        DataField = 'Modulo_NotaFiscalTerceiros'
        DataSource = Dados.dsRamoAtividade
        TabOrder = 7
      end
    end
    object DBCheckBox6: TDBCheckBox
      Left = 169
      Top = 5
      Width = 96
      Height = 19
      Alignment = taLeftJustify
      Caption = 'Comissionado'
      DataField = 'Comissionado'
      DataSource = Dados.dsRamoAtividade
      TabOrder = 6
    end
  end
  object Grade: TRxDBGrid
    Left = 4
    Top = 260
    Width = 575
    Height = 211
    Anchors = [akLeft, akTop, akRight]
    DataSource = Dados.dsRamoAtividade
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
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
        Width = 84
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
        Width = 469
        Visible = True
      end>
  end
  object tCodigo: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM RamoAtividade')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 337
    Top = 8
  end
end
