object Pedido_Itens: TPedido_Itens
  Left = 552
  Top = 266
  ActiveControl = Grade
  BorderStyle = bsDialog
  Caption = 'pis'
  ClientHeight = 648
  ClientWidth = 948
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
    Width = 948
    Height = 37
    Align = alTop
    Stretch = True
    ExplicitWidth = 943
  end
  object RxLabel3: TRxLabel
    Left = 8
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
    Left = 8
    Top = 16
    Width = 208
    Height = 18
    Caption = 'Manuten'#231#227'o dos itens do pedido.'
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
  object GroupBox2: TGroupBox
    Left = 6
    Top = 67
    Width = 331
    Height = 82
    TabOrder = 0
    object bPesqNav: TSpeedButton
      Left = 302
      Top = 52
      Width = 23
      Height = 24
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
        B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
        1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
        BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
        BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
      OnClick = bPesqNavClick
    end
    object StaticText1: TStaticText
      Left = 5
      Top = 7
      Width = 71
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Processo N'#186
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
    object lDI: TStaticText
      Left = 5
      Top = 30
      Width = 71
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'DI/DE N'#186
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
    object cProcesso: TDBLookupComboBox
      Left = 78
      Top = 7
      Width = 247
      Height = 21
      Color = clWhite
      DropDownRows = 30
      DropDownWidth = 320
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      KeyField = 'Processo'
      ListField = 'Processo;Numero_Declaracao;Tipo'
      ListSource = Dados.dsProcessosDOC
      ParentFont = False
      TabOrder = 1
      OnClick = cProcessoExit
      OnExit = cProcessoExit
    end
    object cDI: TDBEdit
      Left = 78
      Top = 30
      Width = 136
      Height = 21
      CharCase = ecUpperCase
      Color = 16769505
      DataField = 'Numero_Declaracao'
      DataSource = Dados.dsProcessosDOC
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      MaxLength = 13
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object cDataDI: TDBEdit
      Left = 220
      Top = 30
      Width = 105
      Height = 21
      CharCase = ecUpperCase
      Color = 16769505
      DataField = 'Data_DesembaracoDeclaracao'
      DataSource = Dados.dsProcessosDOC
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object StaticText8: TStaticText
      Left = 5
      Top = 53
      Width = 71
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Navio'
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
    object cNavio: TDBLookupComboBox
      Left = 78
      Top = 53
      Width = 223
      Height = 21
      Color = clWhite
      DropDownRows = 30
      DropDownWidth = 320
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      KeyField = 'Ordem'
      ListField = 'Navio;Ordem'
      ListSource = Dados.dsControleNavios
      ParentFont = False
      TabOrder = 6
    end
  end
  object gAdicao: TGroupBox
    Left = 5
    Top = 169
    Width = 936
    Height = 203
    Caption = 'Adi'#231#245'es da DI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Grade: TDBGrid
      Left = 3
      Top = 16
      Width = 924
      Height = 183
      DataSource = Dados.dsAdicoes
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
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo_Mercadoria'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'digo'
          Width = 62
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Produto_Nome'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o Produto'
          Width = 443
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NCM'
          Title.Alignment = taCenter
          Width = 57
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Quantidade'
          Title.Alignment = taCenter
          Title.Caption = 'Qtde.Total'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          Title.Alignment = taCenter
          Title.Caption = 'Qtde.Disp.'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_UnitarioReal'
          Title.Alignment = taCenter
          Title.Caption = 'Unit'#225'rio'
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Lucro'
          Title.Alignment = taCenter
          Width = 77
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Adicao'
          Title.Alignment = taCenter
          Title.Caption = 'AD'
          Width = 23
          Visible = True
        end>
    end
  end
  object GroupBox1: TGroupBox
    Left = 343
    Top = 67
    Width = 597
    Height = 82
    TabOrder = 1
    object StaticText3: TStaticText
      Left = 7
      Top = 30
      Width = 76
      Height = 21
      Cursor = crHandPoint
      Hint = '   Click no link para calcular o valor de uma taxa utilizada.   '
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Unit'#225'rio'
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
      TabOrder = 0
      Transparent = False
      StyleElements = []
      OnClick = StaticText2Click
    end
    object StaticText2: TStaticText
      Left = 267
      Top = 7
      Width = 75
      Height = 44
      Cursor = crHandPoint
      Hint = '   Click no link para calcular o valor de uma taxa utilizada.   '
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = '                    %   Margem Lucro       Unitario R$'
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
      TabOrder = 1
      Transparent = False
      StyleElements = []
      OnClick = StaticText2Click
    end
    object cUnitario: TCurrencyEdit
      Left = 85
      Top = 30
      Width = 99
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
      OnChange = cUnitarioChange
    end
    object cLucro: TCurrencyEdit
      Left = 344
      Top = 7
      Width = 85
      Height = 21
      AutoSize = False
      DecimalPlaces = 6
      DisplayFormat = ',0.00000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object cLucroValor: TCurrencyEdit
      Left = 344
      Top = 30
      Width = 85
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
      TabOrder = 5
    end
    object StaticText4: TStaticText
      Left = 7
      Top = 7
      Width = 76
      Height = 21
      Cursor = crHandPoint
      Hint = '   Click no link para calcular o valor de uma taxa utilizada.   '
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      Transparent = False
      StyleElements = []
      OnClick = StaticText2Click
    end
    object cPercentualQtde: TCurrencyEdit
      Left = 85
      Top = 7
      Width = 99
      Height = 21
      AutoSize = False
      DisplayFormat = ',0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnChange = cUnitarioChange
    end
    object StaticText5: TStaticText
      Left = 440
      Top = 7
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
      TabOrder = 9
      Transparent = False
      StyleElements = []
      OnClick = StaticText2Click
    end
    object cDesconto: TCurrencyEdit
      Left = 496
      Top = 7
      Width = 87
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
      TabOrder = 6
    end
    object cDescontoValor: TCurrencyEdit
      Left = 496
      Top = 30
      Width = 87
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
      TabOrder = 7
    end
    object cFracionar: TCheckBox
      Left = 186
      Top = 9
      Width = 76
      Height = 16
      Caption = 'Fracionar'
      Checked = True
      State = cbChecked
      TabOrder = 10
    end
    object StaticText7: TStaticText
      Left = 7
      Top = 53
      Width = 75
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'CFOP'
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
    object cNatureza: TDBLookupComboBox
      Left = 85
      Top = 53
      Width = 498
      Height = 21
      DropDownRows = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao_NF'
      ListFieldIndex = 1
      ListSource = Dados.dsNatureza
      NullValueKey = 46
      ParentFont = False
      TabOrder = 12
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 618
    Width = 948
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    object bSair: TButton
      Left = 884
      Top = 1
      Width = 63
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
      Width = 144
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsPedidosItens
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alLeft
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
    end
    object bInclui_Item: TButton
      Left = 145
      Top = 1
      Width = 58
      Height = 28
      Hint = '  Adiciona um item no pedido.  '
      Align = alLeft
      Caption = 'Adi &Item'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bInclui_ItemClick
    end
    object bInclui_Codigo: TButton
      Left = 203
      Top = 1
      Width = 70
      Height = 28
      Hint = '  Adiciona um item no pedido.  '
      Align = alLeft
      Caption = 'Adi &C'#243'digo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = bInclui_CodigoClick
    end
    object bInclui_Adicao: TButton
      Left = 273
      Top = 1
      Width = 70
      Height = 28
      Hint = '  Adiciona todos os itens da adi'#231#227'o no pedido.  '
      Align = alLeft
      Caption = 'Adi &Adi'#231#227'o'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bInclui_AdicaoClick
    end
    object bInclui_Todos: TButton
      Left = 343
      Top = 1
      Width = 67
      Height = 28
      Hint = '  Adiciona todas os itens de todas as adi'#231#245'es no pedido.  '
      Align = alLeft
      Caption = 'Adi &Todos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bInclui_TodosClick
    end
    object bRemove_Item: TButton
      Left = 410
      Top = 1
      Width = 64
      Height = 28
      Hint = '  Remove um item do pedido.  '
      Align = alLeft
      Caption = '&Rem Item'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bRemove_ItemClick
    end
    object bRemove_Adicao: TButton
      Left = 474
      Top = 1
      Width = 76
      Height = 28
      Hint = '  Remove todos os items de uma adi'#231#227'o do pedido.  '
      Align = alLeft
      Caption = 'Re&m Adi'#231#227'o'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = bRemove_AdicaoClick
    end
    object bRemove_Todos: TButton
      Left = 550
      Top = 1
      Width = 68
      Height = 28
      Hint = '  Remove todos os itens do pedido.  '
      Align = alLeft
      Caption = 'Rem T&udo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = bRemove_TodosClick
    end
    object bDividir: TButton
      Left = 618
      Top = 1
      Width = 76
      Height = 28
      Hint = 'Divide o pedido em partes'
      Align = alLeft
      Caption = '&Div Pedidos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = bDividirClick
    end
    object bCopiarRef: TButton
      Left = 694
      Top = 1
      Width = 89
      Height = 28
      Hint = '  Remove todos os itens do pedido.  '
      Align = alLeft
      Caption = 'Copiar &NF.Ref.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = bCopiarRefClick
    end
    object bRatear: TButton
      Left = 783
      Top = 1
      Width = 81
      Height = 28
      Hint = '  Remove todos os itens do pedido.  '
      Align = alLeft
      Caption = 'Ratear &Lucro'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = bRatearClick
    end
  end
  object gItens: TGroupBox
    Left = 4
    Top = 389
    Width = 936
    Height = 222
    Caption = 'Itens do Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object GradeItens: TDBGrid
      Left = 5
      Top = 16
      Width = 926
      Height = 200
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
      OnEnter = GradeItensEnter
      Columns = <
        item
          Expanded = False
          FieldName = 'Item'
          Title.Alignment = taCenter
          Width = 30
          Visible = True
        end
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
          Width = 516
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
          Width = 111
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Unitario'
          Title.Alignment = taCenter
          Title.Caption = 'Unit'#225'rio'
          Width = 76
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Adicao'
          Title.Alignment = taCenter
          Title.Caption = 'AD'
          Width = 37
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_BCPIS'
          Title.Alignment = taCenter
          Title.Caption = 'B.C.PIS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CSTPIS'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Aliquota_PIS'
          Title.Alignment = taCenter
          Title.Caption = '% PIS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_PIS'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr PIS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CSTCOFINS'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Aliquota_COFINS'
          Title.Alignment = taCenter
          Title.Caption = '% COFINS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CSTIPI'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_COFINS'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr COFINS'
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
          FieldName = 'Lucro'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_Despesa'
          Title.Alignment = taCenter
          Title.Caption = 'Despesa'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Aliquota_ICMSOper'
          Title.Alignment = taCenter
          Title.Caption = '% ICMS OP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Aliquota_ICMSIntegral'
          Title.Alignment = taCenter
          Title.Caption = '% ICMS OP INT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Beneficio_Fiscal'
          Title.Alignment = taCenter
          Title.Caption = 'Benef.Fiscal'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Codigo_CredPres'
          Title.Caption = 'Cod Cred.Pres.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_BCICMSPresumido'
          Title.Caption = 'BC ICMS Pres'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Aliquota_ICMSPresumido'
          Title.Caption = 'Aliq ICMS Pres.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor_ICMSPresumido'
          Title.Caption = 'Vlr ICMS Pres'
          Visible = True
        end>
    end
  end
  object cVolumes: TCheckBox
    Left = 191
    Top = 154
    Width = 198
    Height = 17
    Caption = 'Calcular quantidade total de volumes.'
    TabOrder = 5
  end
  object Progresso: TProgressBar
    Left = 8
    Top = 375
    Width = 932
    Height = 13
    TabOrder = 6
    Visible = False
  end
  object cICMS: TCheckBox
    Left = 428
    Top = 154
    Width = 192
    Height = 17
    Caption = 'ICMS cobrado anteriormente por ST'
    TabOrder = 7
  end
  object cFormula: TMemo
    Left = 784
    Top = 3
    Width = 121
    Height = 31
    BevelKind = bkSoft
    Color = 11796479
    Ctl3D = True
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
    Visible = False
    WantReturns = False
    WordWrap = False
    StyleElements = []
  end
  object StaticText23: TStaticText
    Left = 6
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
    TabOrder = 9
    Transparent = False
    StyleElements = []
  end
  object DBEdit15: TDBEdit
    Left = 52
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
    TabOrder = 10
  end
  object DBEdit16: TDBEdit
    Left = 120
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
    TabOrder = 11
  end
  object DBEdit1: TDBEdit
    Left = 559
    Top = 44
    Width = 381
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
    TabOrder = 12
  end
  object StaticText6: TStaticText
    Left = 492
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
    TabOrder = 13
    Transparent = False
    StyleElements = []
  end
  object DBEdit2: TDBEdit
    Left = 522
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
    TabOrder = 14
  end
  object cQtdePercentual: TCheckBox
    Left = 649
    Top = 154
    Width = 291
    Height = 17
    Caption = 'Utilizar quant.total item p/quebra do pedido p/percentual'
    Enabled = False
    TabOrder = 15
  end
  object PopupMenu1: TPopupMenu
    Left = 56
    Top = 240
    object mnIncluiItem: TMenuItem
      Caption = 'Adicionar &Item'
      OnClick = bInclui_ItemClick
    end
    object mnIncluiAdicao: TMenuItem
      Caption = 'Adicionar &Adi'#231#227'o'
      OnClick = bInclui_AdicaoClick
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
      OnClick = bRemove_AdicaoClick
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
    Left = 56
    Top = 288
  end
  object tPesoAdicao: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT SUM(Peso_Liquido) AS Peso FROM Adicoes')
    Left = 192
    Top = 240
    object tPesoAdicaoPeso: TFloatField
      FieldName = 'Peso'
      Origin = '.'
      ReadOnly = True
    end
  end
  object tItem: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Item) AS Item FROM PedidosItens')
    Left = 192
    Top = 288
  end
  object tDespesas: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 255
    Top = 240
  end
  object tFOB_DI: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 255
    Top = 288
  end
  object tDumping: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 320
    Top = 240
  end
  object tProcessoMestre: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 320
    Top = 288
  end
  object tFOB: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 400
    Top = 240
  end
  object tRegistro: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 400
    Top = 288
  end
  object tSalvaDesp: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 456
    Top = 240
  end
  object tCambio: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 456
    Top = 288
  end
  object tSoma: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 511
    Top = 240
  end
end
