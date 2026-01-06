object PedidosOutra_LoteItens: TPedidosOutra_LoteItens
  Left = 560
  Top = 242
  BorderStyle = bsDialog
  Caption = 'PedidosOutra_LoteItens'
  ClientHeight = 642
  ClientWidth = 984
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
    Left = 0
    Top = 0
    Width = 984
    Height = 521
    Align = alTop
    BorderStyle = bsNone
    DataSource = Dados.dsLoteNotas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnCellClick = GradeCellClick
    OnDrawColumnCell = GradeDrawColumnCell
    FixedCols = 5
    ClearSelection = False
    RowColor2 = 16776176
    ShowGlyphs = False
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Nota'
        Title.Alignment = taCenter
        Width = 70
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Item'
        Title.Alignment = taCenter
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Produto'
        Width = 494
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Sel'
        ReadOnly = True
        Title.Alignment = taCenter
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Title.Alignment = taCenter
        Title.Caption = 'Qtde'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Title.Alignment = taCenter
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Desconto'
        Title.Alignment = taCenter
        Title.Caption = 'Descontos'
        Width = 110
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 594
    Width = 984
    Height = 48
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      984
      48)
    object lProgresso: TLabel
      Left = 12
      Top = 6
      Width = 161
      Height = 13
      Caption = 'Importando itens para o pedido. . .'
      Visible = False
    end
    object lProgresso2: TLabel
      Left = 281
      Top = 6
      Width = 120
      Height = 13
      Caption = 'Salvando Refer'#234'ncias. . .'
      Visible = False
    end
    object bImportar: TButton
      Left = 819
      Top = 8
      Width = 75
      Height = 33
      Anchors = [akTop, akRight]
      Caption = '&Importar'
      TabOrder = 0
      OnClick = bImportarClick
    end
    object bSair: TButton
      Left = 901
      Top = 8
      Width = 75
      Height = 33
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      TabOrder = 1
      OnClick = bSairClick
    end
    object Progresso: TProgressBar
      Left = 11
      Top = 22
      Width = 262
      Height = 16
      TabOrder = 2
      Visible = False
    end
    object bSelTodos: TButton
      Left = 587
      Top = 8
      Width = 108
      Height = 33
      Anchors = [akTop, akRight]
      Caption = 'Selecionar &Todos'
      TabOrder = 3
      OnClick = bSelTodosClick
    end
    object bDesmarcar: TButton
      Left = 703
      Top = 8
      Width = 108
      Height = 33
      Anchors = [akTop, akRight]
      Caption = '&Desmarcar Todos'
      TabOrder = 4
      OnClick = bDesmarcarClick
    end
    object bRefazer: TButton
      Left = 505
      Top = 8
      Width = 75
      Height = 33
      Anchors = [akTop, akRight]
      Caption = '&Refazer'
      TabOrder = 5
      OnClick = bRefazerClick
    end
    object Progresso2: TProgressBar
      Left = 280
      Top = 22
      Width = 137
      Height = 16
      TabOrder = 6
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 429
    Top = 528
    Width = 366
    Height = 60
    TabOrder = 2
    object Label3: TLabel
      Left = 6
      Top = 10
      Width = 63
      Height = 13
      Caption = 'Valor Unit'#225'rio'
    end
    object Label5: TLabel
      Left = 6
      Top = 35
      Width = 98
      Height = 13
      Caption = 'Total dos Descontos'
    end
    object cValor: TCurrencyEdit
      Left = 109
      Top = 6
      Width = 151
      Height = 21
      AutoSize = False
      DecimalPlaces = 6
      DisplayFormat = ',##0.000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = cValorChange
    end
    object bAplicar: TButton
      Left = 263
      Top = 4
      Width = 96
      Height = 25
      Caption = '&Aplicar'
      Enabled = False
      TabOrder = 1
      OnClick = bAplicarClick
    end
    object cDesconto: TCurrencyEdit
      Left = 109
      Top = 32
      Width = 151
      Height = 21
      AutoSize = False
      DecimalPlaces = 6
      DisplayFormat = ',##0.000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnChange = cDescontoChange
    end
    object bDesconto: TButton
      Left = 263
      Top = 30
      Width = 96
      Height = 25
      Caption = '&Ratear Desconto'
      Enabled = False
      TabOrder = 3
      OnClick = bDescontoClick
    end
  end
  object Panel3: TPanel
    Left = 5
    Top = 528
    Width = 419
    Height = 60
    TabOrder = 3
    object Label1: TLabel
      Left = 6
      Top = 10
      Width = 28
      Height = 13
      Caption = 'Notas'
    end
    object Label2: TLabel
      Left = 102
      Top = 10
      Width = 23
      Height = 13
      Caption = 'Itens'
    end
    object Label4: TLabel
      Left = 196
      Top = 21
      Width = 64
      Height = 13
      Caption = 'Selecionados'
    end
    object Label6: TLabel
      Left = 6
      Top = 32
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object cQtNotas: TCurrencyEdit
      Left = 41
      Top = 6
      Width = 54
      Height = 21
      AutoSize = False
      Color = 16762566
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object cQtItens: TCurrencyEdit
      Left = 133
      Top = 6
      Width = 54
      Height = 21
      AutoSize = False
      Color = 16762566
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object cSel: TCurrencyEdit
      Left = 266
      Top = 6
      Width = 54
      Height = 21
      AutoSize = False
      Color = 16762566
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object cTotal: TCurrencyEdit
      Left = 41
      Top = 29
      Width = 146
      Height = 21
      AutoSize = False
      Color = 16762566
      DecimalPlaces = 16
      DisplayFormat = ',##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object cTotalSel: TCurrencyEdit
      Left = 266
      Top = 29
      Width = 145
      Height = 21
      AutoSize = False
      Color = 16762566
      DecimalPlaces = 16
      DisplayFormat = ',##0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
  end
  object Panel4: TPanel
    Left = 799
    Top = 528
    Width = 181
    Height = 60
    TabOrder = 4
    object cCampo: TCheckBox
      Left = 5
      Top = 7
      Width = 164
      Height = 17
      Caption = 'Liberar Campo de Quantidade'
      TabOrder = 0
      OnClick = cCampoClick
    end
    object cAgrupar: TCheckBox
      Left = 5
      Top = 28
      Width = 137
      Height = 17
      Caption = 'Agrupar Produtos Iguais'
      Checked = True
      State = cbChecked
      TabOrder = 1
      OnClick = cCampoClick
    end
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 508
    Top = 387
  end
  object tGrupo: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 540
    Top = 387
  end
end
