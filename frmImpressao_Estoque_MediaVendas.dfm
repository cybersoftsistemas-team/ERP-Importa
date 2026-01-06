object Impressao_Estoque_MediaVendas: TImpressao_Estoque_MediaVendas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Impressao_Estoque_MediaVendas'
  ClientHeight = 291
  ClientWidth = 657
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 657
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitTop = 3
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 165
    Height = 21
    Caption = 'IMPRESS'#195'O - ESTOQUE'
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
    Width = 241
    Height = 18
    Caption = 'M'#233'dia Mensal de Vendas de Produtos .'
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
  object bPesqProd: TSpeedButton
    Left = 624
    Top = 127
    Width = 22
    Height = 22
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
      B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
      1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
      BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
      BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
    OnClick = bPesqProdClick
  end
  object bPesqCli: TSpeedButton
    Left = 624
    Top = 150
    Width = 22
    Height = 22
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
      B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
      1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
      BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
      BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
    OnClick = bPesqCliClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 259
    Width = 657
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      AlignWithMargins = True
      Left = 590
      Top = 2
      Width = 66
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bImprimir: TButton
      AlignWithMargins = True
      Left = 523
      Top = 2
      Width = 66
      Height = 28
      Cursor = crHandPoint
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
      OnClick = bImprimirClick
    end
  end
  object StaticText6: TStaticText
    Left = 13
    Top = 129
    Width = 90
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
    TabOrder = 1
    Transparent = False
    StyleElements = []
  end
  object cProduto: TRxDBLookupCombo
    Left = 105
    Top = 129
    Width = 519
    Height = 21
    DropDownCount = 30
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 15
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo;Codigo_Fabricante;Descricao_Reduzida'
    LookupDisplayIndex = 2
    LookupSource = dstProdutos
    ParentFont = False
    TabOrder = 2
  end
  object StaticText3: TStaticText
    Left = 13
    Top = 106
    Width = 90
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Linha'
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
  object cLinha: TRxDBLookupCombo
    Left = 105
    Top = 106
    Width = 540
    Height = 21
    DropDownCount = 30
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 15
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo;Descricao'
    LookupDisplayIndex = 1
    LookupSource = Dados.dsProdutosLinhas
    ParentFont = False
    TabOrder = 4
  end
  object StaticText5: TStaticText
    Left = 13
    Top = 175
    Width = 90
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
    TabOrder = 5
    Transparent = False
    StyleElements = []
  end
  object cNCM: TMaskEdit
    Left = 105
    Top = 175
    Width = 95
    Height = 21
    EditMask = '9999.99.99;0; '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    TabOrder = 6
    Text = ''
  end
  object cSaldo: TCheckBox
    Left = 13
    Top = 218
    Width = 159
    Height = 17
    Caption = 'Apenas Produtos com Saldo.'
    Checked = True
    State = cbChecked
    TabOrder = 7
  end
  object StaticText4: TStaticText
    Left = 13
    Top = 152
    Width = 90
    Height = 21
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
    TabOrder = 8
    Transparent = False
    StyleElements = []
  end
  object cCliente: TRxDBLookupCombo
    Left = 105
    Top = 152
    Width = 519
    Height = 21
    DropDownCount = 30
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemHeight = 15
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo;CNPJ;Nome'
    LookupDisplayIndex = 2
    LookupSource = dstClientes
    ParentFont = False
    TabOrder = 9
  end
  object StaticText7: TStaticText
    Left = 13
    Top = 83
    Width = 90
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'M'#233'dia M'#234's Inicial'
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
  object cMesIni: TSpinEdit
    Left = 105
    Top = 83
    Width = 65
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 2
    MaxValue = 12
    MinValue = 1
    ParentFont = False
    TabOrder = 11
    Value = 3
  end
  object StaticText8: TStaticText
    Left = 13
    Top = 60
    Width = 90
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'M'#233'dia Ano Inicial'
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
  object cAnoIni: TSpinEdit
    Left = 105
    Top = 60
    Width = 65
    Height = 22
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 4
    MaxValue = 0
    MinValue = 0
    ParentFont = False
    TabOrder = 13
    Value = 2023
  end
  object StaticText9: TStaticText
    Left = 176
    Top = 60
    Width = 90
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'M'#233'dia Ano Final'
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
  object cAnoFim: TSpinEdit
    Left = 268
    Top = 60
    Width = 65
    Height = 22
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 4
    MaxValue = 0
    MinValue = 0
    ParentFont = False
    TabOrder = 15
    Value = 2023
  end
  object StaticText10: TStaticText
    Left = 176
    Top = 83
    Width = 90
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'M'#233'dia M'#234's Final'
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
  object cMesFim: TSpinEdit
    Left = 268
    Top = 83
    Width = 65
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    MaxLength = 2
    MaxValue = 12
    MinValue = 1
    ParentFont = False
    TabOrder = 17
    Value = 3
  end
  object tItens: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Codigo_Mercadoria'
      
        '      ,Linha_Cod = (select pr.Linha from Produtos pr where pr.Co' +
        'digo = Codigo_Mercadoria)'
      '      ,Janeiro_2020 = [12020]'
      '      ,Fevereiro_2020 = [22020]'
      '      ,Mar'#231'o_2020 = [32020]'
      '      ,Janeiro_2021 = [42021]'
      '      ,Fevereiro_2021 = [52021]'
      '      ,Mar'#231'o_2021 = [62021]'
      '      ,Janeiro_2022 = [72022]'
      '      ,Fevereiro_2022 = [82022]'
      '      ,Mar'#231'o_2022 = [92022]'
      '      ,Janeiro_2023 = [102023]'
      '      ,Fevereiro_2023 = [112023]'
      '      ,Mar'#231'o_2023 = [122023]'
      'into #temp'
      'from (select Codigo_Mercadoria'
      '            ,Quantidade = sum(Quantidade)'
      
        '            ,Mes = cast(month(Data) as varchar(2))+cast(YEAR(Dat' +
        'a) as varchar(4))'
      '      from PedidosRepresentantesItens pri'
      '      where Cancelado <> 1'
      '      and Data between '#39'01/01/2020'#39' and '#39'12/31/2023'#39
      '      and Codigo_Mercadoria > 0'
      '      and Cancelado <> 1'
      '      group by Codigo_Mercadoria, Data) as Tabela'
      
        'pivot (sum(Quantidade) for Mes in([12020],[22020],[32020],[42021' +
        '],[52021],[62021],[72022],[82022],[92022],[102023],[112023],[122' +
        '023])) as PivotTable'
      'select Produto = Codigo_Mercadoria'
      
        '      ,SKU = rtrim(ltrim((select pr.Codigo_SKU from Produtos pr ' +
        'where pr.Codigo = #temp.Codigo_Mercadoria)))'
      
        '      ,Linha = (select Descricao from ProdutosLinhas pl where pl' +
        '.Codigo = Linha_Cod)'
      
        '      ,Descricao = ltrim(substring((select pr.Descricao_reduzida' +
        ' from Produtos pr where pr.Codigo = #temp.Codigo_Mercadoria), 1,' +
        ' charindex('#39'<{'#39', (select pr.Descricao from Produtos pr where pr.' +
        'Codigo = #temp.Codigo_Mercadoria))-1))'
      '      '
      #9'  ,Janeiro_2020 = isnull(Janeiro_2020, 0)'
      '      ,Fevereiro_2020 = isnull(Fevereiro_2020, 0)'
      '      ,Mar'#231'o_2020 = isnull(Mar'#231'o_2020, 0)'
      
        '      ,Media_2020 = (isnull(Janeiro_2020, 0)+isnull(Fevereiro_20' +
        '20, 0)+isnull(Mar'#231'o_2020, 0)) / 3'
      '      '
      #9'  ,Janeiro_2021 = isnull(Janeiro_2021, 0)'
      '      ,Fevereiro_2021 = isnull(Fevereiro_2021, 0)'
      '      ,Mar'#231'o_2021 = isnull(Mar'#231'o_2021, 0)'
      
        '      ,Media_2021 = (isnull(Janeiro_2021, 0)+isnull(Fevereiro_20' +
        '21, 0)+isnull(Mar'#231'o_2021, 0)) / 3'
      '      '
      #9'  ,Janeiro_2022 = isnull(Janeiro_2022, 0)'
      '      ,Fevereiro_2022 = isnull(Fevereiro_2022, 0)'
      '      ,Mar'#231'o_2022 = isnull(Mar'#231'o_2022, 0)'
      
        '      ,Media_2022 = (isnull(Janeiro_2022, 0)+isnull(Fevereiro_20' +
        '22, 0)+isnull(Mar'#231'o_2022, 0)) / 3'
      '      '
      #9'  ,Janeiro_2023 = isnull(Janeiro_2023, 0)'
      '      ,Fevereiro_2023 = isnull(Fevereiro_2023, 0)'
      '      ,Mar'#231'o_2023 = isnull(Mar'#231'o_2023, 0)'
      
        '      ,Media_2023 = (isnull(Janeiro_2023, 0)+isnull(Fevereiro_20' +
        '23, 0)+isnull(Mar'#231'o_2023, 0)) / 3'
      ''
      
        '      ,Estoque = cast((isnull((select sum(Quantidade) from Notas' +
        'Itens where Codigo_Mercadoria = #Temp.Codigo_Mercadoria and Said' +
        'a_Entrada = 0 and Movimenta_Estoque = 1 and Cancelada <> 1 and i' +
        'snull(NFe_Denegada, 0) = 0), 0) +'
      
        '                       isnull((select sum(Quantidade) from Notas' +
        'TerceirosItens where Codigo_Mercadoria = #Temp.Codigo_Mercadoria' +
        ' and Movimenta_Estoque = 1), 0) +'
      
        '                       isnull((select sum(Quantidade_Entrada) fr' +
        'om ProdutosTransferencia where Produto_Entrada = #Temp.Codigo_Me' +
        'rcadoria), 0) -'
      
        '                       isnull((select sum(Quantidade) from Notas' +
        'Itens nfi where Codigo_Mercadoria = #Temp.Codigo_Mercadoria and ' +
        'Saida_Entrada = 1 and Movimenta_Estoque = 1 and Cancelada <> 1 a' +
        'nd isnull(NFe_Denegada, 0) = 0'
      
        '                               and (select Finalidade_Mercadoria' +
        ' from TipoNota tpn where tpn.Codigo = nfi.Tipo_Nota) <> 4), 0) -'
      
        '                       isnull((select sum(Quantidade) from Pedid' +
        'osItens pdi where Codigo_Mercadoria = #Temp.Codigo_Mercadoria an' +
        'd Saida_Entrada = 1 and Movimenta_Estoque = 1'
      
        '                               and (select Finalidade_Mercadoria' +
        ' from TipoNota tpn where tpn.Codigo = pdi.Tipo_Nota) <> 4), 0)) ' +
        '-'
      
        '                       isnull((select sum(Quantidade) from Produ' +
        'tosTransferencia where Produto_Saida = #Temp.Codigo_Mercadoria),' +
        ' 0) -'
      
        '                       isnull((select sum(Quantidade) from Pedid' +
        'osRepresentantesItens pri where Codigo_Mercadoria = #Temp.Codigo' +
        '_Mercadoria and isnull(Faturamento, 0) = 0 and isnull(Faturado, ' +
        '0) = 0'
      
        '                               and (select isnull(Cancelado, 0) ' +
        'from PedidosRepresentantes pr where pr.Pedido = pri.Pedido) = 0)' +
        ', 0) '
      '                       as decimal(14,3))'
      
        '      ,Custo = (select isnull(Unitario_Saldo, 0) from FichaInven' +
        'tario fi where fi.Codigo = #temp.Codigo_Mercadoria and fi.Item =' +
        ' (select isnull(max(Item), 0) from FichaInventario fi2 where fi2' +
        '.Codigo = fi.Codigo))'
      'into #temp2'
      'from #temp'
      'select * from #temp2'
      'where Estoque > 0'
      'order by Linha, Produto'
      'drop table #temp, #temp2')
    FetchRows = 1
    Left = 396
    Top = 152
  end
  object dstItens: TDataSource
    DataSet = tItens
    Left = 396
    Top = 200
  end
  object tClientes: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Codigo, CNPJ, Nome from Clientes order by Nome')
    FetchRows = 1
    Left = 343
    Top = 152
    object tClientesCodigo: TIntegerField
      DisplayWidth = 4
      FieldName = 'Codigo'
    end
    object tClientesCNPJ: TStringField
      DisplayWidth = 12
      FieldName = 'CNPJ'
      EditMask = '##.###.###/####-##;0; '
      Size = 14
    end
    object tClientesNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
  end
  object dstClientes: TDataSource
    DataSet = tClientes
    Left = 343
    Top = 200
  end
  object tProdutos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Codigo, Codigo_Fabricante, Descricao_Reduzida'
      'from Produtos'
      'where Codigo in((select distinct Codigo_Mercadoria '
      '                 from NotasItens '
      #9#9#9#9' where Saida_Entrada = 1'
      #9#9#9#9' and Cancelada <> 1'
      #9#9#9#9' union all'
      #9#9#9#9' select distinct Codigo_Mercadoria '
      '                 from PedidosRepresentantesItens'
      #9#9#9#9' where Cancelado <> 1'
      #9#9#9#9' ))'
      'order by Descricao_Reduzida'
      '')
    FetchRows = 1
    Left = 274
    Top = 152
  end
  object dstProdutos: TDataSource
    DataSet = tProdutos
    Left = 274
    Top = 200
  end
end
