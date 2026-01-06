object Pedido_ItensOutrosDetalhe: TPedido_ItensOutrosDetalhe
  Left = 485
  Top = 267
  ActiveControl = bSair
  BorderStyle = bsToolWindow
  Caption = 'Pedido_ItensOutrosDetalhe'
  ClientHeight = 372
  ClientWidth = 802
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Grade: TRxDBGrid
    Left = 4
    Top = 131
    Width = 794
    Height = 203
    DataSource = Dados.dsPedidosItensDetalhe
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    RowColor2 = 16776176
    Columns = <
      item
        Expanded = False
        FieldName = 'Pedido'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Produto_Codigo'
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Detalhe'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 53
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Detalhe_Descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o Detalhe'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 435
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
        Title.Font.Style = []
        Width = 113
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 343
    Width = 802
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    ExplicitTop = 339
    DesignSize = (
      802
      29)
    object bSair: TButton
      Left = 731
      Top = 1
      Width = 71
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      Left = 2
      Top = 1
      Width = 378
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsPedidosItensDetalhe
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
  end
  object Panel2: TPanel
    Left = 4
    Top = 4
    Width = 794
    Height = 123
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 2
    object StaticText2: TStaticText
      Left = 5
      Top = 28
      Width = 70
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
      TabOrder = 5
      Transparent = False
      StyleElements = []
    end
    object StaticText4: TStaticText
      Left = 5
      Top = 97
      Width = 70
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
      TabOrder = 6
      Transparent = False
      StyleElements = []
    end
    object cQuantidade: TDBEdit
      Left = 77
      Top = 97
      Width = 128
      Height = 21
      DataField = 'Quantidade'
      DataSource = Dados.dsPedidosItensDetalhe
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object cCodigo: TDBEdit
      Left = 77
      Top = 28
      Width = 114
      Height = 21
      Color = 12189695
      DataField = 'Codigo_Mercadoria'
      DataSource = Dados.dsPedidosItens
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      Left = 528
      Top = 9
      Width = 261
      Height = 94
      Caption = 'Estoque'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      object Label1: TLabel
        Left = 6
        Top = 18
        Width = 92
        Height = 13
        Caption = 'Estoque M'#237'nimo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 6
        Top = 42
        Width = 96
        Height = 13
        Caption = 'Total do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 6
        Top = 69
        Width = 117
        Height = 13
        Caption = 'Total (Lote/Detalhe)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cMinimo: TCurrencyEdit
        Left = 127
        Top = 9
        Width = 128
        Height = 26
        AutoSize = False
        Color = 12189695
        DecimalPlaces = 3
        DisplayFormat = ',0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object cDisponivel: TCurrencyEdit
        Left = 127
        Top = 36
        Width = 128
        Height = 26
        AutoSize = False
        Color = 12189695
        DecimalPlaces = 3
        DisplayFormat = ',0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object cDisponivelDetalhe: TCurrencyEdit
        Left = 127
        Top = 63
        Width = 128
        Height = 26
        AutoSize = False
        Color = 12189695
        DecimalPlaces = 3
        DisplayFormat = ',0.000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
    object StaticText23: TStaticText
      Left = 5
      Top = 5
      Width = 70
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Pedido'
      Color = 7293440
      Enabled = False
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
    object DBEdit15: TDBEdit
      Left = 77
      Top = 5
      Width = 114
      Height = 21
      TabStop = False
      Color = 12189695
      DataField = 'Numero'
      DataSource = Dados.dsPedidos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object lDetalhe: TStaticText
      Left = 5
      Top = 51
      Width = 70
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Detalhe'
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
    object cDetalhe: TRxDBLookupCombo
      Left = 77
      Top = 51
      Width = 436
      Height = 21
      DropDownCount = 8
      DisplayAllFields = True
      DataField = 'Detalhe'
      DataSource = Dados.dsPedidosItensDetalhe
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'Detalhe'
      LookupDisplay = 'Detalhe;Nome_Detalhe'
      LookupSource = dstProdutosDetalhe
      ParentFont = False
      TabOrder = 2
      OnChange = cDetalheChange
    end
    object lLote: TStaticText
      Left = 5
      Top = 74
      Width = 70
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Lote'
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
    object cLote: TRxDBLookupCombo
      Left = 77
      Top = 74
      Width = 436
      Height = 21
      DropDownCount = 8
      DisplayAllFields = True
      DataField = 'Lote'
      DataSource = Dados.dsPedidosItensDetalhe
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'Lote'
      LookupDisplay = 'Lote;Descricao'
      LookupSource = dsProdutosLote
      ParentFont = False
      TabOrder = 3
      OnChange = cLoteChange
    end
  end
  object tEstoque: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 248
    Top = 16
  end
  object tRegistro: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 280
    Top = 16
  end
  object tProdutosDetalhe: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT DISTINCT'
      '       Detalhe'
      
        '      ,Nome_Detalhe = (SELECT Descricao FROM Cybersoft_Cadastros' +
        '.dbo.Detalhes WHERE Codigo = Detalhe)'
      'FROM   ProdutosDetalhe'
      
        'WHERE  Produto_Codigo = 239 AND Lote IN(SELECT DISTINCT Lote FRO' +
        'M ProdutosDetalhe WHERE Produto_Codigo = 239)'
      'ORDER BY Nome_Detalhe')
    FetchRows = 1
    Left = 332
    Top = 16
    object tProdutosDetalheNome_Detalhe: TStringField
      FieldName = 'Nome_Detalhe'
      Origin = '.'
      ReadOnly = True
      Size = 30
    end
    object tProdutosDetalheDetalhe: TSmallintField
      FieldName = 'Detalhe'
      Origin = 'ProdutosDetalhe.Detalhe'
    end
  end
  object dstProdutosDetalhe: TDataSource
    DataSet = tProdutosDetalhe
    Left = 362
    Top = 16
  end
  object tProdutosLote: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT DISTINCT'
      '       Lote'
      '      ,Descricao'
      'FROM   ProdutosDetalhe'
      
        'WHERE  Produto_Codigo = 140 AND Lote IN(SELECT DISTINCT Lote FRO' +
        'M ProdutosDetalhe WHERE Produto_Codigo = 140)'
      'ORDER BY Descricao')
    FetchRows = 1
    Left = 404
    Top = 16
    object tProdutosLoteLote: TStringField
      FieldName = 'Lote'
      Size = 15
    end
    object tProdutosLoteDescricao: TStringField
      FieldName = 'Descricao'
      Size = 30
    end
  end
  object dsProdutosLote: TDataSource
    DataSet = tProdutosLote
    Left = 434
    Top = 16
  end
  object tItem: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 216
    Top = 16
  end
end
