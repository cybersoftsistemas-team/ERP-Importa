object Pedido_ItensCompraInterna: TPedido_ItensCompraInterna
  Left = 244
  Top = 64
  BorderStyle = bsDialog
  Caption = 'Pedido_ItensCompraInterna'
  ClientHeight = 600
  ClientWidth = 944
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 944
    Height = 37
    Align = alTop
    Stretch = True
  end
  object RxLabel3: TRxLabel
    Left = 4
    Top = 0
    Width = 182
    Height = 21
    Caption = 'PEDIDOS DE NOTA FISCAL'
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
    Left = 4
    Top = 15
    Width = 318
    Height = 18
    Caption = 'Manuten'#231#227'o dos itens do pedido (Compra Interna).'
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
  object cICMS: TCheckBox
    Left = 8
    Top = 83
    Width = 280
    Height = 17
    Caption = 'ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria.'
    TabOrder = 5
  end
  object StaticText1: TStaticText
    Left = 576
    Top = 69
    Width = 77
    Height = 44
    Cursor = crHandPoint
    Hint = '   Click no link para calcular o valor de uma taxa utilizada.   '
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = '                    % Margem Lucro                    R$'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    Transparent = False
    StyleElements = []
  end
  object cDescontoValor: TCurrencyEdit
    Left = 835
    Top = 92
    Width = 105
    Height = 21
    AutoSize = False
    DecimalPlaces = 4
    DisplayFormat = ',0.0000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object cDesconto: TCurrencyEdit
    Left = 835
    Top = 69
    Width = 105
    Height = 21
    AutoSize = False
    DecimalPlaces = 4
    DisplayFormat = ',0.0000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
  end
  object StaticText5: TStaticText
    Left = 779
    Top = 69
    Width = 54
    Height = 44
    Cursor = crHandPoint
    Hint = '   Click no link para calcular o valor de uma taxa utilizada.   '
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = '             % Desconto             R$'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    Transparent = False
    StyleElements = []
  end
  object cLucroValor: TCurrencyEdit
    Left = 655
    Top = 92
    Width = 105
    Height = 21
    AutoSize = False
    DecimalPlaces = 4
    DisplayFormat = ',0.0000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object cLucro: TCurrencyEdit
    Left = 655
    Top = 69
    Width = 105
    Height = 21
    AutoSize = False
    DecimalPlaces = 4
    DisplayFormat = ',0.0000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object Panel1: TPanel
    Left = 0
    Top = 568
    Width = 944
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      Left = 868
      Top = 2
      Width = 74
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      Left = 1
      Top = 2
      Width = 224
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsPedidosItens
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Ctl3D = True
      Hints.Strings = (
        '  Vai para o primeiro registro.  '
        '  Volta para o registro anterior.  '
        '  Vai para o pr'#243'ximo registro.  '
        '  Vai para o '#250'ltimo registro.  '
        '  Inlcuir um novo registro.  '
        '  Deletar o registro atual.  '
        '  Altera o reistro atual. '
        '  Salvar o registro no banco de dados.  '
        '  Cancelar as modifica'#231#245'es feitas no registro atual.  '
        '  Atualizar inform'#231#245'es do banco de dados.  ')
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = NavegaClick
    end
    object bInclui_Item: TButton
      Left = 225
      Top = 2
      Width = 88
      Height = 28
      Hint = '  Adiciona um item no pedido.  '
      Caption = 'Adicionar &Item'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bInclui_ItemClick
    end
    object bInclui_Todos: TButton
      Left = 313
      Top = 2
      Width = 88
      Height = 28
      Hint = '  Adiciona todas os itens de todas as adi'#231#245'es no pedido.  '
      Caption = 'Adicionar &Todos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bInclui_TodosClick
    end
    object bRemove_Item: TButton
      Left = 401
      Top = 2
      Width = 88
      Height = 28
      Hint = '  Remove um item do pedido.  '
      Caption = '&Remover Item'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bRemove_ItemClick
    end
    object bRemove_Todos: TButton
      Left = 489
      Top = 2
      Width = 88
      Height = 28
      Hint = '  Remove todos os itens do pedido.  '
      Caption = 'Rem&over Todos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bRemove_TodosClick
    end
  end
  object gItens: TGroupBox
    Left = 4
    Top = 341
    Width = 936
    Height = 223
    Caption = 'Itens do Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object GradeItens: TRxDBGrid
      Left = 5
      Top = 16
      Width = 926
      Height = 201
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      PopupMenu = PopupMenu1
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnDragDrop = GradeItensDragDrop
      OnDragOver = GradeItensDragOver
      OnEnter = GradeItensEnter
      RowColor2 = 16776176
      ShowGlyphs = False
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo_Mercadoria'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd.Produto'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao_Mercadoria'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o Produto'
          Width = 590
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NCM'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Quantidade'
          Title.Alignment = taCenter
          Title.Caption = 'QTDE'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Unitario'
          Title.Alignment = taCenter
          Title.Caption = 'Unit'#225'rio'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CSTIPI'
          Title.Alignment = taCenter
          Title.Caption = 'CST IPI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodigoTrib_TabA'
          Title.Alignment = taCenter
          Title.Caption = 'CST ICMS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CodigoTrib_TabB'
          Title.Alignment = taCenter
          Title.Caption = 'CST ICMS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CSTPIS'
          Title.Alignment = taCenter
          Title.Caption = 'CST PIS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CSTCOFINS'
          Title.Alignment = taCenter
          Title.Caption = 'CST COFINS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Lucro'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
  object gTerceiros: TGroupBox
    Left = 4
    Top = 114
    Width = 936
    Height = 223
    Caption = 'Produtos Dispon'#237'veis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Grade: TRxDBGrid
      Left = 5
      Top = 16
      Width = 926
      Height = 201
      DataSource = dmFiscal.dsNotasTerceirosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnEnter = GradeEnter
      OnMouseDown = GradeMouseDown
      RowColor2 = 16776176
      ShowGlyphs = False
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo_Mercadoria'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd.Produto'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Produto_Nome'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o Produto'
          Width = 594
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NCM'
          Title.Alignment = taCenter
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Disponivel'
          Title.Alignment = taCenter
          Title.Caption = 'Dispon'#237'vel'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Unitario'
          Title.Alignment = taCenter
          Title.Caption = 'Unit'#225'rio'
          Width = 96
          Visible = True
        end>
    end
  end
  object cFormula: TMemo
    Left = 624
    Top = 6
    Width = 272
    Height = 35
    BevelKind = bkSoft
    Color = 11796479
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 11
    Visible = False
    WantReturns = False
    WordWrap = False
  end
  object StaticText23: TStaticText
    Left = 5
    Top = 44
    Width = 44
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
    TabOrder = 12
    Transparent = False
    StyleElements = []
  end
  object DBEdit15: TDBEdit
    Left = 51
    Top = 44
    Width = 67
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
    TabOrder = 13
  end
  object DBEdit16: TDBEdit
    Left = 119
    Top = 44
    Width = 370
    Height = 21
    TabStop = False
    Color = 12189695
    DataField = 'Destinatario_Nome'
    DataSource = Dados.dsPedidos
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 14
  end
  object DBEdit1: TDBEdit
    Left = 558
    Top = 44
    Width = 383
    Height = 21
    TabStop = False
    Color = 12189695
    DataField = 'Descricao'
    DataSource = Dados.dsTipoNota
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 15
  end
  object StaticText6: TStaticText
    Left = 491
    Top = 44
    Width = 29
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Tipo'
    Color = 7293440
    Enabled = False
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
    Left = 521
    Top = 44
    Width = 36
    Height = 21
    TabStop = False
    Color = 12189695
    DataField = 'Codigo'
    DataSource = Dados.dsTipoNota
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 17
  end
  object Progresso: TProgressBar
    Left = 599
    Top = 339
    Width = 315
    Height = 16
    TabOrder = 6
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 8
    object mnIncluiItem: TMenuItem
      Caption = 'Adicionar &Item'
      OnClick = bInclui_ItemClick
    end
    object mnIncluiAdicao: TMenuItem
      Caption = 'Adicionar &Adi'#231#227'o'
    end
    object mnIncluiTodos: TMenuItem
      Caption = 'Adicionar &Todos'
      OnClick = bInclui_TodosClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mnRemoveItem: TMenuItem
      Caption = '&Remover Item'
      OnClick = bRemove_ItemClick
    end
    object mnRemoveAdicao: TMenuItem
      Caption = 'Re&mover Adi'#231#227'o'
    end
    object mnRemoveTodos: TMenuItem
      Caption = '&Rem&over Todos'
      OnClick = bRemove_TodosClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object mnSair: TMenuItem
      Caption = '&Sair'
      OnClick = bSairClick
    end
  end
  object mMacro: TCalcExpress
    Formula = '0'
    Left = 376
    Top = 8
  end
  object tItem: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Item) AS Item FROM PedidosItens')
    Left = 408
    Top = 8
  end
  object tSoma: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 440
    Top = 8
  end
  object tDespesas: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 472
    Top = 8
  end
  object tDumping: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 504
    Top = 8
  end
  object tFOB_DI: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 536
    Top = 8
  end
  object tFOB: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 568
    Top = 8
  end
end
