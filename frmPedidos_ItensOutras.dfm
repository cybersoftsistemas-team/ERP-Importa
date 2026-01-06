object Pedidos_ItensOutras: TPedidos_ItensOutras
  Left = 405
  Top = 139
  BorderStyle = bsDialog
  Caption = 'Pedidos_ItensOutros'
  ClientHeight = 491
  ClientWidth = 841
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
    Width = 841
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
      Left = 807
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
    Top = 462
    Width = 841
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      841
      29)
    object bSair: TButton
      Left = 778
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
      Left = 1
      Top = 1
      Width = 378
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
    Left = 4
    Top = 198
    Width = 832
    Height = 258
    Caption = 'Itens do Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object GradeItens: TRxDBGrid
      Left = 5
      Top = 16
      Width = 821
      Height = 237
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
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
          Width = 547
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
        end>
    end
  end
  object Panel2: TPanel
    Left = 5
    Top = 52
    Width = 832
    Height = 135
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 3
    object StaticText2: TStaticText
      Left = 5
      Top = 5
      Width = 100
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
      TabOrder = 7
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object StaticText4: TStaticText
      Left = 5
      Top = 28
      Width = 100
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
      TabOrder = 8
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object StaticText5: TStaticText
      Left = 5
      Top = 51
      Width = 100
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Unitario'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object cQuantidade: TDBEdit
      Left = 107
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
    end
    object cValorTotal: TDBEdit
      Left = 107
      Top = 51
      Width = 98
      Height = 21
      DataField = 'Valor_Unitario'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object cProduto: TDBLookupComboBox
      Left = 179
      Top = 5
      Width = 648
      Height = 21
      DataField = 'Codigo_Mercadoria'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Descricao_Reduzida'
      ListSource = Dados.dsProdutos
      ParentFont = False
      TabOrder = 1
    end
    object cCodigo: TDBEdit
      Left = 107
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
    end
    object DBEdit1: TDBEdit
      Left = 295
      Top = 28
      Width = 114
      Height = 21
      DataField = 'Peso_Liquido'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object StaticText7: TStaticText
      Left = 208
      Top = 28
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
      TabOrder = 10
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object StaticText13: TStaticText
      Left = 412
      Top = 28
      Width = 82
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
      TabOrder = 11
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object DBEdit4: TDBEdit
      Left = 496
      Top = 28
      Width = 123
      Height = 21
      DataField = 'Peso_Bruto'
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object GroupBox6: TGroupBox
      Left = 5
      Top = 80
      Width = 366
      Height = 48
      Caption = 'CST'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      object StaticText29: TStaticText
        Left = 6
        Top = 19
        Width = 38
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'ICMS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object StaticText30: TStaticText
        Left = 179
        Top = 19
        Width = 27
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
        TabOrder = 5
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object DBEdit23: TDBEdit
        Left = 208
        Top = 19
        Width = 47
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
        TabOrder = 2
      end
      object StaticText31: TStaticText
        Left = 100
        Top = 19
        Width = 24
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'IPI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
        Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object DBEdit24: TDBEdit
        Left = 126
        Top = 19
        Width = 47
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
        TabOrder = 1
      end
      object StaticText32: TStaticText
        Left = 260
        Top = 19
        Width = 48
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
        TabOrder = 7
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
      end
      object DBEdit25: TDBEdit
        Left = 310
        Top = 19
        Width = 47
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
        TabOrder = 3
      end
      object cCSTICMS: TEdit
        Left = 46
        Top = 19
        Width = 47
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
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
end
