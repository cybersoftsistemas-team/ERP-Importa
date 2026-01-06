object Cadastro_Fornecedores: TCadastro_Fornecedores
  Left = 367
  Top = 62
  HelpContext = 107
  BorderStyle = bsDialog
  Caption = 'Cadastro de Fornecedores'
  ClientHeight = 680
  ClientWidth = 687
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
    Width = 687
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitLeft = 24
    ExplicitTop = 104
    ExplicitWidth = 675
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 115
    Height = 21
    Caption = 'FORNECEDORES'
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
    Width = 248
    Height = 18
    Caption = 'Manuten'#231#227'o da tabela de fornecedores.'
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
    Top = 650
    Width = 687
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      687
      30)
    object bSair: TButton
      Left = 613
      Top = 1
      Width = 74
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
      Width = 288
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsFornecedores
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
      Left = 289
      Top = 1
      Width = 66
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Caption = '&Pesquisa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bPesquisaClick
    end
    object bImportar: TButton
      Left = 355
      Top = 1
      Width = 93
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Caption = '&Importar Cliente'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bImportarClick
    end
    object bFiliais: TButton
      Left = 448
      Top = 1
      Width = 79
      Height = 28
      Caption = '&Exportar Filiais'
      TabOrder = 4
      OnClick = bFiliaisClick
    end
    object bPlano: TButton
      Left = 527
      Top = 1
      Width = 76
      Height = 28
      Hint = 'Importa do cadastro de fornecedores'
      Caption = 'Criar Con&tas'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Visible = False
      OnClick = bPlanoClick
    end
  end
  object pPaginas: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 49
    Width = 681
    Height = 598
    ActivePage = TabSheet1
    Align = alClient
    TabHeight = 24
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Dados do &Fornecedor'
      Enabled = False
      DesignSize = (
        673
        564)
      object Panel2: TPanel
        Left = 3
        Top = 3
        Width = 667
        Height = 557
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 0
        object SpeedButton1: TSpeedButton
          Left = 354
          Top = 3
          Width = 28
          Height = 25
          Hint = '  Atualiza os dados do endere'#231'o'
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFB9BCBD898D8F5651545C5A5C5D5E605E60635D595D303537474C4EDBDE
            DEEFF0F0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFF9FDFC494548967F81D0B7
            B8FFF3F2FFFFFFFFFFFFFFFFFFFFFFFFD9BEBFB08A8C2316175A61639D9EA1FF
            FFFFFFFFFFFFFFFF0000FFFFFF5D5155D9ADAEF3CED0FFE4E5C3B5B6CBC5C5D2
            D0D1D4D6D7C7C0C2F5D7D8E8B8B9E3A8A9584141545B5D9EA0A0FFFFFFFFFFFF
            0000584E52DBA8A9E1B6B879686B484146939697898C8D8384877B7C80767A7C
            4B4447544245D59EA0ECB0B0543F3F505556D9D9DAFFFFFF0000544045C49496
            565A5EE7EDEDCBD2D3676F76697175636A6D5B64674E5659CCD1D2B7BEBD303A
            3EA475778B64644E53556C6F70FFFFFF00002A1D22919093FFFFFF5F55608D66
            71DBA3ABD59EA4D1989ED29A9CDEA0A34F363A443336A5AEAF696E703F282855
            58595F6162C3C3C4000054575BFFFFFF776A73EDA9B4FFB0C7FFABC1FFA9BEFF
            A4AEFF9FA4FF9DA0FFA6A9FFAAAC5C3E41A4AAAB484A495152535F6061D4D4D4
            0000717376B2BBBFCB7E89FFBBCEF5CDDEFFD2E1FFAFC6FFA9BDFFA5ACFFA5A8
            FAA5A9D39C9C6F32293D464B6868674646486E6E6FFFFFFF00005C5E62FEFFFF
            775366FFB3CAFFEAF3FFFFFFDEB5CDC895AFBB858BB07D7D9C67627A3C323B15
            16959BA15E5B5E464748FFFFFFFFFFFF0000C7C7C9A1A2A4FFFFFF735884A084
            ACFFCDE3E49AB6CE7E99B56469A357507B413E3313179A9EA2808182A7A7A7FF
            FFFFFFFFFFFFFFFF0000FFFFFFBBBCBE919197E5E9ECFFFFFF6D699063618A59
            54706D786740444C6B6974B1B8BD6E797C1A2226939393FFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFD5D6D97F8089535466D0D2D4C8CBCBBCBEBFB2B4B8BABDBD
            8D99A14E606D949A989DA09D171F1A8A8B8AFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF94949B97989E98989B96999C9D9BA17D858EE5E7E8E9E8
            E98F8D8E0D1711141B1D878687FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7078760000004445433D474109
            12160D0C0C8989880000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF959B97535C5C5D6467313232040404151515
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF8687884E4F4F5352532828290000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF7B7B7B4444432F2F2F1919190000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6
            A6A68F8F8FEAEAEA0000}
          OnClick = SpeedButton1Click
        end
        object DBEdit1: TDBEdit
          Left = 110
          Top = 6
          Width = 67
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Codigo'
          DataSource = Dados.dsFornecedores
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnChange = DBEdit1Change
        end
        object cNome: TDBEdit
          Left = 110
          Top = 52
          Width = 387
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Nome'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 110
          Top = 190
          Width = 179
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Rua'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object DBEdit5: TDBEdit
          Left = 338
          Top = 190
          Width = 89
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Rua_Numero'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
        end
        object cBairro: TDBEdit
          Left = 267
          Top = 213
          Width = 226
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Bairro'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object DBEdit8: TDBEdit
          Left = 110
          Top = 213
          Width = 81
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CEP'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 9
          ParentFont = False
          TabOrder = 14
        end
        object DBEdit10: TDBEdit
          Left = 110
          Top = 328
          Width = 105
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Telefone1'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 24
        end
        object DBEdit11: TDBEdit
          Left = 217
          Top = 328
          Width = 105
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Telefone2'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 25
        end
        object DBEdit12: TDBEdit
          Left = 390
          Top = 328
          Width = 118
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Fax'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 14
          ParentFont = False
          TabOrder = 26
        end
        object cIE: TDBEdit
          Left = 110
          Top = 236
          Width = 129
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Inscricao_Estadual'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
          OnExit = cIEExit
          OnKeyPress = cIEKeyPress
        end
        object DBEdit21: TDBEdit
          Left = 110
          Top = 394
          Width = 554
          Height = 21
          DataField = 'Site'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          TabOrder = 27
        end
        object StaticText1: TStaticText
          Left = 6
          Top = 6
          Width = 102
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
          TabOrder = 29
          Transparent = False
          StyleElements = []
        end
        object StaticText2: TStaticText
          Left = 6
          Top = 52
          Width = 102
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
          TabOrder = 30
          Transparent = False
          StyleElements = []
        end
        object StaticText4: TStaticText
          Left = 6
          Top = 190
          Width = 102
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
          TabOrder = 31
          Transparent = False
          StyleElements = []
        end
        object StaticText5: TStaticText
          Left = 195
          Top = 213
          Width = 70
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
          TabOrder = 32
          Transparent = False
          StyleElements = []
        end
        object StaticText6: TStaticText
          Left = 292
          Top = 190
          Width = 44
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
          TabOrder = 33
          Transparent = False
          StyleElements = []
        end
        object StaticText7: TStaticText
          Left = 6
          Top = 167
          Width = 102
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
          TabOrder = 34
          Transparent = False
          StyleElements = []
        end
        object StaticText8: TStaticText
          Left = 6
          Top = 213
          Width = 102
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
          TabOrder = 35
          Transparent = False
          StyleElements = []
        end
        object StaticText9: TStaticText
          Left = 6
          Top = 144
          Width = 102
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
          TabOrder = 36
          Transparent = False
          StyleElements = []
        end
        object StaticText10: TStaticText
          Left = 6
          Top = 328
          Width = 102
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
          TabOrder = 37
          Transparent = False
          StyleElements = []
        end
        object StaticText11: TStaticText
          Left = 326
          Top = 328
          Width = 62
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
          TabOrder = 38
          Transparent = False
          StyleElements = []
        end
        object StaticText12: TStaticText
          Left = 180
          Top = 6
          Width = 35
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
          TabOrder = 39
          Transparent = False
          StyleElements = []
        end
        object StaticText13: TStaticText
          Left = 6
          Top = 236
          Width = 102
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
          TabOrder = 40
          Transparent = False
          StyleElements = []
        end
        object StaticText19: TStaticText
          Left = 6
          Top = 351
          Width = 102
          Height = 41
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
          TabOrder = 41
          Transparent = False
          StyleElements = []
        end
        object StaticText20: TStaticText
          Left = 6
          Top = 394
          Width = 102
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
          TabOrder = 42
          Transparent = False
          StyleElements = []
        end
        object StaticText3: TStaticText
          Left = 6
          Top = 121
          Width = 102
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Pa'#237's'
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
        object StaticText14: TStaticText
          Left = 357
          Top = 98
          Width = 70
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tipo Produto'
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
        object cTipoProduto: TDBLookupComboBox
          Left = 429
          Top = 98
          Width = 235
          Height = 21
          DataField = 'Tipo_Produto'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao'
          ListSource = Dados.dsTipoProduto
          NullValueKey = 46
          ParentFont = False
          TabOrder = 5
        end
        object cEstado: TDBLookupComboBox
          Left = 110
          Top = 144
          Width = 241
          Height = 21
          DataField = 'Estado'
          DataSource = Dados.dsFornecedores
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Nome'
          ListSource = Dados.dsEstados
          NullValueKey = 46
          ParentFont = False
          TabOrder = 7
          OnExit = cEstadoExit
        end
        object StaticText15: TStaticText
          Left = 6
          Top = 98
          Width = 102
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Ramo de Atividade'
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
        object cCNPJ: TDBEdit
          Left = 216
          Top = 6
          Width = 138
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CNPJ'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 18
          ParentFont = False
          TabOrder = 15
          OnExit = cCNPJExit
        end
        object cNomeFantasia: TDBEdit
          Left = 110
          Top = 75
          Width = 387
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Nome_Fantasia'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object StaticText16: TStaticText
          Left = 6
          Top = 75
          Width = 102
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
          TabOrder = 46
          Transparent = False
          StyleElements = []
        end
        object DBEdit2: TDBEdit
          Left = 110
          Top = 282
          Width = 138
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Inscricao_Municipal'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
        end
        object StaticText17: TStaticText
          Left = 6
          Top = 282
          Width = 102
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
          TabOrder = 47
          Transparent = False
          StyleElements = []
        end
        object cIsento: TDBCheckBox
          Left = 243
          Top = 238
          Width = 54
          Height = 17
          Caption = 'Isento'
          DataField = 'Isento'
          DataSource = Dados.dsFornecedores
          TabOrder = 17
          OnClick = cIsentoClick
        end
        object DBEdit3: TDBEdit
          Left = 315
          Top = 305
          Width = 129
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RG'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 22
          OnExit = cIEExit
        end
        object StaticText18: TStaticText
          Left = 6
          Top = 305
          Width = 102
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
          TabOrder = 48
          Transparent = False
          StyleElements = []
        end
        object StaticText21: TStaticText
          Left = 251
          Top = 305
          Width = 62
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'RG'
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
        object cCPF: TDBEdit
          Left = 110
          Top = 305
          Width = 138
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CPF'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 21
          OnExit = cCPFExit
        end
        object cMunicipio: TDBLookupComboBox
          Left = 110
          Top = 167
          Width = 241
          Height = 21
          DataField = 'Municipio_Codigo'
          DataSource = Dados.dsFornecedores
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Nome'
          ListSource = Dados.dsMunicipios
          NullValueKey = 46
          ParentFont = False
          TabOrder = 9
          OnExit = cEstadoExit
        end
        object StaticText32: TStaticText
          Left = 251
          Top = 282
          Width = 62
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'SUFRAMA'
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
        object DBEdit16: TDBEdit
          Left = 315
          Top = 282
          Width = 129
          Height = 21
          CharCase = ecUpperCase
          DataField = 'SUFRAMA'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 20
        end
        object cRamoAtividade: TDBLookupComboBox
          Left = 110
          Top = 98
          Width = 241
          Height = 21
          DataField = 'Ramo_Atividade'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsRamoAtividade
          NullValueKey = 46
          ParentFont = False
          TabOrder = 4
          OnEnter = cRamoAtividadeExit
          OnExit = cRamoAtividadeExit
        end
        object cPais: TRxDBLookupCombo
          Left = 110
          Top = 121
          Width = 241
          Height = 21
          DropDownCount = 8
          DataField = 'Pais'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Nome'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsPaises
          ParentFont = False
          TabOrder = 6
          OnChange = cPaisChange
        end
        object StaticText27: TStaticText
          Left = 429
          Top = 190
          Width = 72
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
          TabOrder = 51
          Transparent = False
          StyleElements = []
        end
        object DBEdit15: TDBEdit
          Left = 503
          Top = 190
          Width = 161
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Complemento'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
        end
        object StaticText29: TStaticText
          Left = 6
          Top = 417
          Width = 102
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Observa'#231#227'o'
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
        object DBMemo1: TDBMemo
          Left = 110
          Top = 417
          Width = 554
          Height = 21
          DataField = 'Observacao'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 28
        end
        object cAtivo: TDBCheckBox
          Left = 7
          Top = 534
          Width = 103
          Height = 17
          Caption = 'Fornecedor Ativo'
          DataField = 'Ativo'
          DataSource = Dados.dsFornecedores
          TabOrder = 1
        end
        object StaticText116: TStaticText
          Left = 6
          Top = 259
          Width = 102
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Indicador da IE'
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
        object cIndicadorIE: TRxDBComboBox
          Left = 110
          Top = 259
          Width = 554
          Height = 21
          DataField = 'Indicador_IE'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            '1|Contribuinte ICMS'
            
              '2|Contribuinte isento de Inscri'#231#227'o no cadastro de Contribuintes ' +
              'do ICMS'
            
              '9|N'#227'o Contribuinte, pode ou n'#227'o possuir IE no Cadastro de Contri' +
              'b.ICMS.')
          ParentFont = False
          TabOrder = 18
          Values.Strings = (
            '1'
            '2'
            '9')
        end
        object StaticText115: TStaticText
          Left = 446
          Top = 305
          Width = 61
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Passaporte'
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
        object DBEdit82: TDBEdit
          Left = 509
          Top = 305
          Width = 155
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Passaporte'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 23
          OnExit = cCPFExit
        end
        object DBCheckBox1: TDBCheckBox
          Left = 116
          Top = 534
          Width = 84
          Height = 17
          Caption = 'Zona Franca'
          DataField = 'Zona_Franca'
          DataSource = Dados.dsFornecedores
          TabOrder = 55
          OnClick = cIsentoClick
        end
        object DBCheckBox6: TDBCheckBox
          Left = 312
          Top = 534
          Width = 41
          Height = 17
          Caption = 'MEI'
          DataField = 'MEI'
          DataSource = Dados.dsFornecedores
          TabOrder = 56
        end
        object DBCheckBox2: TDBCheckBox
          Left = 203
          Top = 534
          Width = 104
          Height = 17
          Caption = 'Simples Nacional'
          DataField = 'Simples'
          DataSource = Dados.dsFornecedores
          TabOrder = 57
        end
        object StaticText43: TStaticText
          Left = 6
          Top = 440
          Width = 102
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Valor do Servi'#231'o'
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
        object DBEdit29: TDBEdit
          Left = 110
          Top = 440
          Width = 134
          Height = 21
          DataField = 'Valor_Servico'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 59
        end
        object StaticText44: TStaticText
          Left = 6
          Top = 463
          Width = 102
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Contato'
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
        object DBEdit30: TDBEdit
          Left = 110
          Top = 463
          Width = 554
          Height = 21
          DataField = 'Contato'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 61
        end
        object DBCheckBox3: TDBCheckBox
          Left = 359
          Top = 534
          Width = 104
          Height = 17
          Caption = 'Micro Empresa'
          DataField = 'Micro_Empresa'
          DataSource = Dados.dsFornecedores
          TabOrder = 62
        end
        object RxDBComboBox1: TRxDBComboBox
          Left = 110
          Top = 486
          Width = 554
          Height = 21
          DataField = 'Vinculo_CompVend'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'N'#227'o h'#225' vincula'#231#227'o'
            
              'H'#225' vincula'#231#227'o, mas este n'#227'o teve influ'#234'ncia sobre o pre'#231'o da mer' +
              'cadoria'
            
              'H'#225' vincula'#231#227'o, e esta vincul'#231#227'o influ'#234'nciou no pre'#231'o da mercador' +
              'ia')
          ParentFont = False
          TabOrder = 63
          Values.Strings = (
            '0'
            '1'
            '2')
        end
        object StaticText26: TStaticText
          Left = 6
          Top = 486
          Width = 102
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Vinculo Comp/Vend'
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
        object RxDBComboBox2: TRxDBComboBox
          Left = 110
          Top = 509
          Width = 554
          Height = 21
          DataField = 'Relacao_ExpFab'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'O Fabricante/Produtor '#233' o Exportado'
            'O Fabricante/Produtor n'#227'o '#233' o Exportado'
            'O Fabricante/Produtor o desconhecido')
          ParentFont = False
          TabOrder = 65
          Values.Strings = (
            '0'
            '1'
            '2')
        end
        object StaticText45: TStaticText
          Left = 6
          Top = 509
          Width = 102
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Rela'#231#227'o Export/Fabr'
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
        object StaticText46: TStaticText
          Left = 357
          Top = 167
          Width = 70
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Mun.Nome'
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
        object DBEdit14: TDBEdit
          Left = 429
          Top = 167
          Width = 235
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Municipio'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 68
        end
        object lEstadoEX: TStaticText
          Left = 357
          Top = 144
          Width = 70
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Estado.Nome'
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
        object cEstadoEX: TDBEdit
          Left = 429
          Top = 144
          Width = 235
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Estado_Nome'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit17: TDBEdit
          Left = 110
          Top = 29
          Width = 226
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Codigo_DUIMP'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 70
          OnChange = DBEdit1Change
        end
        object StaticText47: TStaticText
          Left = 6
          Top = 29
          Width = 102
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
          TabOrder = 71
          Transparent = False
          StyleElements = []
        end
        object DBEdit31: TDBEdit
          Left = 505
          Top = 29
          Width = 160
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Ident_Operador'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 72
          OnChange = DBEdit1Change
        end
        object StaticText48: TStaticText
          Left = 386
          Top = 29
          Width = 117
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Identifica'#231#227'o Operador'
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
        object DBCheckBox4: TDBCheckBox
          Left = 458
          Top = 534
          Width = 197
          Height = 17
          Caption = 'N'#227'o enviar E-Mail de NFe autom'#225'tico'
          DataField = 'Enviar_Email'
          DataSource = Dados.dsFornecedores
          TabOrder = 74
        end
        object DBMemo2: TDBMemo
          Left = 110
          Top = 351
          Width = 554
          Height = 41
          DataField = 'Email'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 75
        end
        object DBEdit20: TDBEdit
          Left = 505
          Top = 6
          Width = 160
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Codigo_Estrangeiro'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 76
          OnChange = DBEdit1Change
        end
        object StaticText49: TStaticText
          Left = 386
          Top = 6
          Width = 117
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'C'#243'd.Oper.Estrangeiro'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 77
          Transparent = False
          StyleElements = []
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Dados &Banc'#225'rios'
      ImageIndex = -1
      object StaticText22: TStaticText
        Left = 14
        Top = 8
        Width = 102
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Banco'
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
      object DBEdit6: TDBEdit
        Left = 117
        Top = 8
        Width = 243
        Height = 21
        DataField = 'Banco_Nome'
        DataSource = Dados.dsFornecedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object StaticText23: TStaticText
        Left = 14
        Top = 31
        Width = 102
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
        TabOrder = 2
        Transparent = False
        StyleElements = []
      end
      object DBEdit7: TDBEdit
        Left = 117
        Top = 31
        Width = 243
        Height = 21
        DataField = 'Banco_Conta'
        DataSource = Dados.dsFornecedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit9: TDBEdit
        Left = 117
        Top = 54
        Width = 243
        Height = 21
        DataField = 'Banco_Agencia'
        DataSource = Dados.dsFornecedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object StaticText24: TStaticText
        Left = 14
        Top = 54
        Width = 102
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Ag'#234'ncia'
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
      object StaticText41: TStaticText
        Left = 14
        Top = 77
        Width = 102
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Swift Code'
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
      object DBEdit27: TDBEdit
        Left = 117
        Top = 77
        Width = 243
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Swift_Code'
        DataSource = Dados.dsFornecedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object StaticText42: TStaticText
        Left = 14
        Top = 100
        Width = 102
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#250'mero IBAN'
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
      object DBEdit28: TDBEdit
        Left = 117
        Top = 100
        Width = 243
        Height = 21
        CharCase = ecUpperCase
        DataField = 'IBAN'
        DataSource = Dados.dsFornecedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
    end
    object TabSheet6: TTabSheet
      Caption = '&Outros Dados'
      ImageIndex = 5
      object GroupBox2: TGroupBox
        Left = 19
        Top = 22
        Width = 625
        Height = 89
        Caption = 'Layout de captura dos dados do lote da NF-E'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object StaticText35: TStaticText
          Left = 7
          Top = 15
          Width = 102
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Numero do Lote'
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
        object DBEdit19: TDBEdit
          Left = 111
          Top = 15
          Width = 248
          Height = 21
          DataField = 'LayoutLote_Numero'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object StaticText36: TStaticText
          Left = 7
          Top = 38
          Width = 102
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Data de Fabrica'#231#227'o'
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
        object DBEdit22: TDBEdit
          Left = 111
          Top = 38
          Width = 248
          Height = 21
          DataField = 'LayoutLote_Fabricacao'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object StaticText37: TStaticText
          Left = 7
          Top = 61
          Width = 102
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Data de Validade'
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
        object DBEdit23: TDBEdit
          Left = 111
          Top = 61
          Width = 248
          Height = 21
          DataField = 'LayoutLote_Validade'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
      end
      object GroupBox3: TGroupBox
        Left = 19
        Top = 126
        Width = 625
        Height = 123
        Caption = 'Configura'#231#245'es de FTP/API'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object StaticText38: TStaticText
          Left = 7
          Top = 18
          Width = 102
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Usu'#225'rio'
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
        object DBEdit24: TDBEdit
          Left = 111
          Top = 18
          Width = 248
          Height = 21
          DataField = 'FTP_Usuario'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object StaticText39: TStaticText
          Left = 7
          Top = 41
          Width = 102
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
          TabOrder = 2
          Transparent = False
          StyleElements = []
        end
        object DBEdit25: TDBEdit
          Left = 111
          Top = 41
          Width = 248
          Height = 21
          DataField = 'FTP_Senha'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object StaticText40: TStaticText
          Left = 7
          Top = 64
          Width = 102
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Endere'#231'o (IP/URL)'
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
        object DBEdit26: TDBEdit
          Left = 111
          Top = 64
          Width = 500
          Height = 21
          DataField = 'FTP_IP'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object DBCheckBox23: TDBCheckBox
          Left = 8
          Top = 98
          Width = 89
          Height = 17
          Caption = 'Passive mode'
          DataField = 'FTP_Passive'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
      end
      object GroupBox4: TGroupBox
        Left = 19
        Top = 270
        Width = 625
        Height = 140
        Caption = 'Dados de Representantes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object lComissao: TStaticText
          Left = 7
          Top = 88
          Width = 102
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Comiss'#227'o Venda'
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
        object cComissao: TDBEdit
          Left = 111
          Top = 88
          Width = 58
          Height = 21
          DataField = 'Comissao'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object lRegiao: TStaticText
          Left = 7
          Top = 65
          Width = 102
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Regi'#227'o'
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
        object cRegiao: TRxDBComboBox
          Left = 111
          Top = 65
          Width = 248
          Height = 21
          DataField = 'Regiao'
          DataSource = Dados.dsFornecedores
          DropDownCount = 5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'CENTRO OESTE'
            'NORDESTE'
            'NORTE'
            'SUDESTE'
            'SUL')
          ParentFont = False
          TabOrder = 0
          Values.Strings = (
            'CO'
            'NE'
            'N'
            'SE'
            'S')
        end
        object lComissaoGerencia: TStaticText
          Left = 7
          Top = 111
          Width = 102
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Comiss'#227'o Gerencia'
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
        object cComissaoGerencia: TDBEdit
          Left = 111
          Top = 111
          Width = 58
          Height = 21
          DataField = 'Comissao_Gerencia'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object cRepCodigo: TDBEdit
          Left = 111
          Top = 19
          Width = 124
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Representante_Codigo'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object StaticText30: TStaticText
          Left = 7
          Top = 19
          Width = 102
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'C'#243'd.Representante'
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
        object StaticText31: TStaticText
          Left = 7
          Top = 42
          Width = 102
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
          TabOrder = 8
          Transparent = False
          StyleElements = []
        end
        object DBEdit18: TDBEdit
          Left = 111
          Top = 42
          Width = 248
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Representante_Senha'
          DataSource = Dados.dsFornecedores
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&Contabeis'
      ImageIndex = 1
      object Panel6: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 667
        Height = 106
        Align = alTop
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 0
        object SpeedButton5: TSpeedButton
          Left = 616
          Top = 30
          Width = 28
          Height = 24
          Hint = '  Atualiza os dados do endere'#231'o'
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFB9BCBD898D8F5651545C5A5C5D5E605E60635D595D303537474C4EDBDE
            DEEFF0F0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFF9FDFC494548967F81D0B7
            B8FFF3F2FFFFFFFFFFFFFFFFFFFFFFFFD9BEBFB08A8C2316175A61639D9EA1FF
            FFFFFFFFFFFFFFFF0000FFFFFF5D5155D9ADAEF3CED0FFE4E5C3B5B6CBC5C5D2
            D0D1D4D6D7C7C0C2F5D7D8E8B8B9E3A8A9584141545B5D9EA0A0FFFFFFFFFFFF
            0000584E52DBA8A9E1B6B879686B484146939697898C8D8384877B7C80767A7C
            4B4447544245D59EA0ECB0B0543F3F505556D9D9DAFFFFFF0000544045C49496
            565A5EE7EDEDCBD2D3676F76697175636A6D5B64674E5659CCD1D2B7BEBD303A
            3EA475778B64644E53556C6F70FFFFFF00002A1D22919093FFFFFF5F55608D66
            71DBA3ABD59EA4D1989ED29A9CDEA0A34F363A443336A5AEAF696E703F282855
            58595F6162C3C3C4000054575BFFFFFF776A73EDA9B4FFB0C7FFABC1FFA9BEFF
            A4AEFF9FA4FF9DA0FFA6A9FFAAAC5C3E41A4AAAB484A495152535F6061D4D4D4
            0000717376B2BBBFCB7E89FFBBCEF5CDDEFFD2E1FFAFC6FFA9BDFFA5ACFFA5A8
            FAA5A9D39C9C6F32293D464B6868674646486E6E6FFFFFFF00005C5E62FEFFFF
            775366FFB3CAFFEAF3FFFFFFDEB5CDC895AFBB858BB07D7D9C67627A3C323B15
            16959BA15E5B5E464748FFFFFFFFFFFF0000C7C7C9A1A2A4FFFFFF735884A084
            ACFFCDE3E49AB6CE7E99B56469A357507B413E3313179A9EA2808182A7A7A7FF
            FFFFFFFFFFFFFFFF0000FFFFFFBBBCBE919197E5E9ECFFFFFF6D699063618A59
            54706D786740444C6B6974B1B8BD6E797C1A2226939393FFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFD5D6D97F8089535466D0D2D4C8CBCBBCBEBFB2B4B8BABDBD
            8D99A14E606D949A989DA09D171F1A8A8B8AFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF94949B97989E98989B96999C9D9BA17D858EE5E7E8E9E8
            E98F8D8E0D1711141B1D878687FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7078760000004445433D474109
            12160D0C0C8989880000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF959B97535C5C5D6467313232040404151515
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF8687884E4F4F5352532828290000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF7B7B7B4444432F2F2F1919190000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6
            A6A68F8F8FEAEAEA0000}
          OnClick = SpeedButton2Click
        end
        object SpeedButton6: TSpeedButton
          Left = 616
          Top = 53
          Width = 28
          Height = 24
          Hint = '  Atualiza os dados do endere'#231'o'
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFB9BCBD898D8F5651545C5A5C5D5E605E60635D595D303537474C4EDBDE
            DEEFF0F0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFF9FDFC494548967F81D0B7
            B8FFF3F2FFFFFFFFFFFFFFFFFFFFFFFFD9BEBFB08A8C2316175A61639D9EA1FF
            FFFFFFFFFFFFFFFF0000FFFFFF5D5155D9ADAEF3CED0FFE4E5C3B5B6CBC5C5D2
            D0D1D4D6D7C7C0C2F5D7D8E8B8B9E3A8A9584141545B5D9EA0A0FFFFFFFFFFFF
            0000584E52DBA8A9E1B6B879686B484146939697898C8D8384877B7C80767A7C
            4B4447544245D59EA0ECB0B0543F3F505556D9D9DAFFFFFF0000544045C49496
            565A5EE7EDEDCBD2D3676F76697175636A6D5B64674E5659CCD1D2B7BEBD303A
            3EA475778B64644E53556C6F70FFFFFF00002A1D22919093FFFFFF5F55608D66
            71DBA3ABD59EA4D1989ED29A9CDEA0A34F363A443336A5AEAF696E703F282855
            58595F6162C3C3C4000054575BFFFFFF776A73EDA9B4FFB0C7FFABC1FFA9BEFF
            A4AEFF9FA4FF9DA0FFA6A9FFAAAC5C3E41A4AAAB484A495152535F6061D4D4D4
            0000717376B2BBBFCB7E89FFBBCEF5CDDEFFD2E1FFAFC6FFA9BDFFA5ACFFA5A8
            FAA5A9D39C9C6F32293D464B6868674646486E6E6FFFFFFF00005C5E62FEFFFF
            775366FFB3CAFFEAF3FFFFFFDEB5CDC895AFBB858BB07D7D9C67627A3C323B15
            16959BA15E5B5E464748FFFFFFFFFFFF0000C7C7C9A1A2A4FFFFFF735884A084
            ACFFCDE3E49AB6CE7E99B56469A357507B413E3313179A9EA2808182A7A7A7FF
            FFFFFFFFFFFFFFFF0000FFFFFFBBBCBE919197E5E9ECFFFFFF6D699063618A59
            54706D786740444C6B6974B1B8BD6E797C1A2226939393FFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFD5D6D97F8089535466D0D2D4C8CBCBBCBEBFB2B4B8BABDBD
            8D99A14E606D949A989DA09D171F1A8A8B8AFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF94949B97989E98989B96999C9D9BA17D858EE5E7E8E9E8
            E98F8D8E0D1711141B1D878687FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7078760000004445433D474109
            12160D0C0C8989880000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF959B97535C5C5D6467313232040404151515
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF8687884E4F4F5352532828290000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF7B7B7B4444432F2F2F1919190000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6
            A6A68F8F8FEAEAEA0000}
          OnClick = SpeedButton3Click
        end
        object SpeedButton7: TSpeedButton
          Left = 616
          Top = 76
          Width = 28
          Height = 24
          Hint = '  Atualiza os dados do endere'#231'o'
          Glyph.Data = {
            26040000424D2604000000000000360000002800000012000000120000000100
            180000000000F003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFB9BCBD898D8F5651545C5A5C5D5E605E60635D595D303537474C4EDBDE
            DEEFF0F0FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFF9FDFC494548967F81D0B7
            B8FFF3F2FFFFFFFFFFFFFFFFFFFFFFFFD9BEBFB08A8C2316175A61639D9EA1FF
            FFFFFFFFFFFFFFFF0000FFFFFF5D5155D9ADAEF3CED0FFE4E5C3B5B6CBC5C5D2
            D0D1D4D6D7C7C0C2F5D7D8E8B8B9E3A8A9584141545B5D9EA0A0FFFFFFFFFFFF
            0000584E52DBA8A9E1B6B879686B484146939697898C8D8384877B7C80767A7C
            4B4447544245D59EA0ECB0B0543F3F505556D9D9DAFFFFFF0000544045C49496
            565A5EE7EDEDCBD2D3676F76697175636A6D5B64674E5659CCD1D2B7BEBD303A
            3EA475778B64644E53556C6F70FFFFFF00002A1D22919093FFFFFF5F55608D66
            71DBA3ABD59EA4D1989ED29A9CDEA0A34F363A443336A5AEAF696E703F282855
            58595F6162C3C3C4000054575BFFFFFF776A73EDA9B4FFB0C7FFABC1FFA9BEFF
            A4AEFF9FA4FF9DA0FFA6A9FFAAAC5C3E41A4AAAB484A495152535F6061D4D4D4
            0000717376B2BBBFCB7E89FFBBCEF5CDDEFFD2E1FFAFC6FFA9BDFFA5ACFFA5A8
            FAA5A9D39C9C6F32293D464B6868674646486E6E6FFFFFFF00005C5E62FEFFFF
            775366FFB3CAFFEAF3FFFFFFDEB5CDC895AFBB858BB07D7D9C67627A3C323B15
            16959BA15E5B5E464748FFFFFFFFFFFF0000C7C7C9A1A2A4FFFFFF735884A084
            ACFFCDE3E49AB6CE7E99B56469A357507B413E3313179A9EA2808182A7A7A7FF
            FFFFFFFFFFFFFFFF0000FFFFFFBBBCBE919197E5E9ECFFFFFF6D699063618A59
            54706D786740444C6B6974B1B8BD6E797C1A2226939393FFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFD5D6D97F8089535466D0D2D4C8CBCBBCBEBFB2B4B8BABDBD
            8D99A14E606D949A989DA09D171F1A8A8B8AFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF94949B97989E98989B96999C9D9BA17D858EE5E7E8E9E8
            E98F8D8E0D1711141B1D878687FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7078760000004445433D474109
            12160D0C0C8989880000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF959B97535C5C5D6467313232040404151515
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF8687884E4F4F5352532828290000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF7B7B7B4444432F2F2F1919190000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6
            A6A68F8F8FEAEAEA0000}
          OnClick = SpeedButton4Click
        end
        object StaticText142: TStaticText
          Left = 11
          Top = 32
          Width = 104
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Conta Passivo'
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
        object DBEdit13: TDBEdit
          Left = 117
          Top = 32
          Width = 63
          Height = 21
          DataField = 'Conta_Passivo'
          DataSource = Dados.dsFornecedoresModal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object StaticText143: TStaticText
          Left = 11
          Top = 55
          Width = 104
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Conta Adiantamento'
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
        object DBEdit102: TDBEdit
          Left = 117
          Top = 55
          Width = 63
          Height = 21
          DataField = 'Conta_Adiantamento'
          DataSource = Dados.dsFornecedoresModal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object StaticText144: TStaticText
          Left = 11
          Top = 78
          Width = 104
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Conta Devolu'#231#227'o'
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
        object DBEdit103: TDBEdit
          Left = 117
          Top = 78
          Width = 63
          Height = 21
          DataField = 'Conta_Devolucao'
          DataSource = Dados.dsFornecedoresModal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 182
          Top = 32
          Width = 434
          Height = 21
          DataField = 'Conta_Passivo'
          DataSource = Dados.dsFornecedoresModal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Conta;Codigo;Descricao'
          ListFieldIndex = 2
          ListSource = dmContab.dsPlanoContas
          ParentFont = False
          TabOrder = 7
        end
        object DBLookupComboBox19: TDBLookupComboBox
          Left = 182
          Top = 55
          Width = 434
          Height = 21
          DataField = 'Conta_Adiantamento'
          DataSource = Dados.dsFornecedoresModal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Conta;Codigo;Descricao'
          ListFieldIndex = 2
          ListSource = dmContab.dsPlanoContas
          ParentFont = False
          TabOrder = 8
        end
        object DBLookupComboBox20: TDBLookupComboBox
          Left = 182
          Top = 78
          Width = 434
          Height = 21
          DataField = 'Conta_Devolucao'
          DataSource = Dados.dsFornecedoresModal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Conta;Codigo;Descricao'
          ListFieldIndex = 2
          ListSource = dmContab.dsPlanoContas
          ParentFont = False
          TabOrder = 9
        end
        object StaticText25: TStaticText
          Left = 11
          Top = 9
          Width = 104
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Modalidade'
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
        object cCodModal: TDBLookupComboBox
          Left = 117
          Top = 9
          Width = 209
          Height = 21
          DataField = 'Codigo'
          DataSource = Dados.dsFornecedoresModal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao'
          ListFieldIndex = 2
          ListSource = Dados.dsTiposProcesso
          ParentFont = False
          TabOrder = 1
        end
      end
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 156
        Width = 667
        Height = 30
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 1
        object NavegaConta: TDBNavigator
          Left = 2
          Top = 1
          Width = 261
          Height = 28
          Cursor = crHandPoint
          DataSource = Dados.dsFornecedoresModal
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
          ConfirmDelete = False
          ShowHint = True
          TabOrder = 0
          BeforeAction = NavegaContaBeforeAction
          OnClick = NavegaContaClick
        end
        object Button1: TButton
          Left = 263
          Top = 1
          Width = 76
          Height = 28
          Hint = 'Importa do cadastro de fornecedores'
          Caption = 'Criar Con&tas'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Visible = False
          OnClick = bPlanoClick
        end
      end
      object GradeModal: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 192
        Width = 667
        Height = 369
        Align = alBottom
        DataSource = Dados.dsFornecedoresModal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
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
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 310
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Conta_Passivo'
            Title.Alignment = taCenter
            Title.Caption = 'Conta Passivo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Conta_Adiantamento'
            Title.Alignment = taCenter
            Title.Caption = 'Conta Adiant'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Conta_Devolucao'
            Title.Alignment = taCenter
            Title.Caption = 'Conta Devol'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 110
            Visible = True
          end>
      end
    end
    object TabSheet5: TTabSheet
      Caption = '&Documentos'
      Enabled = False
      ImageIndex = 4
      object cListaDOC: TListBox
        Left = 0
        Top = 0
        Width = 729
        Height = 487
        Cursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ItemHeight = 15
        ParentFont = False
        Sorted = True
        TabOrder = 0
        OnDblClick = cListaDOCDblClick
      end
      object bDocumento: TBitBtn
        Left = 365
        Top = 493
        Width = 157
        Height = 49
        Caption = 'Adicionar &Documento'
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          20000000000000100000C40E0000C40E00000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000FF000000FF000000FF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000FF000000FF0092DCFF0092DCFF000000FF0000
          00FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000FF000000FF0092DCFF00AAFFFF00AAFFFF00AAFFFF000000FF0000
          00FF6E6E6EFF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000FF0000
          00FF0092DCFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF000000FF0000
          00FF6E6E6EFF929292FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000FF0092DCFF00AA
          FFFF00AAFFFF00AAFFFF48B8FFFF48B8FFFF00AAFFFF0092DCFF000000FF0000
          00FF6E6E6EFF6E6E6EFF929292FF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000FF000000FF0092DCFF00AAFFFF00AA
          FFFF48B8FFFF48B8FFFF48B8FFFF48B8FFFF00AAFFFF000000FFAAAAAAFF0000
          00FF262626FF6E6E6EFF7A7A7AFF929292FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000FF000000FF0092DCFF00AAFFFF00AAFFFF00AAFFFF00AA
          FFFF48B8FFFF48B8FFFF48B8FFFF48B8FFFF00AAFFFF000000FFAAAAAAFF0000
          00FF262626FF6E6E6EFF6E6E6EFF7A7A7AFF929292FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00FF000000FF0092DCFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AA
          FFFF48B8FFFF48B8FFFF48B8FFFF48B8FFFF00AAFFFF000000FFCECECEFF1A1A
          1AFF000000FF6E6E6EFF7A7A7AFF7A7A7AFF7A7A7AFF929292FF000000000000
          0000000000000000000000000000000000000000000000000000000000FF0092
          DCFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF48B8
          FFFF48B8FFFF48B8FFFF48B8FFFF00AAFFFF00AAFFFF000000FFCECECEFF1A1A
          1AFF000000FF6E6E6EFF7A7A7AFF929292FF929292FF00000000000000000000
          000000000000000000000000000000000000000000FF000000FF0092DCFF00AA
          FFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF48B8FFFF48B8
          FFFF6BC6FFFF48B8FFFF48B8FFFF00AAFFFF0092DCFF000000FFCECECEFF0000
          00FF000000FF6E6E6EFF9E9E9EFF000000000000000000000000000000000000
          0000000000000000000000000000000000FF0092DCFF00AAFFFF00AAFFFF00AA
          FFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF48B8FFFF48B8
          FFFF6BC6FFFF48B8FFFF48B8FFFF00AAFFFF000000FF868686FFDADADAFF0000
          00FF000000FF6E6E6EFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000FF00AAFFFF00AAFFFF00AAFFFF00AA
          FFFF00AAFFFF00AAFFFF00AAFFFF00AAFFFF48B8FFFF48B8FFFF48B8FFFF6BC6
          FFFF6BC6FFFF48B8FFFF48B8FFFF00AAFFFF000000FFDADADAFFDADADAFF0000
          00FF006296FF000000FF00000000000000000000000000000000000000000000
          00000000000000000000000000FF0092DCFF00AAFFFF00AAFFFF00AAFFFF00AA
          FFFF00AAFFFF00AAFFFF48B8FFFF48B8FFFF48B8FFFF48B8FFFF6BC6FFFF6BC6
          FFFF6BC6FFFF48B8FFFF48B8FFFF00AAFFFF000000FFDADADAFFE6E6E6FF0000
          00FF006296FF000000FF00000000000000000000000000000000000000000000
          00000000000000000000000000FF00AAFFFF00AAFFFF00AAFFFF00AAFFFF00AA
          FFFF00AAFFFF00AAFFFF48B8FFFF48B8FFFF48B8FFFF6BC6FFFF6BC6FFFF6BC6
          FFFF6BC6FFFF48B8FFFF00AAFFFF00AAFFFF000000FFDADADAFFE6E6E6FF0000
          00FF006296FF000000FF00000000000000000000000000000000000000000000
          00000000000000000000000000FF00AAFFFF00AAFFFF00AAFFFF00AAFFFF48B8
          FFFF48B8FFFF48B8FFFF48B8FFFF48B8FFFF6BC6FFFF6BC6FFFF6BC6FFFF6BC6
          FFFF48B8FFFF48B8FFFF00AAFFFF00AAFFFF000000FFDADADAFFE6E6E6FF0000
          00FF006296FF006296FF000000FF000000000000000000000000000000000000
          00000000000000000000000000FF00AAFFFF00AAFFFF48B8FFFF48B8FFFF48B8
          FFFF48B8FFFF48B8FFFF48B8FFFF6BC6FFFF6BC6FFFF6BC6FFFF6BC6FFFF6BC6
          FFFF48B8FFFF48B8FFFF00AAFFFF00AAFFFF000000FFDADADAFFE6E6E6FF0000
          00FF006296FF006296FF000000FF000000000000000000000000000000000000
          000000000000000000FF0092DCFF00AAFFFF48B8FFFF48B8FFFF48B8FFFF48B8
          FFFF48B8FFFF6BC6FFFF6BC6FFFF6BC6FFFF6BC6FFFF6BC6FFFF6BC6FFFF48B8
          FFFF48B8FFFF48B8FFFF00AAFFFF00AAFFFF000000FFDADADAFFE6E6E6FFAAAA
          AAFF000000FF006296FF000000FF000000000000000000000000000000000000
          000000000000000000FF00AAFFFF00AAFFFF48B8FFFF6BC6FFFF6BC6FFFF6BC6
          FFFF6BC6FFFF6BC6FFFF6BC6FFFF6BC6FFFF6BC6FFFF48B8FFFF48B8FFFF48B8
          FFFF48B8FFFF48B8FFFF00AAFFFF0092DCFF000000FFDADADAFFFFFFFFFFFFFF
          FFFF000000FF006296FF007AB9FF000000FF0000000000000000000000000000
          000000000000000000FF00AAFFFF00AAFFFF48B8FFFF6BC6FFFF6BC6FFFF6BC6
          FFFF6BC6FFFF6BC6FFFF6BC6FFFF6BC6FFFF48B8FFFF48B8FFFF48B8FFFF48B8
          FFFF00AAFFFF00AAFFFF0092DCFF000000FFDADADAFFDADADAFFF2F2F2FFFFFF
          FFFF000000FF006296FF007AB9FF000000FF0000000000000000000000000000
          0000000000FF0092DCFF00AAFFFF48B8FFFF6BC6FFFF6BC6FFFF6BC6FFFF6BC6
          FFFF6BC6FFFF6BC6FFFF48B8FFFF48B8FFFF48B8FFFF48B8FFFF00AAFFFF00AA
          FFFF0092DCFF000000FF000000FFDADADAFFE6E6E6FFE6E6E6FFFFFFFFFFFFFF
          FFFF000000FF006296FF007AB9FF000000FF0000000000000000000000000000
          0000000000FF00AAFFFF48B8FFFF48B8FFFF48B8FFFF6BC6FFFF6BC6FFFF6BC6
          FFFF6BC6FFFF48B8FFFF48B8FFFF48B8FFFF00AAFFFF0092DCFF000000FF0000
          00FF000000FFDADADAFFE6E6E6FFE6E6E6FFE6E6E6FFFFFFFFFFFFFFFFFFFFFF
          FFFF000000FF006296FF007AB9FF000000FF0000000000000000000000000000
          0000000000FF00AAFFFF48B8FFFF6BC6FFFF6BC6FFFF6BC6FFFF6BC6FFFF48B8
          FFFF48B8FFFF00AAFFFF0092DCFF000000FF000000FF000000FFDADADAFFDADA
          DAFFE6E6E6FFE6E6E6FFE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000FF007AB9FF007AB9FF007AB9FF000000FF00000000000000000000
          0000000000FF00AAFFFF48B8FFFF6BC6FFFF6BC6FFFF48B8FFFF00AAFFFF00AA
          FFFF0092DCFF000000FF000000FF000000FFDADADAFFDADADAFFE6E6E6FFE6E6
          E6FFE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000FF007AB9FF0092DCFF0092DCFF000000FF00000000000000000000
          00FF0092DCFF00AAFFFF48B8FFFF48B8FFFF00AAFFFF00AAFFFF0092DCFF0000
          00FF000000FFDADADAFFDADADAFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFFFFFFFFFCECECEFF000000FF0000
          00FF007AB9FF0092DCFF0092DCFF0092DCFF000000FF00000000000000000000
          00FF00AAFFFF00AAFFFF00AAFFFF00AAFFFF0092DCFF000000FF000000FFDADA
          DAFFDADADAFFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECEFF000000FF000000FF007AB9FF007A
          B9FF0092DCFF0092DCFF0092DCFF007AB9FF000000FF00000000000000000000
          00FF0092DCFF0092DCFF000000FF000000FF000000FFDADADAFFDADADAFFE6E6
          E6FFE6E6E6FFE6E6E6FFE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFCECECEFF000000FF000000FF000000FF007AB9FF0092DCFF0092DCFF0092
          DCFF0092DCFF0092DCFF0092DCFF000000FF0000000000000000000000000000
          0000000000FF000000FF0000000000000000000000FFE6E6E6FFE6E6E6FFE6E6
          E6FFE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECEFF000000FF0000
          00FF000000FF007AB9FF0092DCFF0092DCFF0092DCFF0092DCFF0092DCFF0092
          DCFF0092DCFF0092DCFF007AB9FF000000FF0000000000000000000000000000
          000000000000000000000000000000000000000000FFE6E6E6FFE6E6E6FFFFFF
          FFFFFFFFFFFFF2F2F2FFFFFFFFFFCECECEFF000000FF000000FF007AB9FF0092
          DCFF0092DCFF007AB9FF000000FF000000FF007AB9FF0092DCFF0092DCFF0092
          DCFF007AB9FF000000FF000000FF000000000000000000000000000000000000
          000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFCECECEFF000000FF000000FF007AB9FF0092DCFF0092DCFF007A
          B9FF000000FF000000FF0000000000000000000000FF000000FF000000FF0000
          00FF000000FF0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFCECE
          CEFF000000FF000000FF007AB9FF0092DCFF0092DCFF007AB9FF000000FF0000
          00FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000FFCECECEFF000000FF0000
          00FF00000000000000FF007AB9FF0092DCFF000000FF000000FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000FF000000000000
          00000000000000000000000000FF000000FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 1
        OnClick = bDocumentoClick
      end
      object BitBtn1: TBitBtn
        Left = 523
        Top = 493
        Width = 139
        Height = 49
        Caption = 'Limpar &Documento'
        Glyph.Data = {
          C2050000424DC205000000000000820300002800000018000000180000000100
          08000000000040020000120B0000120B0000D3000000D300000000000000FFFF
          FF00FF00FF000082000000810000005F0000005E0000005C0000005500000051
          0000004D0000004B000001820200018101000288030000800100018703000187
          0400017803000289040001550300026B0400038B0500037F060002550300048E
          07000590080006910A00035C060008680D0006640C000D9C1600096C10000FA4
          1A000C72130007951300067611000997150010A61C0011A71E000F8B190013AA
          200015AD230001500A0017B1280019B52B00138420001BB82E00067B15001BB8
          2F001CBA31001EBC33001AA62D00189029001A962D001C9A31000F8B260021AA
          390020A438001F9F35002ACF48002BD14A0023AB3D002DD34D0013AB320032DA
          560021AA410036E15E0035DE5A0035DA5B000C81290018B43F0018AB3E0039E5
          630038E362003AE7650036D45E003CDE67001BB445003ADA650045F6780046F6
          79001889400019836600167D73000F6C6500219599000B647800288BC2004CBD
          FE004DBFFF003EACF20041B0F40045B4F80048B7FE004CBDFF0060A7D300339E
          E70037A3EB003AA6F2003AA6EE003BA6EF003EA9F40041ACF20043B1F800248A
          D9002991DE002E95E5002F96E6002E97E200339EEB0037A3F2003397DE003DAA
          FC003AA4F2003EAAFC0041AFFF0042B0FF0043B1FF0003569800035596000354
          95000354930004589C000559A00005599E00116CB8001F82D3002386D9002990
          E2002C8EDE003096ED003097E90036A0FA0038A3FC0038A1F600379FF2003EAA
          FE00055AA300065CA700065BA500075DAB00075DA900085EAD000960B1000A63
          B6000A62B4000B64B400116EC5001473C7001574C900197ACE002286E1002184
          D9002486DD002483DA002687DD002582D7002F95F4003097F300349AF600349A
          F40037A0FF0037A0FE0038A1FF0039A3FF000A63B7000B64BA000C65BC000D68
          C2000D67C0000E69C6000F6AC1001370CA00176DC4001C77D300267FDA002886
          E3002784DD002C8FEE003092F2002D659D000F6BCB000F6AC900116ED100106C
          CC00116DCF001372DA001370D800136FD5001473DD001978E1001B79E1001C7D
          E2001E7AD9001B6DC4002482E6001160C0001675E3001573DE001776E6001674
          E1001878EB001877EA001877E9001877E300165CAF001C6DC900166AD4000A4B
          AA001357B5000202020202020202020202020202020202020202020202020202
          0202020202020202CACCC9BB02020202020202020202020202020202020202CD
          CAC8C7BCB8B60202020202020202020202020202020296C1CBC6BEBDBAB7A9A8
          91020202020202020202020202947F6D646F6F98B9ABAAA7928F8B7C02020202
          0202020202976A625C5D595A6399ACA6908D8C7D777A0202020202029569615B
          6582675F5E667681938E8A7B787A0202020202572BAD856C9BC35A686B727489
          87A59F7E797A020202022B55B52BD1BFD071689C9D75738486A2A2A280020202
          020A20526EB2C42B2BD2C0C588A09A83A4A2A20202020202021D3A4D50425358
          CFB42B2BCEAEAFA1A3A20202020202021E3B4F51493C2F1F305470B09EB12BB3
          0202020202020202374C514B3D322119030312465660C2020202020202020202
          3522393F33261A03031125474E380202020202020202020202020B34271B0304
          10234048380202020202020202020202020B3E41210F06071524140202020202
          02020202020202020B3644290D0802020202020202020202020202020202020B
          2E432A0C080202020202020202020202020202020202021D4A2C0E0802020202
          020202020202020202020202020218452D130502020202020202020202020202
          0202020202021C31160602020202020202020202020202020202020202022817
          0902020202020202020202020202020202020202020202020202020202020202
          0202020202020202020202020202020202020202020202020202020202020202
          020202020202}
        TabOrder = 2
        OnClick = BitBtn1Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = '&Lista'
      ImageIndex = 2
      object GradeClientes: TDBGrid
        Left = 0
        Top = 0
        Width = 665
        Height = 516
        DataSource = Dados.dsFornecedores
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
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
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 91
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
            Width = 419
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Municipio'
            Title.Alignment = taCenter
            Title.Caption = 'Munic'#237'pio'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 132
            Visible = True
          end>
      end
      object StaticText28: TStaticText
        Left = 1
        Top = 522
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
        TabOrder = 1
        Transparent = False
        StyleElements = []
      end
      object cPesquisa: TEdit
        Left = 67
        Top = 522
        Width = 598
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnChange = cPesquisaChange
      end
    end
    object TabSheet4: TTabSheet
      Caption = '&Filtros'
      ImageIndex = 3
      object bFiltrar: TSpeedButton
        Left = 236
        Top = 297
        Width = 100
        Height = 65
        Cursor = crHandPoint
        Hint = '  Limpar os filtros atuais  '
        Caption = 'Filt&rar'
        Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000103
          0700010307000305090001030700010307000103070001020700000206000002
          060077797B0077797B0077797B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000203080004050A0003040900EDDB
          DB00F3E5E500F8EFEF00FAF5F500FEFCFC00FFFFFF00FFFFFF00F9F3F400F0DF
          E10000020600000206000000010077797B0077797B0077797B00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000305090003050900E0C1C200E5CBCC00EAD3D400EDDB
          DB00F3E6E600F8EFEE00FAF5F500FDFCFC00FFFFFF00FFFFFF00F9F3F300EFE1
          E000E6CECF00DCBABB00D2A7A900000001000101010077797B0077797B007779
          7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0002040800D8AFB000DCB9BA00E0C1C300E5CBCC00EAD3D400EDDB
          DB00F4E6E600F8EFEF00FAF5F500FEFCFC00FFFFFF00FFFFFF00F9F4F400F0E1
          E100E7CECF00DDBBBC00D3A7A900CD9B9C00CC9999000000000076787B007678
          790076787A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0003050A00D3A8AA00D7AFB100DDB9BB00E1C2C300E6CBCC00EAD3D400EDDB
          DB00F4E6E600F7EEEE00FAF6F500FEFDFD00FFFFFF00FFFFFF00F9F3F400F0E1
          E100E7CECF00DDBBBC00D5A9AB00CD9B9D00CC999A00CC999900000000007577
          79007476780074767700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000304
          0900CFA1A300D4A9AB00D7B0B100DCBABB00E1C3C400E6CCCC00EAD3D5000608
          0D00090B100007090E0006080D0008090E0005070C0004050A0003050A000304
          0900E8CFD000DEBCBD00D4A9AB00CD9B9D00CC9A9B00CC999900CC9999000000
          0000737577007275760072747500FFFFFF00FFFFFF00FFFFFF0005060B00CE9D
          9F00D0A1A300D4ABAC00D9B2B400DDBABC00080B1100080A10000A0C1200EBEC
          EB00E5E6E600DFE0E000DBDCDD00D6D7D700D0D1D400CCCCCE00C6C7C800C2C3
          C40006070C000305090003040900CD9B9D00CD9B9D00CC999A00CC999900CC99
          9900000000007173740071727400FFFFFF00FFFFFF00FFFFFF0006080D00D09F
          A100D1A3A400D4AAAC00090C1200090B1200F7F8F800F4F5F500EEEFEF00EAEB
          EB00E6E8E800E1E0E100DCDDDD00D7D7D800D0D1D200CCCDCE00C8C8CA00C2C3
          C400BDBEC000B8B9B900B1B2B3000103080001030700CD9A9C00CC999900CC99
          9900000000006F7072006F7072006E707100FFFFFF00FFFFFF0004060C00D0A0
          A200D5A6A800070A1000FFFFFF00FEFFFF00F7F8F800F4F5F5000D0F1B000F11
          1D000F111D000D0F19000F101700090A100007090E00080A0F000A0B10000708
          0D00BEBEC000B6B8B800B2B2B300ACAEAE00A8A9AB0001030700CC999900CC99
          9900000000006D6F70006C6E70006C6D6F00FFFFFF00FFFFFF0007090F00CF9F
          A200090C1200FFFFFF00FFFFFF00FEFFFE00101221000E102100D1A3A900D3A6
          AC00D3A4AA00D2A4AA00D2A2A800CE9EA200CF9FA200CF9FA200D09FA100CE9D
          A00005060B0004050A0003050900ADAEAF00A8A9AB00A4A4A70000000100CC99
          9900000000006C6D6E006A6C6D006A6B6D006A6B6C00FFFFFF00080B1100090B
          1200FFFFFF00FFFFFF00FFFFFF0011132400EDA6AD00EBA5AE00EBA8B500ECA9
          B600EDA8B500ECA7B000EAA2A900E9A0A700E8A1A500E89FA200E89EA100E79C
          9F00E79C9F00E69C9E00E69C9E0002040900A8A9AB00A5A6A700A1A2A3000101
          010001010100696A6C00696A6B00686A6B0068696A00FFFFFF000D0F1500FFFF
          FF00FFFFFF00FFFFFF0015172600D9B1B900FFA8B500FFABC300FFACC200FFAC
          C200FFACC200FFABC200FFA4B100FFA4AC00FFA0A600FF9EA200FF9DA000FF9D
          9F00FF9C9F00FF9D9F00FF9D9F00FF9C9F0004060A00A5A6A700A1A2A3009C9C
          9C000000000068686A0067686A006768690065676800FFFFFF0011131A00FFFF
          FF00FFFFFF00181A2500FFA8AF00FFABB900E2C0D300FFB0C600FFB2C700FFB3
          C700FFB1C600FFA8BE00FFA9C100FFA2B100FF9FA800FF9FA400FF9EA100FF9F
          A200FF9EA100FF9D9F00FF9D9F00D4AAAC006A322B00010308009FA1A2009C9B
          9C0000000000656667006566670065656700FFFFFF00FFFFFF000C0F1500FFFF
          FF00FFFFFF001C1E2D00FFACB500FFB3C700FFB3C500F0CFDF00F3D5E400FFE5
          EF00FFBDD400FFAFC700FFA7BD00FFA6BB00FFA2AB00FFA0A700FFA0A400FF9E
          A100FF9EA000D3A9AC00D3A9AB0070372F006A312A0002030800A0A1A2009C9B
          9B0000000000646466006364650063636500FFFFFF00FFFFFF00070A1000FFFF
          FF00FFFFFF0013152600FFAAB300FFAEC600FFB1C700FFC7DB00FFFFFF00FFFF
          FF00FFF0F700E4C4D900DCB5C800DAB5CA00D9B1B900D6AEB300D5ACAF00D5AB
          AC00D5ABAC0083463F007B3F3800733C35006E3D380009151C00A4A9AA009FA3
          A400071214006263640061626300FFFFFF00FFFFFF00FFFFFF00080B1100FFFF
          FF00FFFFFF00FFFFFF0016173100FFA8C000FFA9BE00FDB8D000FFF7FB00FFFF
          FF00F3D5E800DEA3C100CC88A200C17E9D00B56D7700AA636700A05C5B009653
          4F008C4D4800844943007D4A440077443D000E081200AAA6AB00A5A2A600A29C
          9F000E01070060626200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000B0D
          1300FFFFFF00FFFFFF00FFFFFF0020256300FCA8BD00FFBDD300FFDEEC00FEDE
          EE00F0C5DD00DCA2C000CF88A300C27E9C00B6717900AB656900A05C59009552
          4E008D514D0084514D007F413E000D050E00ABA9AC00A4A5A7009FA1A2000000
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF000C0E1600FFFFFF00FFFFFF00FFFFFF002C30650046477900605F9700F3B2
          CC00E7A8C300D58EA800CD84A000C27C9400B66E7500AB666800A15E5A009A5D
          590091575400130813000A060D00ADAEAE00A8A9AB00A3A5A60001010200FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0012141F00FFFFFF00FFFFFF00FFFFFF00FBFCFD00FCFCFD002E2F
          64003433650026265C0022235E00211D3300161C3400536B3A000B0E1600101D
          250017102200BABDC000B4B5BA00ACB2B400A8ADB100010C19005C5D5E005C5D
          5D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00171927001A1C2F00FCFDFD00FBFCFD00F8F9FA00F2F3
          F600EBEDF200E7E8ED00E0E0E200D9D9DB00D3D4D600CECFD100CACCCE00C5C7
          CB00BFC2C800B9BFC400B4BBC1000517210003130F009AA19F00010F07005A5A
          5B00595A5A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00181A2A001A1C310018193200EEEF
          F000E8E9EC00E4E5E700DEDFE100D6D7D900D2D3D500D0D1D200CBCDCF00DAE2
          D700BDC5C90005182E00031D2B00CACFD000B0B4B2009C9F9E009B9D9C000C1A
          11005758580056585700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001011
          2100111222001213210014151F000D0E1700090A10000D171E0016101B000F13
          240006172700FFFFFF00F7F9F800DBDEDE00C2C2C300A7A7A7009A9B9A001A21
          1C0006150C005555560054555500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0005152600FFFFFF00EDEFEF00D2D2D300B8B7B8003F403F002A30
          2D0014201A00030B13005353530052525300FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0004141000030C0B0002040200010201004E514F003A40
          3C0024302A000E181F00000000005150510050505000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0003110A007A7D7B00727673005F6460004A53
          4E00343E3E001E252A000B0A0A00000000004F4E4F004F4F4E00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00010F070078807C006D7671005961
          6100434A50002E2F2E001919190006060600000000004D4D4D00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00010A1200787D8100696D
          7000545354003E3E3E0029292A00131413000303020000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000007475
          7400636464004E4D4E0039393900232324000F0F0E0000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          0000717171005E5F5E0048494800343434001E1F1E000A0A0A00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000006D6D6D0059595800434343002F2F2F0019191900FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        Layout = blGlyphTop
        ParentShowHint = False
        ShowHint = True
        OnClick = bFiltrarClick
      end
      object bLimpar: TSpeedButton
        Left = 340
        Top = 297
        Width = 100
        Height = 65
        Cursor = crHandPoint
        Hint = '  Limpar os filtros atuais  '
        Caption = 'Limpar Fil&tros'
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
        ParentShowHint = False
        ShowHint = True
        OnClick = bLimparClick
      end
      object Panel3: TPanel
        Left = 98
        Top = 65
        Width = 474
        Height = 217
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object cSituacao: TRadioGroup
          Left = 63
          Top = 44
          Width = 220
          Height = 83
          Caption = 'Situa'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemIndex = 0
          Items.Strings = (
            'Todos'
            'Apenas Fornecedores Ativos'
            'Apenas Fornecedores Desativados')
          ParentFont = False
          TabOrder = 0
        end
        object StaticText33: TStaticText
          Left = 63
          Top = 129
          Width = 102
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Ramo de Atividade'
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
        object cFiltroRamo: TDBLookupComboBox
          Left = 167
          Top = 129
          Width = 244
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsRamoAtividade
          NullValueKey = 46
          ParentFont = False
          TabOrder = 2
        end
        object StaticText34: TStaticText
          Left = 63
          Top = 152
          Width = 102
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
          TabOrder = 3
          Transparent = False
          StyleElements = []
        end
        object cFiltroEstado: TEdit
          Left = 167
          Top = 152
          Width = 41
          Height = 21
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
      end
    end
  end
  object tCodigo: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM Fornecedores')
    Left = 144
    Top = 304
  end
  object tFornecedores: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM Fornecedores')
    FetchRows = 1
    Left = 144
    Top = 352
  end
  object tCodigoPlano: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT MAX(CAST(Codigo AS int)) AS Codigo FROM PlanoContas')
    FetchRows = 1
    Left = 144
    Top = 400
  end
  object tContaPlano: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT MAX(Conta) AS Conta FROM PlanoContas')
    FetchRows = 1
    Left = 144
    Top = 448
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.pdf'
    Filter = '*.pdf'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Title = 'Documentos'
    Left = 560
    Top = 8
  end
  object tPedidos: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 144
    Top = 496
  end
  object RESTResponse1: TRESTResponse
    Left = 56
    Top = 400
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 56
    Top = 352
  end
  object RESTClient1: TRESTClient
    Params = <>
    Left = 56
    Top = 304
  end
end
