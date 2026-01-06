object PedidosRepresentantes_PedidoNF: TPedidosRepresentantes_PedidoNF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'PedidosRepresentantes_PedidoNF'
  ClientHeight = 615
  ClientWidth = 843
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 585
    Width = 843
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      Left = 777
      Top = 1
      Width = 65
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
    object bGerar: TButton
      Left = 681
      Top = 1
      Width = 96
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Align = alRight
      Caption = '&Gerar Pedido'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bGerarClick
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 6
    Top = 233
    Width = 831
    Height = 346
    Margins.Left = 6
    Margins.Right = 6
    Margins.Bottom = 6
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 5
      Top = 8
      Width = 458
      Height = 309
      Color = 14286847
      DataSource = dstDisponivel
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      StyleElements = [seFont, seBorder]
      Columns = <
        item
          Expanded = False
          FieldName = 'Navio_Nome'
          Title.Alignment = taCenter
          Title.Caption = 'Navio Nome'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 226
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Disponivel'
          Title.Alignment = taCenter
          Title.Caption = 'Dispon'#237'vel'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 128
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
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
    object gFracao: TGroupBox
      Left = 469
      Top = 0
      Width = 354
      Height = 315
      Caption = 'Fracionar Pedido'
      TabOrder = 1
      object Label1: TLabel
        Left = 9
        Top = 18
        Width = 56
        Height = 13
        Caption = 'Quantidade'
      end
      object Label2: TLabel
        Left = 9
        Top = 164
        Width = 110
        Height = 13
        Caption = 'Dividir em Partes iguais'
      end
      object cQtde: TCurrencyEdit
        Left = 9
        Top = 34
        Width = 120
        Height = 21
        DecimalPlaces = 3
        DisplayFormat = ',##0.000'
        TabOrder = 0
      end
      object bAdicionar: TButton
        Left = 9
        Top = 61
        Width = 120
        Height = 25
        Caption = 'Adicionar'
        TabOrder = 1
        OnClick = bAdicionarClick
      end
      object DBGrid2: TDBGrid
        Left = 139
        Top = 12
        Width = 209
        Height = 221
        Color = 14286847
        DataSource = dstQuebras
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Quantidade'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 187
            Visible = True
          end>
      end
      object bRemover: TButton
        Left = 9
        Top = 87
        Width = 120
        Height = 25
        Caption = 'Remover'
        TabOrder = 3
        OnClick = bRemoverClick
      end
      object cAdicionados: TCurrencyEdit
        Left = 194
        Top = 259
        Width = 154
        Height = 21
        Color = 14286847
        DecimalPlaces = 3
        DisplayFormat = ',##0.000'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object StaticText7: TStaticText
        Left = 9
        Top = 259
        Width = 184
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Pedidos Adicionados'
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
      object cQtdeDiv: TCurrencyEdit
        Left = 9
        Top = 179
        Width = 120
        Height = 21
        DecimalPlaces = 3
        DisplayFormat = ',##0'
        TabOrder = 6
      end
      object bDividir: TButton
        Left = 9
        Top = 206
        Width = 120
        Height = 25
        Caption = 'Dividir'
        TabOrder = 7
        OnClick = bDividirClick
      end
      object bRemTudo: TButton
        Left = 9
        Top = 114
        Width = 120
        Height = 25
        Caption = 'Remover Tudo'
        TabOrder = 8
        OnClick = bRemTudoClick
      end
      object cDisponivel: TCurrencyEdit
        Left = 194
        Top = 236
        Width = 154
        Height = 21
        Color = 14286847
        DecimalPlaces = 3
        DisplayFormat = ',##0.000'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object StaticText8: TStaticText
        Left = 9
        Top = 236
        Width = 184
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Dispon'#237'vel no Pedido'
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
      object cSaldo: TCurrencyEdit
        Left = 194
        Top = 282
        Width = 154
        Height = 21
        Color = 14286847
        DecimalPlaces = 3
        DisplayFormat = ',##0.000'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object StaticText9: TStaticText
        Left = 9
        Top = 282
        Width = 184
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
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
        TabOrder = 12
        Transparent = False
        StyleElements = []
      end
    end
    object cRich2: TDBRichEdit
      Left = 226
      Top = 139
      Width = 89
      Height = 59
      DataField = 'Inf_Complementares2'
      DataSource = Dados.dsTipoNota
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TabOrder = 2
      Visible = False
      Zoom = 100
    end
    object cRich: TDBRichEdit
      Left = 129
      Top = 139
      Width = 91
      Height = 59
      DataField = 'Inf_Complementares'
      DataSource = Dados.dsTipoNota
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      TabOrder = 3
      Visible = False
      Zoom = 100
    end
    object cTotal: TCurrencyEdit
      Left = 280
      Top = 319
      Width = 168
      Height = 21
      Color = 14286847
      DecimalPlaces = 3
      DisplayFormat = ',##0.000'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object StaticText10: TStaticText
      Left = 5
      Top = 319
      Width = 273
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Total'
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
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 6
    Top = 6
    Width = 831
    Height = 223
    Margins.Left = 6
    Margins.Top = 6
    Margins.Right = 6
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 2
    object cCFOPDentro: TRxDBLookupCombo
      Left = 149
      Top = 51
      Width = 674
      Height = 21
      DropDownCount = 20
      DisplayAllFields = True
      Enabled = False
      FieldsDelimiter = '|'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo; Descricao_NF'
      LookupDisplayIndex = 1
      LookupSource = dstCFOPDentro
      ParentFont = False
      TabOrder = 0
    end
    object StaticText4: TStaticText
      Left = 7
      Top = 51
      Width = 140
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'CFOP (Dentro do Estado)'
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
    object cTipoNota: TRxDBLookupCombo
      Left = 149
      Top = 28
      Width = 674
      Height = 21
      DropDownCount = 10
      DisplayAllFields = True
      EmptyValue = '420'
      FieldsDelimiter = '|'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo;Descricao'
      LookupDisplayIndex = 1
      LookupSource = Dados.dsTipoNota
      ParentFont = False
      TabOrder = 2
      OnExit = cTipoNotaExit
    end
    object StaticText5: TStaticText
      Left = 7
      Top = 28
      Width = 140
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Tipo de Nota'
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
    object cTransp: TRxDBLookupCombo
      Left = 149
      Top = 97
      Width = 577
      Height = 21
      DropDownCount = 20
      DisplayAllFields = True
      FieldsDelimiter = '|'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo;CNPJ;Nome'
      LookupDisplayIndex = 2
      LookupSource = Dados.dsFornecedores
      ParentFont = False
      TabOrder = 4
    end
    object StaticText1: TStaticText
      Left = 7
      Top = 97
      Width = 140
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Transportador'
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
      OnClick = StaticText1Click
    end
    object StaticText2: TStaticText
      Left = 7
      Top = 5
      Width = 140
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Pedidos Selecionados'
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
      StyleElements = [seFont, seBorder]
    end
    object cPedidos: TEdit
      Left = 149
      Top = 5
      Width = 674
      Height = 21
      Color = clSilver
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      Text = 'cPedidos'
      StyleElements = [seFont, seBorder]
    end
    object StaticText3: TStaticText
      Left = 7
      Top = 120
      Width = 140
      Height = 97
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
      TabOrder = 8
      Transparent = False
      StyleElements = []
    end
    object cObs: TMemo
      Left = 149
      Top = 120
      Width = 674
      Height = 97
      Color = 14286847
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 9
      StyleElements = [seFont, seBorder]
    end
    object cCFOPFora: TRxDBLookupCombo
      Left = 149
      Top = 74
      Width = 674
      Height = 21
      DropDownCount = 20
      DisplayAllFields = True
      Enabled = False
      FieldsDelimiter = '|'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo; Descricao_NF'
      LookupDisplayIndex = 1
      LookupSource = dstCFOPFora
      ParentFont = False
      TabOrder = 10
    end
    object StaticText6: TStaticText
      Left = 7
      Top = 74
      Width = 140
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'CFOP (Fora do Estado)'
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
    object Button1: TButton
      Left = 726
      Top = 95
      Width = 97
      Height = 24
      Cursor = crHandPoint
      Hint = '  Dados do ve'#237'culo'
      Caption = '&Dados ve'#237'culo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnClick = Button1Click
    end
  end
  object tPedidosNF: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Numero = Pedido'
      '      ,Data'
      '      ,Representante_Cod    = Representante'
      
        '      ,Representante_Nome   = (select Nome from Fornecedores whe' +
        're Representante_Codigo = Representante)'
      
        '      ,Representante_Pessoa = iif((select isnull(CNPJ, '#39#39') from ' +
        'Fornecedores where Representante_Codigo = Representante) <> '#39#39', ' +
        #39'J'#39', '#39'F'#39')'
      
        '      ,Modalidade = (select Descricao from Cybersoft_Cadastros.d' +
        'bo.ModalidadesPagamento where Codigo = Modalidade_Pagamento)'
      '      ,Modalidade_Pagamento'
      
        '      ,Parcelas   = (select Numero_Parcelas from Cybersoft_Cadas' +
        'tros.dbo.ModalidadesPagamento where Codigo = Modalidade_Pagament' +
        'o)'
      '      ,Ordem_Compra'
      '      ,Cliente'
      '      ,Cliente_Nome'
      
        '      ,Cliente_CNPJ = isnull(Cliente_CNPJ, '#39#39')+isnull(Cliente_CP' +
        'F, '#39#39')'
      '      ,Cliente_IE   = iif(Cliente_IE = '#39#39', '#39'ISENTO'#39', Cliente_IE)'
      '      ,Cliente_Rua'
      '      ,Cliente_RuaNumero'
      '      ,Cliente_Bairro'
      '      ,Cliente_MunicipioNome'
      '      ,Cliente_Estado'
      '      ,Cliente_CEP'
      '      ,Cliente_Telefone'
      
        '      ,Transp_Nome      = (select Nome From Fornecedores where C' +
        'odigo = Transportador)'
      
        '      ,Transp_CNPJ      = (select CNPJ From Fornecedores where C' +
        'odigo = Transportador)'
      
        '      ,Transp_IE        =  isnull((select Inscricao_Estadual Fro' +
        'm Fornecedores where Codigo = Transportador), '#39'ISENTO'#39')'
      
        '      ,Transp_Rua       = (select Rua From Fornecedores where Co' +
        'digo = Transportador)'
      
        '      ,Transp_RuaNumero = (select Rua_Numero From Fornecedores w' +
        'here Codigo = Transportador)'
      
        '      ,Transp_Bairro    = (select Bairro From Fornecedores where' +
        ' Codigo = Transportador)'
      
        '      ,Transp_Municipio = (select Municipio From Fornecedores wh' +
        'ere Codigo = Transportador)'
      
        '      ,Transp_Estado    = (select Estado From Fornecedores where' +
        ' Codigo = Transportador)'
      
        '      ,Transp_CEP       = (select CEP From Fornecedores where Co' +
        'digo = Transportador)'
      
        '      ,Transp_Telefone  = (select Telefone1 From Fornecedores wh' +
        'ere Codigo = Transportador)'
      
        '      ,Pessoa           = iif(isnull(Cliente_CNPJ, '#39#39') <> '#39#39', '#39'J' +
        #39', '#39'F'#39')'
      '      ,Observacao       = Inf_Complementares2'
      '      ,Vendedor'
      '      ,Total_Pedido'
      
        '      ,Recebedor_Entrega = (select Recebedor_Entrega from Client' +
        'es where Codigo = Cliente)'
      
        '      ,CNPJ_Entrega      = (select CNPJ from Clientes where Codi' +
        'go = Cliente)'
      
        '      ,IE_Entrega        =  isnull((select Inscricao_Estadual fr' +
        'om Clientes where Codigo = Cliente), '#39'ISENTO'#39')'
      
        '      ,Rua_Entrega       = (select Rua_Entrega from Clientes whe' +
        're Codigo = Cliente)'
      
        '      ,Rua_EntregaNumero = (select Rua_EntregaNumero from Client' +
        'es where Codigo = Cliente)'
      
        '      ,Bairro_Entrega    = (select Bairro_Entrega from Clientes ' +
        'where Codigo = Cliente)'
      
        '      ,Municipio_Entrega = (select Municipio_Entrega from Client' +
        'es where Codigo = Cliente)'
      
        '      ,Estado_Entrega    = (select Estado_Entrega from Clientes ' +
        'where Codigo = Cliente)'
      
        '      ,CEP_Entrega       = (select CEP_Entrega from Clientes whe' +
        're Codigo = Cliente)'
      
        '      ,Telefone_Entrega  = (select Telefone_Entrega from Cliente' +
        's where Codigo = Cliente)'
      'from  PedidosRepresentantes'
      'where Pedido = '#39'R34'#39
      '')
    FetchRows = 1
    Left = 236
    Top = 49
  end
  object tPedidosNFItens: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Numero = Pedido'
      '      ,Data'
      '      ,Representante_Cod    = Representante'
      
        '      ,Representante_Nome   = (select Nome from Fornecedores whe' +
        're Representante_Codigo = Representante)'
      
        '      ,Representante_Pessoa = iif((select isnull(CNPJ, '#39#39') from ' +
        'Fornecedores where Representante_Codigo = Representante) <> '#39#39', ' +
        #39'J'#39', '#39'F'#39')'
      
        '      ,Modalidade = (select Descricao from Cybersoft_Cadastros.d' +
        'bo.ModalidadesPagamento where Codigo = Modalidade_Pagamento)'
      '      ,Modalidade_Pagamento'
      
        '      ,Parcelas   = (select Numero_Parcelas from Cybersoft_Cadas' +
        'tros.dbo.ModalidadesPagamento where Codigo = Modalidade_Pagament' +
        'o)'
      '      ,Ordem_Compra'
      '      ,Cliente'
      '      ,Cliente_Nome'
      
        '      ,Cliente_CNPJ = isnull(Cliente_CNPJ, '#39#39')+isnull(Cliente_CP' +
        'F, '#39#39')'
      '      ,Cliente_IE   = iif(Cliente_IE = '#39#39', '#39'ISENTO'#39', Cliente_IE)'
      '      ,Cliente_Rua'
      '      ,Cliente_RuaNumero'
      '      ,Cliente_Bairro'
      '      ,Cliente_MunicipioNome'
      '      ,Cliente_Estado'
      '      ,Cliente_CEP'
      '      ,Cliente_Telefone'
      
        '      ,Transp_Nome      = (select Nome From Fornecedores where C' +
        'odigo = Transportador)'
      
        '      ,Transp_CNPJ      = (select CNPJ From Fornecedores where C' +
        'odigo = Transportador)'
      
        '      ,Transp_IE        =  isnull((select Inscricao_Estadual Fro' +
        'm Fornecedores where Codigo = Transportador), '#39'ISENTO'#39')'
      
        '      ,Transp_Rua       = (select Rua From Fornecedores where Co' +
        'digo = Transportador)'
      
        '      ,Transp_RuaNumero = (select Rua_Numero From Fornecedores w' +
        'here Codigo = Transportador)'
      
        '      ,Transp_Bairro    = (select Bairro From Fornecedores where' +
        ' Codigo = Transportador)'
      
        '      ,Transp_Municipio = (select Municipio From Fornecedores wh' +
        'ere Codigo = Transportador)'
      
        '      ,Transp_Estado    = (select Estado From Fornecedores where' +
        ' Codigo = Transportador)'
      
        '      ,Transp_CEP       = (select CEP From Fornecedores where Co' +
        'digo = Transportador)'
      
        '      ,Transp_Telefone  = (select Telefone1 From Fornecedores wh' +
        'ere Codigo = Transportador)'
      
        '      ,Pessoa           = iif(isnull(Cliente_CNPJ, '#39#39') <> '#39#39', '#39'J' +
        #39', '#39'F'#39')'
      '      ,Observacao       = Inf_Complementares2'
      '      ,Vendedor'
      '      ,Total_Pedido'
      
        '      ,Recebedor_Entrega = (select Recebedor_Entrega from Client' +
        'es where Codigo = Cliente)'
      
        '      ,CNPJ_Entrega      = (select CNPJ from Clientes where Codi' +
        'go = Cliente)'
      
        '      ,IE_Entrega        =  isnull((select Inscricao_Estadual fr' +
        'om Clientes where Codigo = Cliente), '#39'ISENTO'#39')'
      
        '      ,Rua_Entrega       = (select Rua_Entrega from Clientes whe' +
        're Codigo = Cliente)'
      
        '      ,Rua_EntregaNumero = (select Rua_EntregaNumero from Client' +
        'es where Codigo = Cliente)'
      
        '      ,Bairro_Entrega    = (select Bairro_Entrega from Clientes ' +
        'where Codigo = Cliente)'
      
        '      ,Municipio_Entrega = (select Municipio_Entrega from Client' +
        'es where Codigo = Cliente)'
      
        '      ,Estado_Entrega    = (select Estado_Entrega from Clientes ' +
        'where Codigo = Cliente)'
      
        '      ,CEP_Entrega       = (select CEP_Entrega from Clientes whe' +
        're Codigo = Cliente)'
      
        '      ,Telefone_Entrega  = (select Telefone_Entrega from Cliente' +
        's where Codigo = Cliente)'
      'from  PedidosRepresentantes'
      'where Pedido = '#39'R34'#39
      '')
    FetchRows = 1
    Left = 313
    Top = 49
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 132
    Top = 316
  end
  object mMacro: TCalcExpress
    Formula = '0'
    Left = 510
    Top = 50
  end
  object tCFOPDentro: TMSQuery
    Connection = Dados.Banco
    FetchRows = 1
    Left = 184
    Top = 105
  end
  object tCFOPFora: TMSQuery
    Connection = Dados.Banco
    FetchRows = 1
    Left = 259
    Top = 105
  end
  object dstCFOPDentro: TDataSource
    DataSet = tCFOPDentro
    Left = 184
    Top = 151
  end
  object dstCFOPFora: TDataSource
    DataSet = tCFOPFora
    Left = 257
    Top = 151
  end
  object tDisponivel: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Data = cast(Data_Emissao as date)'
      '      ,Navio_Nome = '#39'NAVIO'#39
      '      ,DI'
      '      ,Disponivel = Quantidade'
      'from NotasItensNavios'
      'where Quantidade > 0'
      'order by Data, Disponivel, DI')
    FetchRows = 1
    Left = 337
    Top = 105
    object tDisponivelNavio_Nome: TStringField
      DisplayWidth = 30
      FieldName = 'Navio_Nome'
      Size = 30
    end
    object tDisponivelDisponivel: TFloatField
      DisplayWidth = 19
      FieldName = 'Disponivel'
      DisplayFormat = ',##0.000'
    end
    object tDisponivelDI: TStringField
      FieldName = 'DI'
      EditMask = '##/#######-#;0'
      Size = 10
    end
    object tDisponivelData: TWideStringField
      FieldName = 'Data'
      ReadOnly = True
      Size = 10
    end
  end
  object dstDisponivel: TDataSource
    DataSet = tDisponivel
    Left = 336
    Top = 151
  end
  object tMenor: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 400
    Top = 108
  end
  object dstQuebras: TDataSource
    DataSet = tQuebras
    Left = 476
    Top = 172
  end
  object tQuebras: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 474
    Top = 126
    object tQuebrasQuantidade: TFloatField
      FieldName = 'Quantidade'
      DisplayFormat = ',##0.000'
    end
  end
  object tCopia: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 401
    Top = 157
  end
  object tTmp2: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 187
    Top = 316
  end
  object tItens: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 257
    Top = 203
  end
  object tCopiaItens: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 404
    Top = 208
  end
  object tEntradaST: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Numero = Pedido'
      '      ,Data'
      '      ,Representante_Cod    = Representante'
      
        '      ,Representante_Nome   = (select Nome from Fornecedores whe' +
        're Representante_Codigo = Representante)'
      
        '      ,Representante_Pessoa = iif((select isnull(CNPJ, '#39#39') from ' +
        'Fornecedores where Representante_Codigo = Representante) <> '#39#39', ' +
        #39'J'#39', '#39'F'#39')'
      
        '      ,Modalidade = (select Descricao from Cybersoft_Cadastros.d' +
        'bo.ModalidadesPagamento where Codigo = Modalidade_Pagamento)'
      '      ,Modalidade_Pagamento'
      
        '      ,Parcelas   = (select Numero_Parcelas from Cybersoft_Cadas' +
        'tros.dbo.ModalidadesPagamento where Codigo = Modalidade_Pagament' +
        'o)'
      '      ,Ordem_Compra'
      '      ,Cliente'
      '      ,Cliente_Nome'
      
        '      ,Cliente_CNPJ = isnull(Cliente_CNPJ, '#39#39')+isnull(Cliente_CP' +
        'F, '#39#39')'
      '      ,Cliente_IE   = iif(Cliente_IE = '#39#39', '#39'ISENTO'#39', Cliente_IE)'
      '      ,Cliente_Rua'
      '      ,Cliente_RuaNumero'
      '      ,Cliente_Bairro'
      '      ,Cliente_MunicipioNome'
      '      ,Cliente_Estado'
      '      ,Cliente_CEP'
      '      ,Cliente_Telefone'
      
        '      ,Transp_Nome      = (select Nome From Fornecedores where C' +
        'odigo = Transportador)'
      
        '      ,Transp_CNPJ      = (select CNPJ From Fornecedores where C' +
        'odigo = Transportador)'
      
        '      ,Transp_IE        =  isnull((select Inscricao_Estadual Fro' +
        'm Fornecedores where Codigo = Transportador), '#39'ISENTO'#39')'
      
        '      ,Transp_Rua       = (select Rua From Fornecedores where Co' +
        'digo = Transportador)'
      
        '      ,Transp_RuaNumero = (select Rua_Numero From Fornecedores w' +
        'here Codigo = Transportador)'
      
        '      ,Transp_Bairro    = (select Bairro From Fornecedores where' +
        ' Codigo = Transportador)'
      
        '      ,Transp_Municipio = (select Municipio From Fornecedores wh' +
        'ere Codigo = Transportador)'
      
        '      ,Transp_Estado    = (select Estado From Fornecedores where' +
        ' Codigo = Transportador)'
      
        '      ,Transp_CEP       = (select CEP From Fornecedores where Co' +
        'digo = Transportador)'
      
        '      ,Transp_Telefone  = (select Telefone1 From Fornecedores wh' +
        'ere Codigo = Transportador)'
      
        '      ,Pessoa           = iif(isnull(Cliente_CNPJ, '#39#39') <> '#39#39', '#39'J' +
        #39', '#39'F'#39')'
      '      ,Observacao       = Inf_Complementares2'
      '      ,Vendedor'
      '      ,Total_Pedido'
      
        '      ,Recebedor_Entrega = (select Recebedor_Entrega from Client' +
        'es where Codigo = Cliente)'
      
        '      ,CNPJ_Entrega      = (select CNPJ from Clientes where Codi' +
        'go = Cliente)'
      
        '      ,IE_Entrega        =  isnull((select Inscricao_Estadual fr' +
        'om Clientes where Codigo = Cliente), '#39'ISENTO'#39')'
      
        '      ,Rua_Entrega       = (select Rua_Entrega from Clientes whe' +
        're Codigo = Cliente)'
      
        '      ,Rua_EntregaNumero = (select Rua_EntregaNumero from Client' +
        'es where Codigo = Cliente)'
      
        '      ,Bairro_Entrega    = (select Bairro_Entrega from Clientes ' +
        'where Codigo = Cliente)'
      
        '      ,Municipio_Entrega = (select Municipio_Entrega from Client' +
        'es where Codigo = Cliente)'
      
        '      ,Estado_Entrega    = (select Estado_Entrega from Clientes ' +
        'where Codigo = Cliente)'
      
        '      ,CEP_Entrega       = (select CEP_Entrega from Clientes whe' +
        're Codigo = Cliente)'
      
        '      ,Telefone_Entrega  = (select Telefone_Entrega from Cliente' +
        's where Codigo = Cliente)'
      'from  PedidosRepresentantes'
      'where Pedido = '#39'R34'#39
      '')
    FetchRows = 1
    Left = 393
    Top = 49
  end
  object tBCR: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Numero = Pedido'
      '      ,Data'
      '      ,Representante_Cod    = Representante'
      
        '      ,Representante_Nome   = (select Nome from Fornecedores whe' +
        're Representante_Codigo = Representante)'
      
        '      ,Representante_Pessoa = iif((select isnull(CNPJ, '#39#39') from ' +
        'Fornecedores where Representante_Codigo = Representante) <> '#39#39', ' +
        #39'J'#39', '#39'F'#39')'
      
        '      ,Modalidade = (select Descricao from Cybersoft_Cadastros.d' +
        'bo.ModalidadesPagamento where Codigo = Modalidade_Pagamento)'
      '      ,Modalidade_Pagamento'
      
        '      ,Parcelas   = (select Numero_Parcelas from Cybersoft_Cadas' +
        'tros.dbo.ModalidadesPagamento where Codigo = Modalidade_Pagament' +
        'o)'
      '      ,Ordem_Compra'
      '      ,Cliente'
      '      ,Cliente_Nome'
      
        '      ,Cliente_CNPJ = isnull(Cliente_CNPJ, '#39#39')+isnull(Cliente_CP' +
        'F, '#39#39')'
      '      ,Cliente_IE   = iif(Cliente_IE = '#39#39', '#39'ISENTO'#39', Cliente_IE)'
      '      ,Cliente_Rua'
      '      ,Cliente_RuaNumero'
      '      ,Cliente_Bairro'
      '      ,Cliente_MunicipioNome'
      '      ,Cliente_Estado'
      '      ,Cliente_CEP'
      '      ,Cliente_Telefone'
      
        '      ,Transp_Nome      = (select Nome From Fornecedores where C' +
        'odigo = Transportador)'
      
        '      ,Transp_CNPJ      = (select CNPJ From Fornecedores where C' +
        'odigo = Transportador)'
      
        '      ,Transp_IE        =  isnull((select Inscricao_Estadual Fro' +
        'm Fornecedores where Codigo = Transportador), '#39'ISENTO'#39')'
      
        '      ,Transp_Rua       = (select Rua From Fornecedores where Co' +
        'digo = Transportador)'
      
        '      ,Transp_RuaNumero = (select Rua_Numero From Fornecedores w' +
        'here Codigo = Transportador)'
      
        '      ,Transp_Bairro    = (select Bairro From Fornecedores where' +
        ' Codigo = Transportador)'
      
        '      ,Transp_Municipio = (select Municipio From Fornecedores wh' +
        'ere Codigo = Transportador)'
      
        '      ,Transp_Estado    = (select Estado From Fornecedores where' +
        ' Codigo = Transportador)'
      
        '      ,Transp_CEP       = (select CEP From Fornecedores where Co' +
        'digo = Transportador)'
      
        '      ,Transp_Telefone  = (select Telefone1 From Fornecedores wh' +
        'ere Codigo = Transportador)'
      
        '      ,Pessoa           = iif(isnull(Cliente_CNPJ, '#39#39') <> '#39#39', '#39'J' +
        #39', '#39'F'#39')'
      '      ,Observacao       = Inf_Complementares2'
      '      ,Vendedor'
      '      ,Total_Pedido'
      
        '      ,Recebedor_Entrega = (select Recebedor_Entrega from Client' +
        'es where Codigo = Cliente)'
      
        '      ,CNPJ_Entrega      = (select CNPJ from Clientes where Codi' +
        'go = Cliente)'
      
        '      ,IE_Entrega        =  isnull((select Inscricao_Estadual fr' +
        'om Clientes where Codigo = Cliente), '#39'ISENTO'#39')'
      
        '      ,Rua_Entrega       = (select Rua_Entrega from Clientes whe' +
        're Codigo = Cliente)'
      
        '      ,Rua_EntregaNumero = (select Rua_EntregaNumero from Client' +
        'es where Codigo = Cliente)'
      
        '      ,Bairro_Entrega    = (select Bairro_Entrega from Clientes ' +
        'where Codigo = Cliente)'
      
        '      ,Municipio_Entrega = (select Municipio_Entrega from Client' +
        'es where Codigo = Cliente)'
      
        '      ,Estado_Entrega    = (select Estado_Entrega from Clientes ' +
        'where Codigo = Cliente)'
      
        '      ,CEP_Entrega       = (select CEP_Entrega from Clientes whe' +
        're Codigo = Cliente)'
      
        '      ,Telefone_Entrega  = (select Telefone_Entrega from Cliente' +
        's where Codigo = Cliente)'
      'from  PedidosRepresentantes'
      'where Pedido = '#39'R34'#39
      '')
    FetchRows = 1
    Left = 456
    Top = 49
  end
  object tDuplicatas: TVirtualTable
    Left = 49
    Top = 316
    Data = {04000000000000000000}
    object tDuplicatasPedido: TStringField
      FieldName = 'Pedido'
      Size = 15
    end
    object tDuplicatasParcela: TStringField
      FieldName = 'Parcela'
      Size = 0
    end
    object tDuplicatasVencimento: TDateField
      FieldName = 'Vencimento'
    end
    object tDuplicatasValor: TCurrencyField
      FieldName = 'Valor'
    end
    object tDuplicatasValor_Produto: TCurrencyField
      FieldName = 'Valor_Produto'
    end
    object tDuplicatasValor_IPI: TCurrencyField
      FieldName = 'Valor_IPI'
    end
  end
  object DataSource1: TDataSource
    DataSet = tDuplicatas
    Left = 49
    Top = 365
  end
  object Armazem: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 127
    Top = 372
  end
end
