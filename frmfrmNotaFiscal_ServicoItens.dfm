object NotaFiscal_Servicoitens: TNotaFiscal_Servicoitens
  Left = 559
  Top = 365
  BorderStyle = bsDialog
  Caption = 'NotaFiscal_Servicoitens'
  ClientHeight = 352
  ClientWidth = 755
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
  DesignSize = (
    755
    352)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 323
    Width = 755
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      755
      29)
    object bSair: TButton
      Left = 692
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
      Width = 432
      Height = 28
      Cursor = crHandPoint
      DataSource = dmFiscal.dsNotasTerceiros
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
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 8
    Width = 741
    Height = 121
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvLowered
    TabOrder = 1
    object StaticText1: TStaticText
      Left = 13
      Top = 37
      Width = 80
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
      TabOrder = 0
    StyleElements = []
    Transparent = False
    end
    object DBEdit1: TDBEdit
      Left = 95
      Top = 37
      Width = 78
      Height = 21
      DataField = 'Quantidade'
      DataSource = dmFiscal.dsNotasTerceirosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 95
      Top = 60
      Width = 149
      Height = 21
      DataField = 'Valor_Unitario'
      DataSource = dmFiscal.dsNotasTerceirosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object StaticText2: TStaticText
      Left = 13
      Top = 60
      Width = 80
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
      TabOrder = 3
    StyleElements = []
    Transparent = False
    end
    object StaticText3: TStaticText
      Left = 13
      Top = 14
      Width = 80
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
      TabOrder = 4
    StyleElements = []
    Transparent = False
    end
    object cProduto: TDBLookupComboBox
      Left = 95
      Top = 14
      Width = 634
      Height = 21
      DataField = 'Codigo_Mercadoria'
      DataSource = dmFiscal.dsNotasTerceirosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo; Codigo_Fabricante; Descricao_Reduzida'
      ListFieldIndex = 2
      ListSource = Dados.dsProdutos
      ParentFont = False
      TabOrder = 5
    end
    object StaticText4: TStaticText
      Left = 13
      Top = 83
      Width = 80
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
      TabOrder = 6
    StyleElements = []
    Transparent = False
    end
    object DBEdit3: TDBEdit
      Left = 95
      Top = 83
      Width = 149
      Height = 21
      DataField = 'Valor_Liquido'
      DataSource = dmFiscal.dsNotasTerceirosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
  end
  object GradeItens: TRxDBGrid
    Left = 8
    Top = 133
    Width = 741
    Height = 182
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dmFiscal.dsNotasTerceirosItens
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    ShowGlyphs = False
    Columns = <
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
        Width = 72
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
        Width = 485
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
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Liquido'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 75
        Visible = True
      end>
  end
end
