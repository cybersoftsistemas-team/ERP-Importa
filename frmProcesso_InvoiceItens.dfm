object Processo_InvoiceItens: TProcesso_InvoiceItens
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Processo_InvoiceItens'
  ClientHeight = 597
  ClientWidth = 944
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
  object GradeItens: TDBGrid
    Left = 0
    Top = 60
    Width = 944
    Height = 240
    Align = alTop
    Color = clWhite
    DataSource = dmDespacho.dsPOItens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
    OnCellClick = GradeItensCellClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Item'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
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
        Width = 58
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NCM'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 458
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
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Saldo'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 89
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Sel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -16
        Font.Name = 'Webdings'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 25
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 566
    Width = 944
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      944
      31)
    object bSair: TButton
      Left = 880
      Top = 1
      Width = 64
      Height = 29
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bSelTodos: TButton
      Left = 146
      Top = 1
      Width = 66
      Height = 29
      Hint = 'Selecionar todos os registroas'
      Caption = 'Sel &Todos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bSelTodosClick
    end
    object bSelNenhum: TButton
      Left = 213
      Top = 1
      Width = 74
      Height = 29
      Hint = 'Selecionar todos os registroas'
      Caption = 'Sel &Nenhum'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bSelNenhumClick
    end
    object bAddSel: TButton
      Left = 423
      Top = 1
      Width = 82
      Height = 29
      Hint = 'Selecionar todos os registroas'
      Caption = '&Adicionar Sel'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bAddSelClick
    end
    object bRemTodos: TButton
      Left = 702
      Top = 1
      Width = 96
      Height = 29
      Hint = 'Remove todos os itens do PO'
      Caption = '&Remover Todos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bRemTodosClick
    end
    object bRemUm: TButton
      Left = 612
      Top = 1
      Width = 89
      Height = 29
      Hint = 'Remove todos os itens do PO'
      Caption = '&Remover Item'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bRemUmClick
    end
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 144
      Height = 29
      Cursor = crHandPoint
      DataSource = dmDespacho.dsPOItens
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
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
      TabOrder = 6
    end
    object bParcial: TButton
      Left = 506
      Top = 1
      Width = 90
      Height = 29
      Hint = 'Adiciona item com quantidade informada.'
      Caption = '&Adicionar Item'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = bParcialClick
    end
    object bSelNCM: TButton
      Left = 288
      Top = 1
      Width = 57
      Height = 29
      Hint = 'Selecionar todos os registroas'
      Caption = 'Sel &NCM'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = bSelNCMClick
    end
    object bSelItens: TButton
      Left = 346
      Top = 1
      Width = 61
      Height = 29
      Hint = 'Selecionar todos os registroas'
      Caption = 'Sel &Itens'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = bSelItensClick
    end
    object Panel5: TPanel
      Left = 409
      Top = 2
      Width = 13
      Height = 28
      BevelOuter = bvLowered
      Color = clTeal
      ParentBackground = False
      TabOrder = 10
      StyleElements = [seBorder]
    end
    object Panel6: TPanel
      Left = 598
      Top = 2
      Width = 13
      Height = 28
      BevelOuter = bvLowered
      Color = clTeal
      ParentBackground = False
      TabOrder = 11
      StyleElements = [seBorder]
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 316
    Width = 944
    Height = 250
    Align = alBottom
    Color = clWhite
    DataSource = Dados.dsInvoiceItens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Item'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
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
        Width = 58
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NCM'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 526
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
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_UnitarioME'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 114
        Visible = True
      end>
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 938
    Height = 38
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 3
    object lDI: TStaticText
      Left = 10
      Top = 9
      Width = 75
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Quantidade %'
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
    object cPercentualQtde: TCurrencyEdit
      Left = 87
      Top = 9
      Width = 66
      Height = 21
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '0.00%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxValue = 100.000000000000000000
      MinValue = 1.000000000000000000
      ParentFont = False
      TabOrder = 1
      Value = 100.000000000000000000
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 44
    Width = 944
    Height = 16
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvLowered
    Caption = '  ITENS DO PO'
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
    StyleElements = [seBorder]
    ExplicitTop = 81
  end
  object Panel4: TPanel
    Left = 0
    Top = 300
    Width = 944
    Height = 16
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvLowered
    Caption = '  ITENS DA INVOICE'
    Color = clTeal
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
    StyleElements = [seBorder]
    ExplicitLeft = -24
    ExplicitTop = 322
  end
  object tTmp: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 416
    Top = 144
  end
  object tProd: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 416
    Top = 208
  end
end
