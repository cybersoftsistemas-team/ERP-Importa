object Cadastro_Servicos: TCadastro_Servicos
  Left = 524
  Top = 194
  HelpContext = 109
  BorderStyle = bsDialog
  Caption = 'Cadastro_Servicos'
  ClientHeight = 629
  ClientWidth = 600
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
    Width = 600
    Height = 37
    Align = alTop
    Stretch = True
    ExplicitWidth = 597
  end
  object RxLabel3: TRxLabel
    Left = 4
    Top = -1
    Width = 139
    Height = 21
    Caption = 'TIPOS DE SERVI'#199'OS'
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
    Width = 269
    Height = 18
    Caption = 'Manuten'#231#227'o da tabela de tipos de servi'#231'os.'
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
    Top = 599
    Width = 600
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitWidth = 597
    object bSair: TButton
      Left = 524
      Top = 1
      Width = 75
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
      ExplicitLeft = 521
    end
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 374
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsServicos
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
      Left = 375
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
      ExplicitLeft = 289
    end
  end
  object Panel2: TPanel
    Left = 4
    Top = 42
    Width = 589
    Height = 420
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 1
    object Label1: TLabel
      Left = 164
      Top = 144
      Width = 10
      Height = 13
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 164
      Top = 167
      Width = 10
      Height = 13
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bPesq: TSpeedButton
      Left = 561
      Top = 116
      Width = 21
      Height = 23
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
        B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
        1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
        BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
        BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
      OnClick = bPesqClick
    end
    object StaticText5: TStaticText
      Left = 5
      Top = 28
      Width = 109
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
      TabOrder = 23
      Transparent = False
      StyleElements = []
    end
    object cDescricao: TDBEdit
      Left = 116
      Top = 28
      Width = 468
      Height = 21
      DataField = 'Descricao'
      DataSource = Dados.dsServicos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object StaticText3: TStaticText
      Left = 5
      Top = 5
      Width = 109
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
      TabOrder = 24
      Transparent = False
      StyleElements = []
    end
    object cCodigo: TDBEdit
      Left = 116
      Top = 5
      Width = 78
      Height = 21
      DataField = 'Codigo'
      DataSource = Dados.dsServicos
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
      Top = 51
      Width = 109
      Height = 65
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Discrimina'#231#227'o'
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
    object DBMemo1: TDBMemo
      Left = 116
      Top = 51
      Width = 468
      Height = 65
      DataField = 'Texto'
      DataSource = Dados.dsServicos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object DBCheckBox1: TDBCheckBox
      Left = 285
      Top = 7
      Width = 108
      Height = 17
      Caption = 'Industrializa'#231#227'o'
      DataField = 'Industria'
      DataSource = Dados.dsServicos
      TabOrder = 2
    end
    object DBCheckBox2: TDBCheckBox
      Left = 198
      Top = 7
      Width = 53
      Height = 17
      Caption = 'Ativo'
      DataField = 'Ativo'
      DataSource = Dados.dsServicos
      TabOrder = 1
    end
    object StaticText4: TStaticText
      Left = 5
      Top = 141
      Width = 109
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'PIS n'#227'o Cumulativo'
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
    object DBEdit1: TDBEdit
      Left = 116
      Top = 141
      Width = 46
      Height = 21
      DataField = 'Aliquota_PIS'
      DataSource = Dados.dsServicos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object StaticText6: TStaticText
      Left = 5
      Top = 164
      Width = 109
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'COFINS n'#227'o Cumul.'
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
    object DBEdit2: TDBEdit
      Left = 116
      Top = 164
      Width = 46
      Height = 21
      DataField = 'Aliquota_COFINS'
      DataSource = Dados.dsServicos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object StaticText2: TStaticText
      Left = 5
      Top = 187
      Width = 109
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'PIS (Recuperar)'
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
    object StaticText7: TStaticText
      Left = 5
      Top = 210
      Width = 109
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'PIS (Recolher)'
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
    object StaticText8: TStaticText
      Left = 5
      Top = 233
      Width = 109
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'COFINS (Recuperar)'
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
    end
    object StaticText9: TStaticText
      Left = 5
      Top = 256
      Width = 109
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'COFINS (Recolher)'
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
    end
    object StaticText10: TStaticText
      Left = 5
      Top = 279
      Width = 109
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'IR (Recuperar)'
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
    end
    object StaticText11: TStaticText
      Left = 5
      Top = 302
      Width = 109
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'IR (Recolher)'
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
    object StaticText12: TStaticText
      Left = 5
      Top = 325
      Width = 109
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'CSLL (Recuperar)'
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
    object StaticText13: TStaticText
      Left = 5
      Top = 348
      Width = 109
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'CSLL (Recolher)'
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
    end
    object StaticText14: TStaticText
      Left = 5
      Top = 371
      Width = 109
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'INSS (Recuperar)'
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
    end
    object StaticText15: TStaticText
      Left = 5
      Top = 394
      Width = 109
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'INSS (Recolher)'
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
    end
    object cImposto01: TDBLookupComboBox
      Left = 116
      Top = 187
      Width = 345
      Height = 21
      DataField = 'PIS_Recuperar'
      DataSource = Dados.dsServicos
      DropDownAlign = daRight
      DropDownRows = 10
      DropDownWidth = 440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Descricao;Codigo'
      ListSource = Dados.dsImpostos
      NullValueKey = 46
      ParentFont = False
      TabOrder = 8
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 116
      Top = 210
      Width = 345
      Height = 21
      DataField = 'PIS_Recolher'
      DataSource = Dados.dsServicos
      DropDownAlign = daRight
      DropDownRows = 10
      DropDownWidth = 440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Descricao;Codigo'
      ListSource = Dados.dsImpostos
      NullValueKey = 46
      ParentFont = False
      TabOrder = 10
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 116
      Top = 233
      Width = 345
      Height = 21
      DataField = 'COFINS_Recuperar'
      DataSource = Dados.dsServicos
      DropDownAlign = daRight
      DropDownRows = 10
      DropDownWidth = 440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Descricao;Codigo'
      ListSource = Dados.dsImpostos
      NullValueKey = 46
      ParentFont = False
      TabOrder = 11
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 116
      Top = 256
      Width = 345
      Height = 21
      DataField = 'COFINS_Recolher'
      DataSource = Dados.dsServicos
      DropDownAlign = daRight
      DropDownRows = 10
      DropDownWidth = 440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Descricao;Codigo'
      ListSource = Dados.dsImpostos
      NullValueKey = 46
      ParentFont = False
      TabOrder = 13
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 116
      Top = 325
      Width = 345
      Height = 21
      DataField = 'CSLL_Recuperar'
      DataSource = Dados.dsServicos
      DropDownAlign = daRight
      DropDownRows = 10
      DropDownWidth = 440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Descricao;Codigo'
      ListSource = Dados.dsImpostos
      NullValueKey = 46
      ParentFont = False
      TabOrder = 17
    end
    object DBLookupComboBox5: TDBLookupComboBox
      Left = 116
      Top = 348
      Width = 345
      Height = 21
      DataField = 'CSLL_Recolher'
      DataSource = Dados.dsServicos
      DropDownAlign = daRight
      DropDownRows = 10
      DropDownWidth = 440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Descricao;Codigo'
      ListSource = Dados.dsImpostos
      NullValueKey = 46
      ParentFont = False
      TabOrder = 19
    end
    object DBLookupComboBox6: TDBLookupComboBox
      Left = 116
      Top = 302
      Width = 345
      Height = 21
      DataField = 'IR_Recolher'
      DataSource = Dados.dsServicos
      DropDownAlign = daRight
      DropDownRows = 10
      DropDownWidth = 440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Descricao;Codigo'
      ListSource = Dados.dsImpostos
      NullValueKey = 46
      ParentFont = False
      TabOrder = 16
    end
    object DBLookupComboBox7: TDBLookupComboBox
      Left = 116
      Top = 279
      Width = 345
      Height = 21
      DataField = 'IR_Recuperar'
      DataSource = Dados.dsServicos
      DropDownAlign = daRight
      DropDownRows = 10
      DropDownWidth = 440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Descricao;Codigo'
      ListSource = Dados.dsImpostos
      NullValueKey = 46
      ParentFont = False
      TabOrder = 14
    end
    object DBLookupComboBox8: TDBLookupComboBox
      Left = 116
      Top = 371
      Width = 345
      Height = 21
      DataField = 'INSS_Recuperar'
      DataSource = Dados.dsServicos
      DropDownAlign = daRight
      DropDownRows = 10
      DropDownWidth = 440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Descricao;Codigo'
      ListSource = Dados.dsImpostos
      NullValueKey = 46
      ParentFont = False
      TabOrder = 20
    end
    object DBLookupComboBox9: TDBLookupComboBox
      Left = 116
      Top = 394
      Width = 345
      Height = 21
      DataField = 'INSS_Recolher'
      DataSource = Dados.dsServicos
      DropDownAlign = daRight
      DropDownRows = 10
      DropDownWidth = 440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Descricao;Codigo'
      ListSource = Dados.dsImpostos
      NullValueKey = 46
      ParentFont = False
      TabOrder = 22
    end
    object DBEdit3: TDBEdit
      Left = 464
      Top = 187
      Width = 120
      Height = 21
      Hint = 
        '  Especifique o valor m'#225'ximo de insen'#231#227'o para os impostos inform' +
        'ados.  '
      DataField = 'Limite_PIS'
      DataSource = Dados.dsServicos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
    end
    object DBEdit4: TDBEdit
      Left = 464
      Top = 233
      Width = 120
      Height = 21
      Hint = 
        '  Especifique o valor m'#225'ximo de insen'#231#227'o para os impostos inform' +
        'ados.  '
      DataField = 'Limite_COFINS'
      DataSource = Dados.dsServicos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
    end
    object DBEdit5: TDBEdit
      Left = 464
      Top = 279
      Width = 120
      Height = 21
      Hint = 
        '  Especifique o valor m'#225'ximo de insen'#231#227'o para os impostos inform' +
        'ados.  '
      DataField = 'Limite_IR'
      DataSource = Dados.dsServicos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
    end
    object DBEdit7: TDBEdit
      Left = 464
      Top = 371
      Width = 120
      Height = 21
      Hint = 
        '  Especifique o valor m'#225'ximo de insen'#231#227'o para os impostos inform' +
        'ados.  '
      DataField = 'Limite_INSS'
      DataSource = Dados.dsServicos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 21
    end
    object DBEdit8: TDBEdit
      Left = 464
      Top = 325
      Width = 120
      Height = 21
      Hint = 
        '  Especifique o valor m'#225'ximo de insen'#231#227'o para os impostos inform' +
        'ados.  '
      DataField = 'Limite_CSLL'
      DataSource = Dados.dsServicos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 18
    end
    object StaticText16: TStaticText
      Left = 464
      Top = 163
      Width = 120
      Height = 21
      Hint = 
        '  Especifique o valor m'#225'ximo de insen'#231#227'o para os impostos inform' +
        'ados.  '
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Acima de '
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 38
      Transparent = False
      StyleElements = []
    end
    object StaticText17: TStaticText
      Left = 5
      Top = 118
      Width = 109
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Natureza Redimento'
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
    object DBLookupComboBox10: TDBLookupComboBox
      Left = 116
      Top = 118
      Width = 444
      Height = 21
      DataField = 'Natureza_Rendimento'
      DataSource = Dados.dsServicos
      DropDownAlign = daRight
      DropDownRows = 10
      DropDownWidth = 600
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao'
      ListFieldIndex = 1
      ListSource = Dados.dsNaturezaRend
      NullValueKey = 46
      ParentFont = False
      TabOrder = 5
    end
  end
  object Grade: TRxDBGrid
    Left = 4
    Top = 465
    Width = 589
    Height = 129
    DataSource = Dados.dsServicos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
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
        Width = 48
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
        Width = 517
        Visible = True
      end>
  end
end
