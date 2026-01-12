object Cadastro_Produtos: TCadastro_Produtos
  Left = 549
  Top = 185
  HelpContext = 503
  BorderStyle = bsDialog
  Caption = 'Cadastro_Produtos'
  ClientHeight = 749
  ClientWidth = 883
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
    Width = 883
    Height = 49
    Align = alTop
    Stretch = True
    ExplicitWidth = 756
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
    Width = 224
    Height = 18
    Caption = 'Manuten'#231#227'o da tabela de produtos.'
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
    Top = 717
    Width = 883
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      AlignWithMargins = True
      Left = 817
      Top = 2
      Width = 64
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      AlignWithMargins = True
      Left = 2
      Top = 2
      Width = 300
      Height = 28
      Cursor = crHandPoint
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      DataSource = Dados.dsProdutos
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alLeft
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
      ConfirmDelete = False
      ShowHint = True
      TabOrder = 1
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
    object bPesquisa: TButton
      AlignWithMargins = True
      Left = 303
      Top = 2
      Width = 67
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Pesquisa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bPesquisaClick
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 371
      Top = 2
      Width = 98
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Zerar Promo'#231#227'o'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = Button1Click
    end
    object bAjuste: TButton
      AlignWithMargins = True
      Left = 470
      Top = 2
      Width = 98
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Ajustar &Descri'#231#227'o'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bAjusteClick
    end
    object bFiliais: TButton
      Left = 568
      Top = 1
      Width = 66
      Height = 30
      Hint = 'Exportar dados para as filiais'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Exp.Filiais'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bFiliaisClick
    end
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 8
    Top = 57
    Width = 867
    Height = 652
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 8
    ActivePage = TabCST
    Align = alClient
    ParentShowHint = False
    ShowHint = True
    TabHeight = 28
    TabOrder = 1
    object tabProduto: TTabSheet
      Caption = '&Dados do Produto'
      Enabled = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cCodigo: TDBEdit
        Left = 126
        Top = 2
        Width = 125
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Codigo'
        DataSource = Dados.dsProdutos
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnChange = cCodigoChange
      end
      object StaticText1: TStaticText
        Left = 4
        Top = 2
        Width = 120
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'digo Sistema'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 29
        Transparent = False
        StyleElements = []
      end
      object StaticText2: TStaticText
        Left = 4
        Top = 278
        Width = 120
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Tipo de Produto'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 30
        Transparent = False
        StyleElements = []
        OnClick = StaticText2Click
      end
      object StaticText4: TStaticText
        Left = 4
        Top = 370
        Width = 120
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Unid.(Faturam.)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 31
        Transparent = False
        StyleElements = []
        OnClick = StaticText4Click
      end
      object StaticText5: TStaticText
        Left = 4
        Top = 324
        Width = 120
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'NCM'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 32
        Transparent = False
        StyleElements = []
        OnClick = StaticText5Click
      end
      object cTipo: TDBLookupComboBox
        Left = 126
        Top = 278
        Width = 728
        Height = 21
        DataField = 'Tipo'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Descricao;Codigo'
        ListSource = Dados.dsTipoProduto
        NullValueKey = 46
        ParentFont = False
        TabOrder = 11
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 203
        Top = 324
        Width = 651
        Height = 21
        DataField = 'NCM'
        DataSource = Dados.dsProdutos
        DropDownRows = 15
        DropDownWidth = 540
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'NCM'
        ListField = 'NCM;Unidade;Produto'
        ListFieldIndex = 2
        ListSource = dmFiscal.dsNCM
        ParentFont = False
        TabOrder = 14
      end
      object DBEdit3: TDBEdit
        Left = 126
        Top = 324
        Width = 75
        Height = 21
        DataField = 'NCM'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnChange = DBEdit3Change
        OnExit = DBEdit3Change
      end
      object cCodigoFabrica: TDBEdit
        Left = 126
        Top = 48
        Width = 310
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Codigo_Fabricante'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object StaticText8: TStaticText
        Left = 4
        Top = 48
        Width = 120
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'digo Fabrica'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 33
        Transparent = False
        StyleElements = []
      end
      object cUnidade: TDBLookupComboBox
        Left = 126
        Top = 370
        Width = 184
        Height = 21
        DataField = 'Unidade'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = Dados.dsUnidades
        ParentFont = False
        TabOrder = 17
        OnExit = cUnidadeExit
      end
      object StaticText16: TStaticText
        Left = 313
        Top = 370
        Width = 146
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Qtde.por unidade de Medida'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 34
        Transparent = False
        StyleElements = []
      end
      object cQtdeUM: TDBEdit
        Left = 461
        Top = 370
        Width = 85
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Quantidade_Unidade'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 18
      end
      object StaticText17: TStaticText
        Left = 4
        Top = 301
        Width = 120
        Height = 21
        Cursor = crArrow
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Tipo Item (SPED)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 35
        Transparent = False
        StyleElements = []
        OnClick = StaticText2Click
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 126
        Top = 301
        Width = 728
        Height = 21
        DataField = 'Tipo_Item'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Descricao;Codigo'
        ListSource = Dados.dsTipoItem
        NullValueKey = 46
        ParentFont = False
        TabOrder = 12
      end
      object StaticText23: TStaticText
        Left = 4
        Top = 232
        Width = 120
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Fabricante'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 36
        Transparent = False
        StyleElements = []
        OnClick = StaticText23Click
      end
      object cFabricante: TDBLookupComboBox
        Left = 126
        Top = 232
        Width = 728
        Height = 21
        DataField = 'Fabricante'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Nome'
        ListFieldIndex = 1
        ListSource = Dados.dsFabricantes
        NullValueKey = 46
        ParentFont = False
        TabOrder = 9
      end
      object StaticText24: TStaticText
        Left = 4
        Top = 255
        Width = 120
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Fornecedor'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 37
        Transparent = False
        StyleElements = []
        OnClick = StaticText24Click
      end
      object cFornecedor: TDBLookupComboBox
        Left = 126
        Top = 255
        Width = 728
        Height = 21
        DataField = 'Fornecedor'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Nome'
        ListFieldIndex = 1
        ListSource = Dados.dsFornecedores
        NullValueKey = 46
        ParentFont = False
        TabOrder = 10
      end
      object StaticText11: TStaticText
        Left = 4
        Top = 462
        Width = 120
        Height = 72
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Descri'#231#227'o (Portugu'#234's)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 38
        Transparent = False
        StyleElements = []
      end
      object cDescricao: TDBMemo
        Left = 126
        Top = 462
        Width = 728
        Height = 72
        DataField = 'Descricao'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 27
        WantReturns = False
      end
      object StaticText6: TStaticText
        Left = 4
        Top = 439
        Width = 120
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Descri'#231#227'o Reduzida'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 39
        Transparent = False
        StyleElements = []
      end
      object DBEdit4: TDBEdit
        Left = 126
        Top = 439
        Width = 728
        Height = 21
        DataField = 'Descricao_Reduzida'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 26
      end
      object StaticText29: TStaticText
        Left = 550
        Top = 358
        Width = 92
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Tipo convers'#227'o'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 40
        Transparent = False
        StyleElements = []
      end
      object cTipoConversao: TRxDBComboBox
        Left = 643
        Top = 358
        Width = 89
        Height = 21
        DataField = 'Tipo_Conversao'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'Divide'
          'Multiplica')
        ParentFont = False
        TabOrder = 19
        Values.Strings = (
          'D'
          'M')
      end
      object StaticText32: TStaticText
        Left = 4
        Top = 117
        Width = 120
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Linha'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 41
        Transparent = False
        StyleElements = []
        OnClick = StaticText2Click
      end
      object cLinha: TDBLookupComboBox
        Left = 126
        Top = 117
        Width = 310
        Height = 21
        DataField = 'Linha'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo; Descricao'
        ListFieldIndex = 1
        ListSource = Dados.dsProdutosLinhas
        NullValueKey = 46
        ParentFont = False
        TabOrder = 5
      end
      object StaticText33: TStaticText
        Left = 4
        Top = 140
        Width = 120
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'digo GTIN (Caixa)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 42
        Transparent = False
        StyleElements = []
      end
      object cGTIN: TDBEdit
        Left = 126
        Top = 140
        Width = 310
        Height = 21
        CharCase = ecUpperCase
        DataField = 'GTIN'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnExit = cGTINExit
      end
      object StaticText34: TStaticText
        Left = 4
        Top = 163
        Width = 120
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'digo GTIN Unidade'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 43
        Transparent = False
        StyleElements = []
      end
      object cGTINUnidade: TDBEdit
        Left = 126
        Top = 163
        Width = 310
        Height = 21
        CharCase = ecUpperCase
        DataField = 'GTIN_Unidade'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnExit = cGTINUnidadeExit
      end
      object StaticText35: TStaticText
        Left = 4
        Top = 347
        Width = 120
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Unid.Tribut.(Origem)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 44
        Transparent = False
        StyleElements = []
        OnClick = StaticText4Click
      end
      object cUnidadeOrigem: TDBLookupComboBox
        Left = 126
        Top = 347
        Width = 184
        Height = 21
        DataField = 'Unidade_Origem'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = Dados.dsUnidades
        ParentFont = False
        TabOrder = 15
        OnExit = cUnidadeExit
      end
      object StaticText36: TStaticText
        Left = 4
        Top = 393
        Width = 120
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Largura'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 45
        Transparent = False
        StyleElements = []
      end
      object DBEdit11: TDBEdit
        Left = 126
        Top = 393
        Width = 88
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Largura'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 20
      end
      object DBEdit12: TDBEdit
        Left = 289
        Top = 393
        Width = 78
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Comprimento'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 21
      end
      object StaticText37: TStaticText
        Left = 217
        Top = 393
        Width = 70
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Comprimento'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 46
        Transparent = False
        StyleElements = []
      end
      object DBEdit13: TDBEdit
        Left = 461
        Top = 393
        Width = 85
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Altura'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 22
      end
      object StaticText38: TStaticText
        Left = 370
        Top = 393
        Width = 89
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Altura/Espessura'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 47
        Transparent = False
        StyleElements = []
      end
      object StaticText40: TStaticText
        Left = 313
        Top = 347
        Width = 146
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Qtde.por unidade de Volumes'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 48
        Transparent = False
        StyleElements = []
      end
      object cQtdeVol: TDBEdit
        Left = 461
        Top = 347
        Width = 85
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Quantidade_Volumes'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
      end
      object DBCheckBox5: TDBCheckBox
        Left = 257
        Top = 3
        Width = 76
        Height = 17
        Caption = 'Desativado'
        DataField = 'Desativado'
        DataSource = Dados.dsProdutos
        TabOrder = 1
      end
      object StaticText86: TStaticText
        Left = 4
        Top = 94
        Width = 120
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Modalidade Importa'#231#227'o'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 49
        Transparent = False
        StyleElements = []
        OnClick = StaticText2Click
      end
      object cModalidade: TDBLookupComboBox
        Left = 126
        Top = 94
        Width = 310
        Height = 21
        DataField = 'Modalidade'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo; Descricao'
        ListFieldIndex = 1
        ListSource = Dados.dsTiposProcesso
        NullValueKey = 46
        ParentFont = False
        TabOrder = 4
      end
      object StaticText28: TStaticText
        Left = 4
        Top = 209
        Width = 120
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Tabela Comiss'#245'es'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 50
        Transparent = False
        StyleElements = []
        OnClick = StaticText28Click
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 126
        Top = 209
        Width = 728
        Height = 21
        DataField = 'Tabela'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo; Descricao'
        ListFieldIndex = 1
        ListSource = dmComercial.dsTabelaComissoes
        NullValueKey = 46
        ParentFont = False
        TabOrder = 8
      end
      object DBMemo1: TDBMemo
        Left = 126
        Top = 536
        Width = 728
        Height = 72
        DataField = 'Descricao_Ingles'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 28
        WantReturns = False
      end
      object StaticText42: TStaticText
        Left = 4
        Top = 536
        Width = 120
        Height = 72
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Descri'#231#227'o (Ingl'#234's)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 51
        Transparent = False
        StyleElements = []
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 471
        Top = 16
        Width = 167
        Height = 109
        Caption = 'Origem do Produto'
        DataField = 'Origem'
        DataSource = Dados.dsProdutos
        Items.Strings = (
          'Importado'
          'Importado Adq.Merc.Interno'
          'Nacional')
        TabOrder = 3
        Values.Strings = (
          'I'
          'M'
          'N')
      end
      object StaticText100: TStaticText
        Left = 5
        Top = 186
        Width = 120
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Cliente'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 52
        Transparent = False
        StyleElements = []
        OnClick = StaticText24Click
      end
      object DBLookupComboBox6: TDBLookupComboBox
        Left = 126
        Top = 186
        Width = 728
        Height = 21
        DataField = 'Cliente'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Nome'
        ListFieldIndex = 1
        ListSource = Dados.dsClientes
        NullValueKey = 46
        ParentFont = False
        TabOrder = 53
      end
      object Panel2: TPanel
        Left = 666
        Top = 4
        Width = 188
        Height = 137
        BevelOuter = bvLowered
        BorderStyle = bsSingle
        Caption = 'Panel2'
        Color = clWhite
        TabOrder = 54
        object Shape1: TShape
          Left = 1
          Top = 1
          Width = 182
          Height = 131
          Align = alClient
          Pen.Color = clWhite
        end
        object cImagem: TImage
          Left = 1
          Top = 1
          Width = 182
          Height = 131
          Cursor = crHandPoint
          Align = alClient
          Proportional = True
          Stretch = True
          Transparent = True
          OnClick = cImagemClick
        end
      end
      object StaticText103: TStaticText
        Left = 4
        Top = 71
        Width = 120
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'digo SKU'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 55
        Transparent = False
        StyleElements = []
      end
      object DBEdit5: TDBEdit
        Left = 126
        Top = 71
        Width = 310
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Codigo_SKU'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 56
      end
      object StaticText104: TStaticText
        Left = 550
        Top = 393
        Width = 92
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Qtde.Caixa Master'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 57
        Transparent = False
        StyleElements = []
      end
      object DBEdit6: TDBEdit
        Left = 643
        Top = 393
        Width = 89
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Quantidade_CaixaMaster'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 23
      end
      object cPeso: TDBEdit
        Left = 126
        Top = 416
        Width = 88
        Height = 21
        DataField = 'Peso_Liquido'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 24
      end
      object StaticText19: TStaticText
        Left = 4
        Top = 416
        Width = 120
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Peso L'#237'quido'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 58
        Transparent = False
        StyleElements = []
      end
      object StaticText3: TStaticText
        Left = 217
        Top = 416
        Width = 70
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Peso Bruto'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 59
        Transparent = False
        StyleElements = []
      end
      object cPesoKG: TDBEdit
        Left = 289
        Top = 416
        Width = 78
        Height = 21
        DataField = 'Peso_Bruto'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 25
      end
      object DBEdit18: TDBEdit
        Left = 126
        Top = 25
        Width = 125
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Codigo_DUIMP'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 60
      end
      object StaticText21: TStaticText
        Left = 4
        Top = 25
        Width = 120
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'digo DUIMP'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 61
        Transparent = False
        StyleElements = []
      end
    end
    object TabCST: TTabSheet
      Caption = '&CST'
      Enabled = False
      ImageIndex = 1
      object cCSTPIS: TStaticText
        Left = 2
        Top = 2
        Width = 148
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CST PIS (Entrada)'
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
      object cCSTPISEnt: TDBLookupComboBox
        Left = 152
        Top = 2
        Width = 650
        Height = 21
        DataField = 'CSTPIS_Entrada'
        DataSource = Dados.dsProdutos
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = Dados.dsCSTPIS
        NullValueKey = 46
        ParentFont = False
        TabOrder = 1
      end
      object cCSTCOFINS: TStaticText
        Left = 2
        Top = 25
        Width = 148
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CST COFINS (Entrada)'
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
      object cCSTCOFINSEnt: TDBLookupComboBox
        Left = 152
        Top = 25
        Width = 650
        Height = 21
        DataField = 'CSTCOFINS_Entrada'
        DataSource = Dados.dsProdutos
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = Dados.dsCSTCONFINS
        NullValueKey = 46
        ParentFont = False
        TabOrder = 3
      end
      object GrupoPIS: TGroupBox
        Left = 283
        Top = 167
        Width = 255
        Height = 156
        Caption = 'Situa'#231#227'o Tribut'#225'ria PIS (Sa'#237'da)'
        TabOrder = 4
        object DBCheckBox8: TDBCheckBox
          Left = 5
          Top = 18
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Tribut'#225'vel c/Al'#237'quota por Unidade de Medida'
          DataField = 'CSTPIS_AliquotaUM'
          DataSource = Dados.dsProdutos
          TabOrder = 0
        end
        object DBCheckBox10: TDBCheckBox
          Left = 5
          Top = 37
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Tribut'#225'vel Monof'#225'sica (Revenda a Al'#237'q.Zero)'
          DataField = 'CSTPIS_Monofasica'
          DataSource = Dados.dsProdutos
          TabOrder = 1
        end
        object DBCheckBox11: TDBCheckBox
          Left = 5
          Top = 56
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Tribut'#225'vel a Al'#237'quota Zero'
          DataField = 'CSTPIS_AliquotaZero'
          DataSource = Dados.dsProdutos
          TabOrder = 2
        end
        object DBCheckBox12: TDBCheckBox
          Left = 5
          Top = 94
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Isenta da Contribui'#231#227'o'
          DataField = 'CSTPIS_Isenta'
          DataSource = Dados.dsProdutos
          TabOrder = 3
        end
        object DBCheckBox13: TDBCheckBox
          Left = 5
          Top = 75
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Suspens'#227'o da Contribui'#231#227'o'
          DataField = 'CSTPIS_Suspensao'
          DataSource = Dados.dsProdutos
          TabOrder = 4
        end
        object DBCheckBox14: TDBCheckBox
          Left = 5
          Top = 113
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Sem Incid'#234'ncia da Contribui'#231#227'o'
          DataField = 'CSTPIS_SemIncidencia'
          DataSource = Dados.dsProdutos
          TabOrder = 5
        end
        object DBCheckBox15: TDBCheckBox
          Left = 5
          Top = 132
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Outras Opera'#231#245'es'
          DataField = 'CSTPIS_Outras'
          DataSource = Dados.dsProdutos
          TabOrder = 6
        end
      end
      object GrupoCOFINS: TGroupBox
        Left = 18
        Top = 329
        Width = 255
        Height = 156
        Caption = 'Situa'#231#227'o Tribut'#225'ria da COFINS (Entrada)'
        TabOrder = 5
        object DBCheckBox23: TDBCheckBox
          Left = 5
          Top = 18
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Tribut'#225'vel c/Al'#237'quota por Unidade de Medida'
          DataField = 'CSTCOFINS_AliquotaUMEnt'
          DataSource = Dados.dsProdutos
          TabOrder = 0
        end
        object DBCheckBox24: TDBCheckBox
          Left = 5
          Top = 37
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Tribut'#225'vel Monof'#225'sica (Revenda a Al'#237'q Zero)'
          DataField = 'CSTCOFINS_MonofasicaEnt'
          DataSource = Dados.dsProdutos
          TabOrder = 1
        end
        object DBCheckBox25: TDBCheckBox
          Left = 5
          Top = 56
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Tribut'#225'vel a Al'#237'quota Zero'
          DataField = 'CSTCOFINS_AliquotaZeroEnt'
          DataSource = Dados.dsProdutos
          TabOrder = 2
        end
        object DBCheckBox26: TDBCheckBox
          Left = 5
          Top = 94
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Isenta da Contribui'#231#227'o'
          DataField = 'CSTCOFINS_IsentaEnt'
          DataSource = Dados.dsProdutos
          TabOrder = 3
        end
        object DBCheckBox27: TDBCheckBox
          Left = 5
          Top = 75
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Suspens'#227'o da Contribui'#231#227'o'
          DataField = 'CSTCOFINS_SuspensaoEnt'
          DataSource = Dados.dsProdutos
          TabOrder = 4
        end
        object DBCheckBox28: TDBCheckBox
          Left = 5
          Top = 113
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Sem Incid'#234'ncia da Contribui'#231#227'o'
          DataField = 'CSTCOFINS_SemIncidenciaEnt'
          DataSource = Dados.dsProdutos
          TabOrder = 5
        end
        object DBCheckBox16: TDBCheckBox
          Left = 5
          Top = 132
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Outras Opera'#231#245'es de Entrada'
          DataField = 'CSTCOFINS_OutrasEnt'
          DataSource = Dados.dsProdutos
          TabOrder = 6
        end
      end
      object GroupBox3: TGroupBox
        Left = 18
        Top = 167
        Width = 255
        Height = 156
        Caption = 'Situa'#231#227'o Tribut'#225'ria do PIS (Entrada)'
        TabOrder = 6
        object DBCheckBox1: TDBCheckBox
          Left = 5
          Top = 18
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Tribut'#225'vel c/Al'#237'quota por Unidade de Medida'
          DataField = 'CSTPIS_AliquotaUMEnt'
          DataSource = Dados.dsProdutos
          TabOrder = 0
        end
        object DBCheckBox7: TDBCheckBox
          Left = 5
          Top = 37
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Tribut'#225'vel Monof'#225'sica (Revenda a Al'#237'q.Zero)'
          DataField = 'CSTPIS_MonofasicaEnt'
          DataSource = Dados.dsProdutos
          TabOrder = 1
        end
        object DBCheckBox9: TDBCheckBox
          Left = 5
          Top = 56
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Tribut'#225'vel a Al'#237'quota Zero'
          DataField = 'CSTPIS_AliquotaZeroEnt'
          DataSource = Dados.dsProdutos
          TabOrder = 2
        end
        object DBCheckBox17: TDBCheckBox
          Left = 5
          Top = 94
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Isenta da Contribui'#231#227'o'
          DataField = 'CSTPIS_IsentaEnt'
          DataSource = Dados.dsProdutos
          TabOrder = 3
        end
        object DBCheckBox18: TDBCheckBox
          Left = 5
          Top = 75
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Suspens'#227'o da Contribui'#231#227'o'
          DataField = 'CSTPIS_SuspensaoEnt'
          DataSource = Dados.dsProdutos
          TabOrder = 4
        end
        object DBCheckBox19: TDBCheckBox
          Left = 5
          Top = 113
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Sem Incid'#234'ncia da Contribui'#231#227'o'
          DataField = 'CSTPIS_SemIncidenciaEnt'
          DataSource = Dados.dsProdutos
          TabOrder = 5
        end
        object DBCheckBox20: TDBCheckBox
          Left = 5
          Top = 132
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Outras Opera'#231#245'es de Entrada'
          DataField = 'CSTPIS_OutrasEnt'
          DataSource = Dados.dsProdutos
          TabOrder = 6
        end
      end
      object GroupBox4: TGroupBox
        Left = 283
        Top = 329
        Width = 255
        Height = 156
        Caption = 'Situa'#231#227'o Tribut'#225'ria da COFINS (Sa'#237'da)'
        TabOrder = 7
        object DBCheckBox21: TDBCheckBox
          Left = 5
          Top = 18
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Tribut'#225'vel c/Al'#237'quota por Unidade de Medida'
          DataField = 'CSTCOFINS_AliquotaUM'
          DataSource = Dados.dsProdutos
          TabOrder = 0
        end
        object DBCheckBox22: TDBCheckBox
          Left = 5
          Top = 37
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Tribut'#225'vel Monof'#225'sica (Revenda a Al'#237'q Zero)'
          DataField = 'CSTCOFINS_Monofasica'
          DataSource = Dados.dsProdutos
          TabOrder = 1
        end
        object DBCheckBox29: TDBCheckBox
          Left = 5
          Top = 56
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Tribut'#225'vel a Al'#237'quota Zero'
          DataField = 'CSTCOFINS_AliquotaZero'
          DataSource = Dados.dsProdutos
          TabOrder = 2
        end
        object DBCheckBox30: TDBCheckBox
          Left = 5
          Top = 94
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Isenta da Contribui'#231#227'o'
          DataField = 'CSTCOFINS_Isenta'
          DataSource = Dados.dsProdutos
          TabOrder = 3
        end
        object DBCheckBox31: TDBCheckBox
          Left = 5
          Top = 75
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Suspens'#227'o da Contribui'#231#227'o'
          DataField = 'CSTCOFINS_Suspensao'
          DataSource = Dados.dsProdutos
          TabOrder = 4
        end
        object DBCheckBox32: TDBCheckBox
          Left = 5
          Top = 113
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Sem Incid'#234'ncia da Contribui'#231#227'o'
          DataField = 'CSTCOFINS_SemIncidencia'
          DataSource = Dados.dsProdutos
          TabOrder = 5
        end
        object DBCheckBox33: TDBCheckBox
          Left = 5
          Top = 132
          Width = 240
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Outras Opera'#231#245'es'
          DataField = 'CSTCOFINS_Outras'
          DataSource = Dados.dsProdutos
          TabOrder = 6
        end
      end
      object StaticText95: TStaticText
        Left = 2
        Top = 94
        Width = 148
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'd.Beneficio Fiscal (Entrada)'
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
      object DBEdit15: TDBEdit
        Left = 152
        Top = 94
        Width = 88
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Beneficio_FiscalEnt'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit62: TDBEdit
        Left = 152
        Top = 117
        Width = 88
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Beneficio_FiscalSai'
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object StaticText106: TStaticText
        Left = 2
        Top = 117
        Width = 148
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'd.Beneficio Fiscal (Sa'#237'da)'
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
      object StaticText7: TStaticText
        Left = 2
        Top = 48
        Width = 148
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CST ICMS (Entrada)'
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
      object DBLookupComboBox9: TDBLookupComboBox
        Left = 152
        Top = 48
        Width = 650
        Height = 21
        DataField = 'CSTICMS_Entrada'
        DataSource = Dados.dsProdutos
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = Dados.dsCSTTabelaB
        NullValueKey = 46
        ParentFont = False
        TabOrder = 13
      end
      object StaticText9: TStaticText
        Left = 2
        Top = 71
        Width = 148
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CST ICMS (Sa'#237'da)'
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
      object DBLookupComboBox10: TDBLookupComboBox
        Left = 152
        Top = 71
        Width = 650
        Height = 21
        DataField = 'CSTICMS_Saida'
        DataSource = Dados.dsProdutos
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = Dados.dsCSTTabelaB
        NullValueKey = 46
        ParentFont = False
        TabOrder = 15
      end
    end
    object TabValores: TTabSheet
      Caption = '&Impostos/Valores'
      Enabled = False
      ImageIndex = 1
      object GroupBox15: TGroupBox
        Left = 5
        Top = 98
        Width = 214
        Height = 138
        Caption = ' II - Imposto de Importa'#231#227'o '
        TabOrder = 0
        object cAliquotaII: TDBEdit
          Left = 116
          Top = 13
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Aliquota_II'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object StaticText113: TStaticText
          Left = 10
          Top = 17
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Al'#237'quota do II'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          Transparent = False
          StyleElements = []
        end
        object StaticText122: TStaticText
          Left = 10
          Top = 40
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Redu'#231#227'o do II'
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
        object DBEdit81: TDBEdit
          Left = 112
          Top = 40
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Reducao_II'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object StaticText124: TStaticText
          Left = 10
          Top = 63
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Acordo Tarif'#225'rio II'
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
        object DBEdit83: TDBEdit
          Left = 112
          Top = 63
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Acordo_TarifarioII'
          DataSource = dmFiscal.dsNCM
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object StaticText135: TStaticText
          Left = 10
          Top = 86
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Valor do II'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 6
          Transparent = False
          StyleElements = []
        end
        object DBEdit94: TDBEdit
          Left = 112
          Top = 86
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Valor_II'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
      end
      object GroupBox14: TGroupBox
        Left = 231
        Top = 98
        Width = 214
        Height = 138
        Caption = ' IPI '
        TabOrder = 1
        object DBEdit72: TDBEdit
          Left = 112
          Top = 17
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Aliquota_IPI'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object StaticText112: TStaticText
          Left = 10
          Top = 17
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Al'#237'quota do IPI'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          Transparent = False
          StyleElements = []
        end
        object StaticText116: TStaticText
          Left = 10
          Top = 109
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Valor do IPI'
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
        object DBEdit76: TDBEdit
          Left = 112
          Top = 109
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Valor_IPI'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object StaticText117: TStaticText
          Left = 10
          Top = 86
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Classe de Enq. IPI'
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
        object StaticText123: TStaticText
          Left = 10
          Top = 40
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Redu'#231#227'o do IPI'
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
        object DBEdit82: TDBEdit
          Left = 112
          Top = 40
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Reducao_IPI'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object RxDBLookupCombo1: TRxDBLookupCombo
          Left = 112
          Top = 86
          Width = 90
          Height = 21
          DropDownCount = 8
          DisplayAllFields = True
          DataField = 'ClasseEnquadra_IPI'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Classe'
          LookupDisplay = 'Classe; Valor_IPI'
          LookupSource = dmFiscal.dsClasseIPI
          ParentFont = False
          TabOrder = 7
        end
        object StaticText125: TStaticText
          Left = 10
          Top = 63
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Acordo Tarif'#225'rio IPI'
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
        object DBEdit84: TDBEdit
          Left = 112
          Top = 63
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Acordo_TarifarioIPI'
          DataSource = dmFiscal.dsNCM
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
      end
      object GroupBox16: TGroupBox
        Left = 5
        Top = 247
        Width = 214
        Height = 138
        Caption = ' PIS '
        TabOrder = 2
        object StaticText114: TStaticText
          Left = 10
          Top = 17
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Al'#237'quota do PIS'
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
        object cAliquotaPIS: TDBEdit
          Left = 112
          Top = 17
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Aliquota_PIS'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit78: TDBEdit
          Left = 112
          Top = 40
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Reducao_PIS'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object StaticText119: TStaticText
          Left = 10
          Top = 40
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Redu'#231#227'o PIS'
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
        object StaticText126: TStaticText
          Left = 10
          Top = 63
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'PIS NF Entrada'
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
        object DBEdit85: TDBEdit
          Left = 112
          Top = 63
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PIS_Nota'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object StaticText130: TStaticText
          Left = 10
          Top = 86
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'PIS NF Sa'#237'da'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 6
          Transparent = False
          StyleElements = []
        end
        object DBEdit89: TDBEdit
          Left = 112
          Top = 86
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PIS_NotaSaida'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object StaticText136: TStaticText
          Left = 10
          Top = 109
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Valor do PIS'
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
        object DBEdit95: TDBEdit
          Left = 112
          Top = 109
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Valor_PIS'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
      end
      object GroupBox17: TGroupBox
        Left = 231
        Top = 247
        Width = 214
        Height = 138
        Caption = ' COFINS '
        TabOrder = 3
        object StaticText115: TStaticText
          Left = 10
          Top = 17
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Al'#237'quota da COFINS'
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
        object cAliquotaCOFINS: TDBEdit
          Left = 112
          Top = 17
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Aliquota_COFINS'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit79: TDBEdit
          Left = 112
          Top = 40
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Reducao_COFINS'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object StaticText120: TStaticText
          Left = 10
          Top = 40
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Redu'#231#227'o COFINS'
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
        object StaticText127: TStaticText
          Left = 10
          Top = 63
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'COFINS NF Entrada'
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
        object DBEdit86: TDBEdit
          Left = 112
          Top = 63
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COFINS_Nota'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object StaticText131: TStaticText
          Left = 10
          Top = 86
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'COFINS NF Sa'#237'da'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 6
          Transparent = False
          StyleElements = []
        end
        object DBEdit90: TDBEdit
          Left = 112
          Top = 86
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COFINS_NotaSaida'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object StaticText137: TStaticText
          Left = 10
          Top = 109
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Valor da COFINS'
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
        object DBEdit96: TDBEdit
          Left = 112
          Top = 109
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Valor_COFINS'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
      end
      object GroupBox18: TGroupBox
        Left = 5
        Top = 394
        Width = 217
        Height = 160
        Caption = ' ICMS '
        TabOrder = 4
        object DBEdit80: TDBEdit
          Left = 116
          Top = 17
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ICMS_Reducao'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object StaticText121: TStaticText
          Left = 10
          Top = 17
          Width = 104
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Redu'#231#227'o B.C'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          Transparent = False
          StyleElements = []
        end
        object DBEdit87: TDBEdit
          Left = 116
          Top = 86
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ICMS_DentroEstado'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object StaticText128: TStaticText
          Left = 10
          Top = 86
          Width = 104
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'No estado(Sai)'
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
        object StaticText129: TStaticText
          Left = 10
          Top = 109
          Width = 104
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Fora Estado(Sai)'
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
        object DBEdit88: TDBEdit
          Left = 116
          Top = 109
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ICMS_ForaEstado'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object DBEdit91: TDBEdit
          Left = 116
          Top = 132
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ICMS_DentroEstadoSimples'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object StaticText132: TStaticText
          Left = 10
          Top = 132
          Width = 104
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'No est.Simples (Sai)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 7
          Transparent = False
          StyleElements = []
        end
        object DBEdit92: TDBEdit
          Left = 116
          Top = 40
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ICMS_EstadoEntrada'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object StaticText133: TStaticText
          Left = 10
          Top = 40
          Width = 104
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'No estado(Ent)'
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
        object StaticText134: TStaticText
          Left = 10
          Top = 63
          Width = 104
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Fora Estado(Ent)'
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
        object DBEdit93: TDBEdit
          Left = 116
          Top = 63
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ICMS_ForaEstadoEntrada'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
      end
      object GroupBox2: TGroupBox
        Left = 5
        Top = 11
        Width = 214
        Height = 72
        Caption = 'Valores Diversos'
        TabOrder = 5
        object cDumping: TDBEdit
          Left = 112
          Top = 18
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          Color = 16765650
          DataField = 'Dumping_Valor'
          DataSource = Dados.dsProdutos
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          StyleElements = [seFont, seBorder]
        end
        object StaticText22: TStaticText
          Left = 10
          Top = 18
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Valor do Dumping'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          Transparent = False
          StyleElements = []
        end
        object StaticText15: TStaticText
          Left = 10
          Top = 41
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Pre'#231'o M'#237'nimo'
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
        object DBEdit9: TDBEdit
          Left = 112
          Top = 41
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          DataField = 'Preco_Minimo'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
      end
      object GroupBox9: TGroupBox
        Left = 231
        Top = 394
        Width = 214
        Height = 61
        Caption = 'Contribui'#231#227'o s/Bens Servi'#231'os - CBS'
        TabOrder = 6
        object DBEdit19: TDBEdit
          Left = 116
          Top = 25
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Aliquota_CBS'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object StaticText25: TStaticText
          Left = 10
          Top = 25
          Width = 104
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Percentual CBS'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          Transparent = False
          StyleElements = []
        end
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Estoque'
      ImageIndex = 10
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox19: TGroupBox
        Left = 7
        Top = 92
        Width = 250
        Height = 142
        Caption = 'Movimenta'#231#227'o'
        TabOrder = 0
        object StaticText110: TStaticText
          Left = 9
          Top = 20
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = #218'ltimo Entrada'
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
        object DBEdit70: TDBEdit
          Left = 111
          Top = 20
          Width = 130
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Valor_Entrada'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object StaticText111: TStaticText
          Left = 9
          Top = 43
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Custo M'#233'dio'
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
        object DBEdit71: TDBEdit
          Left = 111
          Top = 43
          Width = 130
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Valor_CustoMedio'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object StaticText138: TStaticText
          Left = 9
          Top = 66
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Venda'
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
        object DBEdit97: TDBEdit
          Left = 111
          Top = 66
          Width = 130
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Valor_Venda'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object StaticText139: TStaticText
          Left = 9
          Top = 89
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Consumidor Final'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 6
          Transparent = False
          StyleElements = []
        end
        object DBEdit98: TDBEdit
          Left = 111
          Top = 89
          Width = 130
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Valor_ConsumidorFinal'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object StaticText140: TStaticText
          Left = 9
          Top = 112
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Moeda Estrangeira'
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
        object DBEdit99: TDBEdit
          Left = 111
          Top = 112
          Width = 130
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Valor_ME'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
      end
      object GroupBox20: TGroupBox
        Left = 7
        Top = 244
        Width = 250
        Height = 142
        Caption = 'Estoque'
        TabOrder = 1
        object StaticText141: TStaticText
          Left = 9
          Top = 20
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Estoque'
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
        object DBEdit100: TDBEdit
          Left = 111
          Top = 20
          Width = 130
          Height = 21
          Color = 16765650
          DataField = 'Estoque_Disponivel'
          DataSource = Dados.dsProdutos
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object StaticText142: TStaticText
          Left = 9
          Top = 43
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Terceiros'
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
        object DBEdit101: TDBEdit
          Left = 111
          Top = 43
          Width = 130
          Height = 21
          Color = 16765650
          DataField = 'Estoque_Terceiros'
          DataSource = Dados.dsProdutos
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object StaticText143: TStaticText
          Left = 9
          Top = 66
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Pedidos'
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
        object DBEdit102: TDBEdit
          Left = 111
          Top = 66
          Width = 130
          Height = 21
          Color = 16765650
          DataField = 'Lancado_Pedidos'
          DataSource = Dados.dsProdutos
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object StaticText144: TStaticText
          Left = 9
          Top = 89
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Dispon'#237'vel'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 6
          Transparent = False
          StyleElements = []
        end
        object cDisponivel: TCurrencyEdit
          Left = 111
          Top = 89
          Width = 130
          Height = 21
          AutoSize = False
          Color = 16765650
          DisplayFormat = ',0.000'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object StaticText145: TStaticText
          Left = 9
          Top = 112
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Total'
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
        object cTotalEstoque: TCurrencyEdit
          Left = 111
          Top = 112
          Width = 130
          Height = 21
          AutoSize = False
          Color = 16765650
          DisplayFormat = ',0.000'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
      end
      object GroupBox21: TGroupBox
        Left = 7
        Top = 9
        Width = 250
        Height = 73
        Caption = 'Estoque Min'#237'mo'
        TabOrder = 2
        object StaticText146: TStaticText
          Left = 9
          Top = 20
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Por Quantidade'
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
        object DBEdit103: TDBEdit
          Left = 111
          Top = 20
          Width = 130
          Height = 21
          DataField = 'Estoque_Minimo'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object StaticText147: TStaticText
          Left = 9
          Top = 43
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Por Percentual'
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
        object DBEdit104: TDBEdit
          Left = 111
          Top = 43
          Width = 130
          Height = 21
          DataField = 'Estoque_MinimoPerc'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
      object gPauta: TGroupBox
        Left = 7
        Top = 396
        Width = 250
        Height = 187
        Caption = 'Valores de Pauta'
        TabOrder = 3
        object DBGrid1: TDBGrid
          Left = 6
          Top = 16
          Width = 238
          Height = 129
          DataSource = Dados.dsProdutosPauta
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnEditButtonClick = gPautaEditButtonClick
          OnKeyDown = gPautaKeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'UF'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 58
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
              Title.Font.Style = [fsBold]
              Width = 159
              Visible = True
            end>
        end
        object Button5: TButton
          Left = 5
          Top = 148
          Width = 59
          Height = 28
          Hint = 'Procurar no banco de dados pelo registro informado.'
          Caption = '&Adicionar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = bAdicionarClick
        end
        object Button6: TButton
          Left = 65
          Top = 148
          Width = 59
          Height = 28
          Hint = 'Procurar no banco de dados pelo registro informado.'
          Caption = 'Sal&var'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object Button7: TButton
          Left = 125
          Top = 148
          Width = 59
          Height = 28
          Hint = 'Procurar no banco de dados pelo registro informado.'
          Caption = '&Cencelar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = Button4Click
        end
      end
      object GroupBox23: TGroupBox
        Left = 263
        Top = 9
        Width = 591
        Height = 574
        Caption = 'Entradas'
        TabOrder = 4
        object GradeValores: TDBGrid
          Left = 2
          Top = 15
          Width = 587
          Height = 557
          Align = alClient
          BorderStyle = bsNone
          DataSource = dstUltimas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Linha'
              Title.Alignment = taCenter
              Title.Caption = 'N'#186
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nota'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 103
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Quantidade'
              Title.Alignment = taCenter
              Title.Caption = 'QTDE'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 89
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Data_Entrada'
              Title.Alignment = taCenter
              Title.Caption = 'Data'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor_Entrada'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Entrada'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 114
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor_Inventario'
              Title.Alignment = taCenter
              Title.Caption = 'Valor Inventario'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 114
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Emissao'
              Title.Alignment = taCenter
              Title.Caption = 'Emi'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clBlack
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 34
              Visible = True
            end>
        end
      end
    end
    object TabDesc: TTabSheet
      Caption = '&Comiss'#227'o/Desconto'
      Enabled = False
      ImageIndex = 7
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox7: TGroupBox
        Left = 8
        Top = 8
        Width = 358
        Height = 79
        Caption = 'Comiss'#227'o por redu'#231#227'o de desconto'
        TabOrder = 0
        object StaticText64: TStaticText
          Left = 11
          Top = 24
          Width = 178
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Comiss'#227'o Venda de Representante'
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
        object cComissaoRep: TDBEdit
          Left = 191
          Top = 24
          Width = 72
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Comissao'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object StaticText65: TStaticText
          Left = 11
          Top = 47
          Width = 178
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Percentual de Redu'#231#227'o Comiss'#227'o'
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
        object DBEdit35: TDBEdit
          Left = 191
          Top = 47
          Width = 72
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Reducao_Comissao'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
      end
      object GroupBox8: TGroupBox
        Left = 8
        Top = 104
        Width = 358
        Height = 164
        Caption = 'Comiss'#227'o e descontos pr'#233' fixados'
        TabOrder = 1
        object StaticText62: TStaticText
          Left = 10
          Top = 41
          Width = 47
          Height = 21
          Alignment = taCenter
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'A'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          Transparent = False
          StyleElements = []
        end
        object DBEdit31: TDBEdit
          Left = 59
          Top = 41
          Width = 64
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Desconto_A'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object StaticText63: TStaticText
          Left = 10
          Top = 64
          Width = 47
          Height = 21
          Alignment = taCenter
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'B'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 21
          Transparent = False
          StyleElements = []
        end
        object DBEdit32: TDBEdit
          Left = 59
          Top = 64
          Width = 64
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Desconto_B'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object StaticText61: TStaticText
          Left = 10
          Top = 87
          Width = 47
          Height = 21
          Alignment = taCenter
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'C'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 22
          Transparent = False
          StyleElements = []
        end
        object StaticText66: TStaticText
          Left = 10
          Top = 110
          Width = 47
          Height = 21
          Alignment = taCenter
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'D'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 23
          Transparent = False
          StyleElements = []
        end
        object StaticText67: TStaticText
          Left = 10
          Top = 133
          Width = 47
          Height = 21
          Alignment = taCenter
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'E'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 24
          Transparent = False
          StyleElements = []
        end
        object DBEdit33: TDBEdit
          Left = 59
          Top = 87
          Width = 64
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Desconto_C'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object DBEdit36: TDBEdit
          Left = 59
          Top = 110
          Width = 64
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Desconto_D'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
        end
        object DBEdit37: TDBEdit
          Left = 59
          Top = 133
          Width = 64
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Desconto_E'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
        end
        object DBEdit38: TDBEdit
          Left = 125
          Top = 41
          Width = 64
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Comissao_A'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit39: TDBEdit
          Left = 125
          Top = 64
          Width = 64
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Comissao_B'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit40: TDBEdit
          Left = 125
          Top = 87
          Width = 64
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Comissao_C'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object DBEdit41: TDBEdit
          Left = 125
          Top = 110
          Width = 64
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Comissao_D'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
        end
        object DBEdit42: TDBEdit
          Left = 125
          Top = 133
          Width = 64
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Comissao_E'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 18
        end
        object DBCheckBox3: TDBCheckBox
          Left = 284
          Top = 42
          Width = 67
          Height = 17
          Caption = 'Bloquear'
          DataField = 'Bloqueio_A'
          DataSource = Dados.dsProdutos
          TabOrder = 4
        end
        object DBCheckBox4: TDBCheckBox
          Left = 284
          Top = 65
          Width = 67
          Height = 17
          Caption = 'Bloquear'
          DataField = 'Bloqueio_B'
          DataSource = Dados.dsProdutos
          TabOrder = 8
        end
        object DBCheckBox6: TDBCheckBox
          Left = 284
          Top = 88
          Width = 67
          Height = 17
          Caption = 'Bloquear'
          DataField = 'Bloqueio_C'
          DataSource = Dados.dsProdutos
          TabOrder = 12
        end
        object DBCheckBox38: TDBCheckBox
          Left = 284
          Top = 111
          Width = 67
          Height = 17
          Caption = 'Bloquear'
          DataField = 'Bloqueio_D'
          DataSource = Dados.dsProdutos
          TabOrder = 16
        end
        object DBCheckBox39: TDBCheckBox
          Left = 284
          Top = 134
          Width = 67
          Height = 17
          Caption = 'Bloquear'
          DataField = 'Bloqueio_E'
          DataSource = Dados.dsProdutos
          TabOrder = 20
        end
        object StaticText68: TStaticText
          Left = 59
          Top = 21
          Width = 64
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Desconto'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 25
          Transparent = False
          StyleElements = []
        end
        object StaticText69: TStaticText
          Left = 125
          Top = 21
          Width = 64
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Comiss'#227'o'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 26
          Transparent = False
          StyleElements = []
        end
        object StaticText70: TStaticText
          Left = 284
          Top = 21
          Width = 64
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Bloqueio'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 27
          Transparent = False
          StyleElements = []
        end
        object StaticText71: TStaticText
          Left = 10
          Top = 21
          Width = 47
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tabela'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 28
          Transparent = False
          StyleElements = []
        end
        object DBEdit49: TDBEdit
          Left = 191
          Top = 41
          Width = 91
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Valor_VendaA'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit50: TDBEdit
          Left = 191
          Top = 64
          Width = 91
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Valor_VendaB'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit51: TDBEdit
          Left = 191
          Top = 87
          Width = 91
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Valor_VendaC'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object DBEdit52: TDBEdit
          Left = 191
          Top = 110
          Width = 91
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Valor_VendaD'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
        end
        object DBEdit54: TDBEdit
          Left = 191
          Top = 133
          Width = 91
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Valor_VendaE'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
        end
        object StaticText85: TStaticText
          Left = 191
          Top = 21
          Width = 91
          Height = 19
          Alignment = taCenter
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Valor Venda'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 29
          Transparent = False
          StyleElements = []
        end
      end
    end
    object TabParam: TTabSheet
      Caption = '&Par'#226'mentros'
      Enabled = False
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cDetalhe: TDBRadioGroup
        Left = 8
        Top = 359
        Width = 159
        Height = 225
        Caption = 'Detalhe Espec'#237'fico'
        DataField = 'Detalhe_Especifico'
        DataSource = Dados.dsProdutos
        Items.Strings = (
          'Ve'#237'culo Autom'#243'vel Novo'
          'Armamento'
          'Medicamento'
          'Combust'#237'vel'
          'Outros')
        TabOrder = 0
        Values.Strings = (
          'V'
          'A'
          'M'
          'C'
          'O')
        OnClick = cDetalheClick
      end
      object GroupBox5: TGroupBox
        Left = 416
        Top = 183
        Width = 280
        Height = 114
        Caption = 'Localiza'#231#227'o'
        TabOrder = 2
        object DBEdit25: TDBEdit
          Left = 116
          Top = 16
          Width = 157
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Armazem_Nome'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object StaticText51: TStaticText
          Left = 8
          Top = 16
          Width = 106
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Armaz'#233'm'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          Transparent = False
          StyleElements = []
        end
        object StaticText55: TStaticText
          Left = 8
          Top = 39
          Width = 106
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Rua'
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
        object DBEdit26: TDBEdit
          Left = 116
          Top = 39
          Width = 69
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Armazem_Rua'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object StaticText56: TStaticText
          Left = 8
          Top = 62
          Width = 106
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Prateleira'
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
        object DBEdit27: TDBEdit
          Left = 116
          Top = 62
          Width = 69
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Armazem_Prateleira'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object StaticText57: TStaticText
          Left = 8
          Top = 85
          Width = 106
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Posi'#231#227'o na Prateleira'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 6
          Transparent = False
          StyleElements = []
        end
        object DBEdit28: TDBEdit
          Left = 116
          Top = 85
          Width = 69
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Armazem_Posicao'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
      end
      object GroupBox6: TGroupBox
        Left = 8
        Top = 83
        Width = 402
        Height = 214
        Caption = 'Detalhes Diversos'
        TabOrder = 3
        object DBCheckBox34: TDBCheckBox
          Left = 8
          Top = 83
          Width = 75
          Height = 17
          Caption = 'Recicl'#225'vel'
          DataField = 'Reciclavel'
          DataSource = Dados.dsProdutos
          TabOrder = 4
        end
        object DBCheckBox35: TDBCheckBox
          Left = 200
          Top = 14
          Width = 88
          Height = 17
          Caption = 'Anti-Dumping'
          DataField = 'Dumping'
          DataSource = Dados.dsProdutos
          TabOrder = 6
        end
        object DBCheckBox36: TDBCheckBox
          Left = 200
          Top = 31
          Width = 185
          Height = 17
          Caption = 'Entrada por substitui'#231#227'o Tribut'#225'ria'
          DataField = 'Entrada_ST'
          DataSource = Dados.dsProdutos
          TabOrder = 7
        end
        object DBCheckBox37: TDBCheckBox
          Left = 200
          Top = 48
          Width = 93
          Height = 17
          Caption = 'Custo Seletivo'
          DataField = 'Custo_Seletivo'
          DataSource = Dados.dsProdutos
          TabOrder = 8
        end
        object DBCheckBox2: TDBCheckBox
          Left = 200
          Top = 65
          Width = 98
          Height = 17
          Caption = 'Tabela CAMEX'
          DataField = 'Tabela_CAMEX'
          DataSource = Dados.dsProdutos
          TabOrder = 9
        end
        object DBCheckBox40: TDBCheckBox
          Left = 8
          Top = 14
          Width = 127
          Height = 17
          Caption = 'Visivel Representante'
          DataField = 'Visivel_Representa'
          DataSource = Dados.dsProdutos
          TabOrder = 0
        end
        object DBCheckBox41: TDBCheckBox
          Left = 8
          Top = 31
          Width = 110
          Height = 17
          Caption = 'Incidencia de FCP'
          DataField = 'FCP'
          DataSource = Dados.dsProdutos
          TabOrder = 1
        end
        object DBCheckBox42: TDBCheckBox
          Left = 8
          Top = 48
          Width = 98
          Height = 17
          Caption = 'Lote Obrigat'#243'rio'
          DataField = 'Lote_Obrigatorio'
          DataSource = Dados.dsProdutos
          TabOrder = 2
        end
        object DBCheckBox43: TDBCheckBox
          Left = 200
          Top = 83
          Width = 116
          Height = 17
          Caption = 'Produ'#231#227'o Nacional'
          DataField = 'Producao_Nacional'
          DataSource = Dados.dsProdutos
          TabOrder = 10
        end
        object DBCheckBox44: TDBCheckBox
          Left = 8
          Top = 65
          Width = 105
          Height = 17
          Caption = 'Serial Obrigat'#243'rio'
          DataField = 'Serial_Obrigatorio'
          DataSource = Dados.dsProdutos
          TabOrder = 3
        end
        object cEscalaRelevante: TDBCheckBox
          Left = 8
          Top = 186
          Width = 168
          Height = 17
          Caption = 'Produzido em escala relevante'
          DataField = 'Escala_Relevante'
          DataSource = Dados.dsProdutos
          TabOrder = 5
          OnClick = cEscalaRelevanteClick
        end
        object cCNPJFab: TDBEdit
          Left = 272
          Top = 185
          Width = 114
          Height = 21
          DataField = 'CNPJ_Fabricante'
          DataSource = Dados.dsProdutos
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 18
          ParentFont = False
          TabOrder = 11
        end
        object lCNPJFab: TStaticText
          Left = 175
          Top = 185
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'CNPJ do Fabricante'
          Color = 7293440
          Enabled = False
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
        object DBCheckBox45: TDBCheckBox
          Left = 8
          Top = 100
          Width = 116
          Height = 17
          Caption = 'Mat'#233'ria Prima'
          DataField = 'Materia_Prima'
          DataSource = Dados.dsProdutos
          TabOrder = 13
        end
        object DBCheckBox46: TDBCheckBox
          Left = 200
          Top = 100
          Width = 61
          Height = 17
          Caption = 'Servi'#231'o'
          DataField = 'Servico'
          DataSource = Dados.dsProdutos
          TabOrder = 14
        end
        object DBCheckBox47: TDBCheckBox
          Left = 200
          Top = 117
          Width = 192
          Height = 17
          Caption = 'Requer Licen'#231'a de Importa'#231#227'o (LI)'
          DataField = 'Requer_LI'
          DataSource = Dados.dsProdutos
          TabOrder = 15
        end
        object DBCheckBox48: TDBCheckBox
          Left = 8
          Top = 117
          Width = 116
          Height = 17
          Caption = 'ICMS Desonerado'
          DataField = 'ICMS_Desonerado'
          DataSource = Dados.dsProdutos
          TabOrder = 16
        end
        object DBCheckBox49: TDBCheckBox
          Left = 8
          Top = 134
          Width = 116
          Height = 17
          Caption = 'Estoque por Navio'
          DataField = 'Estoque_Navio'
          DataSource = Dados.dsProdutos
          TabOrder = 17
        end
        object DBCheckBox50: TDBCheckBox
          Left = 200
          Top = 134
          Width = 172
          Height = 17
          Caption = 'Tributa'#231#227'o de PIS/COFINS ST'
          DataField = 'Tributa_PISCOFINSST'
          DataSource = Dados.dsProdutos
          TabOrder = 18
        end
      end
      object cDadosDetalhe: TPageControl
        Left = 173
        Top = 364
        Width = 676
        Height = 221
        ActivePage = TabSheet2
        TabHeight = 25
        TabOrder = 1
        object TabSheet2: TTabSheet
          Caption = 'Ve'#237'culo Autom'#243'vel Novo'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object DBEdit43: TDBEdit
            Left = 124
            Top = 1
            Width = 100
            Height = 21
            DataField = 'Potencia_Motor'
            DataSource = Dados.dsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object DBEdit44: TDBEdit
            Left = 345
            Top = 1
            Width = 100
            Height = 21
            DataField = 'Cilindradas'
            DataSource = Dados.dsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object DBEdit46: TDBEdit
            Left = 124
            Top = 47
            Width = 100
            Height = 21
            DataField = 'Capacidade_Tracao'
            DataSource = Dados.dsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object DBEdit47: TDBEdit
            Left = 345
            Top = 47
            Width = 100
            Height = 21
            DataField = 'Distancia_Eixos'
            DataSource = Dados.dsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
          object DBEdit48: TDBEdit
            Left = 124
            Top = 70
            Width = 100
            Height = 21
            DataField = 'Tipo_Pintura'
            DataSource = Dados.dsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
          object DBEdit53: TDBEdit
            Left = 345
            Top = 70
            Width = 100
            Height = 21
            DataField = 'Codigo_MarcaModelo'
            DataSource = Dados.dsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 10
          end
          object StaticText73: TStaticText
            Left = 2
            Top = 1
            Width = 120
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Pot'#234'ncia Motor'
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
          object StaticText74: TStaticText
            Left = 228
            Top = 1
            Width = 115
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Cilindradas'
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
          object StaticText75: TStaticText
            Left = 228
            Top = 24
            Width = 115
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Combustivel'
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
          object StaticText76: TStaticText
            Left = 2
            Top = 47
            Width = 120
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Capacidade de Tra'#231#227'o'
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
          object StaticText77: TStaticText
            Left = 228
            Top = 47
            Width = 115
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Dist'#226'ncia entre Eixos'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 15
            Transparent = False
            StyleElements = []
          end
          object StaticText78: TStaticText
            Left = 2
            Top = 70
            Width = 120
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Tipo de Pintura'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 16
            Transparent = False
            StyleElements = []
          end
          object StaticText79: TStaticText
            Left = 2
            Top = 93
            Width = 120
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Tipo de Ve'#237'culo'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 17
            Transparent = False
            StyleElements = []
          end
          object StaticText80: TStaticText
            Left = 2
            Top = 116
            Width = 120
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Esp'#233'cie de Ve'#237'culo'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 18
            Transparent = False
            StyleElements = []
          end
          object StaticText81: TStaticText
            Left = 2
            Top = 139
            Width = 120
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Condi'#231#227'o do VIN'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 19
            Transparent = False
            StyleElements = []
          end
          object StaticText82: TStaticText
            Left = 2
            Top = 162
            Width = 120
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Condi'#231#227'o do Ve'#237'culo'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 20
            Transparent = False
            StyleElements = []
          end
          object StaticText83: TStaticText
            Left = 227
            Top = 70
            Width = 115
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'C'#243'digo Marca/Modelo'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 21
            Transparent = False
            StyleElements = []
          end
          object RxDBComboBox1: TRxDBComboBox
            Left = 345
            Top = 24
            Width = 193
            Height = 21
            DataField = 'Tipo_Combustivel'
            DataSource = Dados.dsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              '01'#193'lcool'
              '02|Gasolina'
              '03|Diesel, (...)'
              '16|'#193'lcool/Gasolina'
              '17|Gasolina/'#193'lcool/GNV'
              '18|Gasolina/El'#233'trico')
            ParentFont = False
            TabOrder = 2
            Values.Strings = (
              '01'
              '02'
              '03'
              '16'
              '17'
              '18')
          end
          object RxDBComboBox2: TRxDBComboBox
            Left = 124
            Top = 93
            Width = 415
            Height = 21
            DataField = 'Tipo_Veiculo'
            DataSource = Dados.dsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              '02|CICLOMOTO'
              '03|MOTONETA'
              '04|MOTOCICLO'
              '05|TRICICLO'
              '06|AUTOM'#211'VEL'
              '07|MICRO'#212'NIBUS'
              '08|'#212'NIBUS'
              '10|REBOQUE'
              '11|SEMIRREBOQUE'
              '13|CAMINHONETA'
              '14|CAMINH'#195'O'
              '17|C. TRATOR'
              '22|ESP / '#212'NIBUS'
              '23|MISTO / CAM'
              '24|CARGA/CAM')
            ParentFont = False
            TabOrder = 6
            Values.Strings = (
              '02'
              '03'
              '04'
              '05'
              '06'
              '07'
              '08'
              '10'
              '11'
              '13'
              '14'
              '17'
              '22'
              '23'
              '24')
          end
          object RxDBComboBox3: TRxDBComboBox
            Left = 124
            Top = 116
            Width = 415
            Height = 21
            DataField = 'Especie_Veiculo'
            DataSource = Dados.dsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              '1|PASSAGEIRO'
              '2|CARGA'
              '3|MISTO'
              '4|CORRIDA'
              '5|TRA'#199#195'O'
              '6|ESPECIAL')
            ParentFont = False
            TabOrder = 7
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6')
          end
          object RxDBComboBox4: TRxDBComboBox
            Left = 124
            Top = 139
            Width = 415
            Height = 21
            DataField = 'Condicao_VIN'
            DataSource = Dados.dsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              'R|REMARCADO'
              'N|INORMAL')
            ParentFont = False
            TabOrder = 8
            Values.Strings = (
              'R'
              'N')
          end
          object RxDBComboBox5: TRxDBComboBox
            Left = 124
            Top = 162
            Width = 415
            Height = 21
            DataField = 'Condicao_Veiculo'
            DataSource = Dados.dsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              '1|ACABADO'
              '2|INACABADO'
              '3|SEMIACABADO')
            ParentFont = False
            TabOrder = 9
            Values.Strings = (
              '1'
              '2'
              '3')
          end
          object StaticText84: TStaticText
            Left = 2
            Top = 24
            Width = 120
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Capacidade de Lota'#231#227'o'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 22
            Transparent = False
            StyleElements = []
          end
          object DBEdit45: TDBEdit
            Left = 124
            Top = 24
            Width = 100
            Height = 21
            DataField = 'Passageiros'
            DataSource = Dados.dsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 23
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Armamento'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
        end
        object TabSheet4: TTabSheet
          Caption = 'Medicamento'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object StaticText93: TStaticText
            Left = 2
            Top = 1
            Width = 131
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Pre'#231'o m'#225'ximo consumidor'
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
          object DBEdit58: TDBEdit
            Left = 135
            Top = 1
            Width = 130
            Height = 21
            DataField = 'Preco_MaxConsumidor'
            DataSource = Dados.dsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'Combust'#237'vel'
          ImageIndex = 3
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object StaticText41: TStaticText
            Left = 1
            Top = 2
            Width = 147
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'C'#243'digo ANP'
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
          object DBEdit16: TDBEdit
            Left = 150
            Top = 2
            Width = 125
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Codigo_ANP'
            DataSource = Dados.dsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object DBLookupComboBox3: TDBLookupComboBox
            Left = 276
            Top = 2
            Width = 339
            Height = 21
            DataField = 'Codigo_ANP'
            DataSource = Dados.dsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Codigo; Produto'
            ListFieldIndex = 1
            ListSource = Dados.dsCombustiveis
            NullValueKey = 46
            ParentFont = False
            TabOrder = 2
          end
          object DBMemo2: TDBMemo
            Left = 150
            Top = 25
            Width = 465
            Height = 43
            DataField = 'Descricao_ANP'
            DataSource = Dados.dsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            WantReturns = False
          end
          object StaticText89: TStaticText
            Left = 1
            Top = 25
            Width = 147
            Height = 43
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Descri'#231#227'o ANP'
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
          object StaticText90: TStaticText
            Left = 1
            Top = 70
            Width = 147
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Percentual GLGN (Nacional)'
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
          object DBEdit55: TDBEdit
            Left = 150
            Top = 70
            Width = 120
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Percentual_GLGNN'
            DataSource = Dados.dsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
          end
          object StaticText91: TStaticText
            Left = 274
            Top = 70
            Width = 147
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Percentual GLGN (Importado)'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 7
            Transparent = False
            StyleElements = []
          end
          object DBEdit56: TDBEdit
            Left = 423
            Top = 70
            Width = 120
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Percentual_GLGNI'
            DataSource = Dados.dsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
          end
          object StaticText92: TStaticText
            Left = 1
            Top = 93
            Width = 147
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Valor de Partida'
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
          object DBEdit57: TDBEdit
            Left = 150
            Top = 93
            Width = 120
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Valor_Partida'
            DataSource = Dados.dsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 10
          end
          object StaticText10: TStaticText
            Left = 1
            Top = 116
            Width = 147
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Perc.ICMS Compon (A) (Ent)'
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
          object DBEdit1: TDBEdit
            Left = 150
            Top = 116
            Width = 120
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Percentual_ICMSMono'
            DataSource = Dados.dsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 12
          end
          object StaticText12: TStaticText
            Left = 274
            Top = 116
            Width = 147
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Percentual ICMS Compon (B)'
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
          object DBEdit2: TDBEdit
            Left = 423
            Top = 116
            Width = 120
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Percentual_ICMSMonoRet'
            DataSource = Dados.dsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 14
          end
          object StaticText13: TStaticText
            Left = 1
            Top = 162
            Width = 147
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Percentual Bio Diesel'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 15
            Transparent = False
            StyleElements = []
          end
          object DBEdit7: TDBEdit
            Left = 150
            Top = 162
            Width = 120
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Percentual_BioDiesel'
            DataSource = Dados.dsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 16
          end
          object StaticText14: TStaticText
            Left = 274
            Top = 162
            Width = 147
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Percentual Antecipa'#231#227'o'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 17
            Transparent = False
            StyleElements = []
          end
          object DBEdit8: TDBEdit
            Left = 423
            Top = 162
            Width = 120
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Percentual_Antecipacao'
            DataSource = Dados.dsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 18
          end
          object StaticText18: TStaticText
            Left = 1
            Top = 139
            Width = 147
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Perc.ICMS Compon (A) (Sa'#237')'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 19
            Transparent = False
            StyleElements = []
          end
          object DBEdit10: TDBEdit
            Left = 150
            Top = 139
            Width = 120
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Percentual_ICMSMonoSai'
            DataSource = Dados.dsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 20
          end
          object StaticText20: TStaticText
            Left = 274
            Top = 139
            Width = 147
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'FECEP'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 21
            Transparent = False
            StyleElements = []
          end
          object DBEdit14: TDBEdit
            Left = 423
            Top = 139
            Width = 120
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Percentual_FECEP'
            DataSource = Dados.dsProdutos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 22
          end
        end
      end
      object GroupBox10: TGroupBox
        Left = 416
        Top = 83
        Width = 280
        Height = 92
        Caption = 'ANVISA'
        TabOrder = 4
        object DBEdit17: TDBEdit
          Left = 76
          Top = 17
          Width = 157
          Height = 21
          DataField = 'Registro_ANVISA'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit22: TDBEdit
          Left = 76
          Top = 63
          Width = 198
          Height = 21
          DataField = 'Processo_ANVISA'
          DataSource = Dados.dsProdutos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object StaticText47: TStaticText
          Left = 8
          Top = 17
          Width = 66
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Registro'
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
        object StaticText48: TStaticText
          Left = 8
          Top = 40
          Width = 66
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Vencimento'
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
        object StaticText87: TStaticText
          Left = 8
          Top = 63
          Width = 66
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Processo'
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
        object cDataDoc: TDBDateEdit
          Left = 76
          Top = 40
          Width = 117
          Height = 21
          DataField = 'Vencimento_ANVISA'
          DataSource = Dados.dsProdutos
          CheckOnExit = True
          DialogTitle = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          GlyphKind = gkCustom
          Glyph.Data = {
            D2080000424DD208000000000000360000002800000026000000130000000100
            1800000000009C08000000000000000000000000000000000000171717151515
            1515151515151515151515151515151515151515151515151515151515151515
            1515151515151515151515151515151516161617171715151515151515151515
            1515151515151515151515151515151515151515151515151515151515151515
            15151515151515151516161600005A5A5A555555565656555555555555565656
            5656565757575858585858585757575757575555555555555555555555555555
            555555555959595A5A5A55555556565655555555555556565656565657575758
            5858585858575757575757555555555555555555555555555555555555595959
            0000767676B9B9B9AEAEAEABABABAAAAAAA9A9A9A7A7A7A6A6A6A3A3A3A3A3A3
            A6A6A6ABABABB3B3B3B6B6B6B2B2B2AEAEAEACACACB0B0B0B7B7B7767676B9B9
            B9AEAEAEABABABAAAAAAA9A9A9A7A7A7A6A6A6A3A3A3A3A3A3A6A6A6ABABABB3
            B3B3B6B6B6B2B2B2AEAEAEACACACB0B0B0B7B7B700009E9E9EFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFBFBFBF6F6F6F2F2F2E6E6E6CFCFCFBEBEBEC5C5C5
            E1E1E1FDFDFDFEFEFEFEFEFEFCFCFC9E9E9EFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFBFBFBF6F6F6FFFFFFFFFFFFCFCFCFBEBEBEC5C5C5E1E1E1FDFDFDFE
            FEFEFEFEFEFCFCFC0000818181FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEE7E7E7BCBCBCC6C6C6EDEDEDE9E9E9B9B9B98D8D8D8D8D8DCCCCCCFEFEFE
            F0F0F0818181FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFF
            FFFFFFFFEDEDEDE9E9E9B9B9B98D8D8D8D8D8DCCCCCCFEFEFEF0F0F000006A6A
            6AFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFECFCFCF565656515151D0
            D0D0FEFEFEFEFEFEF3F3F3AFAFAF7D7D7DBCBCBCE3E3E36A6A6AFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFEFE
            FEF3F3F3AFAFAF7D7D7DBCBCBCE3E3E30000565656F8F8F8FEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFED3D3D33636362D2D2DCCCCCCFEFEFEFEFEFEFEFEFEFE
            FEFECFCFCFABABABB5B5B5565656F8F8F8FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFECFCFCFABAB
            ABB5B5B50000424242F0F0F0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDDDD
            DD2121210F0F0FC2C2C2FEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFEFEFEAEAEAE42
            4242F0F0F0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFC0C0C0C0C0C0FFFFFF
            FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFEFEFEAEAEAE0000333333E7E7E7
            FEFEFEFBFBFBFBFBFBFCFCFCF3F3F3C8C8C8D3D3D31A1A1A030303B3B3B3FEFE
            FEFDFDFDFDFDFDFDFDFDFEFEFEFEFEFEA7A7A7333333E7E7E7FEFEFEFBFBFBFB
            FBFBFFFFFFFFFFFFFFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFDFDFDFDFDFD
            FDFDFDFEFEFEFEFEFEA7A7A70000252525D6D6D6FEFEFEF6F6F6F6F6F6FCFCFC
            EEEEEE1919191010100D0D0D0D0D0DB3B3B3FEFEFEF8F8F8F8F8F8F8F8F8F9F9
            F9FEFEFE8E8E8E252525D6D6D6FEFEFEF6F6F6F6F6F6FFFFFFC0C0C0C0C0C0C0
            C0C0C0C0C0FFFFFFFFFFFFFEFEFEF8F8F8F8F8F8F8F8F8F9F9F9FEFEFE8E8E8E
            00001A1A1AC4C4C4FDFEFDF2F3F2F3F5F2F4F5F3FAFBF99B9C9A313231151614
            282928BCBDBCFEFEFEF5F6F5F6F7F5F6F7F5F7F9F6FEFEFE7C7C7B1A1A1AC4C4
            C4FDFDFDF2F2F2F3F3F3F4F4F4FAFAFAC0C0C0C0C0C0C0C0C0FFFFFFFFFFFFFE
            FEFEF5F5F5F6F6F6F6F6F6F7F7F7FEFEFE7B7B7B0000131313B3B6B2FDFEFCEE
            F0ECEFF2EDF0F5EEF4F9F1FEFEFEE6EBE4787D75686C66CED1CCFCFEFBF7FEF2
            F5FBF2F4F8F2F6FBF3FEFEFE696A69131313B4B4B4FDFDFDEEEEEEF0F0F0F2F2
            F2F6F6F6FFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFCFCFCF9F9F9F7F7F7F5F5F5F8
            F8F8FEFEFE696969000020231EAA7D7CE1C1A2E6CAB0E4C59DE7C99BE3C184E5
            C27EEACA83EFD697EED497EBCC85EBCC85E8C67CEBCE93EACB95E5C485E4C289
            4A4739212121818181BABABAC5C5C5BCBCBCBEBEBEB2B2B2B1B1B1B7B7B7C5C5
            C5C4C4C4B9B9B9B9B9B9B3B3B3BFBFBFBDBDBDB4B4B4B4B4B443434300002E35
            2A7D5545D1A475DEBB97E0BE8DDEB877CE963FC1852FC7892FD7A53DE9C876E8
            C46CE1B756CA8B2FD9A849E2BB71DEB36CC9954935321F3131315454549A9A9A
            B3B3B3B2B2B2A8A8A88181817171717474748A8A8AB2B2B2ADADAD9E9E9E7575
            75909090A8A8A8A2A2A28383832C2C2C000022271F7E5858A0693FA9703EB47D
            43BA823FBC8538BA7F2FC0832FC89236D9AA58DBAD5BD8A957C1852FCC9743D2
            A15BD2A35FBF8A532C2B222424245B5B5B616161666666717171737373737373
            6C6C6C6F6F6F7B7B7B9696969999999595957171718383839090909393937E7E
            7E28282800001318107C58617E532F85562F935E2FAB775BAE7748AE732FB075
            2FB47A2FB6782FB6782FC0873DBA8970B27833AA712FA2692F9E683F23232215
            15155E5E5E4C4C4C4F4F4F5555557373736E6E6E646464656565696969686868
            6868687676768686866969696262625D5D5D61616122222200000C10093F391D
            473A0050410045380068655D4946394F4000776300705D007360007D67004F45
            11757A72342C066754006856004C3E011C1B1B0D0D0D3131312929292F2F2F28
            28286262624242422E2E2E4747474343434545454A4A4A363636777777212121
            3C3C3C3E3E3E2D2D2D1B1B1B00000D110A3E3719463900534400292203686C64
            464B422A22007F69006E5C007A66005A4A00191710888F842926196A57006957
            00483B001B1B1B0E0E0E2E2E2E2929293131311919196969694747471818184B
            4B4B4242424949493535351515158B8B8B2222223E3E3E3E3E3E2A2A2A1B1B1B
            00000D110A3E371A493B003A310B1A1D186A6A6A3C3D3B0000004035007F6A00
            594A0003020010110F818181161A14302A0E695700493C001B1B1B0E0E0E2F2F
            2F2A2A2A2626261B1B1B6A6A6A3C3C3C0000002626264C4C4C35353501010110
            10108181811717172222223E3E3E2B2B2B1B1B1B0000}
          NumGlyphs = 2
          ParentFont = False
          PopupAlign = epaLeft
          TabOrder = 5
        end
      end
      object GroupBox1: TGroupBox
        Left = 10
        Top = 303
        Width = 402
        Height = 48
        Caption = 'Par'#226'mentros Comerciais do Produto'
        TabOrder = 5
        object cPromocao: TDBCheckBox
          Left = 7
          Top = 18
          Width = 171
          Height = 19
          Alignment = taLeftJustify
          Caption = 'Colocar Produto em Promo'#231#227'o'
          DataField = 'Promocao'
          DataSource = Dados.dsProdutos
          TabOrder = 0
          OnClick = cPromocaoClick
        end
        object lValorPromocao: TStaticText
          Left = 184
          Top = 18
          Width = 104
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Valor em Promo'#231#227'o'
          Color = 7293440
          Enabled = False
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
        object cValorPromocao: TDBEdit
          Left = 290
          Top = 18
          Width = 102
          Height = 21
          DataField = 'Promocao_Valor'
          DataSource = Dados.dsProdutos
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 149
        Top = 55
        Width = 700
        Height = 21
        DataField = 'Classificacao'
        DataSource = Dados.dsProdutos
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo; Descricao'
        ListFieldIndex = 1
        ListSource = Dados.dsClassificacaoFinanceira
        NullValueKey = 46
        ParentFont = False
        TabOrder = 6
      end
      object StaticText99: TStaticText
        Left = 9
        Top = 55
        Width = 138
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Classifica'#231#227'o Financeira'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 7
        Transparent = False
        StyleElements = []
        OnClick = StaticText2Click
      end
      object StaticText101: TStaticText
        Left = 9
        Top = 9
        Width = 138
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Org'#227'o Anuente Importa'#231#227'o'
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
        OnClick = StaticText2Click
      end
      object DBLookupComboBox7: TDBLookupComboBox
        Left = 149
        Top = 9
        Width = 700
        Height = 21
        DataField = 'Orgao_AnuenteImp'
        DataSource = Dados.dsProdutos
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Abrev;Nome'
        ListFieldIndex = 2
        ListSource = dmDespacho.dsAnuenteImp
        NullValueKey = 46
        ParentFont = False
        TabOrder = 9
      end
      object StaticText102: TStaticText
        Left = 9
        Top = 32
        Width = 138
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Org'#227'o Anuente Exporta'#231#227'o'
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
        OnClick = StaticText2Click
      end
      object DBLookupComboBox8: TDBLookupComboBox
        Left = 149
        Top = 32
        Width = 700
        Height = 21
        DataField = 'Orgao_AnuenteExp'
        DataSource = Dados.dsProdutos
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Abrev;Nome'
        ListFieldIndex = 2
        ListSource = dmDespacho.dsAnuenteExp
        NullValueKey = 46
        ParentFont = False
        TabOrder = 11
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'Atributos'
      ImageIndex = 11
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object RxDBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 859
        Height = 517
        Align = alTop
        DataSource = Dados.dsProdutosAtt
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NCM'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Atributo'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 283
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 490
            Visible = True
          end>
      end
      object Button3: TButton
        Left = 366
        Top = 531
        Width = 92
        Height = 38
        Hint = 'Procurar no banco de dados pelo registro informado.'
        Caption = '&Cadastro'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = Button3Click
      end
    end
    object TabSheet6: TTabSheet
      Caption = '&Seriais'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GradeSeriais: TDBGrid
        Left = 0
        Top = 0
        Width = 859
        Height = 528
        Align = alTop
        DataSource = Dados.dsProdutosSeriais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Tipo'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Numero'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 159
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Tipo2'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Numero2'
            Title.Alignment = taCenter
            Title.Caption = 'Numero'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 138
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Tipo3'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Numero3'
            Title.Alignment = taCenter
            Title.Caption = 'Numero'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 165
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nota_Entrada'
            Title.Alignment = taCenter
            Title.Caption = 'NF Ent.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Processo'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 153
            Visible = True
          end>
      end
      object bNumeros: TButton
        Left = 363
        Top = 534
        Width = 93
        Height = 38
        Hint = 'Procurar no banco de dados pelo registro informado.'
        Caption = '&Cadastro'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = bNumerosClick
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Detal&hes/Lotes'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GradeDetalhes: TDBGrid
        Left = 0
        Top = 0
        Width = 859
        Height = 517
        Align = alTop
        DataSource = Dados.dsProdutosDetalhe
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Nome_Detalhe'
            Title.Alignment = taCenter
            Title.Caption = 'Detalhe'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 185
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Lote'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 147
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Fabricacao'
            Title.Alignment = taCenter
            Title.Caption = 'Fabrica'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Data_Validade'
            Title.Alignment = taCenter
            Title.Caption = 'Validade'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nota_Entrada'
            Title.Alignment = taCenter
            Title.Caption = 'NF Entrada'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 115
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade_Entrada'
            Title.Alignment = taCenter
            Title.Caption = 'Qtde'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 101
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Saldo'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end>
      end
      object Button2: TButton
        Left = 358
        Top = 523
        Width = 92
        Height = 38
        Hint = 'Procurar no banco de dados pelo registro informado.'
        Caption = '&Cadastro'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = Button2Click
      end
    end
    object TabSheet9: TTabSheet
      Caption = '&Mat'#233'ria Prima'
      ImageIndex = 8
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GradeMateria: TDBGrid
        Left = 0
        Top = 0
        Width = 859
        Height = 504
        Align = alTop
        DataSource = Dados.dsProdutosMateriaPrima
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo_MateriaPrima'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 134
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 702
            Visible = True
          end>
      end
      object bCadastroMateria: TButton
        Left = 383
        Top = 520
        Width = 93
        Height = 38
        Hint = 'Procurar no banco de dados pelo registro informado.'
        Caption = '&Cadastro'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = bCadastroMateriaClick
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Tabela &ICMS'
      ImageIndex = 9
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object RxDBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 859
        Height = 453
        Align = alTop
        DataSource = Dados.dsProdutosICMS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
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
            Width = 587
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Aliquota'
            Title.Alignment = taCenter
            Title.Caption = 'Al'#237'quota'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 60
            Visible = True
          end>
      end
    end
    object TabLista: TTabSheet
      Caption = '&Lista'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GradeProdutos: TDBGrid
        Left = 0
        Top = 0
        Width = 859
        Height = 454
        Align = alTop
        Color = clHighlight
        DataSource = Dados.dsProdutos
        GradientEndColor = clLime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = GradeProdutosTitleClick
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
            FieldName = 'Codigo_Fabricante'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Fabricante'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 130
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
            Width = 626
            Visible = True
          end>
      end
      object cFiltroModal: TRadioGroup
        Left = 10
        Top = 462
        Width = 601
        Height = 49
        Caption = 'Modalidade de Importa'#231#227'o'
        Columns = 5
        ItemIndex = 0
        Items.Strings = (
          'Todos'
          'Conta Pr'#243'pria'
          'Conta e Ordem'
          'Encomenda'
          'Servi'#231'o')
        TabOrder = 1
        OnClick = cFiltroModalClick
      end
      object cQtde: TPanel
        Left = 614
        Top = 467
        Width = 107
        Height = 44
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Caption = '000000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object StaticText105: TStaticText
        Left = 11
        Top = 529
        Width = 64
        Height = 21
        Cursor = crHandPoint
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
        TabOrder = 3
        Transparent = False
        StyleElements = []
      end
      object cPesquisa: TEdit
        Left = 77
        Top = 529
        Width = 646
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnChange = cPesquisaChange
      end
    end
  end
  object tCodigo: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Codigo) as Codigo FROM Produtos')
    FetchRows = 1
    Left = 298
    Top = 3
  end
  object tPesquisa: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 354
    Top = 3
  end
  object tEstoque: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 410
    Top = 3
  end
  object tUltimas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT DISTINCT'
      '       CAST(null AS datetime) AS Data_Entrada,'
      '       0 AS Nota,'
      '       Valor_Inventario AS Valor_Inventario,'
      '       Valor_UnitarioOrig AS Valor_Entrada,'
      '       Quantidade,'
      '       Emissao = '#39'TER'#39
      'INTO #TEMP'
      'FROM   NotasTerceirosItens'
      '--WHERE (Codigo_Mercadoria = 1)'
      'UNION ALL'
      'SELECT DISTINCT'
      '       Data,'
      '       Nota,'
      '       Valor_Inventario AS Valor_Inventario,'
      '       Valor_Unitario AS Valor_Entrada,'
      '       Quantidade,'
      '       Emissao = '#39'PRO'#39
      'FROM   NotasItens'
      '--WHERE (Codigo_Mercadoria = 1)'
      ''
      
        'UPDATE #TEMP SET Data_Entrada = (SELECT MAX(Data_Entrada)   FROM' +
        ' NotasTerceirosItens NTI WHERE(NTI.Valor_UnitarioOrig = #TEMP.Va' +
        'lor_Entrada)) WHERE Emissao = '#39'TER'#39
      
        'UPDATE #TEMP SET Nota         = (SELECT ISNULL(MAX(Nota),0) FROM' +
        ' NotasTerceirosItens NTI WHERE(NTI.Valor_UnitarioOrig = #TEMP.Va' +
        'lor_Entrada) AND (NTI.Data_Entrada = #TEMP.Data_Entrada)) WHERE ' +
        'Emissao = '#39'TER'#39
      'SELECT IDENTITY(int, 1, 1) AS Linha, *'
      'INTO   #TEMP2'
      'FROM   #TEMP'
      'ORDER BY Data_Entrada desc, Valor_Entrada desc'
      'SELECT * FROM   #TEMP2'
      'DROP TABLE #TEMP, #TEMP2')
    FetchRows = 1
    Left = 458
    Top = 3
    object tUltimasLinha: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Linha'
      Origin = '#TEMP2.Linha'
      ReadOnly = True
    end
    object tUltimasNota: TIntegerField
      FieldName = 'Nota'
      Origin = '#TEMP2.Nota'
    end
    object tUltimasData_Entrada: TDateTimeField
      FieldName = 'Data_Entrada'
      Origin = '#TEMP2.Data_Entrada'
    end
    object tUltimasValor_Inventario: TCurrencyField
      FieldName = 'Valor_Inventario'
      Origin = '#TEMP2.Valor_Inventario'
      DisplayFormat = ',##0.00'
    end
    object tUltimasValor_Entrada: TCurrencyField
      FieldName = 'Valor_Entrada'
      Origin = '#TEMP2.Valor_Entrada'
      DisplayFormat = ',##0.00'
    end
    object tUltimasEmissao: TStringField
      FieldName = 'Emissao'
      Origin = '#TEMP2.Emissao'
      Size = 3
    end
    object tUltimasQuantidade: TFloatField
      FieldName = 'Quantidade'
      DisplayFormat = ',##0.000'
    end
  end
  object dstUltimas: TDataSource
    DataSet = tUltimas
    Left = 458
    Top = 59
  end
  object tProdutosDetalhe: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      '-- ENTRADAS.'
      'SELECT Lote         = LTRIM(RTRIM(Lote))'
      '      ,Nota_Entra   = Nota_Entrada'
      '      ,Data_Entra   = Data_Entrada'
      '      ,Qtde_Entra   = Quantidade_Entrada'
      '      ,Nota_Saida   = null'
      '      ,Data_Saida   = CAST(null as datetime)'
      '      ,Qtde_Saida   = CAST(0 as int)'
      '      ,Data_Val     = CONVERT(VARCHAR(12), Data_Validade,103)'
      '      ,Processo'
      '      ,Saida_Entrada= 0'
      'FROM  ProdutosDetalhe'
      'WHERE Produto_Codigo = 140'
      'ORDER BY Lote, Saida_Entrada')
    FetchRows = 1
    Left = 554
    Top = 3
    object tProdutosDetalheLote: TStringField
      FieldName = 'Lote'
      ReadOnly = True
      Size = 15
    end
    object tProdutosDetalheNota_Entra: TIntegerField
      FieldName = 'Nota_Entra'
    end
    object tProdutosDetalheData_Entra: TDateTimeField
      FieldName = 'Data_Entra'
    end
    object tProdutosDetalheQtde_Entra: TFloatField
      FieldName = 'Qtde_Entra'
    end
    object tProdutosDetalheNota_Saida: TIntegerField
      FieldName = 'Nota_Saida'
      ReadOnly = True
    end
    object tProdutosDetalheData_Val: TStringField
      FieldName = 'Data_Val'
      ReadOnly = True
      Size = 12
    end
    object tProdutosDetalheProcesso: TStringField
      FieldName = 'Processo'
      Size = 15
    end
    object tProdutosDetalheSaida_Entrada: TIntegerField
      FieldName = 'Saida_Entrada'
      ReadOnly = True
    end
    object tProdutosDetalheData_Saida: TDateTimeField
      FieldName = 'Data_Saida'
      ReadOnly = True
    end
    object tProdutosDetalheQtde_Saida: TIntegerField
      FieldName = 'Qtde_Saida'
      ReadOnly = True
    end
  end
  object dstProdutosDetalhe: TDataSource
    DataSet = tProdutosDetalhe
    Left = 556
    Top = 59
  end
end
