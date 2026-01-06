object Pedido_TelevendasCatalogo: TPedido_TelevendasCatalogo
  Left = 0
  Top = 0
  VertScrollBar.Smooth = True
  VertScrollBar.Style = ssFlat
  AlphaBlendValue = 240
  BorderStyle = bsToolWindow
  Caption = 'Pedido_TelevendasCatalogo'
  ClientHeight = 982
  ClientWidth = 1497
  Color = clBtnFace
  TransparentColorValue = clNone
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnMouseWheel = FormMouseWheel
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 16
    Top = 320
    Width = 19
    Height = 13
    Caption = 'SKU'
  end
  object DBText3: TDBText
    Left = 80
    Top = 320
    Width = 161
    Height = 17
    DataField = 'SKU'
    DataSource = dstItens
  end
  object Grade: TDBCtrlGrid
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 1487
    Height = 940
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    AllowDelete = False
    AllowInsert = False
    ColCount = 5
    Color = clWhite
    DataSource = dstItens
    PanelHeight = 313
    PanelWidth = 294
    ParentColor = False
    TabOrder = 0
    SelectedColor = 16744576
    StyleElements = []
    OnDblClick = GradeDblClick
    OnKeyUp = GradeKeyUp
    OnPaintPanel = GradePaintPanel
    ExplicitHeight = 831
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 284
      Height = 303
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      Enabled = False
      ParentBackground = False
      TabOrder = 0
      StyleElements = [seFont, seBorder]
      ExplicitHeight = 267
      DesignSize = (
        284
        303)
      object cImagem: TImage
        Left = 0
        Top = 0
        Width = 284
        Height = 148
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Align = alTop
        Center = True
        Proportional = True
      end
      object Label1: TLabel
        Left = 3
        Top = 243
        Width = 87
        Height = 22
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Caption = 'C'#211'DIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        StyleElements = [seClient, seBorder]
        ExplicitTop = 207
      end
      object DBText1: TDBText
        Left = 87
        Top = 243
        Width = 193
        Height = 25
        Alignment = taRightJustify
        Anchors = [akLeft, akRight, akBottom]
        DataField = 'Codigo'
        DataSource = dstItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        StyleElements = [seClient, seBorder]
        ExplicitTop = 207
      end
      object Label4: TLabel
        Left = 3
        Top = 279
        Width = 87
        Height = 22
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Caption = 'VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        StyleElements = [seClient, seBorder]
        ExplicitTop = 243
      end
      object DBText4: TDBText
        Left = 87
        Top = 279
        Width = 193
        Height = 25
        Alignment = taRightJustify
        Anchors = [akLeft, akRight, akBottom]
        DataField = 'Valor'
        DataSource = dstItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        StyleElements = [seClient, seBorder]
        ExplicitTop = 243
      end
      object Label5: TLabel
        Left = 3
        Top = 261
        Width = 87
        Height = 22
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Caption = 'DISPON'#205'VEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        StyleElements = [seClient, seBorder]
        ExplicitTop = 225
      end
      object DBText5: TDBText
        Left = 87
        Top = 261
        Width = 193
        Height = 25
        Alignment = taRightJustify
        Anchors = [akLeft, akRight, akBottom]
        DataField = 'Estoque'
        DataSource = dstItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        StyleElements = [seClient, seBorder]
        ExplicitTop = 225
      end
      object DBMemo1: TDBMemo
        Left = -1
        Top = 152
        Width = 278
        Height = 51
        BorderStyle = bsNone
        DataField = 'Descricao_Reduzida'
        DataSource = dstItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16744448
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        StyleElements = [seClient, seBorder]
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 950
    Width = 1497
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    ExplicitTop = 841
    object bPesquisa: TSpeedButton
      Left = 949
      Top = 3
      Width = 32
      Height = 28
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
    object Label6: TLabel
      Left = 484
      Top = 9
      Width = 54
      Height = 18
      Alignment = taCenter
      AutoSize = False
      Caption = 'Pesquisar'
      Color = clBtnShadow
      EllipsisPosition = epEndEllipsis
      GlowSize = 20
      ParentColor = False
      Transparent = True
      StyleElements = [seFont, seBorder]
    end
    object cLimpar: TSpeedButton
      Left = 981
      Top = 3
      Width = 32
      Height = 28
      Glyph.Data = {
        AA030000424DAA03000000000000360000002800000011000000110000000100
        1800000000007403000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF4F5FAC9CDEFA8AEE49EA5E0ADB3E6D3D6F1FDFDFCFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFEEEFF77C84D72837C7
        0C1EC6081BCC091BCD091BCB0F21C53343C8959DDDFDFDFCFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFCFD3EE313EC40517C91629DA1F30E61F31EC1E32ED1F31EC
        1D30E41225D70617C54E5ACBEBECF7FFFFFFFFFFFF00FFFFFFD9DCF22131C30E
        20CF1E32E81227F01C30FA2439FE2238FE2337FF1428F7182DF01F32E30819CA
        4350C9F4F5F9FFFFFF00FDFDFD4A55CC0C1CCE1E31EA1529F07983EA4A59EE23
        38FE3045FF2237F67B88E94354ED1327F62033E40417C77881D5FFFFFF00C2C6
        EA091AC51C2FE41B2EEE969EEDFFFFFDE1E3F24657EC2033F3929CEBFFFFFBE6
        E7F44555ED182CF3192CDD1729C4E5E8F5006D76D50A1DCF192EF01C31F1C0C4
        EFFFFFFFFFFFFFDADDF4A1A9EAFFFFFDFFFFFFFEFEF76371EA1329FA1A2EE904
        17C8A4AAE4002E3BC81E2FDB3749F54556FF5664F4C7CBF2FFFFFDFFFFFFFFFF
        FFFFFFFEF2F3FA8893EF4A5DFB4659FE3445F21022D26B75D6002E3BC7606CEA
        6472F96B7AFF6978FF6977F0E7E8F6FFFFFFFFFFFFFFFFFEA7ADEE5D6CFB707F
        FF6877FF6472F7505DE1636DD1004955CE7580EC707DF97382FF7582F7C4C7F3
        FDFCFDFFFFFFFFFFFFFFFFFFEDEDF9949DF27281FD7482FE6F7DF56975E37A83
        DA006A74D47A84E77F8AF7818DF8D0D3F3FFFFFEFFFFFFF0F2F9D7DBF5FFFFFE
        FFFFFFF8F8F8A0A9F47E8AFC808DF46E78E09AA1E200A3A9E2707ADE939DF591
        9AF6E0E3F8FFFFFFF5F5F9AAB2F5929CF6D3D7F5FFFFFEFDFEFBB3B9F48C95FA
        96A0F46973DACACEEE00E6E8F55F6BD3A4ADF19EA6F9A0A8F9D8DAF5B9BFF6A2
        ABFEA9B1FFA3ACFAD5D9F5BEC4F799A3FBA2AAF89AA1EB737CD6F9F9FC00FFFF
        FFA4AAE2727CDBBBC2F6B0B5F9ABB1FAADB5FEB3B9FFB2B9FFB1B8FFA9B3FCAB
        B2FBB2B8F8B6BCF46E79D8C9CCEDFFFFFF00FFFFFFFFFFFE9299DD7A83DBC1C6
        F4C8CCFBBFC5FBBFC3FBBFC3FBBFC3FBC0C5FAC8CDFAB9BEF27580D8B3BAE7FF
        FFFFFFFFFF00FFFFFFFFFFFFFFFFFFAAB0E4717CD6979FE3BDC1F0CED1F8D3D4
        FACCCFF6B8BDEF9299E27983D8C3C8EDFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFEDEFF7B6BCE99499E1808ADD8089DB858EDE99A1E1C2C7ECF8F8
        FBFFFFFFFFFFFFFFFFFFFFFFFF00}
      OnClick = cLimparClick
    end
    object bSair: TButton
      AlignWithMargins = True
      Left = 1433
      Top = 2
      Width = 62
      Height = 28
      Cursor = crHandPoint
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
      Width = 223
      Height = 28
      Cursor = crHandPoint
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      DataSource = dstItens
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
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
    end
    object cPesquisa: TEdit
      Left = 541
      Top = 4
      Width = 407
      Height = 25
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnKeyDown = cPesquisaKeyDown
    end
  end
  object tItens: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Codigo'
      '      ,SKU = Codigo_SKU'
      '      ,Descricao'
      '      ,Descricao_Reduzida'
      '      ,Minimo = Estoque_Minimo'
      '      ,Estoque = Estoque_Disponivel'
      '      ,Valor = Valor_Venda'
      '      ,Peso_Liquido'
      '      ,Aliquota_IPI'
      '      ,Desconto_A'
      'from Produtos')
    Left = 391
    Top = 419
    object tItensCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tItensSKU: TStringField
      FieldName = 'SKU'
    end
    object tItensDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object tItensMinimo: TFloatField
      FieldName = 'Minimo'
      DisplayFormat = ',##0.000'
    end
    object tItensEstoque: TFloatField
      FieldName = 'Estoque'
      DisplayFormat = ',##0.000'
    end
    object tItensValor: TCurrencyField
      FieldName = 'Valor'
      DisplayFormat = 'R$ ,##0.00'
    end
    object tItensDescricao_Reduzida: TStringField
      FieldName = 'Descricao_Reduzida'
      Size = 60
    end
    object tItensPeso_Liquido: TFloatField
      FieldName = 'Peso_Liquido'
    end
    object tItensAliquota_IPI: TFloatField
      FieldName = 'Aliquota_IPI'
    end
    object tItensDesconto_A: TFloatField
      FieldName = 'Desconto_A'
    end
  end
  object dstItens: TDataSource
    DataSet = tItens
    Left = 392
    Top = 472
  end
end
