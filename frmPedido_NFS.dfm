object Pedido_NFS: TPedido_NFS
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pedido_NFS'
  ClientHeight = 411
  ClientWidth = 613
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
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 613
    Height = 42
    Align = alTop
    Stretch = True
    ExplicitLeft = -5
  end
  object RxLabel3: TRxLabel
    Left = 3
    Top = 2
    Width = 293
    Height = 21
    Caption = 'PEDIDO NOTA FISCAL DE SERVI'#199'O (NFS-e)'
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
  object lTitulo: TRxLabel
    Left = 3
    Top = 20
    Width = 280
    Height = 18
    Caption = 'Pedido de Notas Fiscais de Servi'#231'os Prestado.'
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
    Top = 381
    Width = 613
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      Left = 550
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
      Width = 239
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsPedidoServico
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
      Left = 296
      Top = 1
      Width = 65
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Align = alLeft
      Caption = '&Pesquisa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      ExplicitLeft = 369
    end
    object bItens: TButton
      Left = 240
      Top = 1
      Width = 56
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Align = alLeft
      Caption = '&Itens'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bItensClick
    end
    object bDuplicatas: TButton
      Left = 361
      Top = 1
      Width = 101
      Height = 28
      Cursor = crHandPoint
      Hint = '   Mostrar os itens da nota fiscal.'
      Align = alLeft
      Caption = 'Gerar &Duplicatas'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object bXML: TButton
      Left = 462
      Top = 1
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = 'Gerar XML da Nota'
      Align = alLeft
      Caption = 'Gerar &XML'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bXMLClick
      ExplicitLeft = 470
    end
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 45
    Width = 607
    Height = 333
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabHeight = 28
    TabOrder = 1
    TabWidth = 100
    object TabSheet1: TTabSheet
      Caption = '&Dados da Nota'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      object Image5: TImage
        Left = 264
        Top = 258
        Width = 160
        Height = 33
        Stretch = True
      end
      object Image6: TImage
        Left = 427
        Top = 258
        Width = 166
        Height = 33
        Stretch = True
      end
      object Image4: TImage
        Left = 3
        Top = 258
        Width = 95
        Height = 33
        Stretch = True
      end
      object Image3: TImage
        Left = 101
        Top = 258
        Width = 160
        Height = 33
        Stretch = True
      end
      object Label4: TLabel
        Left = 6
        Top = 261
        Width = 56
        Height = 11
        Caption = 'Al'#237'quota ISS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        StyleElements = [seClient, seBorder]
      end
      object DBText1: TDBText
        Left = 13
        Top = 272
        Width = 79
        Height = 16
        Alignment = taRightJustify
        DataField = 'Aliquota_ISS'
        DataSource = Dados.dsPedidoServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 104
        Top = 261
        Width = 57
        Height = 11
        Caption = 'Valor do ISS:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        StyleElements = [seClient, seBorder]
      end
      object cValorISS: TDBText
        Left = 105
        Top = 272
        Width = 152
        Height = 16
        Alignment = taRightJustify
        DataField = 'Valor_ISS'
        DataSource = Dados.dsPedidoServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 270
        Top = 261
        Width = 88
        Height = 11
        Caption = 'Impostos Dedut'#237'veis:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        StyleElements = [seClient, seBorder]
      end
      object Label5: TLabel
        Left = 436
        Top = 261
        Width = 44
        Height = 11
        Caption = 'Total Nota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = True
        StyleElements = [seClient, seBorder]
      end
      object cTotalLiquido: TDBText
        Left = 441
        Top = 272
        Width = 147
        Height = 16
        Alignment = taRightJustify
        DataField = 'Total_Nota'
        DataSource = Dados.dsPedidoServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object bPesqFor: TSpeedButton
        Left = 567
        Top = 52
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
      end
      object DBText2: TDBText
        Left = 272
        Top = 271
        Width = 147
        Height = 16
        Alignment = taRightJustify
        DataField = 'Total_Dedutiveis'
        DataSource = Dados.dsPedidoServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object cCliente: TDBLookupComboBox
        Left = 127
        Top = 54
        Width = 440
        Height = 21
        DataField = 'Cliente'
        DataSource = Dados.dsPedidoServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Nome;CNPJ'
        ListSource = Dados.dsClientes
        ParentFont = False
        TabOrder = 2
        OnExit = cClienteExit
      end
      object cPedido: TDBEdit
        Left = 127
        Top = 8
        Width = 60
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Numero'
        DataSource = Dados.dsPedidoServico
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnChange = cPedidoChange
      end
      object lNome: TStaticText
        Left = 5
        Top = 54
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
        TabOrder = 10
        Transparent = False
        StyleElements = []
      end
      object lNota: TStaticText
        Left = 5
        Top = 8
        Width = 120
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Pedido'
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
      object DBMemo1: TDBMemo
        Left = 127
        Top = 169
        Width = 466
        Height = 52
        DataField = 'Observacao'
        DataSource = Dados.dsPedidoServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object StaticText24: TStaticText
        Left = 5
        Top = 169
        Width = 120
        Height = 52
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
        TabOrder = 12
        Transparent = False
        StyleElements = []
      end
      object StaticText7: TStaticText
        Left = 5
        Top = 31
        Width = 120
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Refer'#234'ncia'
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
      object cCentroCusto: TDBLookupComboBox
        Left = 127
        Top = 100
        Width = 440
        Height = 21
        DataField = 'Centro_Custo'
        DataSource = Dados.dsPedidoServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = Dados.dsCentroCusto
        NullValueKey = 46
        ParentFont = False
        TabOrder = 4
      end
      object lCentroCusto: TStaticText
        Left = 5
        Top = 100
        Width = 120
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Centro Custo'
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
      object StaticText3: TStaticText
        Left = 5
        Top = 77
        Width = 120
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Natureza da Opera'#231#227'o'
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
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 127
        Top = 77
        Width = 440
        Height = 21
        DataField = 'Natureza_Operacao'
        DataSource = Dados.dsPedidoServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao_NF'
        ListFieldIndex = 1
        ListSource = Dados.dsNatureza
        ParentFont = False
        TabOrder = 3
      end
      object StaticText6: TStaticText
        Left = 5
        Top = 123
        Width = 120
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Al'#237'quota do ISS'
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
      object DBEdit2: TDBEdit
        Left = 127
        Top = 123
        Width = 49
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Aliquota_ISS'
        DataSource = Dados.dsPedidoServico
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object StaticText12: TStaticText
        Left = 5
        Top = 146
        Width = 120
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Classifica'#231#227'o de Servi'#231'o'
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
      object cClass: TDBLookupComboBox
        Left = 127
        Top = 146
        Width = 466
        Height = 21
        DataField = 'Classificacao_Servico'
        DataSource = Dados.dsPedidoServico
        DropDownWidth = 500
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo; Descricao'
        ListFieldIndex = 1
        ListSource = Dados.dsServicosClass
        ParentFont = False
        TabOrder = 8
      end
      object cReferencia: TRxDBLookupCombo
        Left = 127
        Top = 31
        Width = 440
        Height = 21
        DropDownCount = 20
        DisplayAllFields = True
        DataField = 'Referencia_Fiscal'
        DataSource = Dados.dsPedidoServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Servico;Descricao'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsReferenciasFiscais
        ParentFont = False
        TabOrder = 1
        OnExit = cReferenciaExit
      end
      object DBCheckBox1: TDBCheckBox
        Left = 374
        Top = 124
        Width = 116
        Height = 17
        Caption = 'Reten'#231#227'o de ISS'
        DataField = 'Retencao_ISS'
        DataSource = Dados.dsPedidoServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object StaticText1: TStaticText
        Left = 181
        Top = 123
        Width = 63
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Valor do ISS'
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
      object DBEdit1: TDBEdit
        Left = 246
        Top = 123
        Width = 123
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Valor_ISS'
        DataSource = Dados.dsPedidoServico
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Itens'
      ImageIndex = 2
      object GradeItens: TDBGrid
        Left = 0
        Top = 0
        Width = 599
        Height = 295
        Align = alClient
        DataSource = Dados.dsPedidoServicoItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo_Mercadoria'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 72
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
            Width = 339
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Title.Alignment = taCenter
            Title.Caption = 'Qtde'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Liquido'
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 83
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Lista de Pedidos'
      ImageIndex = 2
      object Grade: TDBGrid
        Left = 0
        Top = 0
        Width = 599
        Height = 295
        Align = alClient
        DataSource = Dados.dsPedidoServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Numero'
            Title.Alignment = taCenter
            Title.Caption = 'Pedido'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Processo'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Referencia_Fiscal'
            Title.Alignment = taCenter
            Title.Caption = 'TP NF'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 40
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ClienteNome'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 268
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total_Nota'
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 122
            Visible = True
          end>
      end
    end
  end
  object ttmp: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 266
    Top = 251
  end
  object NFS: TACBrNFSe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.CodigoMunicipio = 0
    Configuracoes.Geral.ConsultaLoteAposEnvio = False
    Configuracoes.Geral.Emitente.DadosSenhaParams = <>
    Configuracoes.Geral.Resposta = 0
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Left = 362
    Top = 252
  end
end
