object Pedidos_ItensOutros: TPedidos_ItensOutros
  Left = 337
  Top = 61
  BorderStyle = bsDialog
  Caption = 'Pedidos_ItensOutros'
  ClientHeight = 615
  ClientWidth = 892
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object XPPanel1: TXPPanel
    Left = 0
    Top = 0
    Width = 892
    Height = 46
    Align = alTop
    Direction = xdStretchImage
    Color = clHighlight
    ColorEnd = clWhite
    object RxLabel3: TRxLabel
      Left = 8
      Top = 3
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
      Top = 22
      Width = 263
      Height = 18
      Caption = 'Manuten'#231#227'o dos itens do pedido (Outras).'
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
    object Image1: TImage
      Left = 853
      Top = 4
      Width = 35
      Height = 36
      Picture.Data = {
        055449636F6E0000010001002020100000000000E80200001600000028000000
        2000000040000000010004000000000080020000000000000000000000000000
        0000000000000000000080000080000000808000800000008000800080800000
        80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
        FFFFFF000000000000000000088808770FFFFF8F000000000000000088808770
        FF0FF8FF00000000000000088808770FFFFF8FFF0000000000000088808770FF
        0FF88888000000000000088808770FFFFF8FFF8F00000000000088808770FF0F
        F8FFF8FF0000000000088808770FFFFF88888888000000000088808770FF0FF8
        FFF8FFFF00000000088808770FFFFF8FFF8FFFFF0000000088808770FF0FF8FF
        F8FFFFFF000000088808770FFFFF8FFF8FFFFFF800000088808770FF0FF8FFF8
        FFFFFF8F0000088808770FFFFF8FFF8FFFFFF8FF000088808770FF0FF8FFF8FF
        FFFF8FFF00088808770FFFFF88888888888888880088808770FF0FF8FFFFFFFF
        FFFFFFFF088808770FFFFF88888888888888888800008770FF0FF8FFFFFFFF8F
        FFFF8FF80008770FFFFF8FFFFFFFF88888888888008770FF0FF8FFFFFFFF8FFF
        FF8FF8FF08770FFFFF77777777777777777777778770FF0FF7FFFFFFFFFFFFFF
        FFFFFFFF770FFFFF7F000000000000FF0000000070FF0FF7FF00000F00000000
        0F00000F0FFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFF0FF7777777777777777777
        77777777FFFF8FFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000FFFF0000FFFE0000FFFC0000FFF80000FFF00000FFE00000FFC00000
        FF800000FF000000FE000000FC000000F8000000F0000000E0000000C0000000
        800000000000000000000000C000000080000000000000000000000000000000
        0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF}
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 586
    Width = 892
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      892
      29)
    object bSair: TButton
      Left = 829
      Top = 1
      Width = 62
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      Left = 2
      Top = 1
      Width = 459
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsPedidosItens
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
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
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
  end
  object gItens: TGroupBox
    Left = 6
    Top = 264
    Width = 882
    Height = 317
    Caption = 'Itens do Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    DesignSize = (
      882
      317)
    object GradeItens: TRxDBGrid
      Left = 2
      Top = 16
      Width = 877
      Height = 298
      Anchors = [akLeft, akTop, akRight, akBottom]
      BorderStyle = bsNone
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
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
          Width = 779
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 6
    Top = 52
    Width = 881
    Height = 192
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 3
    object StaticText2: TStaticText
      Left = 5
      Top = 5
      Width = 85
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Produto'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 29
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object StaticText4: TStaticText
      Left = 5
      Top = 28
      Width = 85
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 30
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object StaticText5: TStaticText
      Left = 192
      Top = 28
      Width = 94
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Unit'#225'rio'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 31
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object cQuantidade: TDBEdit
      Left = 92
      Top = 28
      Width = 98
      Height = 21
      DataField = 'Quantidade'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnChange = cQuantidadeChange
    end
    object cValorUnitario: TDBEdit
      Left = 288
      Top = 28
      Width = 124
      Height = 21
      DataField = 'Valor_Unitario'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnChange = cQuantidadeChange
    end
    object cProduto: TDBLookupComboBox
      Left = 164
      Top = 5
      Width = 712
      Height = 21
      DataField = 'Codigo_Mercadoria'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo;Codigo_Fabricante;Descricao_Reduzida'
      ListFieldIndex = 2
      ListSource = Dados.dsProdutos
      ParentFont = False
      TabOrder = 1
    end
    object cCodigo: TDBEdit
      Left = 92
      Top = 5
      Width = 70
      Height = 21
      DataField = 'Codigo_Mercadoria'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = cCodigoChange
    end
    object StaticText1: TStaticText
      Left = 5
      Top = 51
      Width = 85
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'B.C.ICMS Oper.'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 32
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object DBEdit2: TDBEdit
      Left = 241
      Top = 51
      Width = 38
      Height = 21
      DataField = 'Aliquota_ICMSOper'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnChange = cBCICMSChange
    end
    object DBEdit3: TDBEdit
      Left = 314
      Top = 51
      Width = 98
      Height = 21
      DataField = 'Valor_ICMSOper'
      DataSource = Dados.dsPedidosItens
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object StaticText3: TStaticText
      Left = 5
      Top = 97
      Width = 85
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'B.C.IPI'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 33
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object DBEdit5: TDBEdit
      Left = 241
      Top = 97
      Width = 38
      Height = 21
      DataField = 'Aliquota_IPI'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
      OnChange = cBCIPIChange
    end
    object DBEdit6: TDBEdit
      Left = 314
      Top = 97
      Width = 98
      Height = 21
      DataField = 'Total_IPI'
      DataSource = Dados.dsPedidosItens
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
    end
    object StaticText6: TStaticText
      Left = 5
      Top = 74
      Width = 85
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'B.C.ICMS Subs.'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 34
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object DBEdit7: TDBEdit
      Left = 241
      Top = 74
      Width = 38
      Height = 21
      DataField = 'Aliquota_ICMSSub'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      OnChange = cBCICMSSubChange
    end
    object DBEdit8: TDBEdit
      Left = 314
      Top = 74
      Width = 98
      Height = 21
      DataField = 'Valor_ICMSSub'
      DataSource = Dados.dsPedidosItens
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
    end
    object cBCICMSSub: TDBEdit
      Left = 92
      Top = 74
      Width = 98
      Height = 21
      DataField = 'Valor_BCICMSSub'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnChange = cBCICMSSubChange
    end
    object cBCICMS: TDBEdit
      Left = 92
      Top = 51
      Width = 98
      Height = 21
      DataField = 'Valor_BCICMSOper'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnChange = cBCICMSChange
    end
    object StaticText29: TStaticText
      Left = 414
      Top = 51
      Width = 70
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'CST ICMS'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 35
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object StaticText30: TStaticText
      Left = 414
      Top = 120
      Width = 70
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'CST PIS'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 36
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object DBEdit23: TDBEdit
      Left = 486
      Top = 120
      Width = 40
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CSTPIS'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
    end
    object StaticText31: TStaticText
      Left = 414
      Top = 97
      Width = 70
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'CST IPI'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 37
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object DBEdit24: TDBEdit
      Left = 486
      Top = 97
      Width = 40
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CSTIPI'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
    end
    object StaticText32: TStaticText
      Left = 414
      Top = 143
      Width = 70
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'CST COFINS'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 38
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object DBEdit25: TDBEdit
      Left = 486
      Top = 143
      Width = 40
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CSTCOFINS'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 25
    end
    object cBCIPI: TDBEdit
      Left = 92
      Top = 97
      Width = 98
      Height = 21
      DataField = 'Valor_Total'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
      OnChange = cBCIPIChange
    end
    object StaticText8: TStaticText
      Left = 192
      Top = 51
      Width = 47
      Height = 113
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Al'#237'quota'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 39
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object StaticText9: TStaticText
      Left = 281
      Top = 51
      Width = 31
      Height = 112
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 40
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object StaticText10: TStaticText
      Left = 5
      Top = 120
      Width = 85
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'PIS'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 41
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object DBEdit13: TDBEdit
      Left = 241
      Top = 120
      Width = 38
      Height = 21
      DataField = 'Aliquota_PIS'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
    end
    object DBEdit12: TDBEdit
      Left = 314
      Top = 120
      Width = 98
      Height = 21
      DataField = 'Valor_PIS'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
    end
    object StaticText14: TStaticText
      Left = 5
      Top = 143
      Width = 85
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'COFINS'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 42
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object DBEdit14: TDBEdit
      Left = 241
      Top = 143
      Width = 38
      Height = 21
      DataField = 'Aliquota_COFINS'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 23
    end
    object DBEdit15: TDBEdit
      Left = 314
      Top = 143
      Width = 98
      Height = 21
      DataField = 'Valor_COFINS'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 24
    end
    object cValorTotal: TDBEdit
      Left = 486
      Top = 28
      Width = 124
      Height = 21
      DataField = 'Valor_Total'
      DataSource = Dados.dsPedidosItens
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object StaticText11: TStaticText
      Left = 414
      Top = 28
      Width = 70
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Total'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 43
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object DBEdit1: TDBEdit
      Left = 92
      Top = 166
      Width = 98
      Height = 21
      DataField = 'Peso_Liquido'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 27
    end
    object StaticText7: TStaticText
      Left = 5
      Top = 166
      Width = 85
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Peso L'#237'quido'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 44
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object StaticText13: TStaticText
      Left = 192
      Top = 166
      Width = 93
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Peso Bruto'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 45
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object DBEdit4: TDBEdit
      Left = 288
      Top = 166
      Width = 124
      Height = 21
      DataField = 'Peso_Bruto'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 28
    end
    object DBEdit17: TDBEdit
      Left = 486
      Top = 51
      Width = 40
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CodigoTrib_TabA'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      MaxLength = 1
      ParentFont = False
      TabOrder = 8
    end
    object DBEdit18: TDBEdit
      Left = 528
      Top = 51
      Width = 40
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CodigoTrib_TabB'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 528
      Top = 97
      Width = 348
      Height = 21
      DataField = 'CSTIPI'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao'
      ListFieldIndex = 1
      ListSource = Dados.dsCSTIPI
      ParentFont = False
      TabOrder = 18
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 528
      Top = 120
      Width = 348
      Height = 21
      DataField = 'CSTPIS'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao'
      ListFieldIndex = 1
      ListSource = Dados.dsCSTPIS
      ParentFont = False
      TabOrder = 22
    end
    object DBLookupComboBox3: TDBLookupComboBox
      Left = 570
      Top = 51
      Width = 306
      Height = 21
      DataField = 'CodigoTrib_TabB'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao'
      ListFieldIndex = 1
      ListSource = Dados.dsCSTTabelaB
      ParentFont = False
      TabOrder = 10
    end
    object DBLookupComboBox4: TDBLookupComboBox
      Left = 528
      Top = 143
      Width = 348
      Height = 21
      DataField = 'CSTPIS'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo;Descricao'
      ListFieldIndex = 1
      ListSource = Dados.dsCSTPIS
      ParentFont = False
      TabOrder = 26
    end
  end
  object TabEnter1: TTabEnter
    ClassNotAffected.Strings = (
      'TMemo'
      'TButton'
      'TBitBtn')
    Enabled = True
    Left = 288
    Top = 9
  end
  object tItem: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 320
    Top = 8
  end
  object tPesquisa: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 352
    Top = 8
  end
end
