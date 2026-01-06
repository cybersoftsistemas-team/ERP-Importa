object NotaFiscal_Servicoitens: TNotaFiscal_Servicoitens
  Left = 552
  Top = 187
  BorderStyle = bsDialog
  Caption = 'NotaFiscal_Servicoitens'
  ClientHeight = 489
  ClientWidth = 739
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
  object Panel1: TPanel
    Left = 0
    Top = 459
    Width = 739
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      Left = 676
      Top = 1
      Width = 62
      Height = 28
      Cursor = crHandPoint
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
      Width = 372
      Height = 28
      Cursor = crHandPoint
      DataSource = dmFiscal.dsNotasTerceirosItens
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
    object bVincular: TButton
      Left = 373
      Top = 1
      Width = 116
      Height = 28
      Cursor = crHandPoint
      Hint = '   Vincula lan'#231'amentos financeiros as nota fiscal   '
      Align = alLeft
      Caption = 'Vincular Financeiro'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bVincularClick
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 733
    Height = 128
    Align = alTop
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 1
    object StaticText1: TStaticText
      Left = 7
      Top = 52
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
      TabOrder = 4
      Transparent = False
      StyleElements = []
    end
    object cQtde: TDBEdit
      Left = 89
      Top = 52
      Width = 146
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
    object cUnitario: TDBEdit
      Left = 89
      Top = 75
      Width = 146
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
      OnChange = cUnitarioChange
    end
    object StaticText2: TStaticText
      Left = 7
      Top = 75
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
      TabOrder = 5
      Transparent = False
      StyleElements = []
    end
    object StaticText3: TStaticText
      Left = 7
      Top = 6
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
      TabOrder = 6
      Transparent = False
      StyleElements = []
    end
    object cProduto: TDBLookupComboBox
      Left = 89
      Top = 6
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
      ListField = 'Codigo;Descricao_Reduzida'
      ListFieldIndex = 1
      ListSource = Dados.dsProdutos
      ParentFont = False
      TabOrder = 0
    end
    object StaticText4: TStaticText
      Left = 7
      Top = 98
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
      TabOrder = 7
      Transparent = False
      StyleElements = []
    end
    object cTotal: TDBEdit
      Left = 89
      Top = 98
      Width = 146
      Height = 21
      DataField = 'Valor_Liquido'
      DataSource = dmFiscal.dsNotasTerceirosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object StaticText9: TStaticText
      Left = 7
      Top = 29
      Width = 80
      Height = 21
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
      TabOrder = 8
      Transparent = False
      StyleElements = []
    end
    object cProcesso: TDBLookupComboBox
      Left = 89
      Top = 29
      Width = 146
      Height = 21
      DataField = 'Processo'
      DataSource = dmFiscal.dsNotasTerceirosItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Processo'
      ListField = 'Processo'
      ListSource = Dados.dsProcessosDOC
      NullValueKey = 46
      ParentFont = False
      TabOrder = 9
    end
  end
  object GradeItens: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 137
    Width = 733
    Height = 319
    Align = alClient
    DataSource = dmFiscal.dsNotasTerceirosItens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
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
        Width = 448
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
        Width = 107
        Visible = True
      end>
  end
  object tItem: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 344
    Top = 72
  end
end
