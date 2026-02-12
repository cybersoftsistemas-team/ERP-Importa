object Pedido_ItensOutros: TPedido_ItensOutros
  Left = 546
  Top = 231
  BorderStyle = bsDialog
  Caption = 'Pedido_ItensOutros'
  ClientHeight = 796
  ClientWidth = 982
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  GlassFrame.Enabled = True
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 982
    Height = 39
    Align = alTop
    Stretch = True
    ExplicitWidth = 902
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
    Top = 17
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
  object Panel1: TPanel
    Left = 0
    Top = 764
    Width = 982
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      AlignWithMargins = True
      Left = 913
      Top = 2
      Width = 67
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      AlignWithMargins = True
      Left = 2
      Top = 2
      Width = 306
      Height = 28
      Cursor = crHandPoint
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      DataSource = Dados.dsPedidosItens
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
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
      ShowHint = True
      TabOrder = 1
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
    object bRatear: TButton
      AlignWithMargins = True
      Left = 394
      Top = 2
      Width = 106
      Height = 28
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Ratear valor compl.'
      TabOrder = 2
      OnClick = bRatearClick
    end
    object bRemover: TButton
      AlignWithMargins = True
      Left = 310
      Top = 2
      Width = 83
      Height = 28
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Remo&ver tudo'
      TabOrder = 3
      OnClick = bRemoverClick
    end
    object bImportar: TButton
      AlignWithMargins = True
      Left = 501
      Top = 2
      Width = 108
      Height = 28
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Itens NF Terceiros'
      TabOrder = 4
      OnClick = bImportarClick
    end
    object bLote: TButton
      AlignWithMargins = True
      Left = 710
      Top = 2
      Width = 103
      Height = 28
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      Caption = 'Importar Itens Lote'
      TabOrder = 5
      OnClick = bLoteClick
    end
    object Button1: TButton
      AlignWithMargins = True
      Left = 610
      Top = 2
      Width = 99
      Height = 28
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 0
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Itens NF Pr'#243'pria'
      TabOrder = 6
      OnClick = Button1Click
    end
  end
  object gItens: TGroupBox
    Left = 6
    Top = 604
    Width = 968
    Height = 134
    Caption = 'Itens do Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object GradeItens: TDBGrid
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 958
      Height = 111
      Align = alClient
      BorderStyle = bsNone
      DataSource = Dados.dsPedidosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'Item'
          Title.Alignment = taCenter
          Width = 35
          Visible = True
        end
        item
          Alignment = taLeftJustify
          Expanded = False
          FieldName = 'Codigo_Mercadoria'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd.Produto'
          Width = 121
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'NCM'
          Title.Alignment = taCenter
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao_Mercadoria'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o Produto'
          Width = 718
          Visible = True
        end>
    end
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 42
    Width = 976
    Height = 558
    ParentCustomHint = False
    ActivePage = TabSheet1
    Align = alTop
    TabHeight = 24
    TabOrder = 2
    TabWidth = 120
    object TabSheet1: TTabSheet
      Caption = '&Item da Nota'
      DesignSize = (
        968
        524)
      object Panel2: TPanel
        Left = 1
        Top = 3
        Width = 966
        Height = 513
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvLowered
        TabOrder = 0
        object bPesqNav: TSpeedButton
          Left = 663
          Top = 71
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
        object StaticText8: TStaticText
          Left = 192
          Top = 188
          Width = 39
          Height = 228
          Cursor = crHandPoint
          Alignment = taCenter
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 
            '                                                                ' +
            '                                                                ' +
            ' Aliq.%'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 87
          Transparent = False
          StyleElements = []
          OnClick = StaticText8Click
        end
        object StaticText2: TStaticText
          Left = 5
          Top = 27
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Produto'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 77
          Transparent = False
          StyleElements = []
        end
        object StaticText4: TStaticText
          Left = 5
          Top = 142
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Quantidade'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 78
          Transparent = False
          StyleElements = []
        end
        object StaticText5: TStaticText
          Left = 5
          Top = 165
          Width = 85
          Height = 21
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
          TabOrder = 79
          Transparent = False
          StyleElements = []
        end
        object cQuantidade: TDBEdit
          Left = 92
          Top = 142
          Width = 110
          Height = 21
          DataField = 'Quantidade'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
          OnExit = cQuantidadeExit
        end
        object cValorUnitario: TDBEdit
          Left = 92
          Top = 165
          Width = 110
          Height = 21
          DataField = 'Valor_Unitario'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 18
          OnExit = cValorUnitarioExit
        end
        object cProduto: TDBLookupComboBox
          Left = 192
          Top = 27
          Width = 493
          Height = 21
          DataField = 'Codigo_Mercadoria'
          DataSource = Dados.dsPedidosItens
          DropDownWidth = 690
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Origem;Codigo;Codigo_Fabricante;Descricao_Reduzida'
          ListFieldIndex = 3
          ListSource = Dados.dsProdutos
          ParentFont = False
          TabOrder = 3
          OnClick = cProdutoClick
          OnExit = cProdutoExit
        end
        object cCodigo: TDBEdit
          Left = 92
          Top = 27
          Width = 98
          Height = 21
          DataField = 'Codigo_Mercadoria'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnChange = cCodigoChange
          OnExit = cCodigoExit
        end
        object StaticText1: TStaticText
          Left = 5
          Top = 188
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'B.C.ICMS Oper.'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 80
          Transparent = False
          StyleElements = []
        end
        object cAliquotaICMSOper: TDBEdit
          Left = 233
          Top = 188
          Width = 69
          Height = 21
          DataField = 'Aliquota_ICMSOper'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 23
          OnExit = cAliquotaICMSOperExit
        end
        object cValorICMSOper: TDBEdit
          Left = 338
          Top = 188
          Width = 98
          Height = 21
          DataField = 'Valor_ICMSOper'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 24
          OnChange = cValorICMSOperChange
        end
        object StaticText3: TStaticText
          Left = 5
          Top = 257
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'B.C.IPI'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 81
          Transparent = False
          StyleElements = []
        end
        object cAliquotaIPI: TDBEdit
          Left = 233
          Top = 257
          Width = 69
          Height = 21
          DataField = 'Aliquota_IPI'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 39
          OnChange = cBCIPIChange
        end
        object cValorIPI: TDBEdit
          Left = 338
          Top = 257
          Width = 98
          Height = 21
          DataField = 'Total_IPI'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 40
          OnChange = cValorIPIChange
        end
        object StaticText6: TStaticText
          Left = 5
          Top = 234
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'B.C.ICMS Subs.'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 82
          Transparent = False
          StyleElements = []
        end
        object cAliquotaICMSSub: TDBEdit
          Left = 233
          Top = 234
          Width = 69
          Height = 21
          DataField = 'Aliquota_ICMSSub'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 35
          OnChange = cAliquotaICMSSubChange
        end
        object cValorICMSSub: TDBEdit
          Left = 338
          Top = 234
          Width = 98
          Height = 21
          DataField = 'Valor_ICMSSub'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 36
          OnChange = cValorICMSOperChange
        end
        object cBCICMSSub: TDBEdit
          Left = 92
          Top = 234
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
          TabOrder = 34
          OnChange = cValorICMSOperChange
        end
        object cBCICMS: TDBEdit
          Left = 92
          Top = 188
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
          TabOrder = 22
          OnExit = cBCICMSExit
        end
        object StaticText29: TStaticText
          Left = 438
          Top = 188
          Width = 77
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'CST ICMS'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 83
          Transparent = False
          StyleElements = []
        end
        object StaticText30: TStaticText
          Left = 438
          Top = 303
          Width = 77
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'CST PIS'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 84
          Transparent = False
          StyleElements = []
        end
        object cCSTPIS: TDBEdit
          Left = 516
          Top = 303
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
          TabOrder = 46
        end
        object StaticText31: TStaticText
          Left = 438
          Top = 257
          Width = 77
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'CST IPI'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 85
          Transparent = False
          StyleElements = []
        end
        object cCSTIPI: TDBEdit
          Left = 516
          Top = 257
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
          TabOrder = 41
        end
        object StaticText32: TStaticText
          Left = 438
          Top = 326
          Width = 77
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'CST COFINS'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 86
          Transparent = False
          StyleElements = []
        end
        object cCSTCOFINS: TDBEdit
          Left = 516
          Top = 326
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
          TabOrder = 51
        end
        object cBCIPI: TDBEdit
          Left = 92
          Top = 257
          Width = 98
          Height = 21
          DataField = 'Valor_BCIPI'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 38
          OnChange = cBCIPIChange
        end
        object StaticText9: TStaticText
          Left = 305
          Top = 188
          Width = 31
          Height = 228
          Alignment = taCenter
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 
            '                                                                ' +
            '                                     Valor'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 88
          Transparent = False
          StyleElements = []
        end
        object StaticText10: TStaticText
          Left = 5
          Top = 303
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'B.C.PIS'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 89
          Transparent = False
          StyleElements = []
        end
        object cAliquotaPIS: TDBEdit
          Left = 233
          Top = 303
          Width = 69
          Height = 21
          DataField = 'Aliquota_PIS'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 44
          OnExit = cBCPISExit
        end
        object cValorPIS: TDBEdit
          Left = 338
          Top = 303
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
          TabOrder = 45
          OnChange = cValorPISChange
        end
        object StaticText14: TStaticText
          Left = 5
          Top = 326
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'B.C.COFINS'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 90
          Transparent = False
          StyleElements = []
        end
        object cAliquotaCOFINS: TDBEdit
          Left = 233
          Top = 326
          Width = 69
          Height = 21
          DataField = 'Aliquota_COFINS'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 49
          OnExit = cBCPISExit
        end
        object cValorCOFINS: TDBEdit
          Left = 338
          Top = 326
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
          TabOrder = 50
          OnChange = cValorCOFINSChange
        end
        object cValorTotal: TDBEdit
          Left = 757
          Top = 165
          Width = 154
          Height = 21
          DataField = 'Valor_Total'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 21
          OnChange = cValorTotalChange
        end
        object StaticText11: TStaticText
          Left = 696
          Top = 165
          Width = 59
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Valor Total'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 91
          Transparent = False
          StyleElements = []
        end
        object DBEdit1: TDBEdit
          Left = 92
          Top = 464
          Width = 98
          Height = 21
          TabStop = False
          DataField = 'Peso_Liquido'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 67
        end
        object StaticText7: TStaticText
          Left = 5
          Top = 464
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Peso L'#237'quido'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 92
          Transparent = False
          StyleElements = []
        end
        object StaticText13: TStaticText
          Left = 192
          Top = 464
          Width = 79
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Peso Bruto'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 93
          Transparent = False
          StyleElements = []
        end
        object DBEdit4: TDBEdit
          Left = 273
          Top = 464
          Width = 98
          Height = 21
          TabStop = False
          DataField = 'Peso_Bruto'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 68
        end
        object cTabA: TDBEdit
          Left = 516
          Top = 188
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
          TabOrder = 25
          OnExit = cTabAExit
        end
        object cTabB: TDBEdit
          Left = 558
          Top = 188
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
          TabOrder = 26
          OnExit = cTabBExit
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 558
          Top = 257
          Width = 400
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
          TabOrder = 42
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 558
          Top = 303
          Width = 400
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
          TabOrder = 47
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 600
          Top = 188
          Width = 358
          Height = 21
          DataField = 'CodigoTrib_TabB'
          DataSource = Dados.dsPedidosItens
          DropDownWidth = 600
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
          TabOrder = 27
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 558
          Top = 326
          Width = 400
          Height = 21
          DataField = 'CSTCOFINS'
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
          TabOrder = 52
        end
        object StaticText12: TStaticText
          Left = 5
          Top = 119
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'NCM'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 94
          Transparent = False
          StyleElements = []
        end
        object cNCM: TDBEdit
          Left = 92
          Top = 119
          Width = 98
          Height = 21
          DataField = 'NCM'
          DataSource = Dados.dsPedidosItens
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object StaticText15: TStaticText
          Left = 193
          Top = 119
          Width = 48
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Unidade'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 95
          Transparent = False
          StyleElements = []
        end
        object cUnidade: TDBEdit
          Left = 243
          Top = 119
          Width = 53
          Height = 21
          DataField = 'Unidade_Medida'
          DataSource = Dados.dsPedidosItens
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
        end
        object DBEdit3: TDBEdit
          Left = 400
          Top = 119
          Width = 111
          Height = 21
          DataField = 'Lucro_Valor'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
          OnExit = DBEdit3Exit
        end
        object StaticText18: TStaticText
          Left = 438
          Top = 165
          Width = 77
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Desconto'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 96
          Transparent = False
          StyleElements = []
        end
        object cValorDesconto: TDBEdit
          Left = 583
          Top = 165
          Width = 111
          Height = 21
          DataField = 'Desconto_Valor'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 20
        end
        object cLucro: TDBEdit
          Left = 336
          Top = 119
          Width = 62
          Height = 21
          DataField = 'Lucro'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
          OnExit = cLucroExit
        end
        object cPercentualDesconto: TDBEdit
          Left = 516
          Top = 165
          Width = 66
          Height = 21
          DataField = 'Desconto'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
          OnExit = cPercentualDescontoExit
        end
        object StaticText19: TStaticText
          Left = 5
          Top = 418
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Frete'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 97
          Transparent = False
          StyleElements = []
        end
        object DBEdit6: TDBEdit
          Left = 92
          Top = 418
          Width = 98
          Height = 21
          TabStop = False
          DataField = 'Valor_Frete'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 55
          OnChange = cBCIPIChange
        end
        object StaticText20: TStaticText
          Left = 5
          Top = 73
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Processo'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 98
          Transparent = False
          StyleElements = []
        end
        object cProcesso: TDBLookupComboBox
          Left = 92
          Top = 73
          Width = 179
          Height = 21
          DataField = 'Processo'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Processo'
          ListField = 'Processo'
          ListSource = Dados.dsProcessosDOC
          ParentFont = False
          TabOrder = 6
          OnExit = cProdutoExit
        end
        object cMVA: TDBEdit
          Left = 516
          Top = 234
          Width = 40
          Height = 21
          DataField = 'Aliquota_MVA'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 37
        end
        object StaticText21: TStaticText
          Left = 438
          Top = 234
          Width = 77
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'MVA %'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 99
          Transparent = False
          StyleElements = []
        end
        object StaticText22: TStaticText
          Left = 374
          Top = 464
          Width = 79
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Despesas'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 100
          Transparent = False
          StyleElements = []
        end
        object DBEdit12: TDBEdit
          Left = 455
          Top = 464
          Width = 98
          Height = 21
          TabStop = False
          DataField = 'Valor_Despesa'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 69
          OnExit = cValorUnitarioExit
        end
        object GroupBox1: TGroupBox
          Left = 748
          Top = 2
          Width = 213
          Height = 140
          Caption = 'Estoque'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 101
          object cMinimo: TCurrencyEdit
            Left = 85
            Top = 18
            Width = 119
            Height = 21
            AutoSize = False
            Color = 12189695
            DecimalPlaces = 3
            DisplayFormat = ',0.000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object cDisponivelDetalhe: TCurrencyEdit
            Left = 85
            Top = 87
            Width = 119
            Height = 21
            AutoSize = False
            Color = 12189695
            DecimalPlaces = 3
            DisplayFormat = ',0.000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object StaticText39: TStaticText
            Left = 8
            Top = 18
            Width = 75
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'M'#237'nimo'
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
          object StaticText40: TStaticText
            Left = 8
            Top = 64
            Width = 75
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Estoque'
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
          object StaticText41: TStaticText
            Left = 8
            Top = 87
            Width = 75
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Detalhe/Lote'
            Color = 7293440
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Calibri'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 4
            Transparent = False
            StyleElements = []
          end
          object cInventario: TCurrencyEdit
            Left = 85
            Top = 41
            Width = 119
            Height = 21
            AutoSize = False
            Color = 12189695
            DecimalPlaces = 3
            DisplayFormat = ',0.000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
          object StaticText42: TStaticText
            Left = 8
            Top = 41
            Width = 75
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Invent'#225'rio'
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
            StyleElements = []
          end
          object cDisponivel: TCurrencyEdit
            Left = 85
            Top = 64
            Width = 119
            Height = 21
            AutoSize = False
            Color = 12189695
            DecimalPlaces = 3
            DisplayFormat = ',0.000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
          end
          object StaticText49: TStaticText
            Left = 8
            Top = 110
            Width = 75
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Estoque Navio'
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
          object cEstoqueNavio: TCurrencyEdit
            Left = 85
            Top = 110
            Width = 119
            Height = 21
            AutoSize = False
            Color = 12189695
            DecimalPlaces = 3
            DisplayFormat = ',0.000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 9
          end
        end
        object StaticText23: TStaticText
          Left = 5
          Top = 4
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Pedido'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 102
          Transparent = False
          StyleElements = []
        end
        object DBEdit15: TDBEdit
          Left = 92
          Top = 4
          Width = 98
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
          TabOrder = 0
        end
        object DBEdit16: TDBEdit
          Left = 192
          Top = 4
          Width = 493
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
          TabOrder = 1
        end
        object StaticText24: TStaticText
          Left = 5
          Top = 441
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Isentas de ICMS'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 103
          Transparent = False
          StyleElements = []
        end
        object DBEdit9: TDBEdit
          Left = 92
          Top = 441
          Width = 98
          Height = 21
          TabStop = False
          DataField = 'Valor_IsentasICMS'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 61
        end
        object StaticText25: TStaticText
          Left = 192
          Top = 441
          Width = 79
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Outras de ICMS'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 104
          Transparent = False
          StyleElements = []
        end
        object DBEdit19: TDBEdit
          Left = 273
          Top = 441
          Width = 98
          Height = 21
          TabStop = False
          DataField = 'Valor_OutrasICMS'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 62
        end
        object lTotalNota: TStaticText
          Left = 738
          Top = 464
          Width = 52
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
          TabOrder = 105
          Transparent = False
          StyleElements = []
        end
        object cTotalNota: TDBEdit
          Left = 792
          Top = 464
          Width = 98
          Height = 21
          TabStop = False
          DataField = 'Valor_TotalNota'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 71
        end
        object StaticText26: TStaticText
          Left = 374
          Top = 441
          Width = 79
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Isentas de IPI'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 106
          Transparent = False
          StyleElements = []
        end
        object DBEdit20: TDBEdit
          Left = 455
          Top = 441
          Width = 98
          Height = 21
          TabStop = False
          DataField = 'Valor_IsentasIPI'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 63
        end
        object StaticText27: TStaticText
          Left = 557
          Top = 441
          Width = 79
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Outras de IPI'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 107
          Transparent = False
          StyleElements = []
        end
        object DBEdit21: TDBEdit
          Left = 638
          Top = 441
          Width = 98
          Height = 21
          TabStop = False
          DataField = 'Valor_OutrasIPI'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 64
        end
        object cBCPIS: TDBEdit
          Left = 92
          Top = 303
          Width = 98
          Height = 21
          DataField = 'Valor_BCPIS'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 43
          OnExit = cBCPISExit
        end
        object cBCCOFINS: TDBEdit
          Left = 92
          Top = 326
          Width = 98
          Height = 21
          DataField = 'Valor_BCPIS'
          DataSource = Dados.dsPedidosItens
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 48
          OnChange = cBCPISExit
        end
        object bDetalhe: TButton
          Left = 204
          Top = 142
          Width = 96
          Height = 43
          Caption = '&Lote/Detalhe'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
          OnClick = bDetalheClick
        end
        object cICMS: TDBCheckBox
          Left = 620
          Top = 351
          Width = 281
          Height = 17
          Alignment = taLeftJustify
          Caption = 'ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria.'
          DataField = 'ICMSST_Anterior'
          DataSource = Dados.dsPedidosItens
          TabOrder = 76
        end
        object StaticText28: TStaticText
          Left = 5
          Top = 487
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'NF.Refer'#234'ncia'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 108
          Transparent = False
          StyleElements = []
        end
        object StaticText33: TStaticText
          Left = 466
          Top = 487
          Width = 32
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Data'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 109
          Transparent = False
          StyleElements = []
        end
        object DBEdit2: TDBEdit
          Left = 558
          Top = 234
          Width = 98
          Height = 21
          DataField = 'Valor_MVA'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 110
        end
        object bSeriais: TButton
          Left = 301
          Top = 142
          Width = 99
          Height = 43
          Caption = 'Serial/Chassi'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 17
          OnClick = bSeriaisClick
        end
        object StaticText34: TStaticText
          Left = 5
          Top = 50
          Width = 85
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
          TabOrder = 111
          Transparent = False
          StyleElements = []
        end
        object cNatureza: TDBLookupComboBox
          Left = 154
          Top = 50
          Width = 531
          Height = 21
          DataField = 'Natureza_Codigo'
          DataSource = Dados.dsPedidosItens
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
          ListSource = dstCFOP
          NullValueKey = 46
          ParentFont = False
          TabOrder = 5
        end
        object cCodigoNatureza: TDBEdit
          Left = 92
          Top = 50
          Width = 61
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Natureza_Codigo'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object cNotaRef: TDBEdit
          Left = 92
          Top = 487
          Width = 371
          Height = 21
          TabStop = False
          DataField = 'Nota_Referencia'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 72
          OnExit = cValorUnitarioExit
        end
        object DBDateEdit4: TDBDateEdit
          Left = 499
          Top = 487
          Width = 103
          Height = 21
          TabStop = False
          DataField = 'Data_Referencia'
          DataSource = Dados.dsPedidosItens
          CheckOnExit = True
          DialogTitle = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          GlyphKind = gkCustom
          Glyph.Data = {
            D2080000424DD208000000000000360000002800000026000000130000000100
            1800000000009C08000000000000000000000000000000000000171717151515
            1515151515151515151515151515151515151515151515151515151515151515
            1515151515151515151515151515151516161617171715151515151515151515
            1515151515151515151515151515151515151515151515151515151515151515
            15151515151515151516161600005A5A5A555555565656555555555555565656
            5656565757575858585858585757575757575555555555555555555555555555
            555555555959595A5A5A55555556565655555555555556565656565657575758
            5858585858575757575757555555555555555555555555555555555555595959
            0000767676B9B9B9AEAEAEABABABAAAAAAA9A9A9A7A7A7A6A6A6A3A3A3A3A3A3
            A6A6A6ABABABB3B3B3B6B6B6B2B2B2AEAEAEACACACB0B0B0B7B7B7767676B9B9
            B9AEAEAEABABABAAAAAAA9A9A9A7A7A7A6A6A6A3A3A3A3A3A3A6A6A6ABABABB3
            B3B3B6B6B6B2B2B2AEAEAEACACACB0B0B0B7B7B700009E9E9EFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFBFBFBF6F6F6F2F2F2E6E6E6CFCFCFBEBEBEC5C5C5
            E1E1E1FDFDFDFEFEFEFEFEFEFCFCFC9E9E9EFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEFEFEFBFBFBF6F6F6FFFFFFFFFFFFCFCFCFBEBEBEC5C5C5E1E1E1FDFDFDFE
            FEFEFEFEFEFCFCFC0000818181FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FEFEE7E7E7BCBCBCC6C6C6EDEDEDE9E9E9B9B9B98D8D8D8D8D8DCCCCCCFEFEFE
            F0F0F0818181FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFF
            FFFFFFFFEDEDEDE9E9E9B9B9B98D8D8D8D8D8DCCCCCCFEFEFEF0F0F000006A6A
            6AFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFECFCFCF565656515151D0
            D0D0FEFEFEFEFEFEF3F3F3AFAFAF7D7D7DBCBCBCE3E3E36A6A6AFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFEFEFEFFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFEFE
            FEF3F3F3AFAFAF7D7D7DBCBCBCE3E3E30000565656F8F8F8FEFEFEFEFEFEFEFE
            FEFEFEFEFEFEFEFEFEFED3D3D33636362D2D2DCCCCCCFEFEFEFEFEFEFEFEFEFE
            FEFECFCFCFABABABB5B5B5565656F8F8F8FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
            FFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFECFCFCFABAB
            ABB5B5B50000424242F0F0F0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDDDD
            DD2121210F0F0FC2C2C2FEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFEFEFEAEAEAE42
            4242F0F0F0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFC0C0C0C0C0C0FFFFFF
            FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFEFEFEAEAEAE0000333333E7E7E7
            FEFEFEFBFBFBFBFBFBFCFCFCF3F3F3C8C8C8D3D3D31A1A1A030303B3B3B3FEFE
            FEFDFDFDFDFDFDFDFDFDFEFEFEFEFEFEA7A7A7333333E7E7E7FEFEFEFBFBFBFB
            FBFBFFFFFFFFFFFFFFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFDFDFDFDFDFD
            FDFDFDFEFEFEFEFEFEA7A7A70000252525D6D6D6FEFEFEF6F6F6F6F6F6FCFCFC
            EEEEEE1919191010100D0D0D0D0D0DB3B3B3FEFEFEF8F8F8F8F8F8F8F8F8F9F9
            F9FEFEFE8E8E8E252525D6D6D6FEFEFEF6F6F6F6F6F6FFFFFFC0C0C0C0C0C0C0
            C0C0C0C0C0FFFFFFFFFFFFFEFEFEF8F8F8F8F8F8F8F8F8F9F9F9FEFEFE8E8E8E
            00001A1A1AC4C4C4FDFEFDF2F3F2F3F5F2F4F5F3FAFBF99B9C9A313231151614
            282928BCBDBCFEFEFEF5F6F5F6F7F5F6F7F5F7F9F6FEFEFE7C7C7B1A1A1AC4C4
            C4FDFDFDF2F2F2F3F3F3F4F4F4FAFAFAC0C0C0C0C0C0C0C0C0FFFFFFFFFFFFFE
            FEFEF5F5F5F6F6F6F6F6F6F7F7F7FEFEFE7B7B7B0000131313B3B6B2FDFEFCEE
            F0ECEFF2EDF0F5EEF4F9F1FEFEFEE6EBE4787D75686C66CED1CCFCFEFBF7FEF2
            F5FBF2F4F8F2F6FBF3FEFEFE696A69131313B4B4B4FDFDFDEEEEEEF0F0F0F2F2
            F2F6F6F6FFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFCFCFCF9F9F9F7F7F7F5F5F5F8
            F8F8FEFEFE696969000020231EAA7D7CE1C1A2E6CAB0E4C59DE7C99BE3C184E5
            C27EEACA83EFD697EED497EBCC85EBCC85E8C67CEBCE93EACB95E5C485E4C289
            4A4739212121818181BABABAC5C5C5BCBCBCBEBEBEB2B2B2B1B1B1B7B7B7C5C5
            C5C4C4C4B9B9B9B9B9B9B3B3B3BFBFBFBDBDBDB4B4B4B4B4B443434300002E35
            2A7D5545D1A475DEBB97E0BE8DDEB877CE963FC1852FC7892FD7A53DE9C876E8
            C46CE1B756CA8B2FD9A849E2BB71DEB36CC9954935321F3131315454549A9A9A
            B3B3B3B2B2B2A8A8A88181817171717474748A8A8AB2B2B2ADADAD9E9E9E7575
            75909090A8A8A8A2A2A28383832C2C2C000022271F7E5858A0693FA9703EB47D
            43BA823FBC8538BA7F2FC0832FC89236D9AA58DBAD5BD8A957C1852FCC9743D2
            A15BD2A35FBF8A532C2B222424245B5B5B616161666666717171737373737373
            6C6C6C6F6F6F7B7B7B9696969999999595957171718383839090909393937E7E
            7E28282800001318107C58617E532F85562F935E2FAB775BAE7748AE732FB075
            2FB47A2FB6782FB6782FC0873DBA8970B27833AA712FA2692F9E683F23232215
            15155E5E5E4C4C4C4F4F4F5555557373736E6E6E646464656565696969686868
            6868687676768686866969696262625D5D5D61616122222200000C10093F391D
            473A0050410045380068655D4946394F4000776300705D007360007D67004F45
            11757A72342C066754006856004C3E011C1B1B0D0D0D3131312929292F2F2F28
            28286262624242422E2E2E4747474343434545454A4A4A363636777777212121
            3C3C3C3E3E3E2D2D2D1B1B1B00000D110A3E3719463900534400292203686C64
            464B422A22007F69006E5C007A66005A4A00191710888F842926196A57006957
            00483B001B1B1B0E0E0E2E2E2E2929293131311919196969694747471818184B
            4B4B4242424949493535351515158B8B8B2222223E3E3E3E3E3E2A2A2A1B1B1B
            00000D110A3E371A493B003A310B1A1D186A6A6A3C3D3B0000004035007F6A00
            594A0003020010110F818181161A14302A0E695700493C001B1B1B0E0E0E2F2F
            2F2A2A2A2626261B1B1B6A6A6A3C3C3C0000002626264C4C4C35353501010110
            10108181811717172222223E3E3E2B2B2B1B1B1B0000}
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 73
          YearDigits = dyFour
        end
        object StaticText35: TStaticText
          Left = 5
          Top = 96
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Pedido Compra'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 112
          Transparent = False
          StyleElements = []
        end
        object DBEdit5: TDBEdit
          Left = 92
          Top = 96
          Width = 98
          Height = 21
          DataField = 'PO'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnExit = cQuantidadeExit
        end
        object StaticText36: TStaticText
          Left = 193
          Top = 96
          Width = 48
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Ordem'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 113
          Transparent = False
          StyleElements = []
        end
        object DBEdit7: TDBEdit
          Left = 243
          Top = 96
          Width = 130
          Height = 21
          DataField = 'Ordem'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnExit = cQuantidadeExit
        end
        object StaticText37: TStaticText
          Left = 5
          Top = 349
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'BC.ST Rec.Ant.'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 114
          Transparent = False
          StyleElements = []
        end
        object DBEdit8: TDBEdit
          Left = 92
          Top = 349
          Width = 98
          Height = 21
          DataField = 'Media_BCR'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 53
          OnChange = cBCPISExit
        end
        object DBEdit11: TDBEdit
          Left = 338
          Top = 349
          Width = 98
          Height = 21
          DataField = 'Valor_ICMSSubAnt'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 54
        end
        object DBEdit10: TDBEdit
          Left = 233
          Top = 349
          Width = 69
          Height = 21
          DataField = 'Aliquota_ICMSSubAnt'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 115
          OnExit = cBCPISExit
        end
        object DBEdit13: TDBEdit
          Left = 516
          Top = 349
          Width = 98
          Height = 21
          DataField = 'Valor_ICMSAnt'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 116
        end
        object StaticText38: TStaticText
          Left = 438
          Top = 349
          Width = 77
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ICMS ST Ant'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 117
          Transparent = False
          StyleElements = []
        end
        object StaticText17: TStaticText
          Left = 301
          Top = 119
          Width = 34
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Lucro'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 118
          Transparent = False
          StyleElements = []
        end
        object cLucro2: TCurrencyEdit
          Left = 513
          Top = 119
          Width = 62
          Height = 21
          AutoSize = False
          Color = 12189695
          DecimalPlaces = 3
          DisplayFormat = ',0.00%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 119
        end
        object cValorLucro2: TCurrencyEdit
          Left = 577
          Top = 119
          Width = 107
          Height = 21
          AutoSize = False
          Color = 12189695
          DecimalPlaces = 3
          DisplayFormat = ',0.0000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 120
        end
        object DBEdit14: TDBEdit
          Left = 638
          Top = 464
          Width = 98
          Height = 21
          TabStop = False
          DataField = 'Valor_ICMSDesonerado'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 70
        end
        object StaticText43: TStaticText
          Left = 557
          Top = 464
          Width = 79
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ICMS Deson'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 121
          Transparent = False
          StyleElements = []
        end
        object StaticText44: TStaticText
          Left = 609
          Top = 487
          Width = 71
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'C'#243'd. cBenef'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 122
          Transparent = False
          StyleElements = []
        end
        object DBEdit17: TDBEdit
          Left = 682
          Top = 487
          Width = 74
          Height = 21
          TabStop = False
          DataField = 'Beneficio_Fiscal'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 74
          OnChange = cBCIPIChange
        end
        object StaticText45: TStaticText
          Left = 659
          Top = 234
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ICMS Diferido'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 123
          Transparent = False
          StyleElements = []
        end
        object DBEdit18: TDBEdit
          Left = 806
          Top = 234
          Width = 105
          Height = 21
          DataField = 'Valor_ICMSDif'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 124
          OnExit = cBCPISExit
        end
        object DBEdit22: TDBEdit
          Left = 746
          Top = 234
          Width = 56
          Height = 21
          DataField = 'Aliquota_ICMSDif'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 125
          OnExit = cBCPISExit
        end
        object StaticText46: TStaticText
          Left = 5
          Top = 211
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ICMS Monof.'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 126
          Transparent = False
          StyleElements = []
        end
        object DBEdit23: TDBEdit
          Left = 233
          Top = 211
          Width = 69
          Height = 21
          DataField = 'Percentual_ICMSMono'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 29
          OnExit = cAliquotaICMSOperExit
        end
        object DBEdit24: TDBEdit
          Left = 338
          Top = 211
          Width = 98
          Height = 21
          DataField = 'Valor_ICMSMono'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 30
          OnChange = cValorICMSOperChange
        end
        object cBCICMSMono: TDBEdit
          Left = 92
          Top = 211
          Width = 98
          Height = 21
          DataField = 'Valor_BCICMSMono'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 28
          OnExit = cBCICMSExit
        end
        object StaticText47: TStaticText
          Left = 438
          Top = 211
          Width = 77
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ICMS Mon.Ret.'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 127
          Transparent = False
          StyleElements = []
        end
        object DBEdit26: TDBEdit
          Left = 516
          Top = 211
          Width = 98
          Height = 21
          DataField = 'Valor_BCICMSMonoRet'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 31
          OnExit = cBCICMSExit
        end
        object DBEdit27: TDBEdit
          Left = 617
          Top = 211
          Width = 88
          Height = 21
          DataField = 'Percentual_ICMSMonoRet'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 32
          OnExit = cAliquotaICMSOperExit
        end
        object DBEdit28: TDBEdit
          Left = 707
          Top = 211
          Width = 98
          Height = 21
          DataField = 'Valor_ICMSMonoRet'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 33
          OnChange = cValorICMSOperChange
        end
        object StaticText48: TStaticText
          Left = 421
          Top = 73
          Width = 32
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
          TabOrder = 128
          Transparent = False
          StyleElements = []
        end
        object cNavio: TDBLookupComboBox
          Left = 455
          Top = 73
          Width = 207
          Height = 21
          Color = clWhite
          DataField = 'Navio'
          DataSource = Dados.dsPedidosItens
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
          TabOrder = 8
          OnClick = cNavioClick
        end
        object StaticText50: TStaticText
          Left = 275
          Top = 73
          Width = 35
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'DI N'#186
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 129
          Transparent = False
          StyleElements = []
        end
        object DBEdit25: TDBEdit
          Left = 311
          Top = 73
          Width = 107
          Height = 21
          DataField = 'DI'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit29: TDBEdit
          Left = 273
          Top = 418
          Width = 98
          Height = 21
          TabStop = False
          DataField = 'Valor_PISST'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 56
          OnChange = cBCPISExit
        end
        object StaticText51: TStaticText
          Left = 192
          Top = 418
          Width = 79
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'PIS ST'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 130
          Transparent = False
          StyleElements = []
        end
        object DBEdit30: TDBEdit
          Left = 455
          Top = 418
          Width = 98
          Height = 21
          TabStop = False
          DataField = 'Valor_COFINSST'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 57
          OnChange = cBCPISExit
        end
        object StaticText52: TStaticText
          Left = 374
          Top = 418
          Width = 79
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'COFINS ST'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 131
          Transparent = False
          StyleElements = []
        end
        object DBEdit31: TDBEdit
          Left = 738
          Top = 418
          Width = 52
          Height = 21
          TabStop = False
          DataField = 'Aliquota_ICMSPresumido'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 59
          OnChange = cBCPISExit
        end
        object StaticText53: TStaticText
          Left = 557
          Top = 418
          Width = 79
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ICMS Cr'#233'd.Pres.'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 132
          Transparent = False
          StyleElements = []
        end
        object DBEdit32: TDBEdit
          Left = 792
          Top = 418
          Width = 98
          Height = 21
          TabStop = False
          DataField = 'Valor_ICMSPresumido'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 60
          OnChange = cBCPISExit
        end
        object DBEdit33: TDBEdit
          Left = 638
          Top = 418
          Width = 98
          Height = 21
          TabStop = False
          DataField = 'Valor_BCICMSPresumido'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 58
        end
        object DBEdit34: TDBEdit
          Left = 837
          Top = 487
          Width = 68
          Height = 21
          TabStop = False
          DataField = 'Codigo_CredPres'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 75
          OnChange = cBCIPIChange
        end
        object StaticText54: TStaticText
          Left = 760
          Top = 487
          Width = 75
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'C'#243'd.Cred.Pres.'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 133
          Transparent = False
          StyleElements = []
        end
        object StaticText55: TStaticText
          Left = 739
          Top = 441
          Width = 49
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'IPI Devol.'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 134
          Transparent = False
          StyleElements = []
        end
        object DBEdit35: TDBEdit
          Left = 851
          Top = 441
          Width = 110
          Height = 21
          TabStop = False
          DataField = 'Valor_IPIDevol'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 66
        end
        object DBEdit36: TDBEdit
          Left = 790
          Top = 441
          Width = 60
          Height = 21
          TabStop = False
          DataField = 'Percentual_IPIDevol'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 65
        end
        object StaticText56: TStaticText
          Left = 5
          Top = 280
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'B.C.II'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 135
          Transparent = False
          StyleElements = []
        end
        object DBEdit37: TDBEdit
          Left = 92
          Top = 280
          Width = 98
          Height = 21
          DataField = 'Valor_BCII'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 136
          OnChange = cBCIPIChange
        end
        object DBEdit38: TDBEdit
          Left = 233
          Top = 280
          Width = 69
          Height = 21
          DataField = 'Aliquota_II'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 137
          OnChange = cBCIPIChange
        end
        object DBEdit39: TDBEdit
          Left = 338
          Top = 280
          Width = 98
          Height = 21
          DataField = 'Valor_II'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 138
          OnChange = cValorIPIChange
        end
        object StaticText57: TStaticText
          Left = 438
          Top = 372
          Width = 77
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'CST IBS'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 139
          Transparent = False
          StyleElements = []
        end
        object DBEdit40: TDBEdit
          Left = 516
          Top = 372
          Width = 40
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CSTIBS'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 140
        end
        object StaticText58: TStaticText
          Left = 438
          Top = 395
          Width = 77
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'CST CBS'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 141
          Transparent = False
          StyleElements = []
        end
        object DBEdit41: TDBEdit
          Left = 516
          Top = 395
          Width = 40
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CSTCBS'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 142
        end
        object StaticText59: TStaticText
          Left = 5
          Top = 372
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'B.C.IBS'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 143
          Transparent = False
          StyleElements = []
        end
        object cAliquotaIBS: TDBEdit
          Left = 233
          Top = 372
          Width = 69
          Height = 21
          DataField = 'Aliquota_IBS'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 144
          OnExit = cBCPISExit
        end
        object cValorIBS: TDBEdit
          Left = 338
          Top = 372
          Width = 98
          Height = 21
          DataField = 'Valor_IBS'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 145
          OnChange = cValorIBSChange
        end
        object StaticText60: TStaticText
          Left = 5
          Top = 395
          Width = 85
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'B.C.CBS'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 146
          Transparent = False
          StyleElements = []
        end
        object cAliquotaCBS: TDBEdit
          Left = 233
          Top = 395
          Width = 69
          Height = 21
          DataField = 'Aliquota_CBS'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 147
          OnExit = cBCPISExit
        end
        object cValorCBS: TDBEdit
          Left = 338
          Top = 395
          Width = 98
          Height = 21
          DataField = 'Valor_CBS'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 148
          OnChange = cValorCBSChange
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 558
          Top = 372
          Width = 400
          Height = 21
          DataField = 'CSTIBS'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsCSTIBS
          ParentFont = False
          TabOrder = 149
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 558
          Top = 395
          Width = 400
          Height = 21
          DataField = 'CSTCBS'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsCSTCBS
          ParentFont = False
          TabOrder = 150
        end
        object cBCIBS: TDBEdit
          Left = 92
          Top = 372
          Width = 98
          Height = 21
          DataField = 'Valor_BCIBS'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 151
          OnExit = cBCPISExit
        end
        object cBCCBS: TDBEdit
          Left = 92
          Top = 395
          Width = 98
          Height = 21
          DataField = 'Valor_BCCBS'
          DataSource = Dados.dsPedidosItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 152
          OnChange = cBCPISExit
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Produtos'
      ImageIndex = 1
      object GradeProdutos: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 962
        Height = 477
        Align = alTop
        DataSource = Dados.dsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
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
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = GradeProdutosDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Codigo_Fabricante'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'd.Fabricante'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 83
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
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 547
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Venda'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr Venda'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Promocao_Valor'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr.Promo'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 100
            Visible = True
          end>
      end
      object cPesquisa: TEdit
        Left = 208
        Top = 486
        Width = 536
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnKeyPress = cPesquisaKeyPress
      end
      object StaticText16: TStaticText
        Left = 133
        Top = 486
        Width = 73
        Height = 21
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Pesquisar'
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
      object bPesquisa: TButton
        Left = 745
        Top = 483
        Width = 66
        Height = 27
        Caption = 'Pesquisa'
        TabOrder = 3
        OnClick = bPesquisaClick
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Descri'#231#227'o do Poduto'
      ImageIndex = 2
      object DBMemo1: TDBMemo
        Left = 0
        Top = 0
        Width = 968
        Height = 239
        Align = alTop
        DataField = 'Descricao_Mercadoria'
        DataSource = Dados.dsPedidosItens
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object cCopiaDesc: TMemo
        Left = 0
        Top = 285
        Width = 968
        Height = 239
        Align = alBottom
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Lines.Strings = (
          'cCopiaDesc')
        ParentFont = False
        TabOrder = 1
        StyleElements = [seFont, seBorder]
      end
      object bCopiar: TBitBtn
        Left = 424
        Top = 242
        Width = 125
        Height = 36
        Caption = 'Copiar Descri'#231#227'o'
        Glyph.Data = {
          EE000000424DEE0000000000000076000000280000000F0000000F0000000100
          04000000000078000000CE0E0000C40E00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00800000000000
          008080FFFFFFFFFFF08080FFFFF2FFFFF08080FFFF22FFFFF08080FFF22222FF
          F08080FFFF22FF2FF08080FFFFF2FF2FF08080FF2FFFFF2FF08080FF2FF2FFFF
          F08080FF2FF22FFFF08080FFF22222FFF08080FFFFF22F00008080FFFFF2FF0F
          088080FFFFFFFF0088808000000000088880}
        TabOrder = 2
        OnClick = bCopiarClick
      end
    end
  end
  object cFormulaI: TMemo
    Left = 765
    Top = 0
    Width = 136
    Height = 37
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
    TabOrder = 3
    Visible = False
    WordWrap = False
  end
  object Progresso: TProgressBar
    Left = 6
    Top = 742
    Width = 332
    Height = 16
    TabOrder = 4
    Visible = False
  end
  object cVolumes: TCheckBox
    Left = 781
    Top = 742
    Width = 168
    Height = 17
    Caption = 'Calcular qtde.total de volumes.'
    TabOrder = 5
  end
  object tItem: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 231
    Top = 584
  end
  object tPesquisa: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 285
    Top = 584
  end
  object mMacro: TCalcExpress
    Formula = '0'
    Left = 541
    Top = 583
  end
  object tEntradaST: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 172
    Top = 584
  end
  object tBCR: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 401
    Top = 583
  end
  object tDisponivel: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 341
    Top = 584
  end
  object tCFOP: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT Codigo, Descricao_NF FROM Natureza')
    FetchRows = 1
    Left = 448
    Top = 583
    object tCFOPCodigo: TStringField
      FieldName = 'Codigo'
      FixedChar = True
      Size = 4
    end
    object tCFOPDescricao_NF: TStringField
      FieldName = 'Descricao_NF'
      Size = 50
    end
  end
  object dstCFOP: TDataSource
    DataSet = tCFOP
    Left = 492
    Top = 583
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 106
    Top = 584
  end
end
