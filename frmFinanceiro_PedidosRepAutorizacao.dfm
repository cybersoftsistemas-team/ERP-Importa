object Financeiro_PedidosRepAutorizacao: TFinanceiro_PedidosRepAutorizacao
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Financeiro_PedidosRepAutorizacao'
  ClientHeight = 622
  ClientWidth = 1259
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
    Width = 1259
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitWidth = 984
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 90
    Height = 21
    Caption = 'FINANCEIRO'
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
    Width = 330
    Height = 18
    Caption = 'Autoriza'#231#227'o de Pedidos de Representantes Liberados.'
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
  object Label2: TLabel
    Left = 9
    Top = 515
    Width = 81
    Height = 13
    Caption = 'Pesquisar Pedido'
  end
  object bPesquisa: TSpeedButton
    Left = 210
    Top = 526
    Width = 30
    Height = 29
    Hint = '  Executar pesquisa  '
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
      FFFFFF656A6D6D6B6D6C67696E6F71717375726C6F161D21777C7DC7CACBFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFBEC5C6362326FCD9DAFFE9E9FFFFFFFFFFFFFF
      FFFFFFFFFFFCD9DA9A7274261E1E62686AEEEEEFFFFFFFFFFFFFC7CECF886164
      FACECFF8D7D7AA9A9C5C585B67686A696A6D565458FFE0E0E4ADAFF0B2B22822
      2265696CE9E9E9FFFFFF523A3EFDC5C645363B6D7578BCC2C3FFFFFFF2F5F5E3
      E7E8E4E8E843494C464044986D70FAB8B8131A1A8D8E90FFFFFF6D51564E474C
      FFFFFF67757E544049513F474F3C424D3B3F513B3F465559869292758083A673
      732329295F6163E8E7E824292EFFFFFF404754FFAFBCFFB1C4FFB3C5FFAAB2FF
      A8ACFFA5A8FFA8AABE6C70808D8F767C7C252627656667AEAEAF8E8F926A757C
      FFBAC5F0C0D4FDC9DAFFADC6FFA7BDFFA1A8FFA2A6FFACAFDDA0A00B0000BCC0
      C11E1D1E47494AFFFFFF737577D3DBDEB66A83FFBAD1FFFFFFEED2E6CA9AB5BE
      8C92B48685945E5875362C322B32C3C4C6000000F0F0F0FFFFFFC2C2C4C1C2C2
      D5E3F1764D7BD6B1D1F0A9C5D07C9CB46166A2544D612E2E37262BCFD2D44A4A
      4AFFFFFFFFFFFFFFFFFFFFFFFFBCBDBF61626CFFFFFFCBD0DE7C84A6757B9583
      978A5B6A72A1A6AF8E99A03743462A2E2CEFEFEFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF6263706E6F7A696A72636468575B616363685D6B78B7C1C5CDCDCB545B
      56212522EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFC3C6CC6A716F5D5B5C353835000C0D242222F3F3F3FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C8C73E4741666F
      6A30373B000000343434FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFC9CCCF3A3D3F5A5858242425000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCACA
      CA343434464746050505FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCD767676DBDBDB}
    ParentShowHint = False
    ShowHint = True
    OnClick = bPesquisaClick
  end
  object Panel2: TPanel
    Left = 0
    Top = 592
    Width = 1259
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      Left = 1178
      Top = 1
      Width = 80
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
      Width = 206
      Height = 28
      Cursor = crHandPoint
      DataSource = dstPedidos
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
      ShowHint = True
      TabOrder = 1
    end
    object bLiberar: TButton
      Left = 362
      Top = 1
      Width = 74
      Height = 28
      Hint = 'Libera os pedidos selecionados para faturamento'
      Align = alLeft
      Caption = '&Autorizar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bLiberarClick
      ExplicitLeft = 367
    end
    object bCancelar: TButton
      Left = 504
      Top = 1
      Width = 71
      Height = 28
      Hint = 'Cancela os pedidos selecionados'
      Align = alLeft
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bCancelarClick
      ExplicitLeft = 515
    end
    object bSelTodos: TButton
      Left = 207
      Top = 1
      Width = 75
      Height = 28
      Hint = 'Seleciona todos os pedidos'
      Align = alLeft
      Caption = 'Sel &Todos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bSelTodosClick
    end
    object bSelNenhum: TButton
      Left = 282
      Top = 1
      Width = 80
      Height = 28
      Hint = 'Deseleciona todos os pedidos'
      Align = alLeft
      Caption = 'Sel &Nenhum'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bSelNenhumClick
      ExplicitLeft = 287
    end
    object bDesaut: TButton
      Left = 436
      Top = 1
      Width = 68
      Height = 28
      Hint = 'Libera os pedidos selecionados para faturamento'
      Align = alLeft
      Caption = '&Voltar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = bDesautClick
      ExplicitLeft = 447
    end
  end
  object Grade: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 49
    Width = 1253
    Height = 461
    Align = alTop
    Color = clWhite
    Ctl3D = True
    DataSource = dstPedidos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect, dgTitleClick]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = GradeCellClick
    OnKeyUp = GradeKeyUp
    OnTitleClick = GradeTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Pedido'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 87
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Representant_Nome'
        Title.Alignment = taCenter
        Title.Caption = 'Representante'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 214
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cliente_Nome'
        Title.Alignment = taCenter
        Title.Caption = 'Cliente'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 301
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
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Limite_Cliente'
        Title.Alignment = taCenter
        Title.Caption = 'Limite Cliente'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Limite_Utilizado'
        Title.Alignment = taCenter
        Title.Caption = 'Limite Utilizado'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total_Pedido'
        Title.Alignment = taCenter
        Title.Caption = 'Total Pedido'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 109
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Limite_Saldo'
        Title.Alignment = taCenter
        Title.Caption = 'Saldo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 105
        Visible = True
      end>
  end
  object cOrigem: TRadioGroup
    Left = 276
    Top = 512
    Width = 499
    Height = 48
    Caption = 'Filtrar Origem'
    Columns = 4
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Representantes'
      'E-Commerce'
      'Televendas')
    TabOrder = 2
    OnClick = cOrigemClick
  end
  object StatusBar1: TStatusBar
    AlignWithMargins = True
    Left = 3
    Top = 567
    Width = 1253
    Height = 22
    BorderWidth = 1
    Enabled = False
    Panels = <
      item
        Bevel = pbRaised
        Text = 'Pedidos:'
        Width = 140
      end
      item
        Text = 'Total:'
        Width = 200
      end>
  end
  object cPedido: TEdit
    Left = 8
    Top = 530
    Width = 199
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 4
  end
  object tPedidos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select pr.Pedido'
      '      ,Data = Cast(pr.Data as date)'
      '      ,pr.Origem_Pedido'
      '      ,Representante '
      
        '      ,Representant_Nome = (select Nome from fornecedores where ' +
        'Codigo = pr.Representante)'
      '      ,Cliente'
      '      ,pr.Cliente_Nome'
      
        '      ,Limite_Cliente   = isnull((select Limite_Credito   from C' +
        'lientes where Codigo = Cliente), 0)'
      
        '      ,Limite_Utilizado = isnull((select Limite_Utilizado from C' +
        'lientes where Codigo = Cliente), 0)'
      '      ,Total_Pedido'
      
        '      ,Limite_Saldo     = isnull((select Limite_Credito from Cli' +
        'entes where Codigo = Cliente), 0) - isnull(((select isnull(Limit' +
        'e_Utilizado, 0) from Clientes where Codigo = Cliente) + Total_Pe' +
        'dido), 0)'
      
        '      ,Compras_Cliente  = isnull((select sum(Total_Pedido) from ' +
        'PedidosRepresentantes pr2 where pr2.Cliente = pr.Cliente), 0)'
      
        '      ,Aberto_Cliente   = (select sum(Valor_Total) from PagarRec' +
        'eber cp    where cp.Cliente = pr.Cliente) -'
      
        '                         (select sum(Valor)       from PagarRece' +
        'berBaixas where Numero in(select Numero from PagarReceber cp whe' +
        're cp.Cliente = pr.Cliente))'
      
        '      ,Quantidade = (select sum(isnull(Quantidade, 0)) from Pedi' +
        'dosRepresentantesItens pri where pri.Pedido = pr.Pedido)'
      'from PedidosRepresentantes pr'
      '--where isnull(pr.Autorizado,0) = 0'
      '')
    Left = 173
    Top = 122
    object tPedidosPedido: TStringField
      FieldName = 'Pedido'
      Size = 10
    end
    object tPedidosData: TWideStringField
      FieldName = 'Data'
      ReadOnly = True
      Size = 10
    end
    object tPedidosOrigem_Pedido: TStringField
      FieldName = 'Origem_Pedido'
      Size = 10
    end
    object tPedidosRepresentante: TSmallintField
      FieldName = 'Representante'
    end
    object tPedidosRepresentant_Nome: TStringField
      FieldName = 'Representant_Nome'
      ReadOnly = True
      Size = 60
    end
    object tPedidosCliente: TSmallintField
      FieldName = 'Cliente'
    end
    object tPedidosCliente_Nome: TStringField
      FieldName = 'Cliente_Nome'
      Size = 50
    end
    object tPedidosLimite_Cliente: TCurrencyField
      FieldName = 'Limite_Cliente'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tPedidosLimite_Utilizado: TCurrencyField
      FieldName = 'Limite_Utilizado'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tPedidosTotal_Pedido: TCurrencyField
      FieldName = 'Total_Pedido'
      DisplayFormat = ',##0.00'
    end
    object tPedidosLimite_Saldo: TCurrencyField
      FieldName = 'Limite_Saldo'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tPedidosQuantidade: TFloatField
      FieldName = 'Quantidade'
      ReadOnly = True
      DisplayFormat = ',##0.000'
    end
  end
  object dstPedidos: TDataSource
    DataSet = tPedidos
    Left = 174
    Top = 179
  end
  object tTmp: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select pr.Pedido'
      '      ,Data = Cast(pr.Data as date)'
      '      ,pr.Origem_Pedido'
      '      ,Representante '
      
        '      ,Representant_Nome = (select Nome from fornecedores where ' +
        'Codigo = pr.Representante)'
      '      ,Cliente'
      '      ,pr.Cliente_Nome'
      
        '      ,Limite_Cliente   = isnull((select Limite_Credito   from C' +
        'lientes where Codigo = Cliente), 0)'
      
        '      ,Limite_Utilizado = isnull((select Limite_Utilizado from C' +
        'lientes where Codigo = Cliente), 0)'
      '      ,Total_Pedido'
      
        '      ,Limite_Saldo     = isnull((select Limite_Credito from Cli' +
        'entes where Codigo = Cliente), 0) - isnull(((select isnull(Limit' +
        'e_Utilizado, 0) from Clientes where Codigo = Cliente) + Total_Pe' +
        'dido), 0)'
      
        '      ,Compras_Cliente  = isnull((select sum(Total_Pedido) from ' +
        'PedidosRepresentantes pr2 where pr2.Cliente = pr.Cliente), 0)'
      
        '     ,Aberto_Cliente   = (select sum(Valor_Total) from PagarRece' +
        'ber cp    where cp.Cliente = pr.Cliente) -'
      
        '                         (select sum(Valor)       from PagarRece' +
        'berBaixas where Numero in(select Numero from PagarReceber cp whe' +
        're cp.Cliente = pr.Cliente))'
      'from PedidosRepresentantes pr'
      'where isnull(pr.Autorizado,0) = 0'
      'and Cliente = 12')
    Left = 227
    Top = 122
  end
end
