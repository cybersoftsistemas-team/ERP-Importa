object Financeiro_PedidosSite: TFinanceiro_PedidosSite
  Left = 442
  Top = 231
  BorderStyle = bsDialog
  Caption = 'Financeiro_PedidosSite'
  ClientHeight = 621
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    984
    621)
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 984
    Height = 46
    Align = alTop
    Stretch = True
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
    Width = 252
    Height = 18
    Caption = 'Libera'#231#227'o de Pedidos de Representantes.'
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
  object Image2: TImage
    Left = 943
    Top = 6
    Width = 35
    Height = 32
    Anchors = [akTop, akRight]
    Picture.Data = {
      055449636F6E0000010001002020100000000000E80200001600000028000000
      2000000040000000010004000000000080020000000000000000000000000000
      0000000000000000000080000080000000808000800000008000800080800000
      80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
      FFFFFF0000000000000000000000000000000000000000000000000E60000000
      00000000000000000000000E6000000000000000000000000000000E60000000
      0000000000000000000000F866000000000000000000000000000FEE86600000
      00000000000000000000FEF8E86600000000000000000000000FEFEE86866000
      000000000000000000FEFEF8E868660000000000000000000FEFEFEE86868660
      0000000000000000FEFEFEF8E8686866000000000000000FEF00000000000066
      6000000000000000007777FFFFF0700000000000000000770FFFFF7777F08077
      777000000000777707777FFFFFF078077777000000077770FFFFF7777F078707
      77777000000777707777FFFFFF087870777770000007770FFFFF77777F088780
      7777700000007707777FFFFFFF0F887807770000000000FFFFF77777F0F8F787
      070000000000007777FFFFFFF08F88787000000000000FFFFF77777F00F8F887
      80000000000007777FFFFFFF0F8F8F88700000000000FFFFFFF000000FF8F8F8
      870000000000F000000880FFFFFF8F0008000000000007787878F0FFFF0000FF
      F0000000000777878788800000FFFFFFFFF00000000777787888F8F8FFFFFFFF
      FFF0000000000787878F8F8F8FFFFFFFFF000000000000087888F8F8FFFFFFF0
      0000000000000000008F8F8F8FF0000000000000000000000000000000000000
      00000000FFFC3FFFFFFC3FFFFFFC3FFFFFFC3FFFFFF81FFFFFF00FFFFFE007FF
      FFC003FFFF8001FFFF0000FFFE00007FFC00003FF800001FF000000FE0000007
      C0000003C0000003C0000003E0000007F000000FF800003FF000003FF000003F
      E000001FE000001FE000000FC000000FC000000FE000001FF800003FFE0001FF
      FFC01FFF}
  end
  object Panel2: TPanel
    Left = 0
    Top = 591
    Width = 984
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      984
      30)
    object bSair: TButton
      Left = 908
      Top = 1
      Width = 75
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 180
      Height = 28
      Cursor = crHandPoint
      DataSource = dsPedidosRep
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
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
      Left = 248
      Top = 1
      Width = 51
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Liberar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bLiberarClick
    end
    object bLiberarTodos: TButton
      Left = 299
      Top = 1
      Width = 77
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = 'Liberar &Todos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bLiberarTodosClick
    end
    object bCancelar: TButton
      Left = 376
      Top = 1
      Width = 57
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bCancelarClick
    end
    object bCancelarTodos: TButton
      Left = 433
      Top = 1
      Width = 89
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = 'Ca&ncelar Todos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bCancelarTodosClick
    end
    object bRevalidarTodos: TButton
      Left = 522
      Top = 1
      Width = 89
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Revalidar Todos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = bRevalidarTodosClick
    end
    object bPlanilha: TButton
      Left = 611
      Top = 1
      Width = 62
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = 'Planil&ha'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = bPlanilhaClick
    end
    object bPesquisa: TButton
      Left = 181
      Top = 1
      Width = 67
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Pesquisar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = bPesquisaClick
    end
    object bImprimir: TButton
      Left = 759
      Top = 1
      Width = 54
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = 'I&mprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = bImprimirClick
    end
    object Button1: TButton
      Left = 813
      Top = 1
      Width = 94
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = 'Gerar &Financeiro'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = Button1Click
    end
    object bSite: TButton
      Left = 673
      Top = 1
      Width = 62
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = 'Sit&e'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = bSiteClick
    end
  end
  object Panel1: TPanel
    Left = 4
    Top = 456
    Width = 976
    Height = 99
    BevelOuter = bvLowered
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 1
    object lNome: TStaticText
      Left = 4
      Top = 4
      Width = 130
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
      TabOrder = 0
      Transparent = False
      StyleElements = []
    end
    object DBEdit1: TDBEdit
      Left = 136
      Top = 4
      Width = 413
      Height = 21
      Color = clWhite
      DataField = 'Cliente_Nome'
      DataSource = dsPedidosRep
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 587
      Top = 4
      Width = 138
      Height = 21
      Color = clWhite
      DataField = 'Cliente_CNPJ'
      DataSource = dsPedidosRep
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object StaticText2: TStaticText
      Left = 4
      Top = 27
      Width = 130
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Limite de Cr'#233'dito'
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
    object DBEdit3: TDBEdit
      Left = 136
      Top = 27
      Width = 128
      Height = 21
      Color = clWhite
      DataField = 'Limite_Credito'
      DataSource = Dados.dsClientes
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object StaticText3: TStaticText
      Left = 4
      Top = 50
      Width = 130
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Limite de Cr'#233'dito Utilizado'
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
    object DBEdit4: TDBEdit
      Left = 136
      Top = 50
      Width = 128
      Height = 21
      Color = clWhite
      DataField = 'Limite_Utilizado'
      DataSource = Dados.dsClientes
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object StaticText4: TStaticText
      Left = 4
      Top = 73
      Width = 130
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
      TabOrder = 7
      Transparent = False
      StyleElements = []
    end
    object cSaldo: TCurrencyEdit
      Left = 136
      Top = 73
      Width = 128
      Height = 21
      AutoSize = False
      Color = 12303223
      DisplayFormat = ',##0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object DBEdit5: TDBEdit
      Left = 764
      Top = 4
      Width = 111
      Height = 21
      Color = clWhite
      DataField = 'Cliente_CPF'
      DataSource = dsPedidosRep
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object StaticText1: TStaticText
      Left = 551
      Top = 4
      Width = 34
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'CNPJ'
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
    object StaticText5: TStaticText
      Left = 728
      Top = 4
      Width = 34
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'CPF'
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
      Left = 347
      Top = 27
      Width = 624
      Height = 67
      TabStop = False
      DataField = 'Observacao'
      DataSource = dsPedidosRep
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 12
      WantTabs = True
    end
    object StaticText6: TStaticText
      Left = 268
      Top = 27
      Width = 77
      Height = 67
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
      TabOrder = 13
      Transparent = False
      StyleElements = []
    end
  end
  object PageControl1: TPageControl
    Left = 4
    Top = 50
    Width = 976
    Height = 400
    ActivePage = TabSheet1
    MultiLine = True
    TabHeight = 24
    TabOrder = 2
    TabWidth = 100
    object TabSheet1: TTabSheet
      Caption = '&Pedidos'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Grade: TRxDBGrid
        Left = 0
        Top = 1
        Width = 967
        Height = 364
        Color = clWhite
        Ctl3D = True
        DataSource = dsPedidosRep
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = GradeDrawColumnCell
        RowColor2 = 16776176
        Columns = <
          item
            Expanded = False
            FieldName = 'Pedido'
            Title.Alignment = taCenter
            Title.Caption = 'PEDIDO N'#186
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 76
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'Data'
            Title.Alignment = taCenter
            Title.Caption = 'DATA'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 105
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Origem_Pedido'
            Title.Alignment = taCenter
            Title.Caption = 'ORIGEM'
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
            FieldName = 'Representante_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'REPRESENTANTE'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 246
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Prazo_Entrega'
            Title.Alignment = taCenter
            Title.Caption = 'PRAZO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total_IPI'
            Title.Alignment = taCenter
            Title.Caption = 'IPI'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Total_Pedido'
            Title.Alignment = taCenter
            Title.Caption = 'TOTAL'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 102
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Desconto'
            Title.Alignment = taCenter
            Title.Caption = 'DESC'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Comissao'
            Title.Alignment = taCenter
            Title.Caption = 'COM VEN'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Comissao_Gerencia'
            Title.Alignment = taCenter
            Title.Caption = 'COM GER'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 52
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cancelado'
            Title.Alignment = taCenter
            Title.Caption = 'CANC'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 32
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&Itens'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GradeItens: TRxDBGrid
        Left = 0
        Top = 1
        Width = 968
        Height = 364
        DataSource = Dados.dsPedidosRepresentantesItens
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
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = GradeItensDrawColumnCell
        RowColor2 = 16776176
        Columns = <
          item
            Expanded = False
            FieldName = 'Pedido'
            Title.Alignment = taCenter
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codigo_Mercadoria'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao_Mercadoria'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Width = 357
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Unitario'
            Title.Alignment = taCenter
            Title.Caption = 'Unit'#225'rio'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Aliquota_IPI'
            Title.Alignment = taCenter
            Title.Caption = 'IPI'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Desconto'
            Title.Alignment = taCenter
            Title.Caption = 'Desc'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Desconto'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Desc'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Disponivel'
            Title.Alignment = taCenter
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Saldo'
            Title.Alignment = taCenter
            Width = 80
            Visible = True
          end>
      end
    end
  end
  object cOcultarCancelados: TCheckBox
    Left = 805
    Top = 563
    Width = 170
    Height = 17
    Alignment = taLeftJustify
    Caption = 'Ocultar os pedidos cancelados.'
    TabOrder = 3
    OnClick = cOcultarCanceladosClick
  end
  object PedidosRep: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO PedidosRepresentantes'
      
        '  (Pedido, Data, Representante, Cliente, Transportador, Modalida' +
        'de_Pagamento, Prazo_Entrega, Comprador, Frete, Total_Pedido, Tot' +
        'al_IPI, Liberado, Tipo_Nota, Modalidade_Frete, Natureza_Codigo, ' +
        'Volume_Quantidade, Volume_Especie, Volume_PesoLiquido, Volume_Pe' +
        'soBruto, Inf_Complementares2, Faturado, Cancelado, Aliquota_ICMS' +
        ', Cliente_CNPJ, Cliente_CPF, Cliente_Nome, Cliente_RG, Cliente_C' +
        'EP, Cliente_Rua, Cliente_Bairro, Cliente_Municipio, Cliente_RuaN' +
        'umero, Cliente_Complemento, Cliente_Estado, Cliente_IE, Cliente_' +
        'Telefone, Cliente_Email, Cliente_Contato, Cliente_Ramo, Cliente_' +
        'Representante, Cliente_Simples, Cliente_ZonaFranca, Cliente_Cons' +
        'umidorFinal, Tipo_Pedido, Situacao, Gerar_Pedido, Desconto, Tota' +
        'l_Desconto, Comissao, Tipo_Faturamento, Cliente_MunicipioNome, A' +
        'tendente, Atendente_Comissao, Observacao, Situacao_Televendas, F' +
        'aturamento, Valor_FreteEmpresa, Valor_FreteCliente, Origem_Pedid' +
        'o, Comissao_Gerencia, Vendedor, Indicador_IE)'
      'VALUES'
      
        '  (:Pedido, :Data, :Representante, :Cliente, :Transportador, :Mo' +
        'dalidade_Pagamento, :Prazo_Entrega, :Comprador, :Frete, :Total_P' +
        'edido, :Total_IPI, :Liberado, :Tipo_Nota, :Modalidade_Frete, :Na' +
        'tureza_Codigo, :Volume_Quantidade, :Volume_Especie, :Volume_Peso' +
        'Liquido, :Volume_PesoBruto, :Inf_Complementares2, :Faturado, :Ca' +
        'ncelado, :Aliquota_ICMS, :Cliente_CNPJ, :Cliente_CPF, :Cliente_N' +
        'ome, :Cliente_RG, :Cliente_CEP, :Cliente_Rua, :Cliente_Bairro, :' +
        'Cliente_Municipio, :Cliente_RuaNumero, :Cliente_Complemento, :Cl' +
        'iente_Estado, :Cliente_IE, :Cliente_Telefone, :Cliente_Email, :C' +
        'liente_Contato, :Cliente_Ramo, :Cliente_Representante, :Cliente_' +
        'Simples, :Cliente_ZonaFranca, :Cliente_ConsumidorFinal, :Tipo_Pe' +
        'dido, :Situacao, :Gerar_Pedido, :Desconto, :Total_Desconto, :Com' +
        'issao, :Tipo_Faturamento, :Cliente_MunicipioNome, :Atendente, :A' +
        'tendente_Comissao, :Observacao, :Situacao_Televendas, :Faturamen' +
        'to, :Valor_FreteEmpresa, :Valor_FreteCliente, :Origem_Pedido, :C' +
        'omissao_Gerencia, :Vendedor, :Indicador_IE)')
    SQLDelete.Strings = (
      'DELETE FROM PedidosRepresentantes'
      'WHERE'
      '  Pedido = :Old_Pedido AND Data = :Old_Data')
    SQLUpdate.Strings = (
      'UPDATE PedidosRepresentantes'
      'SET'
      
        '  Pedido = :Pedido, Data = :Data, Representante = :Representante' +
        ', Cliente = :Cliente, Transportador = :Transportador, Modalidade' +
        '_Pagamento = :Modalidade_Pagamento, Prazo_Entrega = :Prazo_Entre' +
        'ga, Comprador = :Comprador, Frete = :Frete, Total_Pedido = :Tota' +
        'l_Pedido, Total_IPI = :Total_IPI, Liberado = :Liberado, Tipo_Not' +
        'a = :Tipo_Nota, Modalidade_Frete = :Modalidade_Frete, Natureza_C' +
        'odigo = :Natureza_Codigo, Volume_Quantidade = :Volume_Quantidade' +
        ', Volume_Especie = :Volume_Especie, Volume_PesoLiquido = :Volume' +
        '_PesoLiquido, Volume_PesoBruto = :Volume_PesoBruto, Inf_Compleme' +
        'ntares2 = :Inf_Complementares2, Faturado = :Faturado, Cancelado ' +
        '= :Cancelado, Aliquota_ICMS = :Aliquota_ICMS, Cliente_CNPJ = :Cl' +
        'iente_CNPJ, Cliente_CPF = :Cliente_CPF, Cliente_Nome = :Cliente_' +
        'Nome, Cliente_RG = :Cliente_RG, Cliente_CEP = :Cliente_CEP, Clie' +
        'nte_Rua = :Cliente_Rua, Cliente_Bairro = :Cliente_Bairro, Client' +
        'e_Municipio = :Cliente_Municipio, Cliente_RuaNumero = :Cliente_R' +
        'uaNumero, Cliente_Complemento = :Cliente_Complemento, Cliente_Es' +
        'tado = :Cliente_Estado, Cliente_IE = :Cliente_IE, Cliente_Telefo' +
        'ne = :Cliente_Telefone, Cliente_Email = :Cliente_Email, Cliente_' +
        'Contato = :Cliente_Contato, Cliente_Ramo = :Cliente_Ramo, Client' +
        'e_Representante = :Cliente_Representante, Cliente_Simples = :Cli' +
        'ente_Simples, Cliente_ZonaFranca = :Cliente_ZonaFranca, Cliente_' +
        'ConsumidorFinal = :Cliente_ConsumidorFinal, Tipo_Pedido = :Tipo_' +
        'Pedido, Situacao = :Situacao, Gerar_Pedido = :Gerar_Pedido, Desc' +
        'onto = :Desconto, Total_Desconto = :Total_Desconto, Comissao = :' +
        'Comissao, Tipo_Faturamento = :Tipo_Faturamento, Cliente_Municipi' +
        'oNome = :Cliente_MunicipioNome, Atendente = :Atendente, Atendent' +
        'e_Comissao = :Atendente_Comissao, Observacao = :Observacao, Situ' +
        'acao_Televendas = :Situacao_Televendas, Faturamento = :Faturamen' +
        'to, Valor_FreteEmpresa = :Valor_FreteEmpresa, Valor_FreteCliente' +
        ' = :Valor_FreteCliente, Origem_Pedido = :Origem_Pedido, Comissao' +
        '_Gerencia = :Comissao_Gerencia, Vendedor = :Vendedor, Indicador_' +
        'IE = :Indicador_IE'
      'WHERE'
      '  Pedido = :Old_Pedido AND Data = :Old_Data')
    SQLRefresh.Strings = (
      
        'SELECT PedidosRepresentantes.Pedido, PedidosRepresentantes.Data,' +
        ' PedidosRepresentantes.Representante, PedidosRepresentantes.Clie' +
        'nte, PedidosRepresentantes.Transportador, PedidosRepresentantes.' +
        'Modalidade_Pagamento, PedidosRepresentantes.Prazo_Entrega, Pedid' +
        'osRepresentantes.Comprador, PedidosRepresentantes.Frete, Pedidos' +
        'Representantes.Total_Pedido, PedidosRepresentantes.Total_IPI, Pe' +
        'didosRepresentantes.Liberado, PedidosRepresentantes.Tipo_Nota, P' +
        'edidosRepresentantes.Modalidade_Frete, PedidosRepresentantes.Nat' +
        'ureza_Codigo, PedidosRepresentantes.Volume_Quantidade, PedidosRe' +
        'presentantes.Volume_Especie, PedidosRepresentantes.Volume_PesoLi' +
        'quido, PedidosRepresentantes.Volume_PesoBruto, PedidosRepresenta' +
        'ntes.Inf_Complementares2, PedidosRepresentantes.Faturado, Pedido' +
        'sRepresentantes.Cancelado, PedidosRepresentantes.Aliquota_ICMS, ' +
        'PedidosRepresentantes.Cliente_CNPJ, PedidosRepresentantes.Client' +
        'e_CPF, PedidosRepresentantes.Cliente_Nome, PedidosRepresentantes' +
        '.Cliente_RG, PedidosRepresentantes.Cliente_CEP, PedidosRepresent' +
        'antes.Cliente_Rua, PedidosRepresentantes.Cliente_Bairro, Pedidos' +
        'Representantes.Cliente_Municipio, PedidosRepresentantes.Cliente_' +
        'RuaNumero, PedidosRepresentantes.Cliente_Complemento, PedidosRep' +
        'resentantes.Cliente_Estado, PedidosRepresentantes.Cliente_IE, Pe' +
        'didosRepresentantes.Cliente_Telefone, PedidosRepresentantes.Clie' +
        'nte_Email, PedidosRepresentantes.Cliente_Contato, PedidosReprese' +
        'ntantes.Cliente_Ramo, PedidosRepresentantes.Cliente_Representant' +
        'e, PedidosRepresentantes.Cliente_Simples, PedidosRepresentantes.' +
        'Cliente_ZonaFranca, PedidosRepresentantes.Cliente_ConsumidorFina' +
        'l, PedidosRepresentantes.Tipo_Pedido, PedidosRepresentantes.Situ' +
        'acao, PedidosRepresentantes.Gerar_Pedido, PedidosRepresentantes.' +
        'Desconto, PedidosRepresentantes.Total_Desconto, PedidosRepresent' +
        'antes.Comissao, PedidosRepresentantes.Tipo_Faturamento, PedidosR' +
        'epresentantes.Cliente_MunicipioNome, PedidosRepresentantes.Atend' +
        'ente, PedidosRepresentantes.Atendente_Comissao, PedidosRepresent' +
        'antes.Observacao, PedidosRepresentantes.Situacao_Televendas, Ped' +
        'idosRepresentantes.Faturamento, PedidosRepresentantes.Valor_Fret' +
        'eEmpresa, PedidosRepresentantes.Valor_FreteCliente, PedidosRepre' +
        'sentantes.Origem_Pedido, PedidosRepresentantes.Comissao_Gerencia' +
        ', PedidosRepresentantes.Vendedor, PedidosRepresentantes.Indicado' +
        'r_IE FROM PedidosRepresentantes'
      
        'WHERE PedidosRepresentantes.Pedido = :Pedido AND PedidosRepresen' +
        'tantes.Data = :Data ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT *,'
      
        '      (SELECT Nome FROM Fornecedores WHERE Codigo = Representant' +
        'e) AS Representante_Nome'
      'FROM PedidosRepresentantes')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    AfterScroll = PedidosRepAfterScroll
    Left = 344
    Top = 9
    object PedidosRepPedido: TStringField
      FieldName = 'Pedido'
      Origin = 'PedidosRepresentantes.Pedido'
      Size = 10
    end
    object PedidosRepData: TDateTimeField
      Alignment = taCenter
      FieldName = 'Data'
      Origin = 'PedidosRepresentantes.Data'
    end
    object PedidosRepRepresentante: TSmallintField
      FieldName = 'Representante'
      Origin = 'PedidosRepresentantes.Representante'
    end
    object PedidosRepCliente: TSmallintField
      FieldName = 'Cliente'
      Origin = 'PedidosRepresentantes.Cliente'
    end
    object PedidosRepTransportador: TSmallintField
      FieldName = 'Transportador'
      Origin = 'PedidosRepresentantes.Transportador'
    end
    object PedidosRepModalidade_Pagamento: TSmallintField
      FieldName = 'Modalidade_Pagamento'
      Origin = 'PedidosRepresentantes.Modalidade_Pagamento'
    end
    object PedidosRepPrazo_Entrega: TSmallintField
      FieldName = 'Prazo_Entrega'
      Origin = 'PedidosRepresentantes.Prazo_Entrega'
    end
    object PedidosRepComprador: TStringField
      FieldName = 'Comprador'
      Origin = 'PedidosRepresentantes.Comprador'
      Size = 50
    end
    object PedidosRepFrete: TSmallintField
      FieldName = 'Frete'
      Origin = 'PedidosRepresentantes.Frete'
    end
    object PedidosRepTotal_Pedido: TCurrencyField
      FieldName = 'Total_Pedido'
      Origin = 'PedidosRepresentantes.Total_Pedido'
      DisplayFormat = ',##0.00'
    end
    object PedidosRepTotal_IPI: TCurrencyField
      FieldName = 'Total_IPI'
      Origin = 'PedidosRepresentantes.Total_IPI'
    end
    object PedidosRepLiberado: TBooleanField
      FieldName = 'Liberado'
      Origin = 'PedidosRepresentantes.Liberado'
    end
    object PedidosRepTipo_Nota: TSmallintField
      FieldName = 'Tipo_Nota'
      Origin = 'PedidosRepresentantes.Tipo_Nota'
    end
    object PedidosRepModalidade_Frete: TSmallintField
      FieldName = 'Modalidade_Frete'
      Origin = 'PedidosRepresentantes.Modalidade_Frete'
    end
    object PedidosRepNatureza_Codigo: TStringField
      FieldName = 'Natureza_Codigo'
      Origin = 'PedidosRepresentantes.Natureza_Codigo'
      Size = 4
    end
    object PedidosRepVolume_Quantidade: TFloatField
      FieldName = 'Volume_Quantidade'
      Origin = 'PedidosRepresentantes.Volume_Quantidade'
    end
    object PedidosRepVolume_Especie: TStringField
      FieldName = 'Volume_Especie'
      Origin = 'PedidosRepresentantes.Volume_Especie'
    end
    object PedidosRepVolume_PesoLiquido: TFloatField
      FieldName = 'Volume_PesoLiquido'
      Origin = 'PedidosRepresentantes.Volume_PesoLiquido'
    end
    object PedidosRepVolume_PesoBruto: TFloatField
      FieldName = 'Volume_PesoBruto'
      Origin = 'PedidosRepresentantes.Volume_PesoBruto'
    end
    object PedidosRepInf_Complementares2: TMemoField
      FieldName = 'Inf_Complementares2'
      Origin = 'PedidosRepresentantes.Inf_Complementares2'
      BlobType = ftMemo
    end
    object PedidosRepFaturado: TBooleanField
      FieldName = 'Faturado'
      Origin = 'PedidosRepresentantes.Faturado'
    end
    object PedidosRepCancelado: TBooleanField
      FieldName = 'Cancelado'
      Origin = 'PedidosRepresentantes.Cancelado'
    end
    object PedidosRepAliquota_ICMS: TFloatField
      FieldName = 'Aliquota_ICMS'
      Origin = 'PedidosRepresentantes.Aliquota_ICMS'
    end
    object PedidosRepCliente_CNPJ: TStringField
      FieldName = 'Cliente_CNPJ'
      Origin = 'PedidosRepresentantes.Cliente_CNPJ'
      EditMask = '##.###.###/####-##;0; '
      Size = 14
    end
    object PedidosRepCliente_CPF: TStringField
      FieldName = 'Cliente_CPF'
      Origin = 'PedidosRepresentantes.Cliente_CPF'
      EditMask = '###.###.###-##;0; '
      Size = 14
    end
    object PedidosRepCliente_Nome: TStringField
      FieldName = 'Cliente_Nome'
      Origin = 'PedidosRepresentantes.Cliente_Nome'
      Size = 50
    end
    object PedidosRepCliente_RG: TStringField
      FieldName = 'Cliente_RG'
      Origin = 'PedidosRepresentantes.Cliente_RG'
      Size = 15
    end
    object PedidosRepCliente_CEP: TStringField
      FieldName = 'Cliente_CEP'
      Origin = 'PedidosRepresentantes.Cliente_CEP'
      Size = 8
    end
    object PedidosRepCliente_Rua: TStringField
      FieldName = 'Cliente_Rua'
      Origin = 'PedidosRepresentantes.Cliente_Rua'
      Size = 40
    end
    object PedidosRepCliente_Bairro: TStringField
      FieldName = 'Cliente_Bairro'
      Origin = 'PedidosRepresentantes.Cliente_Bairro'
      Size = 40
    end
    object PedidosRepCliente_Municipio: TIntegerField
      FieldName = 'Cliente_Municipio'
      Origin = 'PedidosRepresentantes.Cliente_Municipio'
    end
    object PedidosRepCliente_RuaNumero: TStringField
      FieldName = 'Cliente_RuaNumero'
      Origin = 'PedidosRepresentantes.Cliente_RuaNumero'
      Size = 10
    end
    object PedidosRepCliente_Complemento: TStringField
      FieldName = 'Cliente_Complemento'
      Origin = 'PedidosRepresentantes.Cliente_Complemento'
    end
    object PedidosRepCliente_Estado: TStringField
      FieldName = 'Cliente_Estado'
      Origin = 'PedidosRepresentantes.Cliente_Estado'
      Size = 2
    end
    object PedidosRepCliente_IE: TStringField
      FieldName = 'Cliente_IE'
      Origin = 'PedidosRepresentantes.Cliente_IE'
      Size = 18
    end
    object PedidosRepCliente_Telefone: TStringField
      FieldName = 'Cliente_Telefone'
      Origin = 'PedidosRepresentantes.Cliente_Telefone'
      Size = 11
    end
    object PedidosRepCliente_Email: TStringField
      FieldName = 'Cliente_Email'
      Origin = 'PedidosRepresentantes.Cliente_Email'
      Size = 60
    end
    object PedidosRepCliente_Contato: TStringField
      FieldName = 'Cliente_Contato'
      Origin = 'PedidosRepresentantes.Cliente_Contato'
      Size = 50
    end
    object PedidosRepCliente_Ramo: TSmallintField
      FieldName = 'Cliente_Ramo'
      Origin = 'PedidosRepresentantes.Cliente_Ramo'
    end
    object PedidosRepCliente_Representante: TSmallintField
      FieldName = 'Cliente_Representante'
      Origin = 'PedidosRepresentantes.Cliente_Representante'
    end
    object PedidosRepCliente_Simples: TBooleanField
      FieldName = 'Cliente_Simples'
      Origin = 'PedidosRepresentantes.Cliente_Simples'
    end
    object PedidosRepCliente_ZonaFranca: TBooleanField
      FieldName = 'Cliente_ZonaFranca'
      Origin = 'PedidosRepresentantes.Cliente_ZonaFranca'
    end
    object PedidosRepCliente_ConsumidorFinal: TBooleanField
      FieldName = 'Cliente_ConsumidorFinal'
      Origin = 'PedidosRepresentantes.Cliente_ConsumidorFinal'
    end
    object PedidosRepTipo_Pedido: TStringField
      FieldName = 'Tipo_Pedido'
      Origin = 'PedidosRepresentantes.Tipo_Pedido'
      Size = 60
    end
    object PedidosRepSituacao: TStringField
      FieldName = 'Situacao'
      Origin = 'PedidosRepresentantes.Situacao'
      Size = 15
    end
    object PedidosRepGerar_Pedido: TBooleanField
      FieldName = 'Gerar_Pedido'
      Origin = 'PedidosRepresentantes.Gerar_Pedido'
    end
    object PedidosRepDesconto: TFloatField
      FieldName = 'Desconto'
      Origin = 'PedidosRepresentantes.Desconto'
    end
    object PedidosRepTotal_Desconto: TCurrencyField
      FieldName = 'Total_Desconto'
      Origin = 'PedidosRepresentantes.Total_Desconto'
    end
    object PedidosRepComissao: TFloatField
      FieldName = 'Comissao'
      Origin = 'PedidosRepresentantes.Comissao'
      DisplayFormat = ',##0.00'
    end
    object PedidosRepTipo_Faturamento: TSmallintField
      FieldName = 'Tipo_Faturamento'
      Origin = 'PedidosRepresentantes.Tipo_Faturamento'
    end
    object PedidosRepRepresentante_Nome: TStringField
      FieldName = 'Representante_Nome'
      Origin = '.'
      ReadOnly = True
      Size = 60
    end
    object PedidosRepCliente_MunicipioNome: TStringField
      FieldName = 'Cliente_MunicipioNome'
      Origin = 'PedidosRepresentantes.Cliente_MunicipioNome'
      Size = 40
    end
    object PedidosRepOrigem_Pedido: TStringField
      FieldName = 'Origem_Pedido'
      Origin = 'PedidosRepresentantes.Origem_Pedido'
      Size = 10
    end
    object PedidosRepAtendente: TStringField
      FieldName = 'Atendente'
      Origin = 'PedidosRepresentantes.Atendente'
      Size = 15
    end
    object PedidosRepAtendente_Comissao: TFloatField
      FieldName = 'Atendente_Comissao'
      Origin = 'PedidosRepresentantes.Atendente_Comissao'
    end
    object PedidosRepObservacao: TMemoField
      FieldName = 'Observacao'
      Origin = 'PedidosRepresentantes.Observacao'
      BlobType = ftMemo
    end
    object PedidosRepSituacao_Televendas: TStringField
      FieldName = 'Situacao_Televendas'
      Origin = 'PedidosRepresentantes.Situacao_Televendas'
      Size = 10
    end
    object PedidosRepFaturamento: TBooleanField
      FieldName = 'Faturamento'
      Origin = 'PedidosRepresentantes.Faturamento'
    end
    object PedidosRepValor_FreteEmpresa: TCurrencyField
      FieldName = 'Valor_FreteEmpresa'
      Origin = 'PedidosRepresentantes.Valor_FreteEmpresa'
    end
    object PedidosRepValor_FreteCliente: TCurrencyField
      FieldName = 'Valor_FreteCliente'
      Origin = 'PedidosRepresentantes.Valor_FreteCliente'
    end
    object PedidosRepComissao_Gerencia: TFloatField
      FieldName = 'Comissao_Gerencia'
      Origin = 'PedidosRepresentantes.Comissao_Gerencia'
      DisplayFormat = ',##0.00'
    end
    object PedidosRepVendedor: TStringField
      FieldName = 'Vendedor'
      Origin = 'PedidosRepresentantes.Vendedor'
      Size = 50
    end
    object PedidosRepIndicador_IE: TSmallintField
      FieldName = 'Indicador_IE'
      Origin = 'PedidosRepresentantes.Indicador_IE'
    end
  end
  object dsPedidosRep: TDataSource
    DataSet = PedidosRep
    Left = 377
    Top = 9
  end
  object tItens: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'USE Cybersoft_jahwin'
      
        'SELECT COUNT(*) AS Qtde FROM PedidosRepresentantesItens WHERE Pe' +
        'dido = 469')
    Left = 416
    Top = 8
  end
  object tCliente: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 448
    Top = 8
  end
  object tPedidos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM Cybersoft_JAHWIN.dbo.PedidosRepresentantes ')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    AfterScroll = PedidosRepAfterScroll
    Left = 583
    Top = 8
  end
  object dstPedidos: TDataSource
    DataSet = tPedidos
    Left = 616
    Top = 8
  end
  object rPedido: TppReport
    AutoStop = False
    DataPipeline = pPedidos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Pedidos de Representantes'
    PrinterSetup.Duplex = dpNone
    PrinterSetup.PaperName = 'A4 (8.2 x 11.7 in; 210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Sistemas\Faturamento\Codigo_Fonte\Relatorios\Pedidos_Represen' +
      'tantes.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = False
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 816
    Top = 8
    Version = '19.04'
    mmColumnWidth = 0
    DataPipelineName = 'pPedidos'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 86254
      mmPrintPosition = 0
      object ppShape30: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape30'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 12171
        mmLeft = 0
        mmTop = 18256
        mmWidth = 155575
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape3: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape301'
        Brush.Color = 15000804
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 12171
        mmLeft = 156104
        mmTop = 18256
        mmWidth = 41275
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 4995
        mmLeft = 28310
        mmTop = 2646
        mmWidth = 169069
        BandType = 0
        LayerName = Foreground1
      end
      object lTitulo: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lTitulo'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'Pedido de Representante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 28310
        mmTop = 9525
        mmWidth = 169069
        BandType = 0
        LayerName = Foreground1
      end
      object lRotulo: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'lRotulo'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PEDIDO N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2117
        mmLeft = 157427
        mmTop = 18521
        mmWidth = 9790
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText4'
        Border.mmPadding = 0
        Color = 15000804
        DataField = 'Data'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        DataPipelineName = 'pPedidos'
        mmHeight = 3704
        mmLeft = 156634
        mmTop = 25929
        mmWidth = 39688
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape1: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape1'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4498
        mmLeft = 0
        mmTop = 33338
        mmWidth = 116417
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'Cliente_Nome'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 2582
        mmLeft = 15081
        mmTop = 34660
        mmWidth = 100542
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label1'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CLIENTE:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2159
        mmLeft = 794
        mmTop = 33867
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape2: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape2'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4498
        mmLeft = 116681
        mmTop = 33338
        mmWidth = 40481
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'Cliente_CNPJ'
        DataPipeline = pPedidos
        DisplayFormat = '99.999.999/9999-99;0; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 2582
        mmLeft = 125148
        mmTop = 34396
        mmWidth = 31221
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CNPJ:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2159
        mmLeft = 117475
        mmTop = 33602
        mmWidth = 7144
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape4: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape4'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4498
        mmLeft = 157427
        mmTop = 33338
        mmWidth = 39952
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'Cliente_IE'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 2582
        mmLeft = 167217
        mmTop = 34396
        mmWidth = 29369
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'I.E.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2159
        mmLeft = 158221
        mmTop = 33602
        mmWidth = 7144
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape5: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape5'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4498
        mmLeft = 0
        mmTop = 38100
        mmWidth = 104775
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'Cliente_Rua'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 2582
        mmLeft = 15081
        mmTop = 39158
        mmWidth = 88636
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'LOGRADOURO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2159
        mmLeft = 794
        mmTop = 38629
        mmWidth = 13229
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape6: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape6'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4498
        mmLeft = 105040
        mmTop = 38100
        mmWidth = 24606
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'Cliente_RuaNumero'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 2582
        mmLeft = 110596
        mmTop = 39158
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'N'#186' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2159
        mmLeft = 105834
        mmTop = 38629
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape7: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape7'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4498
        mmLeft = 129911
        mmTop = 38100
        mmWidth = 49213
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'Cliente_Complemento'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 2582
        mmLeft = 144992
        mmTop = 39158
        mmWidth = 33073
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'COMPLEMENTO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2159
        mmLeft = 130704
        mmTop = 38629
        mmWidth = 14552
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape8: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape8'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4498
        mmLeft = 179388
        mmTop = 38100
        mmWidth = 17992
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'Cliente_CEP'
        DataPipeline = pPedidos
        DisplayFormat = '99999-999;0; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 2582
        mmLeft = 185473
        mmTop = 39158
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label8'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'CEP:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2159
        mmLeft = 180182
        mmTop = 38629
        mmWidth = 4498
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape9: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape9'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4498
        mmLeft = 0
        mmTop = 42863
        mmWidth = 129646
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'Cliente_Bairro'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 2582
        mmLeft = 15081
        mmTop = 43921
        mmWidth = 114036
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label9'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'BAIRRO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2159
        mmLeft = 794
        mmTop = 43392
        mmWidth = 8202
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape10: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape10'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4498
        mmLeft = 183092
        mmTop = 42863
        mmWidth = 14288
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label10'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'UF:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2159
        mmLeft = 183886
        mmTop = 43392
        mmWidth = 3969
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape11: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape11'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4498
        mmLeft = 129911
        mmTop = 42863
        mmWidth = 52917
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'Cliente_MunicipioNome'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 2582
        mmLeft = 142082
        mmTop = 43921
        mmWidth = 39952
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label11'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'MUNIC'#205'PIO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2159
        mmLeft = 130704
        mmTop = 43392
        mmWidth = 11377
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape12: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape12'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4498
        mmLeft = 0
        mmTop = 47625
        mmWidth = 67733
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'Cliente_Telefone'
        DataPipeline = pPedidos
        DisplayFormat = '(99) 999999999;0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 2582
        mmLeft = 15081
        mmTop = 48683
        mmWidth = 51329
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label12'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'TELEFONES:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2159
        mmLeft = 794
        mmTop = 48154
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape13: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape13'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4498
        mmLeft = 67998
        mmTop = 47625
        mmWidth = 129382
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText15'
        Border.mmPadding = 0
        Color = clBlue
        DataField = 'Cliente_Email'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 2582
        mmLeft = 76465
        mmTop = 48683
        mmWidth = 120121
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label13'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'E-Mail:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2159
        mmLeft = 68792
        mmTop = 48154
        mmWidth = 7144
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText26: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText26'
        Border.mmPadding = 0
        Color = 15000804
        DataField = 'Pedido'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Times New Roman'
        Font.Size = 18
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        DataPipelineName = 'pPedidos'
        mmHeight = 6350
        mmLeft = 167482
        mmTop = 18521
        mmWidth = 28575
        BandType = 0
        LayerName = Foreground1
      end
      object iLogo: TppImage
        DesignLayer = ppDesignLayer2
        UserName = 'iLogo'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 17198
        mmLeft = 0
        mmTop = 0
        mmWidth = 27252
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'Cliente_Estado'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 2582
        mmLeft = 189442
        mmTop = 43921
        mmWidth = 7144
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText23: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText23'
        Border.mmPadding = 0
        Color = clWindow
        DataField = 'Comissao'
        DataPipeline = pPedidos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'pPedidos'
        mmHeight = 3471
        mmLeft = 124090
        mmTop = 20902
        mmWidth = 6614
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText24: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText24'
        Border.mmPadding = 0
        Color = clWindow
        DataField = 'Comissao_Gerencia'
        DataPipeline = pPedidos
        DisplayFormat = ',##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        DataPipelineName = 'pPedidos'
        mmHeight = 3471
        mmLeft = 148167
        mmTop = 20902
        mmWidth = 6614
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line3'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 265
        mmLeft = 0
        mmTop = 24606
        mmWidth = 155575
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line4'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 6350
        mmLeft = 108215
        mmTop = 18256
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 6350
        mmLeft = 131234
        mmTop = 18256
        mmWidth = 1852
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText25: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText25'
        Border.mmPadding = 0
        Color = 15000804
        DataField = 'Representante_Nome'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 15081
        mmTop = 20638
        mmWidth = 92604
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape24: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape24'
        Pen.Width = 0
        Shape = stRoundRect
        mmHeight = 4498
        mmLeft = 0
        mmTop = 52388
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText27: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText27'
        Border.mmPadding = 0
        DataField = 'Condicao_Nome'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 6
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 2646
        mmLeft = 15081
        mmTop = 53446
        mmWidth = 181505
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label26'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'COND.PGTO:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2159
        mmLeft = 794
        mmTop = 52917
        mmWidth = 11906
        BandType = 0
        LayerName = Foreground1
      end
      object ppShape25: TppShape
        DesignLayer = ppDesignLayer2
        UserName = 'Shape25'
        Pen.Width = 0
        mmHeight = 26458
        mmLeft = 0
        mmTop = 57150
        mmWidth = 197380
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label27'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'OBSERVA'#199#195'O:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2159
        mmLeft = 794
        mmTop = 57679
        mmWidth = 12965
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBMemo1: TppDBMemo
        DesignLayer = ppDesignLayer2
        UserName = 'DBMemo1'
        Border.mmPadding = 0
        CharWrap = False
        DataField = 'Observacao'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 6
        Font.Style = []
        RemoveEmptyLines = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 21696
        mmLeft = 12435
        mmTop = 60854
        mmWidth = 184150
        BandType = 0
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label28'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'VENDEDOR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 794
        mmTop = 25135
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText28: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText28'
        Border.mmPadding = 0
        Color = 15000804
        DataField = 'Vendedor'
        DataPipeline = pPedidos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Calibri'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'pPedidos'
        mmHeight = 3440
        mmLeft = 15081
        mmTop = 26458
        mmWidth = 139700
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line2'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1058
        mmLeft = 156104
        mmTop = 25400
        mmWidth = 41010
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label24'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'COMISS'#195'O GERENCIA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 132292
        mmTop = 18786
        mmWidth = 18521
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label23'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'COMISS'#195'O VENDA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2117
        mmLeft = 109273
        mmTop = 18785
        mmWidth = 15346
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label31'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'REPRESENTANTE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 5
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2159
        mmLeft = 794
        mmTop = 18786
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object pItens: TppSubReport
        DesignLayer = ppDesignLayer2
        UserName = 'pItens'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'prItens'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 265
        mmWidth = 197300
        BandType = 4
        LayerName = Foreground1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = prItens
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Pedidos de Representantes'
          PrinterSetup.Duplex = dpNone
          PrinterSetup.PaperName = 'A4 (8.2 x 11.7 in; 210 x 297 mm)'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Version = '19.04'
          mmColumnWidth = 0
          DataPipelineName = 'prItens'
          object ppTitleBand1: TppTitleBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 8202
            mmPrintPosition = 0
            object ppShape15: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape15'
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3969
              mmLeft = 6879
              mmTop = 4233
              mmWidth = 15081
              BandType = 1
              LayerName = Foreground
            end
            object ppShape14: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape14'
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3969
              mmLeft = 0
              mmTop = 4233
              mmWidth = 6615
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel14: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label14'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'C'#211'DIGO'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 3006
              mmLeft = 7409
              mmTop = 4763
              mmWidth = 14023
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel15: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label15'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'N'#186
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 3006
              mmLeft = 528
              mmTop = 4763
              mmWidth = 5555
              BandType = 1
              LayerName = Foreground
            end
            object ppShape17: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape17'
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3969
              mmLeft = 22225
              mmTop = 4233
              mmWidth = 74348
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel17: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label17'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'DESCRI'#199#195'O'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 3006
              mmLeft = 22754
              mmTop = 4763
              mmWidth = 73289
              BandType = 1
              LayerName = Foreground
            end
            object ppShape19: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape19'
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3969
              mmLeft = 96838
              mmTop = 4233
              mmWidth = 10054
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel19: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label19'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'QTDE'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 3006
              mmLeft = 97367
              mmTop = 4763
              mmWidth = 8997
              BandType = 1
              LayerName = Foreground
            end
            object ppShape16: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape16'
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3969
              mmLeft = 107156
              mmTop = 4233
              mmWidth = 11906
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel16: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label16'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'VALOR'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 3006
              mmLeft = 107686
              mmTop = 4763
              mmWidth = 10848
              BandType = 1
              LayerName = Foreground
            end
            object ppShape20: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape20'
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3969
              mmLeft = 183092
              mmTop = 4233
              mmWidth = 14288
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel20: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label20'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'TOTAL'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 2910
              mmLeft = 183622
              mmTop = 4763
              mmWidth = 13228
              BandType = 1
              LayerName = Foreground
            end
            object ppShape21: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape21'
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3969
              mmLeft = 0
              mmTop = 0
              mmWidth = 197380
              BandType = 1
              LayerName = Foreground
            end
            object ppShape18: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape18'
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3969
              mmLeft = 119327
              mmTop = 4233
              mmWidth = 28575
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel2: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label2'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'DESCONTOS'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 3006
              mmLeft = 119856
              mmTop = 4763
              mmWidth = 27517
              BandType = 1
              LayerName = Foreground
            end
            object ppShape22: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape22'
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3969
              mmLeft = 148167
              mmTop = 4233
              mmWidth = 14288
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel18: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label18'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'LIQUIDO'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 3006
              mmLeft = 148696
              mmTop = 4763
              mmWidth = 13228
              BandType = 1
              LayerName = Foreground
            end
            object ppShape23: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape23'
              Pen.Width = 0
              Shape = stRoundRect
              mmHeight = 3969
              mmLeft = 162719
              mmTop = 4233
              mmWidth = 20108
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel22: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label22'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'IPI'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Calibri'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 3006
              mmLeft = 163248
              mmTop = 4763
              mmWidth = 19050
              BandType = 1
              LayerName = Foreground
            end
            object ppLabel21: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label21'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'PRODUTOS'
              Color = 15000804
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Tahoma'
              Font.Size = 7
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              mmHeight = 2963
              mmLeft = 529
              mmTop = 529
              mmWidth = 196321
              BandType = 1
              LayerName = Foreground
            end
          end
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background2.Brush.Style = bsClear
            Border.mmPadding = 0
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 2910
            mmPrintPosition = 0
            object ppDBText16: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText16'
              Border.mmPadding = 0
              DataField = 'Item'
              DataPipeline = prItens
              DisplayFormat = '000'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'prItens'
              mmHeight = 2582
              mmLeft = 528
              mmTop = 0
              mmWidth = 5555
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText17: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText17'
              Border.mmPadding = 0
              DataField = 'Codigo_Mercadoria'
              DataPipeline = prItens
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              DataPipelineName = 'prItens'
              mmHeight = 2582
              mmLeft = 7409
              mmTop = 0
              mmWidth = 14023
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText19: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText19'
              Anchors = [atLeft, atBottom]
              Border.mmPadding = 0
              DataField = 'Quantidade'
              DataPipeline = prItens
              DisplayFormat = ',##0.000'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'prItens'
              mmHeight = 2582
              mmLeft = 97366
              mmTop = 0
              mmWidth = 8997
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText20: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText20'
              Anchors = [atLeft, atBottom]
              Border.mmPadding = 0
              DataField = 'Valor_Unitario'
              DataPipeline = prItens
              DisplayFormat = ',##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'prItens'
              mmHeight = 2646
              mmLeft = 107686
              mmTop = 0
              mmWidth = 10848
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText21: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText201'
              Anchors = [atLeft, atBottom]
              Border.mmPadding = 0
              DataField = 'Valor_Total'
              DataPipeline = prItens
              DisplayFormat = ',##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'prItens'
              mmHeight = 2582
              mmLeft = 183622
              mmTop = 0
              mmWidth = 12965
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText30: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText30'
              Anchors = [atLeft, atBottom]
              Border.mmPadding = 0
              DataField = 'Total_Desconto'
              DataPipeline = prItens
              DisplayFormat = ',##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'prItens'
              mmHeight = 2582
              mmLeft = 136789
              mmTop = 0
              mmWidth = 10583
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText12: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText12'
              Border.mmPadding = 0
              DataField = 'Descricao'
              DataPipeline = prItens
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = []
              Transparent = True
              WordWrap = True
              DataPipelineName = 'prItens'
              mmHeight = 2646
              mmLeft = 22754
              mmTop = 0
              mmWidth = 73289
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText18: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText301'
              Anchors = [atLeft, atBottom]
              Border.mmPadding = 0
              DataField = 'Valor_Liquido'
              DataPipeline = prItens
              DisplayFormat = ',##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'prItens'
              mmHeight = 2646
              mmLeft = 148697
              mmTop = 0
              mmWidth = 13228
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText22: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText22'
              Anchors = [atLeft, atBottom]
              Border.mmPadding = 0
              DataField = 'Valor_IPI'
              DataPipeline = prItens
              DisplayFormat = ',##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'prItens'
              mmHeight = 2646
              mmLeft = 172774
              mmTop = 0
              mmWidth = 9261
              BandType = 4
              LayerName = Foreground
            end
            object ppLine9: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line9'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 2910
              mmLeft = 6615
              mmTop = 0
              mmWidth = 1852
              BandType = 4
              LayerName = Foreground
            end
            object ppLine10: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line10'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 2910
              mmLeft = 21960
              mmTop = 0
              mmWidth = 1852
              BandType = 4
              LayerName = Foreground
            end
            object ppLine11: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line101'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 2910
              mmLeft = 96573
              mmTop = 0
              mmWidth = 1852
              BandType = 4
              LayerName = Foreground
            end
            object ppLine12: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line102'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 2910
              mmLeft = 106892
              mmTop = 0
              mmWidth = 1852
              BandType = 4
              LayerName = Foreground
            end
            object ppLine13: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line13'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 2910
              mmLeft = 119063
              mmTop = 0
              mmWidth = 1852
              BandType = 4
              LayerName = Foreground
            end
            object ppLine14: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line14'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 2910
              mmLeft = 147902
              mmTop = 0
              mmWidth = 1852
              BandType = 4
              LayerName = Foreground
            end
            object ppLine15: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line15'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 2910
              mmLeft = 162454
              mmTop = 0
              mmWidth = 1852
              BandType = 4
              LayerName = Foreground
            end
            object ppLine16: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line16'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 2910
              mmLeft = 182827
              mmTop = 0
              mmWidth = 1852
              BandType = 4
              LayerName = Foreground
            end
            object ppLine17: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line17'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 2910
              mmLeft = 0
              mmTop = 0
              mmWidth = 1852
              BandType = 4
              LayerName = Foreground
            end
            object ppLine18: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line18'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 2910
              mmLeft = 197115
              mmTop = 0
              mmWidth = 1852
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText29: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText302'
              Anchors = [atLeft, atBottom]
              Border.mmPadding = 0
              DataField = 'Valor_Desconto'
              DataPipeline = prItens
              DisplayFormat = ',##0.00'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'prItens'
              mmHeight = 2646
              mmLeft = 127000
              mmTop = 0
              mmWidth = 9260
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText31: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText31'
              Anchors = [atLeft, atBottom]
              Border.mmPadding = 0
              DataField = 'Aliquota_IPI'
              DataPipeline = prItens
              DisplayFormat = '##0.00%'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'prItens'
              mmHeight = 2646
              mmLeft = 164042
              mmTop = 0
              mmWidth = 7408
              BandType = 4
              LayerName = Foreground
            end
            object ppDBText32: TppDBText
              DesignLayer = ppDesignLayer1
              UserName = 'DBText32'
              Anchors = [atLeft, atBottom]
              Border.mmPadding = 0
              DataField = 'Desconto'
              DataPipeline = prItens
              DisplayFormat = '#0.00%'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'prItens'
              mmHeight = 2646
              mmLeft = 119856
              mmTop = 0
              mmWidth = 6879
              BandType = 4
              LayerName = Foreground
            end
          end
          object ppSummaryBand1: TppSummaryBand
            Background.Brush.Style = bsClear
            Border.mmPadding = 0
            mmBottomOffset = 0
            mmHeight = 10583
            mmPrintPosition = 0
            object ppShape26: TppShape
              DesignLayer = ppDesignLayer1
              UserName = 'Shape26'
              Brush.Color = 15066597
              Brush.Style = bsDiagCross
              Pen.Width = 0
              mmHeight = 3704
              mmLeft = 80963
              mmTop = 0
              mmWidth = 116152
              BandType = 7
              LayerName = Foreground
            end
            object ppLine1: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line1'
              Border.mmPadding = 0
              Pen.Width = 0
              mmHeight = 529
              mmLeft = 0
              mmTop = 0
              mmWidth = 197115
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc1: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc1'
              Border.mmPadding = 0
              DataField = 'Valor_Total'
              DataPipeline = prItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'prItens'
              mmHeight = 2582
              mmLeft = 183622
              mmTop = 529
              mmWidth = 12965
              BandType = 7
              LayerName = Foreground
            end
            object ppLabel25: TppLabel
              DesignLayer = ppDesignLayer1
              UserName = 'Label25'
              AutoSize = False
              Border.mmPadding = 0
              Caption = 'TOTAIS'
              Color = clBlack
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
              FormFieldSettings.FormFieldType = fftNone
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 2582
              mmLeft = 81492
              mmTop = 529
              mmWidth = 14817
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc2: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc2'
              Border.mmPadding = 0
              DataField = 'Quantidade'
              DataPipeline = prItens
              DisplayFormat = ',##0.000'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'prItens'
              mmHeight = 2582
              mmLeft = 97366
              mmTop = 529
              mmWidth = 8997
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc3: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc3'
              Border.mmPadding = 0
              DataField = 'Total_Desconto'
              DataPipeline = prItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'prItens'
              mmHeight = 2582
              mmLeft = 136789
              mmTop = 529
              mmWidth = 10320
              BandType = 7
              LayerName = Foreground
            end
            object ppDBCalc5: TppDBCalc
              DesignLayer = ppDesignLayer1
              UserName = 'DBCalc5'
              Border.mmPadding = 0
              DataField = 'Valor_IPI'
              DataPipeline = prItens
              DisplayFormat = ',##0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Calibri'
              Font.Size = 6
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'prItens'
              mmHeight = 2582
              mmLeft = 172774
              mmTop = 529
              mmWidth = 9261
              BandType = 7
              LayerName = Foreground
            end
            object ppLine21: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line201'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 3704
              mmLeft = 96573
              mmTop = 0
              mmWidth = 1852
              BandType = 7
              LayerName = Foreground
            end
            object ppLine22: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line202'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 3704
              mmLeft = 106892
              mmTop = 0
              mmWidth = 1852
              BandType = 7
              LayerName = Foreground
            end
            object ppLine23: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line203'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 3704
              mmLeft = 119063
              mmTop = 0
              mmWidth = 1852
              BandType = 7
              LayerName = Foreground
            end
            object ppLine24: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line204'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 3704
              mmLeft = 147902
              mmTop = 0
              mmWidth = 1852
              BandType = 7
              LayerName = Foreground
            end
            object ppLine25: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line205'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 3704
              mmLeft = 162454
              mmTop = 0
              mmWidth = 1852
              BandType = 7
              LayerName = Foreground
            end
            object ppLine26: TppLine
              DesignLayer = ppDesignLayer1
              UserName = 'Line206'
              Border.mmPadding = 0
              Pen.Width = 0
              Position = lpLeft
              mmHeight = 3704
              mmLeft = 182827
              mmTop = 0
              mmWidth = 1852
              BandType = 7
              LayerName = Foreground
            end
          end
          object ppDesignLayers1: TppDesignLayers
            object ppDesignLayer1: TppDesignLayer
              UserName = 'Foreground'
              LayerType = ltBanded
              Index = 0
            end
          end
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
        BandType = 8
        LayerName = Foreground1
      end
      object ppLabel34: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Caption = 'ERP Importa (Cybersoft Sistemas Ltda.)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 265
        mmTop = 529
        mmWidth = 45773
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable5: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable2'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtDocumentName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 56092
        mmTop = 529
        mmWidth = 47625
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable6: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable3'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2910
        mmLeft = 105040
        mmTop = 529
        mmWidth = 26194
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3175
        mmLeft = 47361
        mmTop = 0
        mmWidth = 5292
        BandType = 8
        LayerName = Foreground1
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line8'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        Pen.Width = 0
        Position = lpLeft
        mmHeight = 3175
        mmLeft = 176742
        mmTop = 0
        mmWidth = 2117
        BandType = 8
        LayerName = Foreground1
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer2
        UserName = 'SystemVariable1'
        Border.Weight = 1.000000000000000000
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 178330
        mmTop = 529
        mmWidth = 16933
        BandType = 8
        LayerName = Foreground1
      end
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object pPedidos: TppDBPipeline
    DataSource = dstPedidos
    UserName = 'pPedidos'
    Left = 752
    Top = 8
  end
  object tRItens: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT  Item'
      '       ,Codigo_Mercadoria'
      
        '       ,Descricao = (SELECT Descricao FROM Produtos WHERE Codigo' +
        ' = Codigo_Mercadoria)'
      '       ,Quantidade'
      '       ,Valor_Unitario'
      '       ,Desconto'
      '       ,Total_Desconto = Valor_Desconto * Quantidade'
      '       ,Valor_Desconto'
      
        '       ,Valor_Liquido = ISNULL(Valor_Unitario, 0) - ISNULL(Desco' +
        'nto, 0)'
      '       ,Aliquota_IPI'
      
        '       ,Valor_IPI = (ISNULL(Valor_Unitario, 0) - ISNULL(Desconto' +
        ', 0)) * (Aliquota_IPI / 100)'
      
        '       ,Valor_Total = ((ISNULL(Valor_Unitario, 0) - ISNULL(Desco' +
        'nto, 0)) + (ISNULL(Valor_Unitario, 0) - ISNULL(Desconto, 0)) * (' +
        'Aliquota_IPI / 100)) * ISNULL(Quantidade, 0)'
      'FROM Cybersoft_JAHWIN.dbo.PedidosRepresentantesItens '
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    AfterScroll = PedidosRepAfterScroll
    Left = 655
    Top = 8
  end
  object dstrItens: TDataSource
    DataSet = tRItens
    Left = 688
    Top = 8
  end
  object prItens: TppDBPipeline
    DataSource = dstrItens
    UserName = 'prItens'
    Left = 784
    Top = 8
  end
  object pEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    UserName = 'pEmpresas'
    Left = 720
    Top = 8
  end
  object RESTResponse1: TRESTResponse
    Left = 464
    Top = 235
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 464
    Top = 179
  end
  object RESTClient1: TRESTClient
    Params = <>
    Left = 464
    Top = 123
  end
end
