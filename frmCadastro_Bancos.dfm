object Cadastro_Bancos: TCadastro_Bancos
  Left = 649
  Top = 250
  HelpContext = 204
  BorderStyle = bsDialog
  Caption = 'Cadastro_Bancos'
  ClientHeight = 716
  ClientWidth = 626
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PrintScale = poNone
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 626
    Height = 45
    Align = alTop
    Stretch = True
    ExplicitWidth = 621
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 61
    Height = 21
    Caption = 'BANCOS'
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
  object RxLabel2: TRxLabel
    Left = 8
    Top = 22
    Width = 212
    Height = 18
    Caption = 'Manuten'#231#227'o da tabela de Bancos.'
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
    Top = 684
    Width = 626
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      AlignWithMargins = True
      Left = 557
      Top = 2
      Width = 67
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
      Width = 313
      Height = 28
      Cursor = crHandPoint
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      DataSource = Dados.dsBancos
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
      AlignWithMargins = True
      Left = 317
      Top = 2
      Width = 64
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Pesquisa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bPesquisaClick
    end
    object bHistoricos: TButton
      AlignWithMargins = True
      Left = 383
      Top = 2
      Width = 68
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Hist'#243'ricos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bHistoricosClick
    end
  end
  object Grade: TDBGrid
    Left = 8
    Top = 509
    Width = 609
    Height = 165
    DataSource = Dados.dsBancos
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
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
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 51
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
        Width = 265
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Agencia'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Conta'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Saldo'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end>
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 49
    Width = 612
    Height = 458
    ActivePage = TabSheet1
    TabHeight = 25
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = '&Dados do banco'
      Enabled = False
      ExplicitHeight = 405
      object SpeedButton2: TSpeedButton
        Left = 570
        Top = 210
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
      object StaticText1: TStaticText
        Left = 2
        Top = 5
        Width = 99
        Height = 21
        AutoSize = False
        BevelInner = bvNone
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
        TabOrder = 26
        Transparent = False
      end
      object StaticText5: TStaticText
        Left = 2
        Top = 51
        Width = 99
        Height = 21
        AutoSize = False
        BevelInner = bvNone
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
        TabOrder = 27
        Transparent = False
        StyleElements = []
      end
      object cNome: TDBEdit
        Left = 103
        Top = 51
        Width = 495
        Height = 21
        DataField = 'Nome'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object StaticText2: TStaticText
        Left = 2
        Top = 327
        Width = 99
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BorderStyle = sbsSunken
        Caption = 'Saldo'
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
      object cSaldo: TDBEdit
        Left = 103
        Top = 327
        Width = 135
        Height = 21
        DataField = 'Saldo'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 23
      end
      object StaticText4: TStaticText
        Left = 2
        Top = 74
        Width = 99
        Height = 21
        AutoSize = False
        BevelInner = bvNone
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
        TabOrder = 29
        Transparent = False
        StyleElements = []
      end
      object cConta: TDBEdit
        Left = 103
        Top = 74
        Width = 119
        Height = 21
        DataField = 'Conta'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object StaticText6: TStaticText
        Left = 2
        Top = 97
        Width = 99
        Height = 21
        AutoSize = False
        BevelInner = bvNone
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
        TabOrder = 30
        Transparent = False
        StyleElements = []
      end
      object cAgencia: TDBEdit
        Left = 103
        Top = 97
        Width = 60
        Height = 21
        DataField = 'Agencia'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object cCodigo: TDBEdit
        Left = 103
        Top = 5
        Width = 60
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Codigo'
        DataSource = Dados.dsBancos
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object StaticText7: TStaticText
        Left = 2
        Top = 212
        Width = 99
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BorderStyle = sbsSunken
        Caption = 'Conta Contabil'
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
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 173
        Top = 212
        Width = 396
        Height = 21
        DataField = 'Plano_Contas'
        DataSource = Dados.dsBancos
        DropDownWidth = 500
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Descricao;Conta;Codigo'
        ListSource = dmContab.dsPlanoContas
        ParentFont = False
        TabOrder = 15
      end
      object DBEdit2: TDBEdit
        Left = 103
        Top = 212
        Width = 68
        Height = 21
        DataField = 'Plano_Contas'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
      end
      object StaticText3: TStaticText
        Left = 2
        Top = 143
        Width = 99
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BorderStyle = sbsSunken
        Caption = 'N'#186' Banco'
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
      object cNumeroBanco: TDBEdit
        Left = 103
        Top = 143
        Width = 72
        Height = 21
        DataField = 'Numero_Banco'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 3
        ParentFont = False
        TabOrder = 10
      end
      object StaticText8: TStaticText
        Left = 2
        Top = 120
        Width = 99
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BorderStyle = sbsSunken
        Caption = 'N'#186' '#218'ltimo Cheque'
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
      object DBEdit6: TDBEdit
        Left = 103
        Top = 120
        Width = 119
        Height = 21
        DataField = 'Cheque'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object StaticText9: TStaticText
        Left = 2
        Top = 258
        Width = 99
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BorderStyle = sbsSunken
        Caption = 'C'#243'digo Fornecedor'
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
      object DBEdit7: TDBEdit
        Left = 103
        Top = 258
        Width = 68
        Height = 21
        DataField = 'Conta_Fornecedor'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 18
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 173
        Top = 258
        Width = 425
        Height = 21
        DataField = 'Conta_Fornecedor'
        DataSource = Dados.dsBancos
        DropDownWidth = 470
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Nome;CNPJ'
        ListFieldIndex = 1
        ListSource = Dados.dsFornecedores
        ParentFont = False
        TabOrder = 19
      end
      object StaticText10: TStaticText
        Left = 2
        Top = 304
        Width = 99
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BorderStyle = sbsSunken
        Caption = 'Data Fechamento'
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
      object DBDateEdit7: TDBDateEdit
        Left = 103
        Top = 304
        Width = 119
        Height = 21
        DataField = 'Data_Fechamento'
        DataSource = Dados.dsBancos
        CheckOnExit = True
        DialogTitle = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
        TabOrder = 22
        YearDigits = dyFour
      end
      object DBCheckBox1: TDBCheckBox
        Left = 384
        Top = 5
        Width = 80
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Desativado'
        DataField = 'Desativado'
        DataSource = Dados.dsBancos
        TabOrder = 2
      end
      object StaticText13: TStaticText
        Left = 2
        Top = 28
        Width = 99
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BorderStyle = sbsSunken
        Caption = 'Empresa/Filial'
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
      object cEmpresa: TRxDBLookupCombo
        Left = 103
        Top = 28
        Width = 495
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'Empresa'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo; Estado; CNPJ; Razao_Social'
        LookupDisplayIndex = 3
        LookupSource = Dados.dsEmpresas
        ParentFont = False
        TabOrder = 4
      end
      object cTipo: TDBRadioGroup
        Left = 3
        Top = 378
        Width = 595
        Height = 42
        Caption = 'Tipo de Conta'
        Columns = 4
        DataField = 'Tipo_Conta'
        DataSource = Dados.dsBancos
        Items.Strings = (
          'Conta Investimentos'
          'Conta Empr'#233'stimos'
          'Conta Corrente'
          'Conta Administrativa')
        TabOrder = 25
        Values.Strings = (
          'INVESTIMENTOS'
          'EMRPESTIMOS'
          'CORRENTE'
          'ADMINISTRATIVA')
      end
      object DBEdit3: TDBEdit
        Left = 201
        Top = 143
        Width = 21
        Height = 21
        DataField = 'Digito'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 3
        ParentFont = False
        TabOrder = 11
      end
      object StaticText14: TStaticText
        Left = 177
        Top = 143
        Width = 22
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BorderStyle = sbsSunken
        Caption = 'DV'
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
      object StaticText19: TStaticText
        Left = 165
        Top = 97
        Width = 22
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BorderStyle = sbsSunken
        Caption = 'DV'
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
      object DBEdit10: TDBEdit
        Left = 189
        Top = 97
        Width = 21
        Height = 21
        DataField = 'Digito_Ag'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 3
        ParentFont = False
        TabOrder = 8
      end
      object StaticText23: TStaticText
        Left = 2
        Top = 166
        Width = 99
        Height = 21
        AutoSize = False
        BevelInner = bvNone
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
        TabOrder = 39
        Transparent = False
        StyleElements = []
      end
      object DBEdit14: TDBEdit
        Left = 103
        Top = 166
        Width = 119
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Swift_Code'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
      object StaticText24: TStaticText
        Left = 2
        Top = 189
        Width = 99
        Height = 21
        AutoSize = False
        BevelInner = bvNone
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
        TabOrder = 40
        Transparent = False
        StyleElements = []
      end
      object DBEdit15: TDBEdit
        Left = 103
        Top = 189
        Width = 275
        Height = 21
        CharCase = ecUpperCase
        DataField = 'IBAN'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
      end
      object DBEdit79: TDBEdit
        Left = 103
        Top = 235
        Width = 68
        Height = 21
        DataField = 'Historico'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
      end
      object DBLookupComboBox39: TDBLookupComboBox
        Left = 173
        Top = 235
        Width = 425
        Height = 21
        DataField = 'Historico'
        DataSource = Dados.dsBancos
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo; Descricao'
        ListFieldIndex = 1
        ListSource = dmContab.dsHistoricos
        NullValueKey = 46
        ParentFont = False
        TabOrder = 17
      end
      object StaticText158: TStaticText
        Left = 2
        Top = 235
        Width = 99
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BorderStyle = sbsSunken
        Caption = 'Hist'#243'rico (Transf.)'
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
      object DBCheckBox2: TDBCheckBox
        Left = 189
        Top = 5
        Width = 168
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Gerar Lan'#231'amentos Contabeis'
        DataField = 'Lancamento_Contabil'
        DataSource = Dados.dsBancos
        TabOrder = 1
      end
      object StaticText27: TStaticText
        Left = 241
        Top = 327
        Width = 62
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BorderStyle = sbsSunken
        Caption = 'Data Saldo'
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
      object DBDateEdit1: TDBDateEdit
        Left = 305
        Top = 327
        Width = 119
        Height = 21
        DataField = 'Data_Saldo'
        DataSource = Dados.dsBancos
        CheckOnExit = True
        DialogTitle = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
        TabOrder = 24
        YearDigits = dyFour
      end
      object cFluxo: TDBCheckBox
        Left = 489
        Top = 5
        Width = 96
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Fluxo de Caixa'
        DataField = 'Rel_Fluxo_Caixa'
        DataSource = Dados.dsBancos
        TabOrder = 3
      end
      object StaticText28: TStaticText
        Left = 2
        Top = 281
        Width = 99
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BorderStyle = sbsSunken
        Caption = 'C'#243'digo Cliente'
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
      object DBEdit18: TDBEdit
        Left = 103
        Top = 281
        Width = 68
        Height = 21
        DataField = 'Conta_Cliente'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 20
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 173
        Top = 281
        Width = 425
        Height = 21
        DataField = 'Conta_Cliente'
        DataSource = Dados.dsBancos
        DropDownWidth = 470
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Nome;CNPJ'
        ListFieldIndex = 1
        ListSource = Dados.dsClientes
        ParentFont = False
        TabOrder = 21
      end
      object StaticText29: TStaticText
        Left = 2
        Top = 350
        Width = 99
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BorderStyle = sbsSunken
        Caption = 'Chave PIX'
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
      object DBEdit19: TDBEdit
        Left = 103
        Top = 350
        Width = 495
        Height = 21
        DataField = 'Chave_PIX'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 45
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados do Boleto'
      Enabled = False
      ImageIndex = 1
      ExplicitHeight = 404
      object StaticText15: TStaticText
        Left = 5
        Top = 51
        Width = 107
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Nome Boleto'
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
      object DBEdit4: TDBEdit
        Left = 114
        Top = 51
        Width = 271
        Height = 21
        DataField = 'Nome_Boleto'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object StaticText20: TStaticText
        Left = 5
        Top = 120
        Width = 107
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Nome Arq.Rem.'
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
      object DBEdit11: TDBEdit
        Left = 114
        Top = 120
        Width = 143
        Height = 21
        DataField = 'Nome_Remessa'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object StaticText17: TStaticText
        Left = 5
        Top = 74
        Width = 107
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Local Pgto.Boleto'
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
      object DBEdit8: TDBEdit
        Left = 114
        Top = 74
        Width = 483
        Height = 21
        DataField = 'Boleto_LocalPagamento'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object StaticText16: TStaticText
        Left = 5
        Top = 28
        Width = 107
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Conv'#234'nio'
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
      object DBEdit5: TDBEdit
        Left = 114
        Top = 28
        Width = 96
        Height = 21
        DataField = 'Convenio'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object StaticText12: TStaticText
        Left = 5
        Top = 5
        Width = 107
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'd.Cedente'
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
      object DBEdit1: TDBEdit
        Left = 114
        Top = 5
        Width = 96
        Height = 21
        DataField = 'Codigo_Cedente'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object StaticText21: TStaticText
        Left = 5
        Top = 166
        Width = 107
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Carteira Remessa'
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
      object DBEdit12: TDBEdit
        Left = 114
        Top = 166
        Width = 107
        Height = 21
        DataField = 'Carteira_Remessa'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object StaticText11: TStaticText
        Left = 5
        Top = 97
        Width = 107
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Carteira Boleto'
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
      object cCarteira: TDBEdit
        Left = 114
        Top = 97
        Width = 119
        Height = 21
        DataField = 'Carteira'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object StaticText22: TStaticText
        Left = 5
        Top = 189
        Width = 107
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'digo Transmiss'#227'o'
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
      object DBEdit13: TDBEdit
        Left = 114
        Top = 189
        Width = 175
        Height = 21
        DataField = 'Codigo_Transmissao'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object StaticText18: TStaticText
        Left = 5
        Top = 143
        Width = 107
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#186' '#218'ltima Remessa'
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
      object DBEdit9: TDBEdit
        Left = 114
        Top = 143
        Width = 107
        Height = 21
        DataField = 'Boletos_Remessa'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object StaticText25: TStaticText
        Left = 5
        Top = 212
        Width = 107
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Varia'#231#227'o Carteira'
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
      object DBEdit16: TDBEdit
        Left = 114
        Top = 212
        Width = 63
        Height = 21
        DataField = 'Variacao_Carteira'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 19
      end
      object StaticText26: TStaticText
        Left = 5
        Top = 235
        Width = 107
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'CNPJ Boleto'
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
      object DBEdit17: TDBEdit
        Left = 114
        Top = 235
        Width = 175
        Height = 21
        DataField = 'Boleto_CNPJ'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 21
      end
      object cCarteira2: TDBEdit
        Left = 237
        Top = 97
        Width = 119
        Height = 21
        DataField = 'Carteira2'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 22
      end
      object cCarteira3: TDBEdit
        Left = 360
        Top = 97
        Width = 119
        Height = 21
        DataField = 'Carteira3'
        DataSource = Dados.dsBancos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 23
      end
    end
  end
  object tCodigo: TMSQuery
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM Bancos')
    FetchRows = 1
    Left = 256
    Top = 8
  end
  object tContaPlano: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 312
    Top = 8
  end
  object tCodigoPlano: TMSQuery
    Connection = Dados.Banco_Contabilidade
    FetchRows = 1
    Left = 384
    Top = 8
  end
  object tMovimento: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 448
    Top = 8
  end
  object tBaixas: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 496
    Top = 8
  end
  object tConta: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 544
    Top = 8
  end
end
