object Pedido_TelevendasItensComb: TPedido_TelevendasItensComb
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pedido_TelevendasItensComb'
  ClientHeight = 515
  ClientWidth = 826
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 6
    Top = 428
    Width = 814
    Height = 51
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alBottom
    Caption = 'Totais do Pedido'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      814
      51)
    object Image6: TImage
      Left = 648
      Top = 13
      Width = 160
      Height = 31
      Anchors = [akTop, akRight]
      Stretch = True
      ExplicitLeft = 656
    end
    object Label1: TLabel
      Left = 652
      Top = 18
      Width = 60
      Height = 11
      Anchors = [akTop, akRight]
      Caption = 'Total Produtos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      ExplicitLeft = 660
    end
    object lTotal: TLabel
      Left = 652
      Top = 24
      Width = 151
      Height = 19
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194368
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      ExplicitLeft = 660
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 485
    Width = 826
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object bSair: TButton
      Left = 763
      Top = 1
      Width = 62
      Height = 28
      Cursor = crHandPoint
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
      Width = 358
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsPedidosRepresentantesItens
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
      TabStop = True
      BeforeAction = NavegaBforeAction
      OnClick = NavegaClick
    end
  end
  object gItens: TGroupBox
    AlignWithMargins = True
    Left = 6
    Top = 210
    Width = 814
    Height = 209
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Align = alBottom
    Caption = 'Itens do Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object GradeItens: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 804
      Height = 186
      Align = alClient
      Ctl3D = True
      DataSource = Dados.dsPedidosRepresentantesItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Item'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 36
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'Codigo_Mercadoria'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao_Mercadoria'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 451
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Quantidade'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Unitario'
          Title.Alignment = taCenter
          Title.Caption = 'Valor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 111
          Visible = True
        end>
    end
  end
  object Panel4: TPanel
    AlignWithMargins = True
    Left = 6
    Top = 6
    Width = 814
    Height = 195
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Align = alClient
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 3
    object bPesquisa: TSpeedButton
      Left = 783
      Top = 49
      Width = 25
      Height = 24
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
      OnClick = bPesquisaClick
    end
    object StaticText6: TStaticText
      Left = 5
      Top = 51
      Width = 112
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Produto'
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
    object StaticText7: TStaticText
      Left = 5
      Top = 74
      Width = 112
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Quantidade'
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
    object cProduto: TRxDBLookupCombo
      Left = 236
      Top = 51
      Width = 548
      Height = 21
      DropDownCount = 8
      DataField = 'Codigo_Mercadoria'
      DataSource = Dados.dsPedidosRepresentantesItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo;Descricao'
      LookupDisplayIndex = 1
      LookupSource = Dados.dsProdutos
      ParentFont = False
      TabOrder = 4
    end
    object cQuantidade: TDBEdit
      Left = 119
      Top = 74
      Width = 160
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Quantidade'
      DataSource = Dados.dsPedidosRepresentantesItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnChange = cQuantidadeChange
    end
    object StaticText8: TStaticText
      Left = 5
      Top = 97
      Width = 112
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Unit'#225'rio'
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
    object cValor: TDBEdit
      Left = 119
      Top = 97
      Width = 160
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Valor_Unitario'
      DataSource = Dados.dsPedidosRepresentantesItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnExit = cValorExit
    end
    object StaticText9: TStaticText
      Left = 5
      Top = 5
      Width = 112
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Pedido N'#186
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
    object DBEdit12: TDBEdit
      Left = 119
      Top = 5
      Width = 114
      Height = 21
      CharCase = ecUpperCase
      Color = 12189695
      DataField = 'Pedido'
      DataSource = Dados.dsPedidosRepresentantesItens
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      StyleElements = [seFont, seBorder]
    end
    object StaticText13: TStaticText
      Left = 236
      Top = 5
      Width = 69
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Data Pedido'
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
      Left = 119
      Top = 51
      Width = 114
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Codigo_Mercadoria'
      DataSource = Dados.dsPedidosRepresentantesItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnExit = cCodigoExit
    end
    object GroupBox2: TGroupBox
      Left = 569
      Top = 93
      Width = 233
      Height = 87
      Caption = 'Estoque'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      object Label4: TLabel
        Left = 6
        Top = 20
        Width = 42
        Height = 13
        Caption = 'M'#237'nimo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 6
        Top = 41
        Width = 78
        Height = 13
        Caption = 'Produto Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 6
        Top = 62
        Width = 51
        Height = 13
        Caption = 'Armaz'#233'm'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cMinimo: TCurrencyEdit
        Left = 90
        Top = 13
        Width = 138
        Height = 21
        AutoSize = False
        Color = 12189695
        DecimalPlaces = 3
        DisplayFormat = ',0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object cDisponivel: TCurrencyEdit
        Left = 90
        Top = 36
        Width = 138
        Height = 21
        AutoSize = False
        Color = 12189695
        DecimalPlaces = 3
        DisplayFormat = ',0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object cArmazem: TCurrencyEdit
        Left = 90
        Top = 59
        Width = 138
        Height = 21
        AutoSize = False
        Color = 12189695
        DecimalPlaces = 3
        DisplayFormat = ',0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
    object DBEdit5: TDBEdit
      Left = 386
      Top = 5
      Width = 422
      Height = 21
      TabStop = False
      Color = 12189695
      DataField = 'Nome_Cliente'
      DataSource = Dados.dsPedidosRepresentantes
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      StyleElements = [seFont, seBorder]
    end
    object StaticText14: TStaticText
      Left = 5
      Top = 28
      Width = 112
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Item'
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
    object cItem: TDBEdit
      Left = 119
      Top = 28
      Width = 114
      Height = 21
      CharCase = ecUpperCase
      Color = 12189695
      DataField = 'Item'
      DataSource = Dados.dsPedidosRepresentantesItens
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      StyleElements = [seFont, seBorder]
    end
    object StaticText1: TStaticText
      Left = 5
      Top = 166
      Width = 112
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Total do Produto'
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
    object cTotal: TCurrencyEdit
      Left = 119
      Top = 166
      Width = 160
      Height = 21
      AutoSize = False
      Color = 12189695
      DecimalPlaces = 3
      DisplayFormat = ',0.000'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
    end
    object StaticText2: TStaticText
      Left = 5
      Top = 120
      Width = 112
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Pre'#231'o Petrobras'
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
    object StaticText3: TStaticText
      Left = 5
      Top = 143
      Width = 112
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Pr'#234'mio'
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
    object cPremio: TCurrencyEdit
      Left = 119
      Top = 143
      Width = 160
      Height = 21
      AutoSize = False
      Color = 12189695
      DecimalPlaces = 3
      DisplayFormat = ',0.000'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 18
    end
    object DBEdit1: TDBEdit
      Left = 119
      Top = 120
      Width = 160
      Height = 21
      CharCase = ecUpperCase
      Color = 12189695
      DataField = 'Valor_Minimo'
      DataSource = Dados.dsPedidosRepresentantesItens
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
      StyleElements = [seFont, seBorder]
      OnChange = cQuantidadeChange
    end
    object DBEdit2: TDBEdit
      Left = 307
      Top = 5
      Width = 77
      Height = 21
      CharCase = ecUpperCase
      Color = 12189695
      DataField = 'Data'
      DataSource = Dados.dsPedidosRepresentantesItens
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
      StyleElements = [seFont, seBorder]
    end
  end
  object tPesquisa: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 251
    Top = 311
  end
  object tEstoque: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 302
    Top = 311
  end
  object tItem: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 343
    Top = 311
  end
  object tTotal: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 377
    Top = 311
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 411
    Top = 311
  end
end
