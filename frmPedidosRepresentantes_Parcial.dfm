object PedidosRepresentantes_Parcial: TPedidosRepresentantes_Parcial
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'PedidosRepresentantes_Parcial'
  ClientHeight = 502
  ClientWidth = 1039
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 472
    Width = 1039
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      AlignWithMargins = True
      Left = 969
      Top = 2
      Width = 68
      Height = 26
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
    object bLiberar: TButton
      AlignWithMargins = True
      Left = 895
      Top = 2
      Width = 72
      Height = 26
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = 'Li&berar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bLiberarClick
    end
  end
  object Grade: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1033
    Height = 323
    Align = alClient
    DataSource = dstItens
    FixedColor = 14811135
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnColExit = GradeColExit
    Columns = <
      item
        Color = 15395562
        Expanded = False
        FieldName = 'Codigo_Mercadoria'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 77
        Visible = True
      end
      item
        Color = 15395562
        Expanded = False
        FieldName = 'Descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 429
        Visible = True
      end
      item
        Color = 15395562
        Expanded = False
        FieldName = 'Valor_Unitario'
        Title.Alignment = taCenter
        Title.Caption = 'Unit'#225'rio'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Total'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Width = 100
        Visible = True
      end
      item
        Color = 15395562
        Expanded = False
        FieldName = 'Quantidade'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde.Pedida'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Saldo'
        Title.Alignment = taCenter
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Qtde_Parcial'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde.Liberada'
        Width = 100
        Visible = True
      end>
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 332
    Width = 1033
    Height = 137
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    object Label1: TLabel
      Left = 24
      Top = 60
      Width = 106
      Height = 13
      Caption = 'Liberar por Percentual'
    end
    object Label2: TLabel
      Left = 24
      Top = 84
      Width = 79
      Height = 13
      Caption = 'Liberar por Valor'
    end
    object Label3: TLabel
      Left = 24
      Top = 36
      Width = 74
      Height = 13
      Caption = 'Total do Pedido'
    end
    object Label4: TLabel
      Left = 24
      Top = 11
      Width = 32
      Height = 13
      Caption = 'Pedido'
    end
    object Label5: TLabel
      Left = 24
      Top = 108
      Width = 111
      Height = 13
      Caption = 'Liberar por Quantidade'
    end
    object bAplicar: TButton
      Left = 284
      Top = 56
      Width = 76
      Height = 69
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Caption = 'Aplicar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bAplicarClick
    end
    object cPerc: TCurrencyEdit
      Left = 141
      Top = 56
      Width = 140
      Height = 21
      DisplayFormat = '0.00%'
      TabOrder = 0
      OnExit = cPercExit
    end
    object cValor: TCurrencyEdit
      Left = 141
      Top = 80
      Width = 140
      Height = 21
      DisplayFormat = ',##0.00'
      TabOrder = 1
      OnExit = cValorExit
    end
    object cTotal: TCurrencyEdit
      Left = 141
      Top = 32
      Width = 140
      Height = 21
      Color = 16759225
      DisplayFormat = ',##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      OnExit = cPercExit
    end
    object cPedido: TEdit
      Left = 141
      Top = 8
      Width = 140
      Height = 21
      Color = 16759225
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      StyleElements = [seFont, seBorder]
    end
    object cQtde: TCurrencyEdit
      Left = 141
      Top = 104
      Width = 140
      Height = 21
      DecimalPlaces = 3
      DisplayFormat = ',##0.000'
      TabOrder = 5
      OnExit = cValorExit
    end
  end
  object tItens: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select  Item'
      '       ,Pedido'
      '       ,Codigo_Mercadoria'
      
        '       ,Descricao = (select Descricao from Produtos prd where pr' +
        'd.Codigo = pri.Codigo_Mercadoria)'
      '       ,Valor_Unitario'
      '       ,Valor_Total = Valor_Unitario * Quantidade'
      '       ,Quantidade'
      '       ,Qtde_Parcial = (50*Quantidade)/100'
      
        '       ,Saldo = Quantidade - (select sum(Quantidade) from Pedido' +
        'sRepresentantesItens ite where ite.Pedido_Pai = pri.Pedido and i' +
        'te.Codigo_Mercadoria = pri.Codigo_Mercadoria and ite.Item = pri.' +
        'Item)'
      'from PedidosRepresentantesItens pri'
      'where codigo_Mercadoria = 3')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 402
    Top = 93
    object tItensItem: TSmallintField
      FieldName = 'Item'
      ReadOnly = True
    end
    object tItensCodigo_Mercadoria: TIntegerField
      FieldName = 'Codigo_Mercadoria'
      ReadOnly = True
    end
    object tItensDescricao: TStringField
      FieldName = 'Descricao'
      ReadOnly = True
      Size = 5000
    end
    object tItensValor_Unitario: TCurrencyField
      FieldName = 'Valor_Unitario'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tItensValor_Total: TFloatField
      FieldName = 'Valor_Total'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tItensQuantidade: TFloatField
      FieldName = 'Quantidade'
      ReadOnly = True
      DisplayFormat = ',##0.000'
    end
    object tItensSaldo: TFloatField
      FieldName = 'Saldo'
      ReadOnly = True
      DisplayFormat = ',##0.000'
    end
    object tItensPedido: TStringField
      FieldName = 'Pedido'
      Size = 10
    end
    object tItensQtde_Parcial: TFloatField
      FieldName = 'Qtde_Parcial'
      ReadOnly = True
      DisplayFormat = ',##0.000'
    end
  end
  object dstItens: TDataSource
    DataSet = tItens
    Left = 402
    Top = 150
  end
  object tCopia: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 331
    Top = 93
  end
  object tTmp: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 330
    Top = 150
  end
  object tTmp2: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 330
    Top = 206
  end
end
