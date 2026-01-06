object Pedido_TelevendasItens: TPedido_TelevendasItens
  Left = 390
  Top = 138
  BorderStyle = bsDialog
  Caption = 'Pedido_TelevendasItens'
  ClientHeight = 751
  ClientWidth = 1107
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = '-'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object Shape1: TShape
    AlignWithMargins = True
    Left = 844
    Top = 7
    Width = 257
    Height = 310
  end
  object cImagem: TImage
    AlignWithMargins = True
    Left = 849
    Top = 11
    Width = 247
    Height = 301
    Cursor = crHandPoint
    Center = True
    Proportional = True
    Transparent = True
  end
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 663
    Width = 1101
    Height = 53
    Align = alBottom
    Caption = 'TOTAIS DO PEDIDO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNone
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    StyleElements = [seClient, seBorder]
    object Image5: TImage
      Left = 721
      Top = 16
      Width = 175
      Height = 31
      Stretch = True
    end
    object Image1: TImage
      Left = 5
      Top = 16
      Width = 175
      Height = 31
      Stretch = True
    end
    object Label13: TLabel
      Left = 9
      Top = 18
      Width = 80
      Height = 11
      Caption = 'ICMS Operacional:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Image2: TImage
      Left = 184
      Top = 16
      Width = 175
      Height = 31
      Stretch = True
    end
    object Label15: TLabel
      Left = 188
      Top = 18
      Width = 80
      Height = 11
      Caption = 'ICMS Substitutivo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 725
      Top = 18
      Width = 107
      Height = 11
      Caption = 'Total dos Produtos + IPI:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Image4: TImage
      Left = 542
      Top = 16
      Width = 175
      Height = 31
      Stretch = True
    end
    object Label19: TLabel
      Left = 546
      Top = 18
      Width = 41
      Height = 11
      Caption = 'Desconto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Image3: TImage
      Left = 363
      Top = 16
      Width = 175
      Height = 31
      Stretch = True
    end
    object Label21: TLabel
      Left = 367
      Top = 18
      Width = 17
      Height = 11
      Caption = 'IPI:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lTotalICMS: TLabel
      Left = 7
      Top = 27
      Width = 168
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194368
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lTotalICMSST: TLabel
      Left = 186
      Top = 27
      Width = 168
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194368
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lTotalIPI: TLabel
      Left = 365
      Top = 27
      Width = 168
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194368
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lTotalDesconto: TLabel
      Left = 544
      Top = 27
      Width = 168
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194368
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lTotalProdutos: TLabel
      Left = 723
      Top = 27
      Width = 168
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194368
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Image6: TImage
      Left = 900
      Top = 16
      Width = 194
      Height = 31
      Stretch = True
    end
    object Label1: TLabel
      Left = 904
      Top = 18
      Width = 72
      Height = 11
      Caption = 'Total c/Impostos:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lTotalImpostos: TLabel
      Left = 902
      Top = 27
      Width = 187
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4194368
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 719
    Width = 1107
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      AlignWithMargins = True
      Left = 1043
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
      Width = 385
      Height = 28
      Cursor = crHandPoint
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
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
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 389
      Top = 2
      Width = 75
      Height = 28
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Catalogo'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object Panel4: TPanel
    AlignWithMargins = True
    Left = 5
    Top = 7
    Width = 832
    Height = 287
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 2
    object bPesquisa: TSpeedButton
      Left = 798
      Top = 49
      Width = 26
      Height = 25
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
    object bRecalculo: TSpeedButton
      Left = 372
      Top = 174
      Width = 57
      Height = 52
      Cursor = crHandPoint
      Hint = '  Recalcula os valores do Item   '
      BiDiMode = bdRightToLeft
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -40
      Font.Name = 'Terminal'
      Font.Style = [fsBold]
      Glyph.Data = {
        76020000424D7602000000000000760000002800000020000000200000000100
        0400000000000002000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888800
        0000000888888888888888888888888008888808888888888888888888888888
        0088888888888888888888888888888880088888888888888888888888888888
        8700888888888888888888888888888880088888888888888888888888888888
        0088888888888888888888888888888008888808888888888888888888888800
        0000000888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888888888888888
        8888888888888888888888888888888888888888888888888888}
      Layout = blGlyphBottom
      ParentFont = False
      ParentShowHint = False
      ParentBiDiMode = False
      ShowHint = True
      Spacing = 0
      OnClick = cQuantidadeExit
    end
    object StaticText6: TStaticText
      Left = 5
      Top = 51
      Width = 126
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
      TabOrder = 15
      Transparent = False
      StyleElements = []
    end
    object StaticText7: TStaticText
      Left = 5
      Top = 97
      Width = 126
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
      TabOrder = 19
      Transparent = False
      StyleElements = []
    end
    object cProduto: TRxDBLookupCombo
      Left = 250
      Top = 51
      Width = 546
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
      LookupDisplay = 'Descricao_Reduzida'
      LookupDisplayIndex = 1
      LookupSource = Dados.dsProdutos
      ParentFont = False
      TabOrder = 2
      OnChange = cProdutoExit
      OnExit = cProdutoExit
    end
    object cQuantidade: TDBEdit
      Left = 133
      Top = 97
      Width = 115
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
      OnExit = cQuantidadeExit
    end
    object StaticText8: TStaticText
      Left = 5
      Top = 120
      Width = 126
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor'
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
    object cValor: TDBEdit
      Left = 133
      Top = 120
      Width = 115
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
      Width = 126
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
      TabOrder = 21
      Transparent = False
      StyleElements = []
    end
    object DBEdit12: TDBEdit
      Left = 133
      Top = 5
      Width = 85
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
      TabOrder = 16
      StyleElements = [seFont, seBorder]
    end
    object cTotal: TCurrencyEdit
      Left = 250
      Top = 258
      Width = 115
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 12895370
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 18
    end
    object cCodigo: TDBEdit
      Left = 133
      Top = 51
      Width = 115
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
      TabOrder = 1
      OnExit = cProdutoExit
    end
    object StaticText1: TStaticText
      Left = 5
      Top = 74
      Width = 126
      Height = 21
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
      TabOrder = 22
      Transparent = False
      StyleElements = []
    end
    object DBEdit3: TDBEdit
      Left = 133
      Top = 74
      Width = 115
      Height = 21
      DataField = 'NCM'
      DataSource = Dados.dsProdutos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      TabOrder = 3
    end
    object StaticText3: TStaticText
      Left = 251
      Top = 74
      Width = 53
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Unidade'
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
    object DBEdit4: TDBEdit
      Left = 306
      Top = 74
      Width = 51
      Height = 21
      DataField = 'Unidade'
      DataSource = Dados.dsProdutos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit5: TDBEdit
      Left = 223
      Top = 5
      Width = 510
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
      TabOrder = 17
      StyleElements = [seFont, seBorder]
    end
    object StaticText2: TStaticText
      Left = 5
      Top = 143
      Width = 67
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'IPI'
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
    object StaticText4: TStaticText
      Left = 5
      Top = 212
      Width = 67
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'ICMS Oper.'
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
    object DBEdit6: TDBEdit
      Left = 74
      Top = 143
      Width = 57
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'Aliquota_IPI'
      DataSource = Dados.dsPedidosRepresentantesItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object DBEdit7: TDBEdit
      Left = 74
      Top = 212
      Width = 57
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'Aliquota_ICMS'
      DataSource = Dados.dsPedidosRepresentantesItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object cValorIPI: TCurrencyEdit
      Left = 133
      Top = 143
      Width = 115
      Height = 21
      TabStop = False
      AutoSize = False
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object cValorICMS: TCurrencyEdit
      Left = 133
      Top = 212
      Width = 115
      Height = 21
      TabStop = False
      AutoSize = False
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object StaticText5: TStaticText
      Left = 5
      Top = 235
      Width = 67
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'ICMS ST'
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
      Left = 74
      Top = 235
      Width = 57
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'Aliquota_ICMSST'
      DataSource = Dados.dsPedidosRepresentantesItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
    end
    object cValorICMSST: TCurrencyEdit
      Left = 133
      Top = 235
      Width = 115
      Height = 21
      TabStop = False
      AutoSize = False
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
    end
    object StaticText10: TStaticText
      Left = 5
      Top = 189
      Width = 67
      Height = 21
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
      TabOrder = 27
      Transparent = False
      StyleElements = []
    end
    object DBEdit2: TDBEdit
      Left = 74
      Top = 189
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Desconto'
      DataSource = Dados.dsPedidosRepresentantesItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnExit = cValorExit
    end
    object cTotalIPI: TCurrencyEdit
      Left = 250
      Top = 143
      Width = 115
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 12895370
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 28
    end
    object cTotalICMS: TCurrencyEdit
      Left = 250
      Top = 212
      Width = 115
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 12895370
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 29
    end
    object cTotalICMSST: TCurrencyEdit
      Left = 250
      Top = 235
      Width = 115
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 12895370
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 30
    end
    object StaticText11: TStaticText
      Left = 5
      Top = 258
      Width = 126
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Unit'#225'rio c/Impostos'
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
    object cValorImpostos: TCurrencyEdit
      Left = 133
      Top = 258
      Width = 115
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 12895370
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 32
    end
    object cTotalDesconto: TCurrencyEdit
      Left = 250
      Top = 189
      Width = 115
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 12895370
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 33
    end
    object StaticText12: TStaticText
      Left = 5
      Top = 166
      Width = 126
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor  (Unit'#225'rio - IPI)'
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
    object cTotalUnitarioIPI: TCurrencyEdit
      Left = 250
      Top = 166
      Width = 115
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 12895370
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 35
    end
    object cValorUnitarioIPI: TCurrencyEdit
      Left = 133
      Top = 166
      Width = 115
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 12895370
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 36
    end
    object cTotalUnitario: TCurrencyEdit
      Left = 250
      Top = 120
      Width = 115
      Height = 21
      TabStop = False
      AutoSize = False
      Color = 12895370
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 37
    end
    object StaticText14: TStaticText
      Left = 737
      Top = 5
      Width = 30
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
      TabOrder = 38
      Transparent = False
      StyleElements = []
    end
    object cItem: TDBEdit
      Left = 769
      Top = 5
      Width = 55
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
      TabOrder = 39
      StyleElements = [seFont, seBorder]
      OnChange = cItemChange
    end
    object cValorDesconto: TCurrencyEdit
      Left = 133
      Top = 189
      Width = 115
      Height = 21
      TabStop = False
      AutoSize = False
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = True
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object StaticText16: TStaticText
      Left = 251
      Top = 97
      Width = 68
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Pre'#231'o Custo'
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
      Visible = False
      StyleElements = []
    end
    object bCusto: TDBEdit
      Left = 320
      Top = 97
      Width = 115
      Height = 21
      AutoSize = False
      CharCase = ecUpperCase
      Color = 12189695
      DataField = 'Valor_CustoMedio'
      DataSource = Dados.dsProdutos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 41
      Visible = False
      StyleElements = [seFont, seBorder]
      OnChange = bCustoChange
    end
    object bPromocao: TButton
      Left = 436
      Top = 96
      Width = 63
      Height = 24
      Cursor = crHandPoint
      Hint = 'Copiar valor de promo'#231#227'o para o valor do or'#231'amento'
      Caption = '&Utilizar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 42
      Visible = False
      OnClick = bPromocaoClick
    end
    object StaticText13: TStaticText
      Left = 5
      Top = 28
      Width = 126
      Height = 21
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
      TabOrder = 43
      Transparent = False
      StyleElements = []
    end
    object cTabela: TRxDBLookupCombo
      Left = 133
      Top = 28
      Width = 115
      Height = 21
      DropDownCount = 8
      DataField = 'Tabela_Comissao'
      DataSource = Dados.dsPedidosRepresentantesItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Descricao'
      LookupDisplayIndex = 1
      LookupSource = dmComercial.dsTabelaComissoes
      ParentFont = False
      TabOrder = 0
    end
  end
  object GradeItens: TDBGrid
    AlignWithMargins = True
    Left = 5
    Top = 300
    Width = 832
    Height = 357
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
    TabOrder = 3
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
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 44
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
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Codigo_SKU'
        Title.Alignment = taCenter
        Title.Caption = 'SKU'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 120
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
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 462
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
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
  object DBMemo1: TDBMemo
    AlignWithMargins = True
    Left = 843
    Top = 323
    Width = 257
    Height = 249
    TabStop = False
    BevelOuter = bvSpace
    Color = 12189695
    DataField = 'Descricao'
    DataSource = Dados.dsProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    StyleElements = [seBorder]
  end
  object GroupBox2: TGroupBox
    Left = 843
    Top = 578
    Width = 257
    Height = 79
    Caption = 'ESTOQUE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object Image7: TImage
      Left = 7
      Top = 16
      Width = 243
      Height = 55
      Stretch = True
    end
    object lMinimo: TLabel
      Left = 83
      Top = 21
      Width = 161
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      StyleElements = [seClient, seBorder]
    end
    object Label3: TLabel
      Left = 17
      Top = 25
      Width = 47
      Height = 13
      Caption = 'MIN'#205'MO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      StyleElements = [seClient, seBorder]
    end
    object lDisponivel: TLabel
      Left = 83
      Top = 45
      Width = 161
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0,000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      StyleElements = [seClient, seBorder]
    end
    object Label7: TLabel
      Left = 17
      Top = 49
      Width = 75
      Height = 13
      Caption = 'DISPON'#205'VEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      StyleElements = [seClient, seBorder]
    end
  end
  object tPesquisa: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 224
    Top = 413
  end
  object tEstoque: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 308
    Top = 412
  end
  object tItem: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 384
    Top = 416
  end
  object tTotal: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 460
    Top = 417
  end
end
