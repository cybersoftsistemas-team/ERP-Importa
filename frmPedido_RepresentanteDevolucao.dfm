object Pedido_RepresentanteDevolucao: TPedido_RepresentanteDevolucao
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Pedido_RepresentanteDevolucao'
  ClientHeight = 445
  ClientWidth = 868
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
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 93
    Width = 862
    Height = 315
    Align = alClient
    Color = clWhite
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
        Width = 33
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
        Width = 58
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
        Width = 434
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
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade_Devol'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde Dev'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Unitario'
        Title.Alignment = taCenter
        Title.Caption = 'Unit'#225'rio'
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
        FieldName = 'Valor_Total'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end>
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 1
    Top = 414
    Width = 866
    Height = 30
    Margins.Left = 1
    Margins.Right = 1
    Margins.Bottom = 1
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      866
      30)
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 256
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsPedidosRepresentantesItens
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbEdit, nbPost, nbCancel, nbRefresh]
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
      TabOrder = 0
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
    object bSair: TButton
      Left = 802
      Top = 2
      Width = 63
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bSairClick
    end
    object bGerar: TButton
      Left = 361
      Top = 1
      Width = 144
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alLeft
      Caption = '&Gerar Cr'#233'dito Financeiro'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bGerarClick
      ExplicitLeft = 433
    end
    object bTotal: TButton
      Left = 257
      Top = 1
      Width = 104
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alLeft
      Caption = '&Devolu'#231#227'o Total'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bTotalClick
      ExplicitLeft = 329
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 862
    Height = 84
    Align = alTop
    BevelOuter = bvLowered
    Enabled = False
    ShowCaption = False
    TabOrder = 2
    object tTitulo: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 854
      Height = 26
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'DEVOLU'#199#195'O DE MERCADORIAS'
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
      StyleElements = [seBorder]
      ExplicitLeft = 2
      ExplicitTop = 9
      ExplicitWidth = 860
    end
    object lNome: TStaticText
      Left = 7
      Top = 44
      Width = 114
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Quantidade Devolvida'
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
    object cQtde: TDBEdit
      Left = 122
      Top = 44
      Width = 108
      Height = 21
      DataField = 'Quantidade_Devol'
      DataSource = Dados.dsPedidosRepresentantesItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object StaticText1: TStaticText
      Left = 651
      Top = 33
      Width = 83
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Total do Pedido'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      Transparent = False
      StyleElements = []
    end
    object StaticText2: TStaticText
      Left = 651
      Top = 56
      Width = 83
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Total Devolvido'
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
    object cTotalPed: TCurrencyEdit
      Left = 735
      Top = 33
      Width = 121
      Height = 21
      Color = 16768925
      DisplayFormat = ',0.00;-,0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object cTotalDev: TCurrencyEdit
      Left = 735
      Top = 56
      Width = 121
      Height = 21
      Color = 16768925
      DisplayFormat = ',0.00;-,0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 492
    Top = 215
  end
  object tPed: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 492
    Top = 271
  end
end
