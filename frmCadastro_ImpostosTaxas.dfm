object Cadastro_ImpostosTaxas: TCadastro_ImpostosTaxas
  Left = 559
  Top = 188
  HelpContext = 203
  Anchors = [akLeft, akTop, akRight]
  BorderStyle = bsDialog
  Caption = 'Cadastro_ImpostosTaxas'
  ClientHeight = 685
  ClientWidth = 733
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
    Width = 733
    Height = 38
    Align = alTop
    Stretch = True
  end
  object RxLabel3: TRxLabel
    Left = 6
    Top = 1
    Width = 137
    Height = 21
    Caption = 'IMPOSTOS E TAXAS'
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
    Left = 6
    Top = 18
    Width = 272
    Height = 18
    Caption = 'Manuten'#231#227'o da tabela de impostos e taxas.'
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
    Top = 655
    Width = 733
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      Left = 667
      Top = 1
      Width = 65
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
      ExplicitLeft = 668
    end
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 331
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsImpostos
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
      ShowHint = True
      TabOrder = 1
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
    object bPesquisa: TButton
      Left = 332
      Top = 1
      Width = 75
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Align = alLeft
      Caption = '&Pesquisa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bPesquisaClick
      ExplicitLeft = 316
    end
  end
  object DBGrid2: TDBGrid
    Left = 4
    Top = 412
    Width = 725
    Height = 237
    DataSource = Dados.dsImpostos
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
        Width = 80
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
        Width = 542
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 4
    Top = 43
    Width = 725
    Height = 366
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 1
    object StaticText1: TStaticText
      Left = 7
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
      Left = 95
      Top = 5
      Width = 132
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Codigo'
      DataSource = Dados.dsImpostos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object StaticText5: TStaticText
      Left = 7
      Top = 51
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
      TabOrder = 6
      Transparent = False
      StyleElements = []
    end
    object cDescricao: TDBEdit
      Left = 95
      Top = 51
      Width = 610
      Height = 21
      DataField = 'Descricao'
      DataSource = Dados.dsImpostos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object StaticText2: TStaticText
      Left = 7
      Top = 74
      Width = 86
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Al'#237'quota'
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
    object DBEdit1: TDBEdit
      Left = 95
      Top = 74
      Width = 60
      Height = 21
      DataField = 'Valor'
      DataSource = Dados.dsImpostos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object StaticText3: TStaticText
      Left = 7
      Top = 28
      Width = 86
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'C'#243'digo SRF'
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
    object cCodigoSRF: TDBEdit
      Left = 95
      Top = 28
      Width = 132
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Codigo_SRF'
      DataSource = Dados.dsImpostos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object StaticText11: TStaticText
      Left = 7
      Top = 97
      Width = 86
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Dia Vencimento'
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
    object DBEdit7: TDBEdit
      Left = 95
      Top = 97
      Width = 60
      Height = 21
      DataField = 'Dia_Vencimento'
      DataSource = Dados.dsImpostos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 2
      ParentFont = False
      TabOrder = 5
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 234
      Width = 711
      Height = 127
      Caption = 'Par'#226'metriza'#231#227'o Cont'#225'bil'
      TabOrder = 10
      DesignSize = (
        711
        127)
      object SpeedButton2: TSpeedButton
        Left = 584
        Top = 99
        Width = 23
        Height = 23
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          20000000000000040000C40E0000C40E00000000000000000000040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400000099FF0404040004040400040404000404040004040400040404000404
          04000404040004040400040404000000FFFF0404040004040400040404003333
          CCFF0000FFFF000099FF04040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404003333
          CCFF3399FFFF0000FFFF000099FF040404000404040004040400040404000404
          040004040400040404000000FFFF040404000404040004040400040404000404
          04003333CCFF0066FFFF0000CCFF040404000404040004040400040404000404
          0400040404000000FFFF04040400040404000404040004040400040404000404
          0400040404000000CCFF0000FFFF000099FF0404040004040400040404000404
          04000000FFFF000099FF04040400040404000404040004040400040404000404
          040004040400040404000000CCFF0000FFFF000099FF04040400040404000000
          FFFF000099FF0404040004040400040404000404040004040400040404000404
          04000404040004040400040404000000CCFF0000FFFF000099FF0000FFFF0000
          99FF040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000000CCFF0000FFFF000099FF0404
          0400040404000404040004040400040404000404040004040400040404000404
          04000404040004040400040404000000CCFF0000FFFF000099FF0000CCFF0000
          99FF040404000404040004040400040404000404040004040400040404000404
          040004040400040404000000CCFF0000FFFF000099FF04040400040404000000
          CCFF000099FF0404040004040400040404000404040004040400040404000404
          04000000CCFF0000FFFF0000FFFF000099FF0404040004040400040404000404
          04000000CCFF000099FF04040400040404000404040004040400040404000000
          CCFF3399FFFF0000FFFF000099FF040404000404040004040400040404000404
          0400040404000000CCFF000099FF040404000404040004040400040404006666
          99FF0000CCFF666699FF04040400040404000404040004040400040404000404
          04000404040004040400040404000000CCFF0404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400040404000404
          0400040404000404040004040400040404000404040004040400}
        OnClick = SpeedButton2Click
      end
      object cICMSOper_NomeC: TDBLookupComboBox
        Left = 155
        Top = 43
        Width = 550
        Height = 21
        Color = clWhite
        DataField = 'Conta_C'
        DataSource = Dados.dsImpostos
        DropDownRows = 20
        DropDownWidth = 450
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
        TabOrder = 0
      end
      object StaticText19: TStaticText
        Left = 5
        Top = 20
        Width = 60
        Height = 44
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'ICMS Oper.'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        Transparent = False
        StyleElements = []
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 155
        Top = 20
        Width = 550
        Height = 21
        Color = clWhite
        DataField = 'Conta_D'
        DataSource = Dados.dsImpostos
        DropDownRows = 20
        DropDownWidth = 450
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
        TabOrder = 2
      end
      object cICMSOper_CodD: TDBEdit
        Left = 82
        Top = 20
        Width = 71
        Height = 21
        Color = clWhite
        DataField = 'Conta_D'
        DataSource = Dados.dsImpostos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = mnVariavel
        TabOrder = 3
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 66
        Top = 66
        Width = 639
        Height = 21
        DataField = 'Historico'
        DataSource = Dados.dsImpostos
        DropDownRows = 20
        DropDownWidth = 450
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
        TabOrder = 4
      end
      object cICMSOper_CodC: TDBEdit
        Left = 82
        Top = 43
        Width = 71
        Height = 21
        Color = clWhite
        DataField = 'Conta_C'
        DataSource = Dados.dsImpostos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = mnVariavel
        TabOrder = 5
      end
      object StaticText26: TStaticText
        Left = 5
        Top = 66
        Width = 60
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
        TabOrder = 6
        Transparent = False
        StyleElements = []
      end
      object StaticText35: TStaticText
        Left = 66
        Top = 20
        Width = 15
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'D'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 7
        Transparent = False
        StyleElements = []
      end
      object StaticText36: TStaticText
        Left = 66
        Top = 43
        Width = 15
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 8
        Transparent = False
        StyleElements = []
      end
      object StaticText70: TStaticText
        Left = 103
        Top = 100
        Width = 83
        Height = 21
        Anchors = [akLeft, akBottom]
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Filtrar Contas'
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
      object cPesquisa: TEdit
        Left = 188
        Top = 100
        Width = 395
        Height = 21
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnChange = cPesquisaChange
      end
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 128
      Width = 711
      Height = 97
      Caption = 'Par'#226'metriza'#231#227'o Financeira'
      TabOrder = 11
      object StaticText7: TStaticText
        Left = 5
        Top = 70
        Width = 86
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Class.Financeira'
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
        OnClick = StaticText7Click
      end
      object StaticText8: TStaticText
        Left = 5
        Top = 24
        Width = 86
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Org'#227'o P'#250'blico'
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
        OnClick = StaticText8Click
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 155
        Top = 24
        Width = 550
        Height = 21
        DataField = 'Orgao'
        DataSource = Dados.dsImpostos
        DropDownRows = 15
        DropDownWidth = 500
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Nome;Codigo'
        ListSource = Dados.dsOrgaos
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 93
        Top = 24
        Width = 60
        Height = 21
        DataField = 'Orgao'
        DataSource = Dados.dsImpostos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object StaticText9: TStaticText
        Left = 5
        Top = 47
        Width = 86
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Documento'
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
        OnClick = StaticText9Click
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 155
        Top = 47
        Width = 550
        Height = 21
        DataField = 'Documento'
        DataSource = Dados.dsImpostos
        DropDownRows = 15
        DropDownWidth = 500
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Descricao;Codigo'
        ListSource = Dados.dsTiposDocumentos
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit5: TDBEdit
        Left = 93
        Top = 47
        Width = 60
        Height = 21
        DataField = 'Documento'
        DataSource = Dados.dsImpostos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 93
        Top = 70
        Width = 612
        Height = 21
        DataField = 'Classificacao_Financeira'
        DataSource = Dados.dsImpostos
        DropDownRows = 15
        DropDownWidth = 500
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Descricao;Codigo'
        ListSource = Dados.dsClassificacaoFinanceira
        ParentFont = False
        TabOrder = 7
      end
    end
  end
  object Natureza: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO Natureza'
      
        '  (Codigo, Codigo_Devolucao, Ativo, Descricao_NF, Observacao, Se' +
        'rvico, Diferencial_ICMS, Imobilizado, Apuracao_PISCOFINS, Prazo_' +
        'Retorno, Saida_Entrada, Codigo_Estorno)'
      'VALUES'
      
        '  (:Codigo, :Codigo_Devolucao, :Ativo, :Descricao_NF, :Observaca' +
        'o, :Servico, :Diferencial_ICMS, :Imobilizado, :Apuracao_PISCOFIN' +
        'S, :Prazo_Retorno, :Saida_Entrada, :Codigo_Estorno)')
    SQLDelete.Strings = (
      'DELETE FROM Natureza'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE Natureza'
      'SET'
      
        '  Codigo = :Codigo, Codigo_Devolucao = :Codigo_Devolucao, Ativo ' +
        '= :Ativo, Descricao_NF = :Descricao_NF, Observacao = :Observacao' +
        ', Servico = :Servico, Diferencial_ICMS = :Diferencial_ICMS, Imob' +
        'ilizado = :Imobilizado, Apuracao_PISCOFINS = :Apuracao_PISCOFINS' +
        ', Prazo_Retorno = :Prazo_Retorno, Saida_Entrada = :Saida_Entrada' +
        ', Codigo_Estorno = :Codigo_Estorno'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT Natureza.Codigo, Natureza.Codigo_Devolucao, Natureza.Ativ' +
        'o, Natureza.Descricao_NF, Natureza.Observacao, Natureza.Servico,' +
        ' Natureza.Diferencial_ICMS, Natureza.Imobilizado, Natureza.Apura' +
        'cao_PISCOFINS, Natureza.Prazo_Retorno, Natureza.Saida_Entrada, N' +
        'atureza.Codigo_Estorno FROM Natureza'
      'WHERE Natureza.Codigo = :Codigo ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM Natureza ORDER BY Descricao_NF')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 384
    Top = 7
  end
  object mnVariavel: TPopupMenu
    Left = 472
    Top = 8
    object FORNECEDORES1: TMenuItem
      Caption = '&FORNECEDOR (Conta do cadastro do fornecedor)'
      OnClick = FORNECEDORES1Click
    end
    object DEVOLUO1: TMenuItem
      Caption = '&DEVOLU'#199#195'O (Saida/Entrada)'
      OnClick = DEVOLUO1Click
    end
  end
end
