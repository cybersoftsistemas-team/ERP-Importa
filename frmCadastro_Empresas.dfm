object Cadastro_Empresas: TCadastro_Empresas
  Left = 1175
  Top = 242
  HelpContext = 102
  BorderStyle = bsDialog
  Caption = 'Cadastro_Empresas'
  ClientHeight = 704
  ClientWidth = 639
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
    Width = 639
    Height = 44
    Align = alTop
    Stretch = True
    ExplicitWidth = 634
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 78
    Height = 21
    Caption = 'EMPRESAS'
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
    Top = 21
    Width = 241
    Height = 18
    Caption = 'Manuten'#231#227'o do cadastro de empresas.'
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
    Top = 674
    Width = 639
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      639
      30)
    object bSair: TButton
      Left = 565
      Top = 1
      Width = 74
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 376
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsEmpresas
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel]
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
  object Pasta: TPageControl
    Left = 5
    Top = 50
    Width = 629
    Height = 618
    ActivePage = pParametros
    TabHeight = 24
    TabOrder = 1
    object pCadastrais: TTabSheet
      Caption = 'Dados da &Empresa'
      Enabled = False
      object cCodigo: TDBEdit
        Left = 97
        Top = 3
        Width = 67
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Codigo'
        DataSource = Dados.dsEmpresas
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
      object cNome: TDBEdit
        Left = 97
        Top = 26
        Width = 515
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Razao_Social'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit3: TDBEdit
        Left = 97
        Top = 49
        Width = 515
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Nome_Fantasia'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit4: TDBEdit
        Left = 97
        Top = 72
        Width = 515
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Rua'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit5: TDBEdit
        Left = 97
        Top = 95
        Width = 83
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Rua_Numero'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit6: TDBEdit
        Left = 97
        Top = 118
        Width = 238
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Bairro'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object DBEdit8: TDBEdit
        Left = 97
        Top = 141
        Width = 81
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CEP'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 9
        ParentFont = False
        TabOrder = 13
      end
      object DBEdit10: TDBEdit
        Left = 97
        Top = 164
        Width = 105
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Telefone1'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 14
        ParentFont = False
        TabOrder = 15
      end
      object DBEdit11: TDBEdit
        Left = 204
        Top = 164
        Width = 105
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Telefone2'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 14
        ParentFont = False
        TabOrder = 16
      end
      object DBEdit12: TDBEdit
        Left = 413
        Top = 164
        Width = 99
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Fax'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 14
        ParentFont = False
        TabOrder = 17
      end
      object cCNPJ: TDBEdit
        Left = 97
        Top = 187
        Width = 129
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CNPJ'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 18
        ParentFont = False
        TabOrder = 18
        OnExit = cCNPJExit
      end
      object cIE: TDBEdit
        Left = 413
        Top = 187
        Width = 129
        Height = 21
        CharCase = ecUpperCase
        DataField = 'IE'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 19
        OnExit = cIEExit
      end
      object DBEdit15: TDBEdit
        Left = 97
        Top = 233
        Width = 129
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Junta_Codigo'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 22
      end
      object DBEdit17: TDBEdit
        Left = 97
        Top = 256
        Width = 129
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Codigo_Atividade'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 24
      end
      object DBEdit18: TDBEdit
        Left = 228
        Top = 256
        Width = 383
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Ramo_Atividade'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 25
      end
      object DBEdit19: TDBEdit
        Left = 97
        Top = 302
        Width = 289
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Diretor'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 29
      end
      object StaticText1: TStaticText
        Left = 2
        Top = 3
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'digo '
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
      object StaticText2: TStaticText
        Left = 2
        Top = 26
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Raz'#227'o Social '
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
      object StaticText3: TStaticText
        Left = 2
        Top = 49
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Nome Fantasia'
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
      end
      object StaticText4: TStaticText
        Left = 2
        Top = 72
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Logradouro'
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
      object StaticText5: TStaticText
        Left = 2
        Top = 118
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Bairro'
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
      object StaticText6: TStaticText
        Left = 2
        Top = 95
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#250'mero'
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
      end
      object StaticText7: TStaticText
        Left = 338
        Top = 141
        Width = 73
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Munic'#237'pio'
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
      object StaticText8: TStaticText
        Left = 2
        Top = 141
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CEP'
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
      object StaticText9: TStaticText
        Left = 338
        Top = 118
        Width = 73
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Estado'
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
      object StaticText10: TStaticText
        Left = 2
        Top = 164
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Telefones'
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
      object StaticText11: TStaticText
        Left = 338
        Top = 164
        Width = 73
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'FAX'
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
      end
      object StaticText12: TStaticText
        Left = 2
        Top = 187
        Width = 93
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
        TabOrder = 50
        Transparent = False
        StyleElements = []
      end
      object StaticText13: TStaticText
        Left = 338
        Top = 187
        Width = 73
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'I.Estadual'
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
      object StaticText14: TStaticText
        Left = 338
        Top = 233
        Width = 73
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Data'
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
      end
      object StaticText15: TStaticText
        Left = 2
        Top = 233
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'digo JUNTA'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 53
        Transparent = False
        StyleElements = []
      end
      object StaticText17: TStaticText
        Left = 2
        Top = 256
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Ramo Atividade'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 54
        Transparent = False
        StyleElements = []
      end
      object StaticText18: TStaticText
        Left = 2
        Top = 302
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Diretor'
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
      object cEstado: TDBLookupComboBox
        Left = 413
        Top = 118
        Width = 199
        Height = 21
        DataField = 'Estado'
        DataSource = Dados.dsEmpresas
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Nome'
        ListSource = Dados.dsEstados
        ParentFont = False
        TabOrder = 12
        OnExit = cEstadoExit
      end
      object DBEdit9: TDBEdit
        Left = 97
        Top = 325
        Width = 289
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Responsavel'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 31
      end
      object StaticText16: TStaticText
        Left = 2
        Top = 325
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Respons'#225'vel'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 56
        Transparent = False
        StyleElements = []
      end
      object cComplemento: TDBEdit
        Left = 413
        Top = 95
        Width = 199
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Complemento'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object StaticText34: TStaticText
        Left = 338
        Top = 95
        Width = 73
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Complemento'
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
      object StaticText35: TStaticText
        Left = 2
        Top = 210
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'I.Municipal'
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
      object DBEdit14: TDBEdit
        Left = 97
        Top = 210
        Width = 129
        Height = 21
        CharCase = ecUpperCase
        DataField = 'IM'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 20
      end
      object cMatriz: TDBCheckBox
        Left = 169
        Top = 4
        Width = 50
        Height = 17
        Caption = 'Matriz'
        DataField = 'Matriz_Filial'
        DataSource = Dados.dsEmpresas
        TabOrder = 1
        OnClick = cMatrizClick
      end
      object cNumero_Filial: TDBEdit
        Left = 272
        Top = 3
        Width = 27
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Numero_Filial'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object StaticText42: TStaticText
        Left = 223
        Top = 3
        Width = 47
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#186' Filial'
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
      object cMunicipio: TDBLookupComboBox
        Left = 413
        Top = 141
        Width = 199
        Height = 21
        DataField = 'Municipio_Codigo'
        DataSource = Dados.dsEmpresas
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Nome'
        ListSource = Dados.dsMunicipios
        ParentFont = False
        TabOrder = 14
      end
      object StaticText48: TStaticText
        Left = 338
        Top = 210
        Width = 73
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'I.SUFRAMA'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 60
        Transparent = False
        StyleElements = []
      end
      object DBEdit39: TDBEdit
        Left = 413
        Top = 210
        Width = 129
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Inscricao_SUFRAMA'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 21
      end
      object StaticText59: TStaticText
        Left = 388
        Top = 302
        Width = 38
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CPF'
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
      object DBEdit13: TDBEdit
        Left = 427
        Top = 302
        Width = 184
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Diretor_CPF'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 14
        ParentFont = False
        TabOrder = 30
      end
      object StaticText60: TStaticText
        Left = 388
        Top = 325
        Width = 38
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CPF'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 62
        Transparent = False
        StyleElements = []
      end
      object DBEdit27: TDBEdit
        Left = 427
        Top = 325
        Width = 184
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Responsavel_CPF'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 14
        ParentFont = False
        TabOrder = 32
      end
      object DBEdit46: TDBEdit
        Left = 97
        Top = 348
        Width = 514
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Responsavel_Funcao'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 33
      end
      object StaticText39: TStaticText
        Left = 2
        Top = 394
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Incentivo Fiscal'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 63
        Transparent = False
        StyleElements = []
      end
      object DBDateEdit2: TDBDateEdit
        Left = 413
        Top = 233
        Width = 110
        Height = 21
        DataField = 'Junta_Data'
        DataSource = Dados.dsEmpresas
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
        TabOrder = 23
      end
      object StaticText64: TStaticText
        Left = 2
        Top = 371
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Regime Tributario'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 64
        Transparent = False
        StyleElements = []
      end
      object cRegime: TComboBox
        Left = 97
        Top = 371
        Width = 515
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 34
        Items.Strings = (
          '1 - Simples Nacional'
          '2 - Simples Nacional - excesso de sublimite da receita bruta'
          '3 - Regime Normal')
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 97
        Top = 394
        Width = 240
        Height = 21
        DataField = 'Incentivo_Fiscal'
        DataSource = Dados.dsEmpresas
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Nome'
        ListField = 'Estado;Nome'
        ListFieldIndex = 1
        ListSource = Dados.dsIncentivosFiscais
        ParentFont = False
        TabOrder = 35
      end
      object StaticText67: TStaticText
        Left = 2
        Top = 348
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Respons. Fun'#231#227'o'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 65
        Transparent = False
        StyleElements = []
      end
      object DBCheckBox2: TDBCheckBox
        Left = 313
        Top = 4
        Width = 80
        Height = 17
        Caption = 'Distribuidora'
        DataField = 'Distribuidora'
        DataSource = Dados.dsEmpresas
        TabOrder = 3
        OnClick = cMatrizClick
      end
      object StaticText78: TStaticText
        Left = 2
        Top = 279
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CNAE'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 66
        Transparent = False
        StyleElements = []
      end
      object DBEdit34: TDBEdit
        Left = 97
        Top = 279
        Width = 289
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CNAE'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 26
      end
      object DBRadioGroup4: TDBRadioGroup
        Left = 352
        Top = 395
        Width = 255
        Height = 39
        Caption = 'Regime de Apura'#231#227'o'
        Columns = 2
        DataField = 'Regime'
        DataSource = Dados.dsEmpresas
        Items.Strings = (
          'Lucro Real'
          'Lucro Presumido')
        TabOrder = 37
        Values.Strings = (
          'R'
          'P')
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 445
        Width = 610
        Height = 87
        Caption = 'Logomarca'
        TabOrder = 38
        object StaticText91: TStaticText
          Left = 6
          Top = 25
          Width = 52
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Logo'
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
        object cLogo: TFilenameEdit
          Left = 60
          Top = 25
          Width = 431
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumGlyphs = 1
          ParentFont = False
          TabOrder = 1
          Text = 'cLogo'
          OnExit = cLogoExit
        end
        object StaticText25: TStaticText
          Left = 6
          Top = 48
          Width = 52
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
          TabOrder = 2
          Transparent = False
          StyleElements = []
        end
        object DBEdit50: TDBEdit
          Left = 60
          Top = 48
          Width = 40
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Logomarca_Largura'
          DataSource = Dados.dsEmpresas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnChange = cCodigoChange
        end
        object Panel2: TPanel
          Left = 495
          Top = 11
          Width = 111
          Height = 71
          BorderStyle = bsSingle
          ParentColor = True
          TabOrder = 4
          object iLogo: TImage
            Left = 0
            Top = 0
            Width = 105
            Height = 65
            Stretch = True
          end
        end
      end
      object DBCheckBox8: TDBCheckBox
        Left = 535
        Top = 4
        Width = 76
        Height = 17
        Caption = 'Desativada'
        DataField = 'Desativada'
        DataSource = Dados.dsEmpresas
        TabOrder = 5
        OnClick = cMatrizClick
      end
      object StaticText96: TStaticText
        Left = 388
        Top = 279
        Width = 38
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'NIRE'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 67
        Transparent = False
        StyleElements = []
      end
      object DBEdit1: TDBEdit
        Left = 427
        Top = 279
        Width = 73
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NIRE'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 27
      end
      object DBDateEdit5: TDBDateEdit
        Left = 502
        Top = 279
        Width = 110
        Height = 21
        DataField = 'NIRE_Data'
        DataSource = Dados.dsEmpresas
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
        TabOrder = 28
      end
      object DBCheckBox15: TDBCheckBox
        Left = 401
        Top = 4
        Width = 96
        Height = 17
        Caption = 'Transportadora'
        DataField = 'Transportadora'
        DataSource = Dados.dsEmpresas
        TabOrder = 4
        OnClick = cMatrizClick
      end
      object StaticText134: TStaticText
        Left = 2
        Top = 417
        Width = 93
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'RNTRC'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 68
        Transparent = False
        StyleElements = []
      end
      object DBEdit77: TDBEdit
        Left = 97
        Top = 417
        Width = 120
        Height = 21
        CharCase = ecUpperCase
        DataField = 'RNTRC'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 36
      end
    end
    object pContabilista: TTabSheet
      Caption = '&Contador'
      Enabled = False
      ImageIndex = 2
      object StaticText26: TStaticText
        Left = 2
        Top = 3
        Width = 77
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
        TabOrder = 0
        Transparent = False
        StyleElements = []
      end
      object cContador_Nome: TDBEdit
        Left = 81
        Top = 3
        Width = 522
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Contador_Nome'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object StaticText27: TStaticText
        Left = 2
        Top = 26
        Width = 77
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CRC'
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
      object DBEdit23: TDBEdit
        Left = 81
        Top = 26
        Width = 127
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Contador_CRC'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object StaticText28: TStaticText
        Left = 2
        Top = 72
        Width = 77
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CPF'
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
      object DBEdit24: TDBEdit
        Left = 81
        Top = 72
        Width = 127
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Contador_CPF'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 14
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit40: TDBEdit
        Left = 81
        Top = 95
        Width = 127
        Height = 21
        DataField = 'Contador_CNPJ'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 18
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit41: TDBEdit
        Left = 81
        Top = 210
        Width = 88
        Height = 21
        DataField = 'Contador_CEP'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 9
        ParentFont = False
        TabOrder = 14
      end
      object DBEdit42: TDBEdit
        Left = 81
        Top = 118
        Width = 380
        Height = 21
        DataField = 'Contador_Rua'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit43: TDBEdit
        Left = 519
        Top = 118
        Width = 84
        Height = 21
        DataField = 'Contador_Numero'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit44: TDBEdit
        Left = 81
        Top = 141
        Width = 522
        Height = 21
        DataField = 'Contador_Complemento'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object DBEdit45: TDBEdit
        Left = 81
        Top = 164
        Width = 215
        Height = 21
        DataField = 'Contador_Bairro'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object DBEdit47: TDBEdit
        Left = 81
        Top = 233
        Width = 102
        Height = 21
        DataField = 'Contador_Telefone'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 14
        ParentFont = False
        TabOrder = 15
      end
      object DBEdit48: TDBEdit
        Left = 81
        Top = 256
        Width = 102
        Height = 21
        DataField = 'Contador_FAX'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 14
        ParentFont = False
        TabOrder = 16
      end
      object DBEdit49: TDBEdit
        Left = 81
        Top = 279
        Width = 522
        Height = 21
        DataField = 'Contador_Email'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
      end
      object StaticText49: TStaticText
        Left = 2
        Top = 95
        Width = 77
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
        TabOrder = 23
        Transparent = False
        StyleElements = []
      end
      object StaticText50: TStaticText
        Left = 2
        Top = 210
        Width = 77
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CEP'
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
      object StaticText51: TStaticText
        Left = 2
        Top = 118
        Width = 77
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
        TabOrder = 25
        Transparent = False
        StyleElements = []
      end
      object StaticText52: TStaticText
        Left = 463
        Top = 118
        Width = 54
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#250'mero'
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
      object StaticText53: TStaticText
        Left = 2
        Top = 141
        Width = 77
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Complemento'
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
      object StaticText54: TStaticText
        Left = 2
        Top = 164
        Width = 77
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Bairro'
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
      object StaticText55: TStaticText
        Left = 299
        Top = 164
        Width = 77
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Munic'#237'pio'
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
      object StaticText56: TStaticText
        Left = 2
        Top = 233
        Width = 77
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Telefone'
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
      object StaticText57: TStaticText
        Left = 2
        Top = 256
        Width = 77
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'FAX'
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
      object StaticText58: TStaticText
        Left = 2
        Top = 279
        Width = 77
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'E-Mail'
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
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 378
        Top = 164
        Width = 225
        Height = 21
        DataField = 'Contador_Municipio'
        DataSource = Dados.dsEmpresas
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Nome'
        ListSource = Dados.dsMunicipios
        ParentFont = False
        TabOrder = 12
      end
      object StaticText66: TStaticText
        Left = 2
        Top = 187
        Width = 77
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Estado'
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
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 81
        Top = 187
        Width = 216
        Height = 21
        DataField = 'Contador_Estado'
        DataSource = Dados.dsEmpresas
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Nome'
        ListSource = Dados.dsEstados
        ParentFont = False
        TabOrder = 13
        OnExit = cEstadoExit
      end
      object bCopiaContador: TButton
        Left = 418
        Top = 472
        Width = 193
        Height = 48
        Caption = '&Copiar dados de outra empresa'
        TabOrder = 20
        OnClick = bCopiaContadorClick
      end
      object StaticText93: TStaticText
        Left = 2
        Top = 302
        Width = 77
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Qualifica'#231#227'o'
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
      object cQualifica: TRxDBComboBox
        Left = 81
        Top = 302
        Width = 522
        Height = 21
        DataField = 'Contador_Qualificacao'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          '203 - Diretor '#9
          '204 - Conselheiro de Administra'#231#227'o '#9
          '205 - Administrador '#9
          '206 - Administrador do Grupo '#9
          '207 - Administrador de Sociedade Filiada '#9
          '220 - Administrador Judicial - Pessoa F'#237'sica '#9
          
            '222 - Administrador Judicial - Pessoa Jur'#237'dica - Profissional Re' +
            'spons'#225'vel '#9
          '223 - Administrador Judicial/Gestor '#9
          '226 - Gestor Judicial '#9
          '309 - Procurador '#9
          '312 - Inventariante '#9
          '313 - Liquidante '#9
          '315 - Interventor '#9
          '801 - Empres'#225'rio '#9
          '900 - Contador/Contabilista '#9
          '999 - Outros '#9)
        ParentFont = False
        TabOrder = 18
        Values.Strings = (
          '203'
          '204'
          '205'
          '206'
          '207'
          '220'
          '222'
          '223'
          '226'
          '309'
          '312'
          '313'
          '315'
          '801'
          '900'
          '999')
      end
      object StaticText94: TStaticText
        Left = 2
        Top = 49
        Width = 77
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CRC (UF)'
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
      object cCRCUF: TDBLookupComboBox
        Left = 81
        Top = 49
        Width = 320
        Height = 21
        DataField = 'Contador_CRCUF'
        DataSource = Dados.dsEmpresas
        DropDownRows = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo; Nome'
        ListFieldIndex = 1
        ListSource = Dados.dsEstados
        NullValueKey = 46
        ParentFont = False
        TabOrder = 5
        OnExit = cEstadoExit
      end
      object StaticText95: TStaticText
        Left = 444
        Top = 26
        Width = 48
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Validade'
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
      object DBDateEdit4: TDBDateEdit
        Left = 494
        Top = 26
        Width = 110
        Height = 21
        DataField = 'Contador_CRCData'
        DataSource = Dados.dsEmpresas
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
        TabOrder = 4
      end
      object StaticText97: TStaticText
        Left = 210
        Top = 26
        Width = 60
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Sequencial'
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
      object DBEdit53: TDBEdit
        Left = 273
        Top = 26
        Width = 127
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Contador_CRCSequencial'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object DBRadioGroup7: TDBRadioGroup
        Left = 2
        Top = 330
        Width = 263
        Height = 45
        Caption = 'Signatario '#233' Respons'#225'vel pela assinatura da ECD'
        Columns = 2
        DataField = 'Contador_SignatarioResp'
        DataSource = Dados.dsEmpresas
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 19
        Values.Strings = (
          'S'
          'N')
      end
    end
    object pRepresentante: TTabSheet
      Caption = '&Representante Legal'
      Enabled = False
      ImageIndex = 5
      object StaticText100: TStaticText
        Left = 2
        Top = 3
        Width = 77
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
        TabOrder = 0
        Transparent = False
        StyleElements = []
      end
      object cRepresNome: TDBEdit
        Left = 81
        Top = 3
        Width = 522
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Representante_Nome'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object StaticText101: TStaticText
        Left = 2
        Top = 26
        Width = 77
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CRC'
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
      object DBEdit57: TDBEdit
        Left = 81
        Top = 26
        Width = 127
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Representante_CRC'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object StaticText102: TStaticText
        Left = 2
        Top = 72
        Width = 77
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CPF'
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
      object DBEdit58: TDBEdit
        Left = 81
        Top = 72
        Width = 127
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Representante_CPF'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 14
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit59: TDBEdit
        Left = 81
        Top = 95
        Width = 127
        Height = 21
        DataField = 'Representante_CNPJ'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 18
        ParentFont = False
        TabOrder = 7
      end
      object DBEdit60: TDBEdit
        Left = 81
        Top = 210
        Width = 88
        Height = 21
        DataField = 'Representante_CEP'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 9
        ParentFont = False
        TabOrder = 14
      end
      object DBEdit61: TDBEdit
        Left = 81
        Top = 118
        Width = 380
        Height = 21
        DataField = 'Representante_Rua'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit62: TDBEdit
        Left = 519
        Top = 118
        Width = 84
        Height = 21
        DataField = 'Representante_Numero'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit63: TDBEdit
        Left = 81
        Top = 141
        Width = 522
        Height = 21
        DataField = 'Representante_Complemento'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object DBEdit64: TDBEdit
        Left = 81
        Top = 164
        Width = 215
        Height = 21
        DataField = 'Representante_Bairro'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object DBEdit65: TDBEdit
        Left = 81
        Top = 233
        Width = 102
        Height = 21
        DataField = 'Representante_Telefone'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 14
        ParentFont = False
        TabOrder = 15
      end
      object DBEdit66: TDBEdit
        Left = 81
        Top = 256
        Width = 102
        Height = 21
        DataField = 'Representante_FAX'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 14
        ParentFont = False
        TabOrder = 16
      end
      object DBEdit67: TDBEdit
        Left = 81
        Top = 279
        Width = 522
        Height = 21
        DataField = 'Representante_Email'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
      end
      object StaticText103: TStaticText
        Left = 2
        Top = 95
        Width = 77
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
        TabOrder = 23
        Transparent = False
        StyleElements = []
      end
      object StaticText104: TStaticText
        Left = 2
        Top = 210
        Width = 77
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CEP'
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
      object StaticText105: TStaticText
        Left = 2
        Top = 118
        Width = 77
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
        TabOrder = 25
        Transparent = False
        StyleElements = []
      end
      object StaticText106: TStaticText
        Left = 463
        Top = 118
        Width = 54
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#250'mero'
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
      object StaticText107: TStaticText
        Left = 2
        Top = 141
        Width = 77
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Complemento'
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
      object StaticText108: TStaticText
        Left = 2
        Top = 164
        Width = 77
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Bairro'
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
      object StaticText109: TStaticText
        Left = 299
        Top = 164
        Width = 77
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Munic'#237'pio'
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
      object StaticText110: TStaticText
        Left = 2
        Top = 233
        Width = 77
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Telefone'
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
      object StaticText111: TStaticText
        Left = 2
        Top = 256
        Width = 77
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'FAX'
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
      object StaticText112: TStaticText
        Left = 2
        Top = 279
        Width = 77
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'E-Mail'
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
      object DBLookupComboBox8: TDBLookupComboBox
        Left = 378
        Top = 164
        Width = 225
        Height = 21
        DataField = 'Representante_Municipio'
        DataSource = Dados.dsEmpresas
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Nome'
        ListSource = Dados.dsMunicipios
        ParentFont = False
        TabOrder = 12
      end
      object StaticText113: TStaticText
        Left = 2
        Top = 187
        Width = 77
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Estado'
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
      object DBLookupComboBox9: TDBLookupComboBox
        Left = 81
        Top = 187
        Width = 216
        Height = 21
        DataField = 'Representante_Estado'
        DataSource = Dados.dsEmpresas
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Nome'
        ListSource = Dados.dsEstados
        ParentFont = False
        TabOrder = 13
        OnExit = cEstadoExit
      end
      object StaticText114: TStaticText
        Left = 2
        Top = 302
        Width = 77
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Qualifica'#231#227'o'
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
      object RxDBComboBox2: TRxDBComboBox
        Left = 81
        Top = 302
        Width = 522
        Height = 21
        DataField = 'Representante_Qualificacao'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          '203 - Diretor '#9
          '204 - Conselheiro de Administra'#231#227'o '#9
          '205 - Administrador '#9
          '206 - Administrador do Grupo '#9
          '207 - Administrador de Sociedade Filiada '#9
          '220 - Administrador Judicial - Pessoa F'#237'sica '#9
          
            '222 - Administrador Judicial - Pessoa Jur'#237'dica - Profissional Re' +
            'spons'#225'vel '#9
          '223 - Administrador Judicial/Gestor '#9
          '226 - Gestor Judicial '#9
          '309 - Procurador '#9
          '312 - Inventariante '#9
          '313 - Liquidante '#9
          '315 - Interventor '#9
          '801 - Empres'#225'rio '#9
          '900 - Contador/Contabilista '#9
          '999 - Outros '#9)
        ParentFont = False
        TabOrder = 18
        Values.Strings = (
          '203'
          '204'
          '205'
          '206'
          '207'
          '220'
          '222'
          '223'
          '226'
          '309'
          '312'
          '313'
          '315'
          '801'
          '900'
          '999')
      end
      object StaticText115: TStaticText
        Left = 2
        Top = 49
        Width = 77
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CRC (UF)'
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
      object DBLookupComboBox10: TDBLookupComboBox
        Left = 81
        Top = 49
        Width = 320
        Height = 21
        DataField = 'Representante_CRCUF'
        DataSource = Dados.dsEmpresas
        DropDownRows = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo; Nome'
        ListFieldIndex = 1
        ListSource = Dados.dsEstados
        NullValueKey = 46
        ParentFont = False
        TabOrder = 5
        OnExit = cEstadoExit
      end
      object StaticText116: TStaticText
        Left = 444
        Top = 26
        Width = 48
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Validade'
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
      object DBDateEdit6: TDBDateEdit
        Left = 494
        Top = 26
        Width = 110
        Height = 21
        DataField = 'Representante_CRCData'
        DataSource = Dados.dsEmpresas
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
        TabOrder = 4
      end
      object StaticText117: TStaticText
        Left = 210
        Top = 26
        Width = 60
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Sequencial'
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
      object DBEdit68: TDBEdit
        Left = 273
        Top = 26
        Width = 127
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Representante_CRCSequencial'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object Button1: TButton
        Left = 418
        Top = 472
        Width = 193
        Height = 48
        Caption = '&Copiar dados do Contador'
        TabOrder = 20
        OnClick = Button1Click
      end
      object DBRadioGroup5: TDBRadioGroup
        Left = 2
        Top = 330
        Width = 263
        Height = 45
        Caption = 'Signatario '#233' Respons'#225'vel pela assinatura da ECD'
        Columns = 2
        DataField = 'Representante_SignatarioResp'
        DataSource = Dados.dsEmpresas
        Items.Strings = (
          'Sim'
          'N'#227'o')
        TabOrder = 19
        Values.Strings = (
          'S'
          'N')
      end
    end
    object pParametros: TTabSheet
      Caption = '&Par'#226'metros'
      Enabled = False
      ImageIndex = 1
      object DBRadioGroup1: TDBRadioGroup
        Left = 1
        Top = 515
        Width = 94
        Height = 64
        Caption = 'Periodo Apur.IPI'
        DataField = 'Apuracao_IPI'
        DataSource = Dados.dsEmpresas
        Items.Strings = (
          'Mensal'
          'Decendial')
        TabOrder = 43
        Values.Strings = (
          '0'
          '1')
      end
      object StaticText21: TStaticText
        Left = 2
        Top = 164
        Width = 114
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#186' Duplicata'
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
      object cDuplicata: TDBEdit
        Left = 118
        Top = 164
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Duplicata'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 19
      end
      object StaticText33: TStaticText
        Left = 2
        Top = 49
        Width = 114
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#186' NF Servi'#231'o'
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
      end
      object cNFServico: TDBEdit
        Left = 118
        Top = 49
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Nota_Servico'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object StaticText32: TStaticText
        Left = 2
        Top = 187
        Width = 114
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#186' Memo.Exporta'#231#227'o'
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
      object DBEdit28: TDBEdit
        Left = 118
        Top = 187
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Memorando_Exportacao'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 20
      end
      object StaticText29: TStaticText
        Left = 201
        Top = 187
        Width = 99
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#186' Livro Diario'
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
      object DBEdit25: TDBEdit
        Left = 302
        Top = 187
        Width = 104
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Diario_Numero'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 21
      end
      object StaticText30: TStaticText
        Left = 409
        Top = 187
        Width = 99
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Pagina Livro Diario'
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
      object DBEdit26: TDBEdit
        Left = 510
        Top = 187
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Diario_Pagina'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 22
      end
      object StaticText31: TStaticText
        Left = 2
        Top = 302
        Width = 114
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = #218'ltimo Encerramento'
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
      object StaticText24: TStaticText
        Left = 2
        Top = 279
        Width = 114
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'M'#225'scara P.Contas'
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
      end
      object DBEdit2: TDBEdit
        Left = 118
        Top = 279
        Width = 155
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Mascara_PlanoContas'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 32
      end
      object DBCheckBox1: TDBCheckBox
        Left = 279
        Top = 282
        Width = 265
        Height = 17
        Caption = 'Gerar o c'#243'digo reduzido da conta automaticamente.'
        DataField = 'Codigo_Reduzido'
        DataSource = Dados.dsEmpresas
        TabOrder = 33
      end
      object DBEdit30: TDBEdit
        Left = 556
        Top = 49
        Width = 48
        Height = 21
        DataField = 'NFServico_Serie'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object StaticText36: TStaticText
        Left = 201
        Top = 49
        Width = 45
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Modelo'
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
      end
      object StaticText37: TStaticText
        Left = 519
        Top = 49
        Width = 36
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'S'#233'rie'
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
      object StaticText43: TStaticText
        Left = 2
        Top = 72
        Width = 114
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#186' NF-e (Entrada)'
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
      end
      object DBEdit7: TDBEdit
        Left = 118
        Top = 72
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Nota_EletronicaEntrada'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object StaticText45: TStaticText
        Left = 519
        Top = 72
        Width = 36
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'S'#233'rie'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 53
        Transparent = False
        StyleElements = []
      end
      object DBEdit36: TDBEdit
        Left = 556
        Top = 72
        Width = 48
        Height = 21
        DataField = 'NFEletronica_SerieEntrada'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object StaticText44: TStaticText
        Left = 201
        Top = 72
        Width = 45
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Modelo'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 54
        Transparent = False
        StyleElements = []
      end
      object StaticText46: TStaticText
        Left = 2
        Top = 26
        Width = 114
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Layout NF-e'
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
      object StaticText47: TStaticText
        Left = 2
        Top = 141
        Width = 114
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#186' Lote NF-e'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 56
        Transparent = False
        StyleElements = []
      end
      object DBEdit38: TDBEdit
        Left = 118
        Top = 141
        Width = 80
        Height = 21
        DataField = 'Numero_Lote'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 18
      end
      object DBDateEdit1: TDBDateEdit
        Left = 118
        Top = 302
        Width = 109
        Height = 21
        DataField = 'Ultimo_Encerramento'
        DataSource = Dados.dsEmpresas
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
        TabOrder = 34
      end
      object StaticText62: TStaticText
        Left = 2
        Top = 371
        Width = 114
        Height = 37
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Licensa NFe_Util.dll'
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
      object StaticText63: TStaticText
        Left = 2
        Top = 325
        Width = 114
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Banco Dados Oper.'
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
      object cBancoDados: TDBEdit
        Left = 118
        Top = 325
        Width = 379
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Banco_Dados'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 35
      end
      object StaticText22: TStaticText
        Left = 2
        Top = 348
        Width = 114
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Banco Dados Contab.'
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
      object DBEdit29: TDBEdit
        Left = 118
        Top = 348
        Width = 379
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Banco_Contabilidade'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 36
      end
      object cLicenca: TDBMemo
        Left = 118
        Top = 371
        Width = 487
        Height = 37
        DataField = 'Licensa_NFE_Util'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 37
      end
      object StaticText23: TStaticText
        Left = 2
        Top = 210
        Width = 114
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#186' Processo (Import)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 60
        Transparent = False
        StyleElements = []
      end
      object cProcesso: TDBEdit
        Left = 118
        Top = 210
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Processo'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 23
      end
      object cProcessoAutomatico: TDBCheckBox
        Left = 409
        Top = 212
        Width = 162
        Height = 17
        Caption = 'Gerar o N'#250'mero do processo.'
        DataField = 'Processo_Automatico'
        DataSource = Dados.dsEmpresas
        TabOrder = 25
        OnClick = cProcessoAutomaticoClick
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 248
        Top = 49
        Width = 268
        Height = 21
        DataField = 'NFServico_Modelo'
        DataSource = Dados.dsEmpresas
        DropDownWidth = 400
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = dmFiscal.dsModelosDocumentos
        ParentFont = False
        TabOrder = 7
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 248
        Top = 72
        Width = 268
        Height = 21
        DataField = 'NFEletronica_ModeloEntrada'
        DataSource = Dados.dsEmpresas
        DropDownWidth = 400
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = dmFiscal.dsModelosDocumentos
        ParentFont = False
        TabOrder = 10
      end
      object StaticText65: TStaticText
        Left = 201
        Top = 210
        Width = 99
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Mascara Processo'
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
      object DBEdit16: TDBEdit
        Left = 302
        Top = 210
        Width = 104
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Mascara_Processo'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 24
      end
      object DBComboBox1: TDBComboBox
        Left = 118
        Top = 26
        Width = 65
        Height = 21
        Style = csDropDownList
        DataField = 'NFEletronica_Layout'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          '1.07'
          '1.10'
          '2.00'
          '3.10'
          '4.00')
        ParentFont = False
        TabOrder = 1
      end
      object StaticText73: TStaticText
        Left = 2
        Top = 3
        Width = 114
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Pedido de Nota Fiscal'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 62
        Transparent = False
        StyleElements = []
      end
      object DBEdit33: TDBEdit
        Left = 118
        Top = 3
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Pedido_Nota'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object StaticText76: TStaticText
        Left = 185
        Top = 26
        Width = 30
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CC-e'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 63
        Transparent = False
        StyleElements = []
      end
      object DBComboBox3: TDBComboBox
        Left = 217
        Top = 26
        Width = 65
        Height = 21
        Style = csDropDownList
        DataField = 'CartaCorrecao_Layout'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          '1.00'
          '4.00')
        ParentFont = False
        TabOrder = 2
      end
      object StaticText77: TStaticText
        Left = 2
        Top = 472
        Width = 114
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Fechamento Financ.'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 64
        Transparent = False
        StyleElements = []
      end
      object DBDateEdit3: TDBDateEdit
        Left = 118
        Top = 472
        Width = 110
        Height = 21
        DataField = 'Fechamento_Financeiro'
        DataSource = Dados.dsEmpresas
        CheckOnExit = True
        DialogTitle = 'Data'
        Enabled = False
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
        TabOrder = 39
      end
      object DBCheckBox3: TDBCheckBox
        Left = 256
        Top = 471
        Width = 345
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Consolidar esta empresa com as outras do grupo.'
        DataField = 'Consolidar'
        DataSource = Dados.dsEmpresas
        TabOrder = 41
        OnClick = cProcessoAutomaticoClick
      end
      object StaticText80: TStaticText
        Left = 2
        Top = 95
        Width = 114
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#186' NF-e (Sa'#237'da)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 65
        Transparent = False
        StyleElements = []
      end
      object DBEdit35: TDBEdit
        Left = 118
        Top = 95
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Nota_Eletronica'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
      object StaticText81: TStaticText
        Left = 519
        Top = 95
        Width = 36
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'S'#233'rie'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 66
        Transparent = False
        StyleElements = []
      end
      object DBEdit37: TDBEdit
        Left = 556
        Top = 95
        Width = 48
        Height = 21
        DataField = 'NFEletronica_Serie'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
      end
      object StaticText82: TStaticText
        Left = 201
        Top = 95
        Width = 45
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Modelo'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 67
        Transparent = False
        StyleElements = []
      end
      object DBLookupComboBox6: TDBLookupComboBox
        Left = 248
        Top = 95
        Width = 268
        Height = 21
        DataField = 'NFEletronica_Modelo'
        DataSource = Dados.dsEmpresas
        DropDownWidth = 400
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = dmFiscal.dsModelosDocumentos
        ParentFont = False
        TabOrder = 13
      end
      object DBCheckBox6: TDBCheckBox
        Left = 256
        Top = 452
        Width = 345
        Height = 17
        Alignment = taLeftJustify
        Caption = 
          'Utilizar somente uma numera'#231#227'o de nota eletr'#244'nica (Entrada/Sa'#237'da' +
          ')'
        DataField = 'NFEletronica_Numeracao'
        DataSource = Dados.dsEmpresas
        TabOrder = 40
        OnClick = cProcessoAutomaticoClick
      end
      object StaticText83: TStaticText
        Left = 2
        Top = 118
        Width = 114
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#186' CT-e'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 68
        Transparent = False
        StyleElements = []
      end
      object DBEdit51: TDBEdit
        Left = 118
        Top = 118
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CTE_Numero'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
      end
      object StaticText84: TStaticText
        Left = 519
        Top = 118
        Width = 36
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'S'#233'rie'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 69
        Transparent = False
        StyleElements = []
      end
      object DBEdit52: TDBEdit
        Left = 556
        Top = 118
        Width = 48
        Height = 21
        DataField = 'CTE_Serie'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
      end
      object StaticText85: TStaticText
        Left = 201
        Top = 118
        Width = 45
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Modelo'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 70
        Transparent = False
        StyleElements = []
      end
      object DBLookupComboBox7: TDBLookupComboBox
        Left = 248
        Top = 118
        Width = 268
        Height = 21
        DataField = 'CTE_Modelo'
        DataSource = Dados.dsEmpresas
        DropDownWidth = 400
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = dmFiscal.dsModelosDocumentos
        ParentFont = False
        TabOrder = 16
      end
      object DBComboBox4: TDBComboBox
        Left = 318
        Top = 26
        Width = 65
        Height = 21
        Style = csDropDownList
        DataField = 'CTE_Layout'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          '1.04'
          '3.00'
          '4.00')
        ParentFont = False
        TabOrder = 3
      end
      object StaticText86: TStaticText
        Left = 286
        Top = 26
        Width = 30
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CT-e'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 71
        Transparent = False
        StyleElements = []
      end
      object StaticText87: TStaticText
        Left = 386
        Top = 26
        Width = 52
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Manifesto'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 72
        Transparent = False
        StyleElements = []
      end
      object DBComboBox5: TDBComboBox
        Left = 441
        Top = 26
        Width = 65
        Height = 21
        Style = csDropDownList
        DataField = 'Manifesto_LayOut'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          '1.00'
          '4.00')
        ParentFont = False
        TabOrder = 4
      end
      object StaticText92: TStaticText
        Left = 2
        Top = 449
        Width = 114
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Vers'#227'o DLL'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 73
        Transparent = False
        StyleElements = []
      end
      object DBComboBox7: TDBComboBox
        Left = 118
        Top = 449
        Width = 110
        Height = 21
        Style = csDropDownList
        DataField = 'Versao_DLL'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          '2.0.5e Beta'
          '2.0.6d Beta'
          '2.0.7 Beta')
        ParentFont = False
        TabOrder = 38
      end
      object cAmbNFe: TDBRadioGroup
        Left = 97
        Top = 515
        Width = 101
        Height = 64
        Caption = 'Ambiente NF-e'
        DataField = 'Ambiente'
        DataSource = Dados.dsEmpresas
        Items.Strings = (
          'Produ'#231'ao'
          'Homologa'#231#227'o')
        TabOrder = 74
        Values.Strings = (
          '1'
          '2')
      end
      object cAmbGNRE: TDBRadioGroup
        Left = 200
        Top = 515
        Width = 102
        Height = 64
        Caption = 'Ambiente GNRE'
        DataField = 'Ambiente_GNRE'
        DataSource = Dados.dsEmpresas
        Items.Strings = (
          'Produ'#231'ao'
          'Homologa'#231#227'o')
        TabOrder = 75
        Values.Strings = (
          '1'
          '2')
      end
      object StaticText38: TStaticText
        Left = 510
        Top = 26
        Width = 37
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'GNRE'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 76
        Transparent = False
        StyleElements = []
      end
      object DBComboBox8: TDBComboBox
        Left = 549
        Top = 26
        Width = 65
        Height = 21
        Style = csDropDownList
        DataField = 'GNRE_Layout'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          '1.00')
        ParentFont = False
        TabOrder = 5
      end
      object DBRadioGroup12: TDBRadioGroup
        Left = 304
        Top = 515
        Width = 101
        Height = 64
        Caption = 'Ambiente REINF'
        DataField = 'Ambiente_REINF'
        DataSource = Dados.dsEmpresas
        Items.Strings = (
          'Produ'#231#227'o'
          'Prod.Restrita')
        TabOrder = 77
        Values.Strings = (
          '1'
          '2')
      end
      object StaticText130: TStaticText
        Left = 2
        Top = 233
        Width = 114
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#186' Processo (Export)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 78
        Transparent = False
        StyleElements = []
      end
      object DBEdit73: TDBEdit
        Left = 118
        Top = 233
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Processo_Exp'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 26
      end
      object DBCheckBox13: TDBCheckBox
        Left = 409
        Top = 235
        Width = 162
        Height = 17
        Caption = 'Gerar o N'#250'mero do processo.'
        DataField = 'Processo_AutomaticoExp'
        DataSource = Dados.dsEmpresas
        TabOrder = 28
        OnClick = cProcessoAutomaticoClick
      end
      object StaticText131: TStaticText
        Left = 201
        Top = 233
        Width = 99
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Mascara Processo'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 79
        Transparent = False
        StyleElements = []
      end
      object DBEdit74: TDBEdit
        Left = 302
        Top = 233
        Width = 104
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Mascara_ProcessoExp'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 27
      end
      object StaticText132: TStaticText
        Left = 2
        Top = 256
        Width = 114
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#186' PO'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 80
        Transparent = False
        StyleElements = []
      end
      object dbedt8: TDBEdit
        Left = 118
        Top = 256
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PO'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 29
      end
      object DBCheckBox14: TDBCheckBox
        Left = 409
        Top = 258
        Width = 133
        Height = 17
        Caption = 'Gerar o N'#250'mero do PO.'
        DataField = 'PO_Automatico'
        DataSource = Dados.dsEmpresas
        TabOrder = 31
        OnClick = cProcessoAutomaticoClick
      end
      object StaticText133: TStaticText
        Left = 201
        Top = 256
        Width = 99
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Mascara PO'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 81
        Transparent = False
        StyleElements = []
      end
      object DBEdit76: TDBEdit
        Left = 302
        Top = 256
        Width = 104
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Mascara_PO'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 30
      end
      object DBRadioGroup13: TDBRadioGroup
        Left = 407
        Top = 515
        Width = 97
        Height = 64
        Caption = 'Ambiente CT-e'
        DataField = 'Ambiente_CTe'
        DataSource = Dados.dsEmpresas
        Items.Strings = (
          'Produ'#231'ao'
          'Homologa'#231#227'o')
        TabOrder = 82
        Values.Strings = (
          '1'
          '2')
      end
      object DBRadioGroup14: TDBRadioGroup
        Left = 506
        Top = 515
        Width = 107
        Height = 64
        Caption = 'Ambiente Armaz'#233'm'
        DataField = 'Ambiente_Armazem'
        DataSource = Dados.dsEmpresas
        Items.Strings = (
          'Produ'#231'ao'
          'Homologa'#231#227'o')
        TabOrder = 83
        Values.Strings = (
          '1'
          '2')
      end
      object DBCheckBox16: TDBCheckBox
        Left = 279
        Top = 303
        Width = 320
        Height = 17
        Caption = 'Utilizar contas de lan'#231'amentos contabeis  do Tipo de Processo'
        DataField = 'Lancamento_Contabil'
        DataSource = Dados.dsEmpresas
        TabOrder = 84
      end
      object StaticText137: TStaticText
        Left = 246
        Top = 3
        Width = 70
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'pUltimo NSU'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 85
        Transparent = False
        StyleElements = []
      end
      object DBEdit75: TDBEdit
        Left = 318
        Top = 3
        Width = 117
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Ultimo_NSU'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 86
      end
      object StaticText139: TStaticText
        Left = 2
        Top = 410
        Width = 114
        Height = 37
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Licensa CTe_Util.dll'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 87
        Transparent = False
        StyleElements = []
      end
      object DBMemo1: TDBMemo
        Left = 118
        Top = 410
        Width = 487
        Height = 37
        DataField = 'Licensa_CTE_Util'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 88
      end
      object cFCP_Interno: TDBCheckBox
        Left = 256
        Top = 490
        Width = 345
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Calcula FCP para dentro do Estado'
        DataField = 'FCP_Interno'
        DataSource = Dados.dsEmpresas
        TabOrder = 89
        OnClick = cProcessoAutomaticoClick
      end
    end
    object pSPEDFiscal: TTabSheet
      Caption = '&SPED'
      Enabled = False
      ImageIndex = 3
      object DBCheckBox9: TDBCheckBox
        Left = 4
        Top = 527
        Width = 260
        Height = 17
        Caption = 'Desativar os inventarios antigos do menu principal.'
        DataField = 'Menu_Inventario'
        DataSource = Dados.dsEmpresas
        TabOrder = 0
        OnClick = cProcessoAutomaticoClick
      end
      object PageControl1: TPageControl
        Left = 4
        Top = 3
        Width = 607
        Height = 505
        ActivePage = TabSheet2
        TabHeight = 24
        TabOrder = 1
        TabPosition = tpBottom
        object TabSheet2: TTabSheet
          Caption = 'SPED Fiscal'
          object cPerfil: TDBRadioGroup
            Left = 11
            Top = 5
            Width = 70
            Height = 84
            Caption = 'Perfil'
            DataField = 'Perfil_SPED'
            DataSource = Dados.dsEmpresas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Items.Strings = (
              'A'
              'B'
              'C')
            ParentFont = False
            TabOrder = 0
            Values.Strings = (
              'A'
              'B'
              'C')
          end
          object DBRadioGroup3: TDBRadioGroup
            Left = 96
            Top = 5
            Width = 249
            Height = 84
            Caption = 'Tipo de Atividade'
            DataField = 'Tipo_Atividade'
            DataSource = Dados.dsEmpresas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Items.Strings = (
              'Industrial ou equiparado a insdustrial.'
              'Outros')
            ParentFont = False
            TabOrder = 1
            Values.Strings = (
              '0'
              '1')
          end
          object RxDBComboBox3: TRxDBComboBox
            Left = 121
            Top = 107
            Width = 471
            Height = 21
            DataField = 'Classificacao_ContribIPI'
            DataSource = Dados.dsEmpresas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              '00 - Industrial - Transforma'#231#227'o'
              '01 - Industrial - Beneficiamento'
              '02 - Industrial - Montagem'
              '03 - Industrial - Acondicionamento ou Reacondicionamento'
              '04 - Industrial - Renova'#231#227'o ou Recondicionamento'
              '05 - Equiparado a industrial - Por op'#231#227'o'
              '06 - Equiparado a industrial - Importa'#231#227'o Direta'
              '07 - Equiparado a industrial - Por lei espec'#237'fica'
              
                '08 - Equiparado a industrial - N'#227'o enquadrado nos c'#243'digos 05, 06' +
                ' ou 07'
              '09 - Outros')
            ParentFont = False
            TabOrder = 2
            Values.Strings = (
              '00'
              '01'
              '02'
              '03'
              '04'
              '05'
              '06'
              '07'
              '08'
              '09')
          end
          object StaticText136: TStaticText
            Left = 5
            Top = 107
            Width = 114
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Classific.Contrib.IPI'
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
          object StaticText19: TStaticText
            Left = 5
            Top = 130
            Width = 114
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Layout Estoque'
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
          object DBEdit20: TDBEdit
            Left = 121
            Top = 130
            Width = 80
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Layout_Estoque'
            DataSource = Dados.dsEmpresas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'SPED PIS/COFINS'
          ImageIndex = 1
          object DBCheckBox7: TDBCheckBox
            Left = 12
            Top = 18
            Width = 415
            Height = 17
            Caption = 
              'Apurar cr'#233'ditos de PIS/COFINS do bloco F100 pela Declara'#231#227'o de I' +
              'mporta'#231#227'o (DI).'
            DataField = 'PISCOFINS_F100'
            DataSource = Dados.dsEmpresas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = cProcessoAutomaticoClick
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'SPED Contabil'
          ImageIndex = 2
          object DBRadioGroup6: TDBRadioGroup
            Left = 7
            Top = 106
            Width = 352
            Height = 208
            Caption = 'Institui'#231#227'o Resp.Manut.Plano de Contas Referencial'
            DataField = 'SPED_CTAPlanoRef'
            DataSource = Dados.dsEmpresas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Items.Strings = (
              'PJ em Geral (L100A + L300A da ECF) '
              'PJ em Geral - Lucro Presumido (P100 + P150 da ECF) '
              'Financeiras (L100B + L300B da ECF)'#9
              'Seguradoras (L100C + L300C da ECF) '
              'Imunes e Isentas em Geral (U100A + U150A da ECF)'#9
              'Financeiras - Imunes e Isentas (U100B + U150B da ECF)'#9
              'Seguradoras - Imunes e Isentas (U100C + U150C da ECF) '
              'Entidades Fechadas Previd'#234'ncia Compl.(U100D + U150D da ECF) '
              'Partidos Pol'#237'ticos (U100E + U150E da ECF) ')
            ParentFont = False
            TabOrder = 0
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9')
          end
          object DBCheckBox10: TDBCheckBox
            Left = 9
            Top = 330
            Width = 117
            Height = 17
            Caption = 'Optante pelo Refis'
            DataField = 'Refis'
            DataSource = Dados.dsEmpresas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = cProcessoAutomaticoClick
          end
          object DBCheckBox11: TDBCheckBox
            Left = 9
            Top = 350
            Width = 117
            Height = 17
            Caption = 'Optante pelo Paes'
            DataField = 'Paes'
            DataSource = Dados.dsEmpresas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = cProcessoAutomaticoClick
          end
          object DBRadioGroup2: TDBRadioGroup
            Left = 366
            Top = 106
            Width = 225
            Height = 208
            Caption = 'Forma de Tributa'#231#227'o'
            DataField = 'Forma_Tributacao'
            DataSource = Dados.dsEmpresas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Items.Strings = (
              '1 - Lucro Real.  '
              '2 - Lucro Real/Arbitrado.  '
              '3 - Lucro Presumido/Real.  '
              '4 - Lucro Presumido/Real/Arbitrado.  '
              '5 - Lucro Presumido.  '
              '6 - Lucro Arbitrado.  '
              '7 - Lucro Presumido/Arbitrado.  '
              '8 - Imune do IRPJ.  '
              '9 - Isenta do IRPJ. '#9)
            ParentFont = False
            TabOrder = 3
            Values.Strings = (
              '1'
              '2'
              '3'
              '4'
              '5'
              '6'
              '7'
              '8'
              '9')
          end
          object DBCheckBox12: TDBCheckBox
            Left = 9
            Top = 370
            Width = 299
            Height = 17
            Caption = 'Optante pela extin'#231#227'o do RTT no ano-calend'#225'rio de 2014.'
            DataField = 'Extincao_RTT'
            DataSource = Dados.dsEmpresas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = cProcessoAutomaticoClick
          end
          object StaticText98: TStaticText
            Left = 8
            Top = 56
            Width = 129
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Qtde SCP'
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
          object DBEdit54: TDBEdit
            Left = 139
            Top = 56
            Width = 129
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Qtde_SCP'
            DataSource = Dados.dsEmpresas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 9
            ParentFont = False
            TabOrder = 6
          end
          object StaticText99: TStaticText
            Left = 8
            Top = 79
            Width = 129
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'C'#243'digo Natureza Jur'#237'dica'
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
          object DBEdit55: TDBEdit
            Left = 139
            Top = 79
            Width = 129
            Height = 21
            CharCase = ecUpperCase
            DataField = 'Natureza_Juridica'
            DataSource = Dados.dsEmpresas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
          end
          object DBRadioGroup8: TDBRadioGroup
            Left = 8
            Top = 7
            Width = 281
            Height = 43
            Caption = 'Encerramento'
            Columns = 2
            DataField = 'Encerramento_Contabil'
            DataSource = Dados.dsEmpresas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Items.Strings = (
              'Trimestral'
              'Anual')
            ParentFont = False
            TabOrder = 9
            Values.Strings = (
              '0'
              '1')
          end
          object DBRadioGroup15: TDBRadioGroup
            AlignWithMargins = True
            Left = 366
            Top = 7
            Width = 227
            Height = 79
            Caption = 'Layout Estoque'
            DataField = 'Layout_Estoque'
            DataSource = Dados.dsEmpresas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Items.Strings = (
              'Leiaute simplificado'
              'Leiaute completo'
              'Leiaute restrito aos saldos de estoque')
            ParentFont = False
            TabOrder = 10
            Values.Strings = (
              '0'
              '1'
              '2')
          end
        end
        object TabSheet5: TTabSheet
          Caption = 'REINF'
          ImageIndex = 3
          object DBRadioGroup9: TDBRadioGroup
            Left = 7
            Top = 31
            Width = 194
            Height = 65
            Caption = 'Escritura'#231#227'o Cont'#225'bil Digital (ECD)'
            DataField = 'Obrigada_ECD'
            DataSource = Dados.dsEmpresas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Items.Strings = (
              'N'#227'o obrigada '#224' ECD'
              'Obrigada '#224' ECD')
            ParentFont = False
            TabOrder = 0
            Values.Strings = (
              '0'
              '1')
          end
          object DBRadioGroup10: TDBRadioGroup
            Left = 232
            Top = 31
            Width = 337
            Height = 65
            Caption = 'Indicativo de desonera'#231#227'o da folha'
            DataField = 'Desoneracao_Folha'
            DataSource = Dados.dsEmpresas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Items.Strings = (
              'N'#227'o Aplic'#225'vel'
              'Empresa enquadrada nos artigos 7'#176' a 9'#176' da Lei 12.546/2011')
            ParentFont = False
            TabOrder = 1
            Values.Strings = (
              '0'
              '1')
          end
          object StaticText120: TStaticText
            Left = 7
            Top = 6
            Width = 120
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Classifica'#231#227'o Tribut'#225'ria'
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
          object cClassTrib: TRxDBComboBox
            Left = 129
            Top = 6
            Width = 460
            Height = 21
            DataField = 'Classificacao_Tributaria'
            DataSource = Dados.dsEmpresas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Items.Strings = (
              
                '01 Empresa enquadrada no regime de tributa'#231#227'o Simples Nacional c' +
                'om tributa'#231#227'o previdenci'#225'ria substitu'#237'da '#9
              
                '02 Empresa enquadrada no regime de tributa'#231#227'o Simples Nacional c' +
                'om tributa'#231#227'o previdenci'#225'ria n'#227'o substitu'#237'da '#9
              
                '03 Empresa enquadrada no regime de tributa'#231#227'o Simples Nacional c' +
                'om tributa'#231#227'o previdenci'#225'ria substitu'#237'da e n'#227'o substitu'#237'da '#9
              '04 MEI - Micro Empreendedor Individual '#9
              '06 Agroind'#250'stria '#9
              '07 Produtor Rural Pessoa Jur'#237'dica '#9
              '08 Cons'#243'rcio Simplificado de Produtores Rurais '#9
              '09 '#211'rg'#227'o Gestor de M'#227'o de Obra '#9
              '10 Entidade Sindical a que se refere a Lei 12.023/2009 '#9
              
                '11 Associa'#231#227'o Desportiva que mant'#233'm Clube de Futebol Profissiona' +
                'l '#9
              
                '13 Banco, caixa econ'#244'mica, sociedade de cr'#233'dito, financiamento e' +
                ' investimento e demais empresas relacionadas no par'#225'grafo 1'#186' do ' +
                'art. 22 da Lei 8.212./91 '#9
              
                '14 Sindicatos em geral, exceto aquele classificado no c'#243'digo [10' +
                '] '#9
              '21 Pessoa F'#237'sica, exceto Segurado Especial '#9
              '22 Segurado Especial '#9
              
                '60 Miss'#227'o Diplom'#225'tica ou Reparti'#231#227'o Consular de carreira estrang' +
                'eira '#9
              '70 Empresa de que trata o Decreto 5.436/2005 '#9
              
                '80 Entidade Beneficente de Assist'#234'ncia Social isenta de contribu' +
                'i'#231#245'es sociais '#9
              
                '85 Ente Federativo, '#211'rg'#227'os da Uni'#227'o, Autarquias e Funda'#231#245'es P'#250'bl' +
                'icas '#9
              '99 Pessoas Jur'#237'dicas em Geral ')
            ParentFont = False
            TabOrder = 3
            Values.Strings = (
              '01'
              '02'
              '03'
              '04'
              '06'
              '07'
              '08'
              '09'
              '10'
              '11'
              '13'
              '14'
              '21'
              '22'
              '60'
              '70'
              '80'
              '85'
              '99')
          end
          object DBRadioGroup11: TDBRadioGroup
            Left = 8
            Top = 103
            Width = 321
            Height = 65
            Caption = 'Indicativo exist'#234'ncia acordo internacional p/isen'#231#227'o de multa'
            DataField = 'Isencao_Multa'
            DataSource = Dados.dsEmpresas
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Items.Strings = (
              'Sem acordo'
              'Com Acordo')
            ParentFont = False
            TabOrder = 4
            Values.Strings = (
              '0'
              '1')
          end
          object PageControl2: TPageControl
            Left = 3
            Top = 171
            Width = 594
            Height = 297
            ActivePage = TabSheet6
            TabHeight = 24
            TabOrder = 5
            object TabSheet6: TTabSheet
              Caption = 'R1000'
              object DBEdit56: TDBEdit
                Left = 88
                Top = 4
                Width = 57
                Height = 21
                DataField = 'REINF_Sequencia'
                DataSource = Dados.dsEmpresas
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
              object DBEdit69: TDBEdit
                Left = 249
                Top = 4
                Width = 92
                Height = 21
                DataField = 'REINF_ModoLancamento'
                DataSource = Dados.dsEmpresas
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
              object StaticText121: TStaticText
                Left = 2
                Top = 4
                Width = 84
                Height = 21
                AutoSize = False
                BevelInner = bvNone
                BevelKind = bkSoft
                BevelOuter = bvSpace
                BorderStyle = sbsSunken
                Caption = 'Sequ'#234'ncia'
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
              object StaticText122: TStaticText
                Left = 148
                Top = 4
                Width = 99
                Height = 21
                AutoSize = False
                BevelInner = bvNone
                BevelKind = bkSoft
                BevelOuter = bvSpace
                BorderStyle = sbsSunken
                Caption = 'Modo Lan'#231'amento'
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
              object RxDBComboBox4: TRxDBComboBox
                Left = 429
                Top = 4
                Width = 155
                Height = 21
                DataField = 'REINF_ProcEmi'
                DataSource = Dados.dsEmpresas
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Items.Strings = (
                  'Aplicativo do contribuinte'
                  'Aplicativo governamental')
                ParentFont = False
                TabOrder = 4
                Values.Strings = (
                  '1'
                  '2')
              end
              object StaticText123: TStaticText
                Left = 344
                Top = 4
                Width = 83
                Height = 21
                AutoSize = False
                BevelInner = bvNone
                BevelKind = bkSoft
                BevelOuter = bvSpace
                BorderStyle = sbsSunken
                Caption = 'Aplicativo'
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
              object StaticText124: TStaticText
                Left = 2
                Top = 27
                Width = 84
                Height = 21
                AutoSize = False
                BevelInner = bvNone
                BevelKind = bkSoft
                BevelOuter = bvSpace
                BorderStyle = sbsSunken
                Caption = 'Tipo Inscri'#231#227'o'
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
              object RxDBComboBox5: TRxDBComboBox
                Left = 88
                Top = 27
                Width = 57
                Height = 21
                DataField = 'REINF_tpInsc'
                DataSource = Dados.dsEmpresas
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Items.Strings = (
                  'CNPJ'#13
                  'CPF')
                ParentFont = False
                TabOrder = 7
                Values.Strings = (
                  '1'
                  '2')
              end
              object StaticText125: TStaticText
                Left = 148
                Top = 27
                Width = 99
                Height = 21
                AutoSize = False
                BevelInner = bvNone
                BevelKind = bkSoft
                BevelOuter = bvSpace
                BorderStyle = sbsSunken
                Caption = 'Inicio Validade'
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
              object StaticText126: TStaticText
                Left = 344
                Top = 27
                Width = 83
                Height = 21
                AutoSize = False
                BevelInner = bvNone
                BevelKind = bkSoft
                BevelOuter = bvSpace
                BorderStyle = sbsSunken
                Caption = 'Fim Validade'
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
              object DBEdit70: TDBEdit
                Left = 249
                Top = 27
                Width = 92
                Height = 21
                DataField = 'REINF_iniValid'
                DataSource = Dados.dsEmpresas
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 10
              end
              object DBEdit71: TDBEdit
                Left = 429
                Top = 27
                Width = 92
                Height = 21
                DataField = 'REINF_fimValid'
                DataSource = Dados.dsEmpresas
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 11
              end
              object RxDBComboBox6: TRxDBComboBox
                Left = 88
                Top = 50
                Width = 155
                Height = 21
                DataField = 'REINF_indSitPJ'
                DataSource = Dados.dsEmpresas
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Items.Strings = (
                  'Situa'#231#227'o Normal'
                  'Extin'#231#227'o'
                  'Fus'#227'o'
                  'Cis'#227'o'
                  'Incorpora'#231#227'o')
                ParentFont = False
                TabOrder = 12
                Values.Strings = (
                  '0'
                  '1'
                  '2'
                  '3'
                  '4')
              end
              object StaticText127: TStaticText
                Left = 2
                Top = 50
                Width = 83
                Height = 21
                AutoSize = False
                BevelInner = bvNone
                BevelKind = bkSoft
                BevelOuter = bvSpace
                BorderStyle = sbsSunken
                Caption = 'Situa'#231#227'o PJ'
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
              object StaticText128: TStaticText
                Left = 2
                Top = 73
                Width = 83
                Height = 21
                AutoSize = False
                BevelInner = bvNone
                BevelKind = bkSoft
                BevelOuter = bvSpace
                BorderStyle = sbsSunken
                Caption = 'Org'#227'o Respos.'
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
              object RxDBComboBox7: TRxDBComboBox
                Left = 88
                Top = 73
                Width = 155
                Height = 21
                DataField = 'REINF_ideEFR'
                DataSource = Dados.dsEmpresas
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Items.Strings = (
                  #201' EFR'
                  'N'#227'o '#233' EFR')
                ParentFont = False
                TabOrder = 15
                Values.Strings = (
                  'S'
                  'N')
              end
              object StaticText129: TStaticText
                Left = 2
                Top = 96
                Width = 83
                Height = 21
                AutoSize = False
                BevelInner = bvNone
                BevelKind = bkSoft
                BevelOuter = bvSpace
                BorderStyle = sbsSunken
                Caption = 'Vers'#227'o Manual'
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
              object DBEdit72: TDBEdit
                Left = 88
                Top = 96
                Width = 92
                Height = 21
                DataField = 'Versao_REINF'
                DataSource = Dados.dsEmpresas
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 17
              end
            end
          end
        end
      end
    end
    object pRede: TTabSheet
      Caption = 'Rede / &Internet'
      Enabled = False
      ImageIndex = 4
      object StaticText41: TStaticText
        Left = 4
        Top = 3
        Width = 121
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Web Service NF-e'
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
      object cWebService: TDBComboBox
        Left = 127
        Top = 3
        Width = 114
        Height = 21
        DataField = 'UF_WebService'
        DataSource = Dados.dsEmpresas
        DropDownCount = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'AC'
          'AL'
          'AM'
          'AP'
          'BA'
          'BA3'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MG'
          'MS'
          'MT'
          'PA'
          'PB'
          'PE'
          'PI'
          'PR'
          'PR3'
          'RJ'
          'RN'
          'RO'
          'RR'
          'RS'
          'SC'
          'SCAN'
          'SE'
          'SP'
          'SP3'
          'SVAN'
          'SVC-AN'
          'SVC-RS'
          'SVRS'
          'TO')
        ParentFont = False
        Sorted = True
        TabOrder = 0
      end
      object GroupBox1: TGroupBox
        Left = 4
        Top = 122
        Width = 610
        Height = 93
        Caption = 'Certificado Digital '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object bCertificado: TBitBtn
          Left = 492
          Top = 15
          Width = 112
          Height = 47
          Caption = '&Certificado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            36090000424D3609000000000000360000002800000020000000180000000100
            1800000000000009000000000000000000000000000000000000FFFFFF000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000008000008000
            0080000080000080000080000080000080000080000080000080000080000080
            0000800000800000800000800000800000800000800000800000800000800000
            8000008000008000008000008000008000008000008000000000008000808080
            C0C0C0FFFFFF808080C0C0C0C0C0C0C0C0C0C0C0C0FFFFFF808080C0C0C0C0C0
            C0C0C0C0C0C0C0FFFFFF808080C0C0C0C0C0C0C0C0C0C0C0C0FFFFFF808080C0
            C0C0C0C0C0C0C0C0C0C0C0FFFFFF008000008000008000000000008000C0C0C0
            FFFFFFC0C0C0FFFFFF008000008000008000FFFFFFC0C0C0FFFFFF0080000080
            00008000FFFFFFC0C0C0FFFFFF008000008000008000FFFFFFC0C0C0FFFFFF00
            8000008000008000FFFFFFC0C0C0C0C0C0008000008000000000008000008000
            008000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0008000008000008000000000008000808080
            FFFFFFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFC0C0C0FFFFFF808080008000000000008000FFFFFF
            C0C0C0C0C0C0FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF
            FFFF00FFFFFFFFFFFFFFFFC0C0C0C0C0C0FFFFFF008000000000008000C0C0C0
            FFFFFFC0C0C0FFFFFFFFFFFFFFFFFF8000008000008000008000008000008000
            00800000800000800000800000800000800000800000800000FFFFFF80000080
            0000800000FFFFFFFFFFFFC0C0C0FFFFFFC0C0C0008000000000008000C0C0C0
            008000C0C0C0FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFF
            FFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFFC0C0C0008000C0C0C0008000000000008000C0C0C0
            008000C0C0C0FFFFFFFFFFFFFFFFFF8000008000008000008000008000008000
            00800000800000800000800000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFC0C0C0008000C0C0C0008000000000008000C0C0C0
            008000C0C0C0FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFC0C0C0008000C0C0C0008000000000008000808080
            FFFFFFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFC0C0C0FFFFFF808080008000000000008000FFFFFF
            C0C0C0C0C0C0FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000
            00FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF800000FFFFFFFFFFFFFFFFFFFF
            FFFF00FFFFFFFFFFFFFFFFC0C0C0C0C0C0FFFFFF008000000000008000C0C0C0
            FFFFFFC0C0C0FFFFFFFFFFFFC0C0C0008080008080C0C0C0FFFFFF800000FFFF
            FFFFFFFF800000800000FFFFFFFFFFFF800000FFFFFF800000FFFFFF800000FF
            FFFF800000800000FFFFFFC0C0C0FFFFFFC0C0C0008000000000008000C0C0C0
            008000C0C0C0FFFFFFC0C0C0008080808080008080008080C0C0C0FFFFFF8000
            00800000800000FFFFFF800000800000FFFFFF800000FFFFFF00FFFF80000080
            0000800000FFFFFFFFFFFFC0C0C0008000C0C0C0008000000000008000C0C0C0
            008000C0C0C0FFFFFF008080808080008080808080008080008080FFFFFF8000
            00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800000800000FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFC0C0C0008000C0C0C0008000000000008000C0C0C0
            008000C0C0C000FFFF808080008080808080008080808080008080FFFFFFFFFF
            FFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF800000FFFFFF800000800000FF
            FFFF00FFFFFFFFFFFFFFFFC0C0C0008000C0C0C0008000000000008000808080
            FFFFFFC0C0C0FFFFFFC0C0C0808080008080808080008080C0C0C0FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFC0C0C0FFFFFF808080008000000000008000FFFFFF
            C0C0C0C0C0C0FFFFFFFFFFFFC0C0C0808080008080C0C0C0FFFFFFFFFFFF00FF
            FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFF00FFFFC0C0C0C0C0C0FFFFFF008000000000008000C0C0C0
            FFFFFFC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFC0C0C0FFFFFFC0C0C0008000000000008000808080
            008000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0008000808080008000000000008000008000
            C0C0C0FFFFFFC0C0C0FFFFFF008000008000008000FFFFFFC0C0C0FFFFFF0080
            00008000008000FFFFFFC0C0C0FFFFFF008000008000008000FFFFFFC0C0C0FF
            FFFF008000008000008000FFFFFFFFFFFFC0C0C0008000000000008000008000
            808080C0C0C0FFFFFF808080C0C0C0C0C0C0C0C0C0C0C0C0FFFFFF808080C0C0
            C0C0C0C0C0C0C0C0C0C0FFFFFF808080C0C0C0C0C0C0C0C0C0C0C0C0FFFFFF80
            8080C0C0C0C0C0C0C0C0C0C0C0C0808080008000008000000000008000008000
            0080000080000080000080000080000080000080000080000080000080000080
            0000800000800000800000800000800000800000800000800000800000800000
            8000008000008000008000008000008000008000008000FFFFFF}
          Margin = 5
          ParentFont = False
          TabOrder = 1
          OnClick = bCertificadoClick
        end
        object bLimpar: TBitBtn
          Left = 427
          Top = 15
          Width = 61
          Height = 47
          Caption = '&Limpar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
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
          Layout = blGlyphTop
          Margin = 5
          ParentFont = False
          TabOrder = 2
          OnClick = bLimparClick
        end
        object StaticText40: TStaticText
          Left = 429
          Top = 65
          Width = 61
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
        object cDataDoc: TDBDateEdit
          Left = 492
          Top = 65
          Width = 111
          Height = 21
          DataField = 'Vencimento_Certificado'
          DataSource = Dados.dsEmpresas
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
          TabOrder = 0
        end
        object DBMemo9: TDBMemo
          Left = 8
          Top = 16
          Width = 417
          Height = 70
          DataField = 'Certificado_Digital'
          DataSource = Dados.dsEmpresas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
      end
      object StaticText88: TStaticText
        Left = 4
        Top = 26
        Width = 121
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Web Service Manif.'
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
      object DBComboBox6: TDBComboBox
        Left = 127
        Top = 26
        Width = 114
        Height = 21
        DataField = 'UF_WebServiceManifesto'
        DataSource = Dados.dsEmpresas
        DropDownCount = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'AC'
          'AL'
          'AM'
          'AN'
          'AP'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MG'
          'MS'
          'MT'
          'PA'
          'PB'
          'PE'
          'PI'
          'PR'
          'RJ'
          'RN'
          'RO'
          'RR'
          'RS'
          'SC'
          'SCAN'
          'SE'
          'SP'
          'SVAN'
          'SVRS'
          'TO')
        ParentFont = False
        Sorted = True
        TabOrder = 4
      end
      object StaticText138: TStaticText
        Left = 4
        Top = 49
        Width = 121
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Web Service Contig'#234'ncia'
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
      object DBComboBox9: TDBComboBox
        Left = 127
        Top = 49
        Width = 114
        Height = 21
        DataField = 'UF_WEBServiceEPEC'
        DataSource = Dados.dsEmpresas
        DropDownCount = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'AC'
          'AL'
          'AM'
          'AN'
          'AP'
          'BA'
          'BA3'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MG'
          'MS'
          'MT'
          'PA'
          'PB'
          'PE'
          'PI'
          'PR'
          'PR3'
          'RJ'
          'RN'
          'RO'
          'RR'
          'RS'
          'SC'
          'SCAN'
          'SE'
          'SP'
          'SP3'
          'SVAN'
          'SVC-AN'
          'SVC-RS'
          'SVRS'
          'TO')
        ParentFont = False
        Sorted = True
        TabOrder = 6
      end
      object StaticText140: TStaticText
        Left = 4
        Top = 72
        Width = 121
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Web Service CT-e'
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
      object DBComboBox10: TDBComboBox
        Left = 127
        Top = 72
        Width = 114
        Height = 21
        DataField = 'UF_WebServiceCTe'
        DataSource = Dados.dsEmpresas
        DropDownCount = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'AC'
          'AL'
          'AM'
          'AP'
          'BA'
          'BA3'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MG'
          'MS'
          'MT'
          'PA'
          'PB'
          'PE'
          'PI'
          'PR'
          'PR3'
          'RJ'
          'RN'
          'RO'
          'RR'
          'RS'
          'SC'
          'SCAN'
          'SE'
          'SP'
          'SP3'
          'SVAN'
          'SVC-AN'
          'SVC-RS'
          'SVRS'
          'TO')
        ParentFont = False
        Sorted = True
        TabOrder = 8
      end
    end
    object pEmail: TTabSheet
      Caption = 'E-Mail'
      Enabled = False
      ImageIndex = 7
      object StaticText142: TStaticText
        Left = 4
        Top = 3
        Width = 121
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'E-Mail (Endere'#231'o)'
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
      object cEmail: TDBEdit
        Left = 127
        Top = 3
        Width = 487
        Height = 21
        DataField = 'Email'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object StaticText143: TStaticText
        Left = 4
        Top = 58
        Width = 121
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Host'
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
      object StaticText144: TStaticText
        Left = 4
        Top = 491
        Width = 121
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Site'
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
      object DBEdit79: TDBEdit
        Left = 127
        Top = 491
        Width = 486
        Height = 21
        DataField = 'Site'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        TabOrder = 4
      end
      object StaticText145: TStaticText
        Left = 4
        Top = 81
        Width = 121
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'E-Mail Usu'#225'rio (ID)'
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
      object DBEdit80: TDBEdit
        Left = 127
        Top = 58
        Width = 390
        Height = 21
        DataField = 'Email_SMTP'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit81: TDBEdit
        Left = 418
        Top = 81
        Width = 195
        Height = 21
        DataField = 'Email_Senha'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        PasswordChar = #8226
        TabOrder = 7
      end
      object StaticText146: TStaticText
        Left = 4
        Top = 104
        Width = 121
        Height = 50
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Mensagem de Envio NF-e'
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
      object DBMemo10: TDBMemo
        Left = 127
        Top = 104
        Width = 487
        Height = 50
        DataField = 'Email_MsgEnvioNFE'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object StaticText147: TStaticText
        Left = 4
        Top = 156
        Width = 121
        Height = 50
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Mensagem de Cancelamento NF-e'
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
      object DBMemo11: TDBMemo
        Left = 127
        Top = 156
        Width = 487
        Height = 50
        DataField = 'Email_MsgCancelamento'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object StaticText148: TStaticText
        Left = 520
        Top = 58
        Width = 38
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Porta'
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
      object DBEdit82: TDBEdit
        Left = 560
        Top = 58
        Width = 54
        Height = 21
        DataField = 'Email_Porta'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
      end
      object DBEdit83: TDBEdit
        Left = 127
        Top = 81
        Width = 250
        Height = 21
        DataField = 'Email_ID'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
      end
      object StaticText149: TStaticText
        Left = 379
        Top = 81
        Width = 38
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Senha'
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
      object StaticText150: TStaticText
        Left = 4
        Top = 26
        Width = 121
        Height = 30
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Com c'#243'pia Para'
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
      object DBMemo12: TDBMemo
        Left = 127
        Top = 26
        Width = 487
        Height = 30
        Hint = '  Digite todos os E-Mails para copiar separados por virgula.  '
        DataField = 'Email_Copia'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
      end
      object StaticText151: TStaticText
        Left = 4
        Top = 468
        Width = 121
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'SSL Metodo'
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
      object RxDBComboBox8: TRxDBComboBox
        Left = 127
        Top = 468
        Width = 114
        Height = 21
        Style = csDropDown
        DataField = 'Email_Metodo'
        DataSource = Dados.dsEmpresas
        EnableValues = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'sslvSSLv2'
          'sslvSSLv23'
          'sslvSSLv3'
          'sslvTLSv1'
          'sslvTLSv1_1'
          'sslvTLSv1_2')
        ParentFont = False
        TabOrder = 19
      end
      object StaticText152: TStaticText
        Left = 4
        Top = 208
        Width = 121
        Height = 50
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Mensagem de Envio de CC-e'
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
      object DBMemo13: TDBMemo
        Left = 127
        Top = 208
        Width = 487
        Height = 50
        DataField = 'Email_MsgEnvioCCE'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 21
      end
      object StaticText153: TStaticText
        Left = 4
        Top = 260
        Width = 121
        Height = 50
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Mensagem de Envio de Or'#231'amento'
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
      object DBMemo14: TDBMemo
        Left = 127
        Top = 260
        Width = 487
        Height = 50
        DataField = 'Email_MsgOrcamento'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 23
      end
      object StaticText154: TStaticText
        Left = 4
        Top = 312
        Width = 121
        Height = 50
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Mensagem de Envio de Boleto Banc'#225'rio'
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
      object DBMemo15: TDBMemo
        Left = 127
        Top = 312
        Width = 487
        Height = 50
        DataField = 'Email_MsgBoleto'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 25
      end
      object RxDBComboBox9: TRxDBComboBox
        Left = 368
        Top = 468
        Width = 159
        Height = 21
        Style = csDropDown
        DataField = 'Email_Criptografia'
        DataSource = Dados.dsEmpresas
        EnableValues = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'utNoTLSSupport'
          'utUseExplicitTLS'
          'utUseImplicitTLS'
          'utUseRequireTLS')
        ParentFont = False
        TabOrder = 26
      end
      object StaticText155: TStaticText
        Left = 244
        Top = 468
        Width = 121
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Tipo de Criptografia'
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
      object StaticText156: TStaticText
        Left = 4
        Top = 416
        Width = 121
        Height = 50
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Mensagem de Envio de Follow up'
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
      object DBMemo16: TDBMemo
        Left = 127
        Top = 416
        Width = 487
        Height = 50
        DataField = 'Email_MsgFollowUp'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 29
      end
      object bTestarEmail2: TBitBtn
        Left = 493
        Top = 523
        Width = 121
        Height = 55
        Caption = '&Testar E-Mail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          76020000424D7602000000000000760000002800000020000000200000000100
          0400000000000002000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
          0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000FFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          800FFFFFFFFFFFFFFFFFFFFFFFFFF008F800FFFFFFFFFFFFFFFFFFFFFFFF008F
          FF800FFFFFFFFFFFFFFFFFFFFFF008FFFFF800FFFFFFFFFFFFFFFFFFFF008FFF
          FFFF800FFFFFFFFFFFFFFFFFF008FFFFFFFFF800FFFFFFFFFFFFFFFF008FFFFF
          FFFFFF800FFFFFFFFFFFFFF008FFFFFFFFFFFFF800FFFFFFFFFFFF008FCFFFFF
          FFFFFFFF800FFFFFFFFFFF08FFFCFFFFFFFFFCFFF800FFFFFFFFF08FCFFFCFFF
          FFFCFFCFFF800FFFFFFFFF08FCFFFFFFFCFFCFFCFFF800FFFFFFFFF08FCFFFFF
          FFCFFCFFFFFF800FFFFFFFFF08FFFFFFFFFCFFCFFFFFF800FFFFFFFFF08FFFFF
          FFFFCFFCFFFFFF800FFFFFFFFF088888FFFFFCFFFFFFFFF800FFFFFFFFF00000
          FFFFFFCFFFFFFFFF800FFFFFFF08FFFFFFFFFFFFFFFFFFFFF80FFFFFF088888F
          FFFF80FFFFFFFFFFFF80FFFFF000000FFFF80FFFFFFFFFFFF80FFFFF08FFFFFF
          FF80FFFFFFFFFFFF80FFFFFF0888FFFFF80FFFFFFFFFFFF80FFFFF000000FFFF
          808FFFFF2FFFFF80FFFFF08FFFFFFFF80708FFF222FFF80FFFFF088888888880
          77708F22222F80FFFFFF000000000007770F08F222F80FFFFFFFFFF077777777
          70FFF08F2F80FFFFFFFFFFF0000000000FFFFF08F80FFFFFFFFFFFFFFFFFFFFF
          FFFFFFF080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Layout = blGlyphRight
        Margin = 5
        ParentFont = False
        TabOrder = 30
        OnClick = bTestarEmail2Click
      end
      object DBCheckBox4: TDBCheckBox
        Left = 4
        Top = 531
        Width = 181
        Height = 17
        Caption = 'Meu servidor requer autentica'#231#227'o'
        DataField = 'Email_Autenticacao'
        DataSource = Dados.dsEmpresas
        TabOrder = 31
        OnClick = cProcessoAutomaticoClick
      end
      object cConSeg: TDBCheckBox
        Left = 4
        Top = 550
        Width = 181
        Height = 17
        Caption = 'Utilizar conex'#227'o segura SSL/TLS'
        DataField = 'Email_SSL'
        DataSource = Dados.dsEmpresas
        TabOrder = 32
        OnClick = cProcessoAutomaticoClick
      end
      object StaticText20: TStaticText
        Left = 4
        Top = 364
        Width = 121
        Height = 50
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Mensagem de Envio de Pedidos'
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
      object DBMemo2: TDBMemo
        Left = 127
        Top = 364
        Width = 487
        Height = 50
        DataField = 'Email_MsgPedidos'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 34
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Autoriza'#231#245'es NF-e'
      ImageIndex = 6
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 335
        Height = 13
        Caption = 'Rela'#231#227'o de CNPJ e CPF com Autoriza'#231#227'o para baixar NF-e na SEFAZ.'
      end
      object cAutCNPJ: TDBMemo
        Left = 7
        Top = 53
        Width = 133
        Height = 200
        DataField = 'Autorizacao_NFECNPJ'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBMemo8: TDBMemo
        Left = 142
        Top = 53
        Width = 133
        Height = 200
        DataField = 'Autorizacao_NFECPF'
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object StaticText118: TStaticText
        Left = 7
        Top = 36
        Width = 133
        Height = 17
        Alignment = taCenter
        AutoSize = False
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
        TabOrder = 2
        Transparent = False
        StyleElements = []
      end
      object StaticText119: TStaticText
        Left = 142
        Top = 36
        Width = 133
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSunken
        Caption = 'CPF'
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
      object cAss: TGroupBox
        Left = 3
        Top = 376
        Width = 610
        Height = 142
        Caption = 'Assinatura'
        TabOrder = 4
        object StaticText135: TStaticText
          Left = 6
          Top = 17
          Width = 52
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Arquivo'
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
        object cAssinatura: TFilenameEdit
          Left = 60
          Top = 17
          Width = 541
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumGlyphs = 1
          ParentFont = False
          TabOrder = 1
          Text = 'cLogo'
          OnExit = cAssinaturaExit
        end
        object Panel3: TPanel
          Left = 151
          Top = 44
          Width = 308
          Height = 90
          BorderStyle = bsSingle
          Color = clWhite
          ParentBackground = False
          TabOrder = 2
          object Shape1: TShape
            Left = 1
            Top = 1
            Width = 302
            Height = 84
            Align = alClient
            Pen.Style = psClear
          end
          object iAssinatura: TImage
            Left = 1
            Top = 1
            Width = 302
            Height = 84
            Align = alClient
            AutoSize = True
            Transparent = True
            ExplicitWidth = 147
            ExplicitHeight = 64
          end
        end
      end
      object bBloqueio: TBitBtn
        Left = 7
        Top = 286
        Width = 91
        Height = 54
        Caption = '&Liberar Emiss'#227'o'
        Enabled = False
        Glyph.Data = {
          12030000424D1203000000000000120200002800000010000000100000000100
          08000000000000010000120B0000120B0000770000007700000000000000FFFF
          FF00FF00FF0080FCFF0066EDF800C1F6FC004ED8EB005AD1E0005DD5E50059CB
          DA00BBF2FA009FE6F20036C1DE009DE9F800A3F0FF002CBDE00031BBDC003AC1
          E00035A9C4003BAFCA003BADC70041B4CE007BD5EA009DDDED00E6F8FC002DB0
          D30035A6C70047B8D9004DC2E30053C1E00011A1CE00169FCC002CB0D9002382
          9F0035A7CC0045B7D90043AFD00051B8D70069CCE9006CCCE90069BAD4008BE0
          FC00078FC200078AB8000995C6000E9ACC00109ACC0019A1D300189ACA001AA4
          D4001A9FD0001C9ECA0023A9DA0028ACDC001D728F0033A1C9005EC2E7004893
          AD0086D9F700B5E1F000017FB2000286BD00038AC0000384B8000382B6000381
          B500058FC4000684B5000680B100078BC1000892C700088EC1000782B2000B8F
          C2000E90C4000F88BB001A9CCF001E9CCE001F9DCF00219FCF002799C5002FB0
          E10065C5ED0072C1E10089DAFA00016D9F000273A500037BAF000379AC000479
          AB000478AA0016658A00269ED1002083AF002FA4D70030A4D70034A6D8003AAA
          DA003FA9D70045B0E10054B7E500499EC40058BBE90062BFEA007ACFF7004EAB
          D7005BBCEB0068C2EE0076CBF4007BD0FB007ACEF8007DCFF80081D5FE0082D1
          FA008BD8FE007BCCF8007DCFFA007FCFFA0089D5FE000202023D5F63615C6002
          02020202020202023E425276756E67665E02020202020202462D2654686B626C
          716A0202020202022E31160D29655D6474714E02020202022F3517050E285B69
          6D6F4D020202020234513B180A0B395370734D0202020202322024251B231D27
          3A724E02020202021F073621060F1E2C30384F02020202020233120903040C2B
          3C474902020202020202020211101948442A4502020202020202020202020243
          570202020202020202025655020202405A0202020202020202024C4B0202023F
          59020202020202020202371C02020241580202020202020202020215081A504A
          02020202020202020202020214132202020202020202}
        Layout = blGlyphTop
        Margin = 10
        TabOrder = 5
        OnClick = bBloqueioClick
      end
      object bBloqueioPed: TBitBtn
        Left = 104
        Top = 286
        Width = 91
        Height = 54
        Caption = '&Liberar Planilha'
        Glyph.Data = {
          12030000424D1203000000000000120200002800000010000000100000000100
          08000000000000010000120B0000120B0000770000007700000000000000FFFF
          FF00FF00FF0080FCFF0066EDF800C1F6FC004ED8EB005AD1E0005DD5E50059CB
          DA00BBF2FA009FE6F20036C1DE009DE9F800A3F0FF002CBDE00031BBDC003AC1
          E00035A9C4003BAFCA003BADC70041B4CE007BD5EA009DDDED00E6F8FC002DB0
          D30035A6C70047B8D9004DC2E30053C1E00011A1CE00169FCC002CB0D9002382
          9F0035A7CC0045B7D90043AFD00051B8D70069CCE9006CCCE90069BAD4008BE0
          FC00078FC200078AB8000995C6000E9ACC00109ACC0019A1D300189ACA001AA4
          D4001A9FD0001C9ECA0023A9DA0028ACDC001D728F0033A1C9005EC2E7004893
          AD0086D9F700B5E1F000017FB2000286BD00038AC0000384B8000382B6000381
          B500058FC4000684B5000680B100078BC1000892C700088EC1000782B2000B8F
          C2000E90C4000F88BB001A9CCF001E9CCE001F9DCF00219FCF002799C5002FB0
          E10065C5ED0072C1E10089DAFA00016D9F000273A500037BAF000379AC000479
          AB000478AA0016658A00269ED1002083AF002FA4D70030A4D70034A6D8003AAA
          DA003FA9D70045B0E10054B7E500499EC40058BBE90062BFEA007ACFF7004EAB
          D7005BBCEB0068C2EE0076CBF4007BD0FB007ACEF8007DCFF80081D5FE0082D1
          FA008BD8FE007BCCF8007DCFFA007FCFFA0089D5FE000202023D5F63615C6002
          02020202020202023E425276756E67665E02020202020202462D2654686B626C
          716A0202020202022E31160D29655D6474714E02020202022F3517050E285B69
          6D6F4D020202020234513B180A0B395370734D0202020202322024251B231D27
          3A724E02020202021F073621060F1E2C30384F02020202020233120903040C2B
          3C474902020202020202020211101948442A4502020202020202020202020243
          570202020202020202025655020202405A0202020202020202024C4B0202023F
          59020202020202020202371C02020241580202020202020202020215081A504A
          02020202020202020202020214132202020202020202}
        Layout = blGlyphTop
        Margin = 10
        TabOrder = 6
        OnClick = bBloqueioPedClick
      end
    end
  end
  object tCodigo: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM Empresas')
    Left = 195
    Top = 363
    object tCodigoCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = '.'
      ReadOnly = True
    end
  end
  object tCopia: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT * FROM Empresas')
    FetchRows = 1
    Left = 257
    Top = 362
  end
  object SMTP: TIdSMTP
    Host = 'smtp.gmail.com'
    Password = 'vM/o7$9:H0fk'
    Port = 587
    SASLMechanisms = <>
    Username = 'nfe@nimofast.com'
    Left = 308
    Top = 604
  end
  object SSLSocket: TIdSSLIOHandlerSocketOpenSSL
    Destination = 'smtp.gmail.com:587'
    Host = 'smtp.gmail.com'
    MaxLineAction = maException
    Port = 587
    DefaultPort = 0
    SSLOptions.Method = sslvTLSv1_2
    SSLOptions.SSLVersions = [sslvTLSv1_2]
    SSLOptions.Mode = sslmClient
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 354
    Top = 605
  end
  object EmailMSg: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 411
    Top = 605
  end
end
