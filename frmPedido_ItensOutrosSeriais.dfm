object Pedido_ItensOutrosSeriais: TPedido_ItensOutrosSeriais
  Left = 406
  Top = 152
  Anchors = [akTop]
  BorderStyle = bsToolWindow
  Caption = 'Pedido_ItensOutrosSeriais'
  ClientHeight = 612
  ClientWidth = 986
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 582
    Width = 986
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      986
      30)
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 208
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsProdutosSeriais
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
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
    object bSair: TButton
      Left = 903
      Top = 1
      Width = 83
      Height = 28
      Hint = 'Fecha a janela atual e cancela a sele'#231#227'o  '
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bSelTodos: TButton
      Left = 209
      Top = 1
      Width = 99
      Height = 28
      Hint = '  Seleciona todos n'#250'meros seriais  '
      Caption = 'Selecionar &Todos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bSelTodosClick
    end
    object bProcesso: TButton
      Left = 308
      Top = 1
      Width = 115
      Height = 28
      Hint = '  Seleciona todos os n'#250'meros seriais do processo corrente.  '
      Caption = 'Selecionar &Processo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bProcessoClick
    end
    object bRemTodos: TButton
      Left = 583
      Top = 1
      Width = 91
      Height = 28
      Hint = '  Seleciona todos os n'#250'meros seriais do processo corrente.  '
      Caption = '&Remover Todos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bRemTodosClick
    end
    object bAdicionar: TButton
      Left = 423
      Top = 1
      Width = 69
      Height = 28
      Hint = '  Seleciona todos n'#250'meros seriais  '
      Caption = '&Adicionar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bAdicionarClick
    end
    object bRemItem: TButton
      Left = 492
      Top = 1
      Width = 91
      Height = 28
      Hint = '  Seleciona todos os n'#250'meros seriais do processo corrente.  '
      Caption = 'Remover &Item'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = bRemItemClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 7
    Width = 974
    Height = 266
    Caption = 'Seriais dispon'#237'veis para faturamento [0]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      974
      266)
    object Grade: TRxDBGrid
      Left = 4
      Top = 20
      Width = 965
      Height = 241
      Anchors = [akLeft, akTop, akBottom]
      DataSource = Dados.dsProdutosSeriais
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyUp = GradeKeyUp
      OnMouseDown = GradeMouseDown
      MultiSelect = True
      RowColor2 = 16776176
      Columns = <
        item
          Expanded = False
          FieldName = 'Cor_Nome'
          Title.Alignment = taCenter
          Title.Caption = 'Cor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 155
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tipo'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo 1'
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
          FieldName = 'Numero'
          Title.Alignment = taCenter
          Title.Caption = 'N'#250'mero 1'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 181
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tipo2'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo 2'
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
          FieldName = 'Numero2'
          Title.Alignment = taCenter
          Title.Caption = 'Numero 2'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 181
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tipo3'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo 3'
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
          FieldName = 'Numero3'
          Title.Alignment = taCenter
          Title.Caption = 'Numero 3'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 181
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 7
    Top = 311
    Width = 974
    Height = 266
    Caption = 'Seriais adicionado ao pedido  [0]'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      974
      266)
    object GradeSel: TRxDBGrid
      Left = 4
      Top = 20
      Width = 965
      Height = 241
      Anchors = [akLeft, akTop, akBottom]
      DataSource = dstPedido
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDragDrop = GradeSelDragDrop
      OnDragOver = GradeSelDragOver
      OnKeyUp = GradeKeyUp
      MultiSelect = True
      RowColor2 = 16776176
      Columns = <
        item
          Expanded = False
          FieldName = 'Cor_Nome'
          Title.Alignment = taCenter
          Title.Caption = 'Cor'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 155
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tipo'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo 1'
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
          FieldName = 'Numero'
          Title.Alignment = taCenter
          Title.Caption = 'N'#250'mero 1'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 181
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tipo2'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo 2'
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
          FieldName = 'Numero2'
          Title.Alignment = taCenter
          Title.Caption = 'Numero 2'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 181
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tipo3'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo 3'
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
          FieldName = 'Numero3'
          Title.Alignment = taCenter
          Title.Caption = 'Numero 3'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 181
          Visible = True
        end>
    end
  end
  object StaticText16: TStaticText
    Left = 6
    Top = 274
    Width = 88
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Pesquisar Serial'
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
  object cPesquisa: TEdit
    Left = 96
    Top = 274
    Width = 881
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnChange = cPesquisaChange
  end
  object tSeriais: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 448
    Top = 216
  end
  object tPedido: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 496
    Top = 216
  end
  object dstPedido: TDataSource
    DataSet = tPedido
    Left = 527
    Top = 216
  end
  object tPesquisa: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM ProdutosSeriais')
    Left = 408
    Top = 216
  end
end
