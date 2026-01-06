object Cadastro_Clientes: TCadastro_Clientes
  Left = 591
  Top = 250
  HelpContext = 106
  BorderStyle = bsDialog
  Caption = 'Cadastro_Clientes'
  ClientHeight = 660
  ClientWidth = 746
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 746
    Height = 45
    Align = alTop
    Stretch = True
    ExplicitLeft = 8
    ExplicitWidth = 653
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 66
    Height = 21
    Caption = 'CLIENTES'
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
    Width = 217
    Height = 18
    Caption = 'Manuten'#231#227'o da tabela de Clientes.'
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
    Top = 630
    Width = 746
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      Left = 678
      Top = 1
      Width = 67
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 334
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsClientes
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
      Left = 335
      Top = 1
      Width = 60
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Align = alLeft
      Caption = '&Pesquisa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bPesquisaClick
    end
    object bImportar: TButton
      Left = 448
      Top = 1
      Width = 59
      Height = 28
      Hint = 'Importa do cadastro de fornecedores'
      Align = alLeft
      Caption = '&Imp Forn'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bImportarClick
    end
    object bCopiar: TButton
      Left = 395
      Top = 1
      Width = 53
      Height = 28
      Align = alLeft
      Caption = '&Copiar'
      TabOrder = 4
      OnClick = bCopiarClick
    end
    object bFiliais: TButton
      Left = 507
      Top = 1
      Width = 66
      Height = 28
      Hint = 'Exportar dados para as filiais'
      Align = alLeft
      Caption = '&Exp.Filiais'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bFiliaisClick
    end
    object bLimite: TButton
      Left = 573
      Top = 1
      Width = 84
      Height = 28
      Hint = 'Atualiza o limite de cr'#233'dito de todos os clientes.'
      Align = alLeft
      Caption = '&Atualizar limite'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = bLimiteClick
    end
  end
  object pPaginas: TPageControl
    Left = 6
    Top = 51
    Width = 732
    Height = 570
    Cursor = crHandPoint
    ActivePage = TabSheet3
    MultiLine = True
    TabHeight = 24
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = '&Dados Principais'
      Enabled = False
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 718
        Height = 506
        Align = alClient
        BevelOuter = bvLowered
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
        object bPesquisaCEP: TSpeedButton
          Left = 193
          Top = 118
          Width = 28
          Height = 25
          Hint = '  Atualiza os dados do endere'#231'o'
          Enabled = False
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
          OnClick = bPesquisaCEPClick
        end
        object SpeedButton1: TSpeedButton
          Left = 406
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
          Left = 103
          Top = 5
          Width = 71
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Codigo'
          DataSource = Dados.dsClientes
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
          Left = 103
          Top = 28
          Width = 466
          Height = 21
          DataField = 'Nome'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object cLogradouro: TDBEdit
          Left = 292
          Top = 120
          Width = 222
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Rua'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object cNumero: TDBEdit
          Left = 544
          Top = 120
          Width = 81
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Rua_Numero'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object cBairro: TDBEdit
          Left = 408
          Top = 143
          Width = 217
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Bairro'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
        end
        object cCEP: TDBEdit
          Left = 103
          Top = 120
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CEP'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 9
          ParentFont = False
          TabOrder = 8
          OnChange = cCEPChange
        end
        object DBEdit10: TDBEdit
          Left = 103
          Top = 212
          Width = 120
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Telefone1'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 14
          ParentFont = False
          TabOrder = 16
        end
        object DBEdit11: TDBEdit
          Left = 226
          Top = 212
          Width = 124
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Telefone2'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 14
          ParentFont = False
          TabOrder = 17
        end
        object DBEdit12: TDBEdit
          Left = 408
          Top = 212
          Width = 120
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Fax'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 14
          ParentFont = False
          TabOrder = 18
        end
        object cCNPJ: TDBEdit
          Left = 277
          Top = 5
          Width = 129
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CNPJ'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 18
          ParentFont = False
          TabOrder = 1
          OnExit = cCNPJExit
        end
        object cIE: TDBEdit
          Left = 103
          Top = 281
          Width = 129
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Inscricao_Estadual'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 21
          OnExit = cIEExit
          OnKeyPress = cIEKeyPress
        end
        object StaticText1: TStaticText
          Left = 6
          Top = 5
          Width = 95
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
          TabOrder = 30
          Transparent = False
          StyleElements = []
        end
        object lNome: TStaticText
          Left = 6
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
          TabOrder = 31
          Transparent = False
          StyleElements = []
        end
        object lLogradouro: TStaticText
          Left = 227
          Top = 120
          Width = 63
          Height = 20
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
          TabOrder = 32
          Transparent = False
          StyleElements = []
        end
        object lBairro: TStaticText
          Left = 352
          Top = 143
          Width = 54
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
          TabOrder = 33
          Transparent = False
          StyleElements = []
        end
        object lNumero: TStaticText
          Left = 517
          Top = 120
          Width = 25
          Height = 20
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'N'#186
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
        object lCEP: TStaticText
          Left = 6
          Top = 120
          Width = 95
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
        object lEstado: TStaticText
          Left = 6
          Top = 166
          Width = 95
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
          Top = 212
          Width = 95
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
          Left = 352
          Top = 212
          Width = 54
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
        object lCNPJ: TStaticText
          Left = 180
          Top = 5
          Width = 95
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
        object lIE: TStaticText
          Left = 6
          Top = 281
          Width = 95
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
        object StaticText3: TStaticText
          Left = 6
          Top = 350
          Width = 95
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
          TabOrder = 41
          Transparent = False
          StyleElements = []
        end
        object DBEdit2: TDBEdit
          Left = 103
          Top = 350
          Width = 522
          Height = 21
          DataField = 'Contato'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 28
        end
        object lPais: TStaticText
          Left = 6
          Top = 189
          Width = 95
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
          TabOrder = 42
          Transparent = False
          StyleElements = []
        end
        object cPais: TDBLookupComboBox
          Left = 103
          Top = 189
          Width = 247
          Height = 21
          DataField = 'Pais'
          DataSource = Dados.dsClientes
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Nome'
          ListFieldIndex = 1
          ListSource = Dados.dsPaises
          NullValueKey = 46
          ParentFont = False
          TabOrder = 15
        end
        object StaticText28: TStaticText
          Left = 302
          Top = 281
          Width = 95
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
          TabOrder = 43
          Transparent = False
          StyleElements = []
        end
        object DBEdit26: TDBEdit
          Left = 399
          Top = 281
          Width = 129
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Inscricao_Municipal'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 23
        end
        object cEstado: TDBLookupComboBox
          Left = 103
          Top = 166
          Width = 247
          Height = 21
          DataField = 'Estado'
          DataSource = Dados.dsClientes
          DropDownRows = 8
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
          TabOrder = 13
          OnClick = cEstadoClick
          OnExit = cEstadoExit
        end
        object cIsento: TDBCheckBox
          Left = 235
          Top = 283
          Width = 55
          Height = 17
          Caption = 'Isento'
          DataField = 'Isento'
          DataSource = Dados.dsClientes
          TabOrder = 22
          OnClick = cIsentoClick
        end
        object cCPF: TDBEdit
          Left = 103
          Top = 327
          Width = 129
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CPF'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 25
          OnExit = cCPFExit
        end
        object cRG: TDBEdit
          Left = 265
          Top = 327
          Width = 120
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RG'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 26
        end
        object lCPF: TStaticText
          Left = 6
          Top = 327
          Width = 95
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
          TabOrder = 44
          Transparent = False
          StyleElements = []
        end
        object lRG: TStaticText
          Left = 240
          Top = 327
          Width = 23
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
          TabOrder = 45
          Transparent = False
          StyleElements = []
        end
        object lMunicipio: TStaticText
          Left = 352
          Top = 166
          Width = 54
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
          TabOrder = 46
          Transparent = False
          StyleElements = []
        end
        object StaticText32: TStaticText
          Left = 6
          Top = 304
          Width = 95
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
          TabOrder = 47
          Transparent = False
          StyleElements = []
        end
        object DBEdit16: TDBEdit
          Left = 103
          Top = 304
          Width = 129
          Height = 21
          CharCase = ecUpperCase
          DataField = 'SUFRAMA'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 24
        end
        object StaticText37: TStaticText
          Left = 6
          Top = 143
          Width = 95
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
          TabOrder = 48
          Transparent = False
          StyleElements = []
        end
        object DBEdit23: TDBEdit
          Left = 103
          Top = 143
          Width = 247
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Complemento'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object StaticText16: TStaticText
          Left = 6
          Top = 373
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Desonera'#231#227'o'
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
        object cDesoneracao: TDBLookupComboBox
          Left = 103
          Top = 373
          Width = 522
          Height = 21
          DataField = 'Desoneracao'
          DataSource = Dados.dsClientes
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsDesoneracao
          NullValueKey = 46
          ParentFont = False
          TabOrder = 29
        end
        object StaticText69: TStaticText
          Left = 377
          Top = 97
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Capital Social'
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
        object DBEdit55: TDBEdit
          Left = 474
          Top = 97
          Width = 151
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Capital_Social'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object StaticText18: TStaticText
          Left = 6
          Top = 97
          Width = 95
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
          TabOrder = 51
          Transparent = False
          StyleElements = []
        end
        object DBLookupComboBox7: TDBLookupComboBox
          Left = 103
          Top = 97
          Width = 271
          Height = 21
          DataField = 'Ramo_Atividade'
          DataSource = Dados.dsClientes
          DropDownRows = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo; Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsRamoAtividade
          NullValueKey = 46
          ParentFont = False
          TabOrder = 6
          OnClick = cEstadoClick
          OnExit = cEstadoExit
        end
        object StaticText5: TStaticText
          Left = 6
          Top = 235
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'CNAE Principal'
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
        object DBEdit5: TDBEdit
          Left = 103
          Top = 235
          Width = 522
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CNAE'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
        end
        object cMunicipio: TDBLookupComboBox
          Left = 408
          Top = 166
          Width = 217
          Height = 21
          DataField = 'Municipio_Codigo'
          DataSource = Dados.dsClientes
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
          TabOrder = 14
          OnClick = cEstadoClick
        end
        object DBEdit82: TDBEdit
          Left = 456
          Top = 327
          Width = 169
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Passaporte'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 27
          OnExit = cCPFExit
        end
        object StaticText115: TStaticText
          Left = 392
          Top = 327
          Width = 62
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
          TabOrder = 53
          Transparent = False
          StyleElements = []
        end
        object cIndicadorIE: TRxDBComboBox
          Left = 103
          Top = 258
          Width = 522
          Height = 21
          DataField = 'Indicador_IE'
          DataSource = Dados.dsClientes
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
              'b.ICMS')
          ParentFont = False
          TabOrder = 20
          Values.Strings = (
            '1'
            '2'
            '9')
        end
        object StaticText116: TStaticText
          Left = 6
          Top = 258
          Width = 95
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
          TabOrder = 54
          Transparent = False
          StyleElements = []
        end
        object DBEdit83: TDBEdit
          Left = 103
          Top = 51
          Width = 466
          Height = 21
          DataField = 'Nome_Fantasia'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object StaticText117: TStaticText
          Left = 6
          Top = 51
          Width = 95
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
          TabOrder = 55
          Transparent = False
          StyleElements = []
        end
        object lModalidade: TStaticText
          Left = 257
          Top = 74
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tipo de Processo'
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
          Visible = False
          StyleElements = []
        end
        object cModalidade: TDBLookupComboBox
          Left = 354
          Top = 74
          Width = 271
          Height = 21
          DataField = 'Modalidade_Importacao'
          DataSource = Dados.dsClientes
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsTiposProcesso
          NullValueKey = 46
          ParentFont = False
          TabOrder = 4
          Visible = False
          OnExit = cEstadoExit
        end
        object StaticText15: TStaticText
          Left = 7
          Top = 74
          Width = 95
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
          TabOrder = 57
          Transparent = False
          StyleElements = []
        end
        object DBEdit3: TDBEdit
          Left = 104
          Top = 74
          Width = 119
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Mascara_Processo'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object StaticText134: TStaticText
          Left = 6
          Top = 396
          Width = 95
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
          TabOrder = 58
          Transparent = False
          StyleElements = []
        end
        object DBEdit95: TDBEdit
          Left = 103
          Top = 396
          Width = 80
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PO'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 59
        end
        object StaticText141: TStaticText
          Left = 187
          Top = 396
          Width = 70
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
          TabOrder = 60
          Transparent = False
          StyleElements = []
        end
        object DBEdit101: TDBEdit
          Left = 259
          Top = 396
          Width = 104
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Mascara_PO'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 61
        end
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 5
          Top = 421
          Width = 708
          Height = 80
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alBottom
          Caption = 'Caracter'#237'sticas'
          TabOrder = 62
          object DBCheckBox2: TDBCheckBox
            Left = 9
            Top = 15
            Width = 104
            Height = 17
            Caption = 'Simples Nacional'
            DataField = 'Simples_Nacional'
            DataSource = Dados.dsClientes
            TabOrder = 0
          end
          object DBCheckBox6: TDBCheckBox
            Left = 9
            Top = 35
            Width = 41
            Height = 17
            Caption = 'MEI'
            DataField = 'MEI'
            DataSource = Dados.dsClientes
            TabOrder = 1
          end
          object DBCheckBox5: TDBCheckBox
            Left = 9
            Top = 55
            Width = 103
            Height = 17
            Caption = 'Consumidor Final'
            DataField = 'Consumidor_Final'
            DataSource = Dados.dsClientes
            TabOrder = 2
            OnClick = cIsentoClick
          end
          object cAtivo: TDBCheckBox
            Left = 385
            Top = 35
            Width = 48
            Height = 17
            Caption = 'Ativo'
            DataField = 'Ativo'
            DataSource = Dados.dsClientes
            TabOrder = 3
          end
          object DBCheckBox1: TDBCheckBox
            Left = 137
            Top = 15
            Width = 84
            Height = 17
            Caption = 'Zona Franca'
            DataField = 'Zona_Franca'
            DataSource = Dados.dsClientes
            TabOrder = 4
            OnClick = cIsentoClick
          end
          object DBCheckBox7: TDBCheckBox
            Left = 137
            Top = 35
            Width = 132
            Height = 17
            Caption = 'Possui Inscri'#231#227'o de ST'
            DataField = 'InscricaoST'
            DataSource = Dados.dsClientes
            TabOrder = 5
            OnClick = cIsentoClick
          end
          object DBCheckBox10: TDBCheckBox
            Left = 137
            Top = 55
            Width = 97
            Height = 17
            Caption = 'Micro Empresa'
            DataField = 'Micro_Empresa'
            DataSource = Dados.dsClientes
            TabOrder = 6
            OnClick = cIsentoClick
          end
          object DBCheckBox11: TDBCheckBox
            Left = 289
            Top = 15
            Width = 74
            Height = 17
            Caption = 'Importador'
            DataField = 'Importador'
            DataSource = Dados.dsClientes
            TabOrder = 7
            OnClick = cIsentoClick
          end
          object DBCheckBox12: TDBCheckBox
            Left = 289
            Top = 35
            Width = 66
            Height = 17
            Caption = 'Terminal'
            DataField = 'Terminal'
            DataSource = Dados.dsClientes
            TabOrder = 8
            OnClick = cIsentoClick
          end
          object DBCheckBox13: TDBCheckBox
            Left = 289
            Top = 55
            Width = 74
            Height = 17
            Caption = 'Comprador'
            DataField = 'Comprador'
            DataSource = Dados.dsClientes
            TabOrder = 9
            OnClick = cIsentoClick
          end
          object DBCheckBox14: TDBCheckBox
            Left = 385
            Top = 15
            Width = 74
            Height = 17
            Caption = 'Bloqueado'
            DataField = 'Bloqueado'
            DataSource = Dados.dsClientes
            TabOrder = 10
            OnClick = cIsentoClick
          end
          object DBCheckBox15: TDBCheckBox
            Left = 385
            Top = 55
            Width = 74
            Height = 17
            Caption = 'Atacadista'
            DataField = 'Atacadista'
            DataSource = Dados.dsClientes
            TabOrder = 11
          end
          object DBCheckBox16: TDBCheckBox
            Left = 481
            Top = 16
            Width = 64
            Height = 17
            Caption = 'Varejista'
            DataField = 'Varejista'
            DataSource = Dados.dsClientes
            TabOrder = 12
          end
          object DBCheckBox17: TDBCheckBox
            Left = 481
            Top = 35
            Width = 80
            Height = 17
            Caption = 'Prospec'#231#227'o'
            DataField = 'Prospeccao'
            DataSource = Dados.dsClientes
            TabOrder = 13
          end
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Dados Pe&ssoais'
      Enabled = False
      ImageIndex = 6
      DesignSize = (
        724
        512)
      object Panel4: TPanel
        Left = 2
        Top = 2
        Width = 720
        Height = 399
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvLowered
        TabOrder = 0
        object DBEdit24: TDBEdit
          Left = 103
          Top = 97
          Width = 350
          Height = 21
          DataField = 'Nome_Mae'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object StaticText39: TStaticText
          Left = 6
          Top = 5
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Data Nascimento'
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
        object StaticText40: TStaticText
          Left = 6
          Top = 97
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Nome M'#227'e'
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
        object cDataDoc: TDBDateEdit
          Left = 103
          Top = 5
          Width = 107
          Height = 21
          DataField = 'Data_Nascimento'
          DataSource = Dados.dsClientes
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
        object StaticText71: TStaticText
          Left = 6
          Top = 28
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Naturalidade'
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
        object DBEdit17: TDBEdit
          Left = 103
          Top = 28
          Width = 250
          Height = 21
          DataField = 'Naturalidade'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object StaticText61: TStaticText
          Left = 6
          Top = 74
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Sexo'
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
        object RxDBComboBox1: TRxDBComboBox
          Left = 103
          Top = 74
          Width = 122
          Height = 21
          DataField = 'Sexo'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'FEMININO'
            'MASCULINO')
          ParentFont = False
          Sorted = True
          TabOrder = 3
          Values.Strings = (
            'M'
            'F')
        end
        object StaticText68: TStaticText
          Left = 6
          Top = 51
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Estado Civil'
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
        object RxDBComboBox2: TRxDBComboBox
          Left = 103
          Top = 51
          Width = 122
          Height = 21
          DataField = 'Estado_Civil'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'CASADO'
            'DIVORCIADO'
            'OUTRO'
            'SOLTEIRO'
            'V'#205'UVO')
          ParentFont = False
          Sorted = True
          TabOrder = 2
          Values.Strings = (
            'C'
            'D'
            'O'
            'S'
            'V')
        end
        object DBEdit48: TDBEdit
          Left = 103
          Top = 120
          Width = 350
          Height = 21
          DataField = 'Nome_Pai'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object StaticText72: TStaticText
          Left = 6
          Top = 120
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Nome Pai'
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
        object DBEdit38: TDBEdit
          Left = 103
          Top = 143
          Width = 350
          Height = 21
          DataField = 'Profissao'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object StaticText57: TStaticText
          Left = 6
          Top = 143
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Profiss'#227'o'
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
        object DBEdit28: TDBEdit
          Left = 103
          Top = 189
          Width = 98
          Height = 21
          DataField = 'Renda_Mensal'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object StaticText43: TStaticText
          Left = 6
          Top = 189
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Renda Mensal'
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
        object DBEdit32: TDBEdit
          Left = 103
          Top = 166
          Width = 202
          Height = 21
          DataField = 'Tempo_Servico'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object StaticText47: TStaticText
          Left = 6
          Top = 166
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tempo Servi'#231'o'
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
        object DBEdit25: TDBEdit
          Left = 103
          Top = 295
          Width = 382
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Trabalho_Endereco'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object DBEdit29: TDBEdit
          Left = 103
          Top = 318
          Width = 382
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Trabalho_Bairro'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object DBEdit30: TDBEdit
          Left = 103
          Top = 272
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Trabalho_CEP'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 9
          ParentFont = False
          TabOrder = 12
        end
        object DBEdit31: TDBEdit
          Left = 103
          Top = 364
          Width = 130
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Trabalho_Telefone'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 15
          ParentFont = False
          TabOrder = 14
        end
        object StaticText41: TStaticText
          Left = 6
          Top = 295
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Endere'#231'o'
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
        object StaticText42: TStaticText
          Left = 6
          Top = 318
          Width = 95
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
          TabOrder = 25
          Transparent = False
          StyleElements = []
        end
        object StaticText44: TStaticText
          Left = 6
          Top = 272
          Width = 95
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
          TabOrder = 26
          Transparent = False
          StyleElements = []
        end
        object StaticText45: TStaticText
          Left = 6
          Top = 341
          Width = 95
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
          TabOrder = 27
          Transparent = False
          StyleElements = []
        end
        object StaticText46: TStaticText
          Left = 6
          Top = 364
          Width = 95
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
          TabOrder = 28
          Transparent = False
          StyleElements = []
        end
        object DBLookupComboBox10: TDBLookupComboBox
          Left = 103
          Top = 341
          Width = 235
          Height = 21
          DataField = 'Trabalho_Estado'
          DataSource = Dados.dsClientes
          DropDownRows = 8
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
          TabOrder = 13
        end
        object StaticText64: TStaticText
          Left = 341
          Top = 341
          Width = 55
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
        object StaticText51: TStaticText
          Left = 6
          Top = 249
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Local / Empresa'
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
        object DBEdit37: TDBEdit
          Left = 103
          Top = 249
          Width = 382
          Height = 21
          DataField = 'Trabalho_Local'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object DBLookupComboBox11: TDBLookupComboBox
          Left = 398
          Top = 341
          Width = 221
          Height = 21
          DataField = 'Trabalho_Cidade'
          DataSource = Dados.dsClientes
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Nome'
          ListField = 'Nome'
          ListSource = Dados.dsMunicipios
          NullValueKey = 46
          ParentFont = False
          TabOrder = 31
        end
        object StaticText118: TStaticText
          Left = 6
          Top = 230
          Width = 622
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Local de Trabalho'
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
      end
    end
    object TabSheet8: TTabSheet
      Caption = '&Refer'#234'ncias'
      Enabled = False
      ImageIndex = 7
      object DBEdit33: TDBEdit
        Left = 49
        Top = 33
        Width = 200
        Height = 21
        DataField = 'Referencias_Banco1'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object StaticText49: TStaticText
        Left = 6
        Top = 33
        Width = 41
        Height = 44
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = '   Banco'
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
      object DBEdit34: TDBEdit
        Left = 300
        Top = 33
        Width = 63
        Height = 21
        DataField = 'Referencias_Banco1Agencia'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object StaticText50: TStaticText
        Left = 252
        Top = 33
        Width = 46
        Height = 44
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = '    Ag'#234'ncia'
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
      object DBEdit35: TDBEdit
        Left = 402
        Top = 33
        Width = 90
        Height = 21
        DataField = 'Referencias_Banco1Conta'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object StaticText58: TStaticText
        Left = 366
        Top = 33
        Width = 34
        Height = 44
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = '    Conta'
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
      object DBEdit36: TDBEdit
        Left = 49
        Top = 56
        Width = 200
        Height = 21
        DataField = 'Referencias_Banco2'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit39: TDBEdit
        Left = 300
        Top = 56
        Width = 63
        Height = 21
        DataField = 'Referencias_Banco2Agencia'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit40: TDBEdit
        Left = 402
        Top = 56
        Width = 90
        Height = 21
        DataField = 'Referencias_Banco2Conta'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object StaticText59: TStaticText
        Left = 494
        Top = 33
        Width = 32
        Height = 44
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = '    Data'
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
      object DBDateEdit1: TDBDateEdit
        Left = 528
        Top = 33
        Width = 107
        Height = 21
        DataField = 'Referencias_Banco1Data'
        DataSource = Dados.dsClientes
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
        TabOrder = 3
      end
      object DBDateEdit2: TDBDateEdit
        Left = 528
        Top = 56
        Width = 107
        Height = 21
        DataField = 'Referencias_Banco2Data'
        DataSource = Dados.dsClientes
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
        TabOrder = 7
      end
      object StaticText62: TStaticText
        Left = 6
        Top = 103
        Width = 97
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Cart'#245'es de Cr'#233'dito'
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
      object DBEdit49: TDBEdit
        Left = 105
        Top = 103
        Width = 384
        Height = 21
        DataField = 'Referencias_Cartoes'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object GroupBox2: TGroupBox
        Left = 3
        Top = 147
        Width = 631
        Height = 67
        Caption = 'Refer'#234'ncia Comercial 1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        object DBEdit46: TDBEdit
          Left = 83
          Top = 17
          Width = 297
          Height = 21
          DataField = 'Referencias_Comercial1'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit52: TDBEdit
          Left = 452
          Top = 17
          Width = 174
          Height = 21
          DataField = 'Referencias_ComercialContato1'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object StaticText60: TStaticText
          Left = 6
          Top = 17
          Width = 75
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
          TabOrder = 2
          Transparent = False
          StyleElements = []
        end
        object StaticText83: TStaticText
          Left = 382
          Top = 17
          Width = 68
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
          TabOrder = 3
          Transparent = False
          StyleElements = []
        end
        object StaticText84: TStaticText
          Left = 6
          Top = 40
          Width = 75
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Cliente desde'
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
        object DBDateEdit3: TDBDateEdit
          Left = 83
          Top = 40
          Width = 107
          Height = 21
          DataField = 'Referencias_ComercialData1'
          DataSource = Dados.dsClientes
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
        object DBEdit47: TDBEdit
          Left = 269
          Top = 40
          Width = 111
          Height = 21
          DataField = 'Referencias_ComercialCompra1'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object StaticText63: TStaticText
          Left = 192
          Top = 40
          Width = 75
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Maior Compra'
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
        object DBEdit50: TDBEdit
          Left = 452
          Top = 40
          Width = 174
          Height = 21
          DataField = 'Referencias_ComercialPontual1'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object StaticText70: TStaticText
          Left = 382
          Top = 40
          Width = 68
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Pontualidade'
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
      end
      object GroupBox3: TGroupBox
        Left = 3
        Top = 227
        Width = 631
        Height = 67
        Caption = 'Refer'#234'ncia Comercial 2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
        object DBEdit53: TDBEdit
          Left = 83
          Top = 17
          Width = 297
          Height = 21
          DataField = 'Referencias_Comercial2'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit54: TDBEdit
          Left = 452
          Top = 17
          Width = 174
          Height = 21
          DataField = 'Referencias_ComercialContato2'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object StaticText73: TStaticText
          Left = 6
          Top = 17
          Width = 75
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
          TabOrder = 2
          Transparent = False
          StyleElements = []
        end
        object StaticText85: TStaticText
          Left = 382
          Top = 17
          Width = 68
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
          TabOrder = 3
          Transparent = False
          StyleElements = []
        end
        object StaticText86: TStaticText
          Left = 6
          Top = 40
          Width = 75
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Cliente desde'
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
        object DBDateEdit4: TDBDateEdit
          Left = 83
          Top = 40
          Width = 107
          Height = 21
          DataField = 'Referencias_ComercialData2'
          DataSource = Dados.dsClientes
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
        object DBEdit62: TDBEdit
          Left = 269
          Top = 40
          Width = 111
          Height = 21
          DataField = 'Referencias_ComercialCompra2'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object StaticText92: TStaticText
          Left = 192
          Top = 40
          Width = 75
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Maior Compra'
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
        object DBEdit64: TDBEdit
          Left = 452
          Top = 40
          Width = 174
          Height = 21
          DataField = 'Referencias_ComercialPontual2'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object StaticText93: TStaticText
          Left = 382
          Top = 40
          Width = 68
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Pontualidade'
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
      end
      object GroupBox4: TGroupBox
        Left = 3
        Top = 307
        Width = 631
        Height = 67
        Caption = 'Refer'#234'ncia Comercial 3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
        object DBEdit65: TDBEdit
          Left = 83
          Top = 17
          Width = 297
          Height = 21
          DataField = 'Referencias_Comercial3'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit66: TDBEdit
          Left = 452
          Top = 17
          Width = 174
          Height = 21
          DataField = 'Referencias_ComercialContato3'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object StaticText94: TStaticText
          Left = 6
          Top = 17
          Width = 75
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
          TabOrder = 2
          Transparent = False
          StyleElements = []
        end
        object StaticText95: TStaticText
          Left = 382
          Top = 17
          Width = 68
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
          TabOrder = 3
          Transparent = False
          StyleElements = []
        end
        object StaticText96: TStaticText
          Left = 6
          Top = 40
          Width = 75
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Cliente desde'
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
        object DBDateEdit5: TDBDateEdit
          Left = 83
          Top = 40
          Width = 107
          Height = 21
          DataField = 'Referencias_ComercialData3'
          DataSource = Dados.dsClientes
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
        object DBEdit70: TDBEdit
          Left = 269
          Top = 40
          Width = 111
          Height = 21
          DataField = 'Referencias_ComercialCompra3'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object StaticText97: TStaticText
          Left = 192
          Top = 40
          Width = 75
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Maior Compra'
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
        object DBEdit71: TDBEdit
          Left = 452
          Top = 40
          Width = 174
          Height = 21
          DataField = 'Referencias_ComercialPontual3'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object StaticText98: TStaticText
          Left = 382
          Top = 40
          Width = 68
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Pontualidade'
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
      end
      object StaticText119: TStaticText
        Left = 6
        Top = 14
        Width = 628
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Refer'#234'ncias Banc'#225'rias'
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
    end
    object TabSheet9: TTabSheet
      Caption = '&Avalista'
      Enabled = False
      ImageIndex = 8
      object StaticText74: TStaticText
        Left = 6
        Top = 4
        Width = 61
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
      object DBEdit56: TDBEdit
        Left = 69
        Top = 4
        Width = 372
        Height = 21
        DataField = 'Avalista_Nome'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object StaticText75: TStaticText
        Left = 6
        Top = 27
        Width = 61
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
        TabOrder = 10
        Transparent = False
        StyleElements = []
      end
      object DBEdit57: TDBEdit
        Left = 69
        Top = 27
        Width = 129
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Avalista_CNPJ'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 18
        ParentFont = False
        TabOrder = 2
        OnExit = cCNPJExit
      end
      object StaticText76: TStaticText
        Left = 6
        Top = 73
        Width = 61
        Height = 22
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
        TabOrder = 11
        Transparent = False
        StyleElements = []
      end
      object DBEdit58: TDBEdit
        Left = 69
        Top = 73
        Width = 129
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Avalista_RG'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object StaticText77: TStaticText
        Left = 6
        Top = 50
        Width = 61
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
        TabOrder = 12
        Transparent = False
        StyleElements = []
      end
      object DBEdit59: TDBEdit
        Left = 69
        Top = 50
        Width = 129
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Avalista_CPF'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnExit = cCPFExit
      end
      object StaticText78: TStaticText
        Left = 6
        Top = 97
        Width = 61
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Endere'#231'o'
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
      object DBEdit60: TDBEdit
        Left = 69
        Top = 97
        Width = 372
        Height = 21
        DataField = 'Avalista_Endereco'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit61: TDBEdit
        Left = 69
        Top = 120
        Width = 240
        Height = 21
        DataField = 'Avalista_Bairro'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object StaticText79: TStaticText
        Left = 6
        Top = 120
        Width = 61
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
        TabOrder = 14
        Transparent = False
        StyleElements = []
      end
      object StaticText80: TStaticText
        Left = 6
        Top = 143
        Width = 61
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
        TabOrder = 15
        Transparent = False
        StyleElements = []
      end
      object StaticText81: TStaticText
        Left = 6
        Top = 189
        Width = 61
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
        TabOrder = 16
        Transparent = False
        StyleElements = []
      end
      object DBEdit63: TDBEdit
        Left = 69
        Top = 189
        Width = 81
        Height = 21
        DataField = 'Avalista_CEP'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 9
        ParentFont = False
        TabOrder = 9
      end
      object DBLookupComboBox9: TDBLookupComboBox
        Left = 69
        Top = 143
        Width = 240
        Height = 21
        DataField = 'Avalista_Cidade'
        DataSource = Dados.dsClientes
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Nome'
        ListField = 'Nome'
        ListSource = Dados.dsMunicipios
        NullValueKey = 46
        ParentFont = False
        TabOrder = 7
      end
      object StaticText82: TStaticText
        Left = 6
        Top = 166
        Width = 61
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
        TabOrder = 17
        Transparent = False
        StyleElements = []
      end
      object DBLookupComboBox14: TDBLookupComboBox
        Left = 69
        Top = 166
        Width = 240
        Height = 21
        DataField = 'Avalista_Estado'
        DataSource = Dados.dsClientes
        DropDownRows = 8
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
        TabOrder = 8
      end
    end
    object TabSheet3: TTabSheet
      Caption = '&Endere'#231'o de Entrega/Retirada'
      Enabled = False
      ImageIndex = 2
      object GroupBox9: TGroupBox
        Left = 1
        Top = 14
        Width = 633
        Height = 227
        Caption = 'Endere'#231'o de Entrega'
        TabOrder = 0
        object DBEdit41: TDBEdit
          Left = 68
          Top = 17
          Width = 269
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Rua_Entrega'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit42: TDBEdit
          Left = 397
          Top = 17
          Width = 91
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Rua_EntregaNumero'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit43: TDBEdit
          Left = 68
          Top = 63
          Width = 269
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Bairro_Entrega'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit44: TDBEdit
          Left = 68
          Top = 132
          Width = 129
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CNPJ_Entrega'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 18
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit45: TDBEdit
          Left = 257
          Top = 132
          Width = 129
          Height = 21
          CharCase = ecUpperCase
          DataField = 'IE_Entrega'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object StaticText52: TStaticText
          Left = 5
          Top = 17
          Width = 61
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
          TabOrder = 15
          Transparent = False
          StyleElements = []
        end
        object StaticText53: TStaticText
          Left = 5
          Top = 63
          Width = 61
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
          TabOrder = 16
          Transparent = False
          StyleElements = []
        end
        object StaticText54: TStaticText
          Left = 340
          Top = 17
          Width = 55
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
          TabOrder = 17
          Transparent = False
          StyleElements = []
        end
        object StaticText55: TStaticText
          Left = 5
          Top = 132
          Width = 61
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
          TabOrder = 18
          Transparent = False
          StyleElements = []
        end
        object StaticText56: TStaticText
          Left = 200
          Top = 132
          Width = 55
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
          TabOrder = 19
          Transparent = False
          StyleElements = []
        end
        object StaticText65: TStaticText
          Left = 5
          Top = 86
          Width = 61
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
          TabOrder = 20
          Transparent = False
          StyleElements = []
        end
        object DBLookupComboBox12: TDBLookupComboBox
          Left = 68
          Top = 86
          Width = 269
          Height = 21
          DataField = 'Estado_Entrega'
          DataSource = Dados.dsClientes
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Nome'
          ListFieldIndex = 1
          ListSource = dsEstadoEntrega
          NullValueKey = 46
          ParentFont = False
          TabOrder = 5
          OnClick = cEstadoClick
          OnExit = DBLookupComboBox6Exit
        end
        object cMunicipioEntregaNome: TDBLookupComboBox
          Left = 397
          Top = 86
          Width = 230
          Height = 21
          DataField = 'Municipio_Entrega'
          DataSource = Dados.dsClientes
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Nome'
          ListFieldIndex = 1
          ListSource = dsMunicipioEntrega
          NullValueKey = 46
          ParentFont = False
          TabOrder = 6
          OnClick = cEstadoClick
        end
        object StaticText66: TStaticText
          Left = 340
          Top = 86
          Width = 55
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
          TabOrder = 21
          Transparent = False
          StyleElements = []
        end
        object StaticText67: TStaticText
          Left = 340
          Top = 63
          Width = 55
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
          TabOrder = 22
          Transparent = False
          StyleElements = []
        end
        object DBEdit51: TDBEdit
          Left = 397
          Top = 63
          Width = 91
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CEP_Entrega'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 9
          ParentFont = False
          TabOrder = 4
        end
        object StaticText114: TStaticText
          Left = 5
          Top = 201
          Width = 61
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Horario'
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
        object DBEdit81: TDBEdit
          Left = 68
          Top = 201
          Width = 514
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Horario_Entrega'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
        end
        object StaticText120: TStaticText
          Left = 390
          Top = 132
          Width = 61
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
          TabOrder = 24
          Transparent = False
          StyleElements = []
        end
        object DBEdit84: TDBEdit
          Left = 453
          Top = 132
          Width = 129
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CPF_Entrega'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object StaticText121: TStaticText
          Left = 5
          Top = 109
          Width = 61
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
          TabOrder = 25
          Transparent = False
          StyleElements = []
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 68
          Top = 109
          Width = 269
          Height = 21
          DataField = 'Pais_Entrega'
          DataSource = Dados.dsClientes
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Nome'
          ListFieldIndex = 1
          ListSource = Dados.dsPaises
          NullValueKey = 46
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit85: TDBEdit
          Left = 68
          Top = 155
          Width = 514
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Recebedor_Entrega'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object StaticText122: TStaticText
          Left = 5
          Top = 155
          Width = 61
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Recebedor'
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
        object DBEdit86: TDBEdit
          Left = 68
          Top = 40
          Width = 420
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Rua_ComplEntrega'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object StaticText123: TStaticText
          Left = 5
          Top = 40
          Width = 61
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Rua Compl'
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
        object StaticText124: TStaticText
          Left = 5
          Top = 178
          Width = 61
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
          TabOrder = 28
          Transparent = False
          StyleElements = []
        end
        object DBEdit87: TDBEdit
          Left = 68
          Top = 178
          Width = 129
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Telefone_Entrega'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
        end
        object StaticText125: TStaticText
          Left = 200
          Top = 178
          Width = 55
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
          TabOrder = 29
          Transparent = False
          StyleElements = []
        end
        object DBEdit88: TDBEdit
          Left = 257
          Top = 178
          Width = 369
          Height = 21
          DataField = 'Email_Entrega'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
        end
      end
      object GroupBox10: TGroupBox
        Left = 1
        Top = 263
        Width = 633
        Height = 205
        Caption = 'Endere'#231'o de Retirada'
        TabOrder = 1
        object DBEdit89: TDBEdit
          Left = 68
          Top = 17
          Width = 269
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Rua_Retirada'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit90: TDBEdit
          Left = 397
          Top = 17
          Width = 91
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Rua_NumeroRetirada'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit91: TDBEdit
          Left = 68
          Top = 63
          Width = 269
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Bairro_Retirada'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit92: TDBEdit
          Left = 68
          Top = 132
          Width = 129
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CNPJ_Retirada'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 18
          ParentFont = False
          TabOrder = 8
        end
        object DBEdit93: TDBEdit
          Left = 257
          Top = 132
          Width = 129
          Height = 21
          CharCase = ecUpperCase
          DataField = 'IE_Retirada'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object StaticText126: TStaticText
          Left = 5
          Top = 17
          Width = 61
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
          TabOrder = 14
          Transparent = False
          StyleElements = []
        end
        object StaticText127: TStaticText
          Left = 5
          Top = 63
          Width = 61
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
          TabOrder = 15
          Transparent = False
          StyleElements = []
        end
        object StaticText128: TStaticText
          Left = 340
          Top = 17
          Width = 55
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
          TabOrder = 16
          Transparent = False
          StyleElements = []
        end
        object StaticText129: TStaticText
          Left = 5
          Top = 132
          Width = 61
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
          TabOrder = 17
          Transparent = False
          StyleElements = []
        end
        object StaticText130: TStaticText
          Left = 200
          Top = 132
          Width = 55
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
          TabOrder = 18
          Transparent = False
          StyleElements = []
        end
        object StaticText131: TStaticText
          Left = 5
          Top = 86
          Width = 61
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
          TabOrder = 19
          Transparent = False
          StyleElements = []
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 68
          Top = 86
          Width = 269
          Height = 21
          DataField = 'Estado_Retirada'
          DataSource = Dados.dsClientes
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Nome'
          ListFieldIndex = 1
          ListSource = dsEstadoEntrega
          NullValueKey = 46
          ParentFont = False
          TabOrder = 5
          OnClick = cEstadoClick
          OnExit = DBLookupComboBox6Exit
        end
        object DBLookupComboBox13: TDBLookupComboBox
          Left = 397
          Top = 86
          Width = 230
          Height = 21
          DataField = 'Municipio_Retirada'
          DataSource = Dados.dsClientes
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Nome'
          ListFieldIndex = 1
          ListSource = dsMunicipioEntrega
          NullValueKey = 46
          ParentFont = False
          TabOrder = 6
          OnClick = cEstadoClick
        end
        object StaticText132: TStaticText
          Left = 340
          Top = 86
          Width = 55
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
          TabOrder = 20
          Transparent = False
          StyleElements = []
        end
        object StaticText133: TStaticText
          Left = 340
          Top = 63
          Width = 55
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
          TabOrder = 21
          Transparent = False
          StyleElements = []
        end
        object DBEdit94: TDBEdit
          Left = 397
          Top = 63
          Width = 91
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CEP_Retirada'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 9
          ParentFont = False
          TabOrder = 4
        end
        object StaticText135: TStaticText
          Left = 390
          Top = 132
          Width = 61
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
        object DBEdit96: TDBEdit
          Left = 453
          Top = 132
          Width = 129
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CPF_Retirada'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object StaticText136: TStaticText
          Left = 5
          Top = 109
          Width = 61
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
          TabOrder = 23
          Transparent = False
          StyleElements = []
        end
        object DBLookupComboBox17: TDBLookupComboBox
          Left = 68
          Top = 109
          Width = 269
          Height = 21
          DataField = 'Pais_Retirada'
          DataSource = Dados.dsClientes
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Nome'
          ListFieldIndex = 1
          ListSource = Dados.dsPaises
          NullValueKey = 46
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit97: TDBEdit
          Left = 68
          Top = 155
          Width = 514
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Expedidor_Retirada'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object StaticText137: TStaticText
          Left = 5
          Top = 155
          Width = 61
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Expedidor'
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
        object DBEdit98: TDBEdit
          Left = 68
          Top = 40
          Width = 420
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Rua_ComplRetirada'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object StaticText138: TStaticText
          Left = 5
          Top = 40
          Width = 61
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Rua Compl'
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
        object StaticText139: TStaticText
          Left = 5
          Top = 178
          Width = 61
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
          TabOrder = 26
          Transparent = False
          StyleElements = []
        end
        object DBEdit99: TDBEdit
          Left = 68
          Top = 178
          Width = 129
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Telefone_Retirada'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
        end
        object StaticText140: TStaticText
          Left = 200
          Top = 178
          Width = 55
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
          TabOrder = 27
          Transparent = False
          StyleElements = []
        end
        object DBEdit100: TDBEdit
          Left = 257
          Top = 178
          Width = 369
          Height = 21
          DataField = 'Email_Retirada'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
        end
      end
      object DBCheckBox8: TDBCheckBox
        Left = 460
        Top = 0
        Width = 161
        Height = 17
        Caption = 'Habilitar endere'#231'o de entrega'
        DataField = 'Endereco_Entrega'
        DataSource = Dados.dsClientes
        TabOrder = 2
      end
      object DBCheckBox9: TDBCheckBox
        Left = 460
        Top = 247
        Width = 161
        Height = 17
        Caption = 'Habilitar endere'#231'o de retirada'
        DataField = 'Endereco_Retirada'
        DataSource = Dados.dsClientes
        TabOrder = 3
      end
    end
    object TabSheet5: TTabSheet
      Caption = '&Observa'#231#245'es'
      Enabled = False
      ImageIndex = 4
      object DBMemo1: TDBMemo
        Left = 0
        Top = 27
        Width = 721
        Height = 447
        DataField = 'Observacao'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
      end
      object StaticText24: TStaticText
        Left = 2
        Top = 5
        Width = 719
        Height = 21
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Observa'#231#245'es'
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
    object TabSheet6: TTabSheet
      Caption = '&Premissas'
      Enabled = False
      ImageIndex = 5
      object DBEdit13: TDBEdit
        Left = 126
        Top = 48
        Width = 105
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Margem_Lucro'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnExit = DBEdit13Exit
      end
      object DBEdit14: TDBEdit
        Left = 126
        Top = 71
        Width = 105
        Height = 21
        DataField = 'Desconto_Operacional'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnChange = DBEdit14Change
      end
      object StaticText27: TStaticText
        Left = 6
        Top = 48
        Width = 118
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Margem de Lucro'
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
      object StaticText33: TStaticText
        Left = 6
        Top = 71
        Width = 118
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Desconto Operacional'
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
      object StaticText34: TStaticText
        Left = 6
        Top = 94
        Width = 118
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Desconto Adicional'
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
      object DBEdit15: TDBEdit
        Left = 126
        Top = 94
        Width = 105
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Desconto_Adicional'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnChange = DBEdit15Change
      end
      object StaticText21: TStaticText
        Left = 6
        Top = 2
        Width = 118
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Desc. Duplicata'
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
      object cDuplicata01: TDBLookupComboBox
        Left = 126
        Top = 2
        Width = 265
        Height = 21
        DataField = 'Desconto_Dupl_Tipo'
        DataSource = Dados.dsClientes
        DropDownRows = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = Dados.dsClassificacaoDuplicata
        NullValueKey = 46
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit18: TDBEdit
        Left = 449
        Top = 25
        Width = 49
        Height = 21
        DataField = 'Desconto_Dupl_Valor'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object StaticText35: TStaticText
        Left = 393
        Top = 25
        Width = 54
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Valor %'
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
      object StaticText36: TStaticText
        Left = 500
        Top = 25
        Width = 73
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Limite em dias'
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
      object DBEdit19: TDBEdit
        Left = 576
        Top = 25
        Width = 49
        Height = 21
        DataField = 'Desconto_Dupl_Dias'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 126
        Top = 25
        Width = 265
        Height = 21
        DataField = 'Desconto_Dupl_Campo'
        DataSource = Dados.dsClientes
        DropDownRows = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = Dados.dsClassificacaoDuplicata
        NullValueKey = 46
        ParentFont = False
        TabOrder = 1
      end
      object StaticText14: TStaticText
        Left = 6
        Top = 25
        Width = 118
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#225'lculo Desconto'
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
      object DBEdit72: TDBEdit
        Left = 126
        Top = 140
        Width = 105
        Height = 21
        DataField = 'Fator_Faturamento'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
      object StaticText101: TStaticText
        Left = 6
        Top = 140
        Width = 118
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Fator Faturamento'
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
      object StaticText102: TStaticText
        Left = 6
        Top = 163
        Width = 118
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Fator SISCOMEX'
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
      object DBEdit73: TDBEdit
        Left = 126
        Top = 163
        Width = 105
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Fator_SISCOMEX'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
      end
      object cMargemValor: TDBEdit
        Left = 258
        Top = 48
        Width = 118
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Margem_LucroValor'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object cDescontoOperValor: TDBEdit
        Left = 258
        Top = 71
        Width = 118
        Height = 21
        DataField = 'Desconto_OperacionalValor'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object cDescontoAdiValor: TDBEdit
        Left = 258
        Top = 94
        Width = 118
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Desconto_AdicionalValor'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object StaticText103: TStaticText
        Left = 234
        Top = 48
        Width = 22
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'R$'
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
      object StaticText104: TStaticText
        Left = 234
        Top = 71
        Width = 22
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'R$'
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
      object StaticText105: TStaticText
        Left = 234
        Top = 94
        Width = 22
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'R$'
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
      object StaticText106: TStaticText
        Left = 6
        Top = 186
        Width = 118
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Limite de Cr'#233'dito'
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
      object cLimite: TDBEdit
        Left = 126
        Top = 186
        Width = 105
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Limite_Credito'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        OnExit = cLimiteExit
      end
      object StaticText107: TStaticText
        Left = 391
        Top = 186
        Width = 35
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Saldo '
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
      object StaticText108: TStaticText
        Left = 234
        Top = 186
        Width = 48
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Utilizado'
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
      object cUtilizado: TDBEdit
        Left = 284
        Top = 186
        Width = 105
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Limite_Utilizado'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
      end
      object cSaldoLimite: TCurrencyEdit
        Left = 428
        Top = 186
        Width = 105
        Height = 21
        AutoSize = False
        Color = 16765650
        DisplayFormat = ',##0.00;-,##0,0.00'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
      end
      object StaticText4: TStaticText
        Left = 6
        Top = 234
        Width = 118
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Vencimento Contrato'
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
      object DBDateEdit6: TDBDateEdit
        Left = 126
        Top = 234
        Width = 105
        Height = 21
        DataField = 'Vencimento_Contrato'
        DataSource = Dados.dsClientes
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
        TabOrder = 18
      end
      object DBEdit6: TDBEdit
        Left = 126
        Top = 117
        Width = 105
        Height = 21
        DataField = 'Desconto_Comercial'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnChange = DBEdit14Change
      end
      object StaticText6: TStaticText
        Left = 6
        Top = 117
        Width = 118
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Desconto Comercial'
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
      object DBEdit8: TDBEdit
        Left = 258
        Top = 117
        Width = 118
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Desconto_ComercialValor'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object StaticText7: TStaticText
        Left = 234
        Top = 117
        Width = 22
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'R$'
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
      object StaticText8: TStaticText
        Left = 6
        Top = 257
        Width = 118
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Vencimento Radar'
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
      object DBDateEdit7: TDBDateEdit
        Left = 126
        Top = 257
        Width = 105
        Height = 21
        DataField = 'Vencimento_Radar'
        DataSource = Dados.dsClientes
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
        TabOrder = 19
      end
      object StaticText9: TStaticText
        Left = 6
        Top = 303
        Width = 118
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Vencimento Vincula'#231#227'o'
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
      object DBDateEdit8: TDBDateEdit
        Left = 126
        Top = 303
        Width = 105
        Height = 21
        DataField = 'Vencimento_Vinculacao'
        DataSource = Dados.dsClientes
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
        TabOrder = 20
      end
      object StaticText13: TStaticText
        Left = 6
        Top = 326
        Width = 118
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Condi'#231#227'o Pgto. (Dupl)'
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
      object DBEdit20: TDBEdit
        Left = 126
        Top = 326
        Width = 105
        Height = 21
        DataField = 'Condicao_Pagamento'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 21
      end
      object StaticText109: TStaticText
        Left = 234
        Top = 326
        Width = 29
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'dias'
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
      object StaticText29: TStaticText
        Left = 6
        Top = 210
        Width = 118
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Atraso Pgto. M'#225'ximo '
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
      object DBEdit79: TDBEdit
        Left = 126
        Top = 210
        Width = 105
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Atraso_Maximo'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
      end
      object StaticText111: TStaticText
        Left = 234
        Top = 210
        Width = 29
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'dias'
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
      object StaticText31: TStaticText
        Left = 6
        Top = 280
        Width = 118
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Valor do RADAR'
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
      object DBEdit7: TDBEdit
        Left = 126
        Top = 280
        Width = 105
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_RADAR'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 47
        OnExit = cLimiteExit
      end
    end
    object TabSheet4: TTabSheet
      Caption = '&Lista'
      ImageIndex = 3
      object cPesquisa: TEdit
        Left = 67
        Top = 457
        Width = 568
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnChange = cPesquisaChange
      end
      object StaticText25: TStaticText
        Left = 1
        Top = 457
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
        OnClick = StaticText31Click
      end
      object GradeClientes: TDBGrid
        Left = 0
        Top = 0
        Width = 724
        Height = 454
        Align = alTop
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentColor = True
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = GradeClientesCellClick
        OnDrawColumnCell = GradeClientesDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nome'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 281
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Municipio'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 180
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ'
            Title.Alignment = taCenter
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
            FieldName = 'CPF'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&Contabeis'
      ImageIndex = 2
      object Panel6: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 718
        Height = 106
        Align = alTop
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 0
        object SpeedButton5: TSpeedButton
          Left = 598
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
          Left = 598
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
          Left = 598
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
          Caption = 'Conta Ativo'
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
          OnClick = StaticText31Click
        end
        object DBEdit9: TDBEdit
          Left = 117
          Top = 32
          Width = 66
          Height = 21
          DataField = 'Conta_Ativo'
          DataSource = Dados.dsClientesModal
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
          OnClick = StaticText17Click
        end
        object DBEdit102: TDBEdit
          Left = 117
          Top = 55
          Width = 66
          Height = 21
          DataField = 'Conta_Adiantamento'
          DataSource = Dados.dsClientesModal
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
          OnClick = StaticText38Click
        end
        object DBEdit103: TDBEdit
          Left = 117
          Top = 78
          Width = 66
          Height = 21
          DataField = 'Conta_Devolucao'
          DataSource = Dados.dsClientesModal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 185
          Top = 32
          Width = 412
          Height = 21
          DataField = 'Conta_Ativo'
          DataSource = Dados.dsClientesModal
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
          Left = 185
          Top = 55
          Width = 412
          Height = 21
          DataField = 'Conta_Adiantamento'
          DataSource = Dados.dsClientesModal
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
          Left = 185
          Top = 78
          Width = 412
          Height = 21
          DataField = 'Conta_Devolucao'
          DataSource = Dados.dsClientesModal
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
        object StaticText17: TStaticText
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
          OnClick = StaticText31Click
        end
        object cCodModal: TDBLookupComboBox
          Left = 117
          Top = 9
          Width = 209
          Height = 21
          DataField = 'Codigo'
          DataSource = Dados.dsClientesModal
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
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 126
        Width = 718
        Height = 30
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 1
        object NavegaConta: TDBNavigator
          Left = 1
          Top = 1
          Width = 261
          Height = 28
          Cursor = crHandPoint
          DataSource = Dados.dsClientesModal
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
        object bPlano: TButton
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
        Top = 162
        Width = 718
        Height = 347
        Align = alBottom
        DataSource = Dados.dsClientesModal
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
            Width = 277
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Conta_Ativo'
            Title.Alignment = taCenter
            Title.Caption = 'Conta Ativo'
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
    object TabSheet10: TTabSheet
      Caption = 'Co&bran'#231'a'
      Enabled = False
      ImageIndex = 9
      object StaticText87: TStaticText
        Left = 6
        Top = 9
        Width = 67
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Endere'#231'o'
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
      object DBEdit67: TDBEdit
        Left = 75
        Top = 9
        Width = 372
        Height = 21
        DataField = 'Cobranca_Endereco'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit68: TDBEdit
        Left = 75
        Top = 32
        Width = 240
        Height = 21
        DataField = 'Cobranca_Bairro'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object StaticText88: TStaticText
        Left = 6
        Top = 32
        Width = 67
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
        TabOrder = 11
        Transparent = False
        StyleElements = []
      end
      object StaticText89: TStaticText
        Left = 6
        Top = 55
        Width = 67
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
        TabOrder = 12
        Transparent = False
        StyleElements = []
      end
      object StaticText90: TStaticText
        Left = 6
        Top = 101
        Width = 67
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
        TabOrder = 13
        Transparent = False
        StyleElements = []
      end
      object DBEdit69: TDBEdit
        Left = 75
        Top = 101
        Width = 81
        Height = 21
        DataField = 'Cobranca_CEP'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 9
        ParentFont = False
        TabOrder = 5
      end
      object DBLookupComboBox15: TDBLookupComboBox
        Left = 75
        Top = 55
        Width = 240
        Height = 21
        DataField = 'Cobranca_Cidade'
        DataSource = Dados.dsClientes
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Nome'
        ListField = 'Nome'
        ListSource = Dados.dsMunicipios
        NullValueKey = 46
        ParentFont = False
        TabOrder = 3
      end
      object StaticText91: TStaticText
        Left = 6
        Top = 78
        Width = 67
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
        TabOrder = 14
        Transparent = False
        StyleElements = []
      end
      object DBLookupComboBox16: TDBLookupComboBox
        Left = 75
        Top = 78
        Width = 240
        Height = 21
        DataField = 'Cobranca_Estado'
        DataSource = Dados.dsClientes
        DropDownRows = 8
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
        TabOrder = 4
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 484
        Top = 1
        Width = 140
        Height = 111
        Caption = 'Tipo de Frete'
        DataField = 'Cobranca_TipoFrete'
        DataSource = Dados.dsClientes
        Items.Strings = (
          'Conta Emitente'
          'Conta Destinat'#225'rio'
          'Conta Terceiros'
          'Sem Frete')
        TabOrder = 9
        Values.Strings = (
          '0'
          '1'
          '2'
          '9')
      end
      object GroupBox5: TGroupBox
        Left = 3
        Top = 159
        Width = 631
        Height = 241
        Caption = 'Consultas SPC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        object GradeSPC: TRxDBGrid
          Left = 5
          Top = 43
          Width = 620
          Height = 192
          DataSource = Dados.dsSPC
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          PopupMenu = PopupMenu1
          TabOrder = 2
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBlack
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          RowColor2 = 16776176
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Data'
              Title.Alignment = taCenter
              Width = 67
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Observacao'
              Title.Alignment = taCenter
              Width = 531
              Visible = True
            end>
        end
        object StaticText99: TStaticText
          Left = 6
          Top = 17
          Width = 32
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
          TabOrder = 3
          Transparent = False
          StyleElements = []
        end
        object StaticText100: TStaticText
          Left = 152
          Top = 17
          Width = 64
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
          TabOrder = 4
          Transparent = False
          StyleElements = []
        end
        object cDataSPC: TDateEdit
          Left = 39
          Top = 17
          Width = 111
          Height = 21
          CheckOnExit = True
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
          YearDigits = dyFour
          TabOrder = 0
          OnChange = cDataSPCChange
        end
        object bAdicionarSPC: TButton
          Left = 566
          Top = 13
          Width = 59
          Height = 28
          Hint = 'Procurar no banco de dados pelo registro informado.'
          Caption = '&Adicionar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = bAdicionarSPCClick
        end
        object cObservacaoSPC: TEdit
          Left = 218
          Top = 17
          Width = 346
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
      object DBCheckBox4: TDBCheckBox
        Left = 359
        Top = 125
        Width = 139
        Height = 17
        Caption = 'Gerar Boleto Banc'#225'rio'
        DataField = 'Cobranca_Boleto'
        DataSource = Dados.dsClientes
        TabOrder = 8
      end
      object StaticText22: TStaticText
        Left = 6
        Top = 124
        Width = 67
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Mensalidade'
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
      object DBEdit75: TDBEdit
        Left = 75
        Top = 124
        Width = 140
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Mensalidade'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object StaticText23: TStaticText
        Left = 218
        Top = 124
        Width = 99
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Dia do Vencimento'
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
      object DBEdit78: TDBEdit
        Left = 319
        Top = 124
        Width = 36
        Height = 21
        DataField = 'Mensalidade_Dia'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 2
        ParentFont = False
        TabOrder = 7
      end
      object cClienteDIF: TDBCheckBox
        Left = 500
        Top = 125
        Width = 121
        Height = 17
        Caption = 'Cliente Diferenciado'
        DataField = 'Cliente_Diferenciado'
        DataSource = Dados.dsClientes
        TabOrder = 17
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'E-&Mail'
      Enabled = False
      ImageIndex = 10
      object StaticText19: TStaticText
        Left = 6
        Top = 55
        Width = 95
        Height = 73
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 
          '                                                    E-Mail (C'#243'pi' +
          'a Para)'
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
      object StaticText20: TStaticText
        Left = 6
        Top = 130
        Width = 95
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
        TabOrder = 1
        Transparent = False
        StyleElements = []
      end
      object DBEdit21: TDBEdit
        Left = 103
        Top = 130
        Width = 524
        Height = 21
        DataField = 'Site'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        TabOrder = 2
      end
      object DBCheckBox3: TDBCheckBox
        Left = 8
        Top = 8
        Width = 187
        Height = 17
        Caption = 'N'#227'o enviar NF-e automaticamente.'
        DataField = 'Enviar_Email'
        DataSource = Dados.dsClientes
        TabOrder = 3
      end
      object DBMemo2: TDBMemo
        Left = 103
        Top = 56
        Width = 524
        Height = 72
        DataField = 'Email_Copia'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object StaticText2: TStaticText
        Left = 6
        Top = 32
        Width = 95
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'E-Mail (Cliente)'
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
        Left = 103
        Top = 32
        Width = 524
        Height = 21
        DataField = 'Email'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'Comerc&iais'
      Enabled = False
      ImageIndex = 11
      object GroupBox6: TGroupBox
        Left = 6
        Top = 4
        Width = 624
        Height = 94
        Caption = 'Trader'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object StaticText12: TStaticText
          Left = 6
          Top = 21
          Width = 94
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Trader'
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
        object DBLookupComboBox8: TDBLookupComboBox
          Left = 102
          Top = 21
          Width = 512
          Height = 21
          DataField = 'Trader'
          DataSource = Dados.dsClientes
          DropDownRows = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Nome'
          ListSource = Dados.dsFornecedores
          NullValueKey = 46
          ParentFont = False
          TabOrder = 1
        end
        object lComissao: TStaticText
          Left = 6
          Top = 44
          Width = 94
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tipo de Comiss'#227'o'
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
        object cTipoComissao: TDBLookupComboBox
          Left = 102
          Top = 44
          Width = 307
          Height = 21
          DataField = 'Tipo_Comissao'
          DataSource = Dados.dsClientes
          DropDownRows = 15
          DropDownWidth = 320
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsComissoes
          NullValueKey = 46
          ParentFont = False
          TabOrder = 3
          OnClick = cEstadoClick
        end
        object cComissao: TDBEdit
          Left = 102
          Top = 67
          Width = 75
          Height = 21
          DataField = 'Trader_Comissao'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object StaticText30: TStaticText
          Left = 6
          Top = 67
          Width = 94
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = '% Comiss'#227'o'
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
      end
      object GroupBox7: TGroupBox
        Left = 6
        Top = 108
        Width = 624
        Height = 71
        Caption = 'Representante Comercial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object StaticText48: TStaticText
          Left = 6
          Top = 21
          Width = 94
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Representante'
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
        object StaticText110: TStaticText
          Left = 6
          Top = 44
          Width = 94
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = '% Comiss'#227'o'
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
        object DBLookupComboBox18: TDBLookupComboBox
          Left = 102
          Top = 21
          Width = 512
          Height = 21
          DataField = 'Representante'
          DataSource = Dados.dsClientes
          DropDownRows = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Nome'
          ListSource = dstRepresentantes
          NullValueKey = 46
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit77: TDBEdit
          Left = 102
          Top = 44
          Width = 75
          Height = 21
          DataField = 'Representante_Comissao'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
      end
      object StaticText26: TStaticText
        Left = 6
        Top = 294
        Width = 95
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Pra'#231'a de Pgto.'
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
        Left = 103
        Top = 294
        Width = 222
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Praca_Pagamento'
        DataSource = Dados.dsClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object GroupBox8: TGroupBox
        Left = 0
        Top = 185
        Width = 624
        Height = 71
        Caption = 'Atendente Call Center'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object StaticText112: TStaticText
          Left = 6
          Top = 21
          Width = 94
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Atendente'
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
        object StaticText113: TStaticText
          Left = 6
          Top = 44
          Width = 94
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = '% Comiss'#227'o'
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
        object cAtendente: TDBLookupComboBox
          Left = 102
          Top = 21
          Width = 512
          Height = 21
          DataField = 'Atendente'
          DataSource = Dados.dsClientes
          DropDownRows = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Matricula'
          ListField = 'Matricula;Nome'
          ListFieldIndex = 1
          ListSource = dstAtendentes
          NullValueKey = 46
          ParentFont = False
          TabOrder = 2
        end
        object DBEdit80: TDBEdit
          Left = 102
          Top = 44
          Width = 75
          Height = 21
          DataField = 'Atendente_Comissao'
          DataSource = Dados.dsClientes
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
      end
    end
    object TabSheet13: TTabSheet
      Caption = 'Doc&umentos'
      Enabled = False
      ImageIndex = 12
      object bDocumento: TBitBtn
        Left = 424
        Top = 375
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
        TabOrder = 0
        OnClick = bDocumentoClick
      end
      object BitBtn1: TBitBtn
        Left = 582
        Top = 375
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
        TabOrder = 1
        OnClick = BitBtn1Click
      end
      object cListaDOC: TListBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 718
        Height = 369
        Cursor = crHandPoint
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ItemHeight = 15
        ParentFont = False
        Sorted = True
        TabOrder = 2
        OnDblClick = cListaDocDblClick
      end
    end
  end
  object tCodigo: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM Clientes')
    Left = 46
    Top = 272
  end
  object MunicipioEntrega: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT * FROM Municipios')
    Left = 46
    Top = 320
    object MunicipioEntregaCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object MunicipioEntregaEstado: TSmallintField
      FieldName = 'Estado'
    end
    object MunicipioEntregaNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
  end
  object EstadoEntrega: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT * FROM Estados')
    Left = 128
    Top = 224
    object EstadoEntregaCodigo: TStringField
      FieldName = 'Codigo'
      Size = 2
    end
    object EstadoEntregaNumero: TSmallintField
      FieldName = 'Numero'
    end
    object EstadoEntregaNome: TStringField
      FieldName = 'Nome'
      Size = 30
    end
    object EstadoEntregaMascara_Inscricao: TStringField
      FieldName = 'Mascara_Inscricao'
      Size = 30
    end
    object EstadoEntregaDe_Do: TStringField
      FieldName = 'De_Do'
      FixedChar = True
      Size = 2
    end
  end
  object dsMunicipioEntrega: TDataSource
    DataSet = MunicipioEntrega
    Left = 46
    Top = 368
  end
  object dsEstadoEntrega: TDataSource
    DataSet = EstadoEntrega
    Left = 128
    Top = 272
  end
  object tCodigoPlano: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM PlanoContas')
    FetchRows = 1
    Left = 320
    Top = 224
  end
  object tContaPlano: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT MAX(Conta) AS Conta FROM PlanoContas')
    FetchRows = 1
    Left = 320
    Top = 280
  end
  object tClientes: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM Clientes')
    FetchRows = 1
    Left = 400
    Top = 224
  end
  object tSPC: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Registro) FROM ConsultaSPC')
    FetchRows = 1
    Left = 400
    Top = 288
  end
  object PopupMenu1: TPopupMenu
    Left = 368
    Top = 488
    object Adicionar1: TMenuItem
      Caption = '&Adicionar'
      OnClick = Adicionar1Click
    end
    object Excluir1: TMenuItem
      Caption = '&Excluir'
      OnClick = Excluir1Click
    end
    object Alterar1: TMenuItem
      AutoLineReduction = maAutomatic
      Caption = 'Al&terar'
      OnClick = Alterar1Click
    end
  end
  object tNotas: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 464
    Top = 224
  end
  object XMLBuscaCEP: TXMLDocument
    Left = 128
    Top = 456
    DOMVendorDesc = 'MSXML'
  end
  object tRegistro: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 46
    Top = 224
  end
  object tRepresentantes: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Codigo, Nome, CNPJ, Ramo_Atividade'
      'FROM   Fornecedores'
      
        'WHERE (SELECT Modulo_Clientes FROM RamoAtividade WHERE Codigo = ' +
        'Ramo_Atividade AND Comissionado = 1) = 1 AND Ativo = 1 ')
    Left = 232
    Top = 224
  end
  object dstRepresentantes: TDataSource
    DataSet = tRepresentantes
    Left = 232
    Top = 280
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.pdf'
    Filter = '*.pdf'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Title = 'Documentos'
    Left = 128
    Top = 512
  end
  object tAtendentes: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT Matricula,'
      '       Nome'
      'FROM   Usuarios'
      'WHERE Call_Center = 1')
    Left = 144
    Top = 320
  end
  object dstAtendentes: TDataSource
    DataSet = tAtendentes
    Left = 144
    Top = 368
  end
  object tPedidos: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 464
    Top = 288
  end
  object HTTPRIO1: THTTPRIO
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = False
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 48
    Top = 512
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 48
    Top = 456
  end
  object RESTClient1: TRESTClient
    Params = <>
    Left = 248
    Top = 432
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 248
    Top = 480
  end
  object RESTResponse1: TRESTResponse
    Left = 248
    Top = 528
  end
end
