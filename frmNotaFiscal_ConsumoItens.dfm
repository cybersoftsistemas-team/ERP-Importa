object NotaFiscal_ConsumoItens: TNotaFiscal_ConsumoItens
  Left = 207
  Top = 229
  BorderStyle = bsDialog
  Caption = 'NotaFiscal_ConsumoItens'
  ClientHeight = 436
  ClientWidth = 775
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RxDBGrid1: TRxDBGrid
    Left = 4
    Top = 213
    Width = 768
    Height = 185
    DataSource = dmFiscal.dsNotasConsumoItens
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 379
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unidade'
        Title.Alignment = taCenter
        Title.Caption = 'UM'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 28
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CST'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 33
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
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Desconto'
        Title.Alignment = taCenter
        Title.Caption = 'Desconto'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Total'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Aliquota_ICMS'
        Title.Alignment = taCenter
        Title.Caption = 'ICMS %'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_ICMS'
        Title.Alignment = taCenter
        Title.Caption = 'Valor ICMS'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 75
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 4
    Width = 768
    Height = 205
    Caption = 'Itens da Nota Fiscal'
    Enabled = False
    TabOrder = 0
    object StaticText2: TStaticText
      Left = 5
      Top = 18
      Width = 117
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
      TabOrder = 10
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object StaticText4: TStaticText
      Left = 5
      Top = 64
      Width = 117
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
      TabOrder = 11
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object StaticText5: TStaticText
      Left = 207
      Top = 64
      Width = 63
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
      TabOrder = 12
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object cQuantidade: TDBEdit
      Left = 124
      Top = 64
      Width = 81
      Height = 21
      DataField = 'Quantidade'
      DataSource = dmFiscal.dsNotasConsumoItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object cValor: TDBEdit
      Left = 272
      Top = 64
      Width = 100
      Height = 21
      DataField = 'Valor_Total'
      DataSource = dmFiscal.dsNotasConsumoItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnChange = cValorChange
      OnExit = cValorExit
    end
    object cProduto: TDBLookupComboBox
      Left = 124
      Top = 18
      Width = 636
      Height = 21
      DataField = 'Produto'
      DataSource = dmFiscal.dsNotasConsumoItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Descricao_Reduzida'
      ListFieldIndex = 4
      ListSource = Dados.dsProdutos
      ParentFont = False
      TabOrder = 0
    end
    object StaticText14: TStaticText
      Left = 5
      Top = 110
      Width = 117
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Base de C'#225'lculo ICMS'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object DBEdit6: TDBEdit
      Left = 124
      Top = 110
      Width = 120
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Valor_BCICMS'
      DataSource = dmFiscal.dsNotasConsumoItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object StaticText15: TStaticText
      Left = 5
      Top = 133
      Width = 117
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor ICMS'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object DBEdit8: TDBEdit
      Left = 124
      Top = 133
      Width = 120
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Valor_ICMS'
      DataSource = dmFiscal.dsNotasConsumoItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object StaticText9: TStaticText
      Left = 5
      Top = 87
      Width = 117
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Aliquota ICMS'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 15
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object cAliquotaICMS: TDBEdit
      Left = 124
      Top = 87
      Width = 42
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Aliquota_ICMS'
      DataSource = dmFiscal.dsNotasConsumoItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnExit = cAliquotaICMSExit
    end
    object StaticText3: TStaticText
      Left = 5
      Top = 179
      Width = 117
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Outras ICMS'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object DBEdit2: TDBEdit
      Left = 124
      Top = 179
      Width = 120
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Valor_OutrasICMS'
      DataSource = dmFiscal.dsNotasConsumoItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
    object StaticText6: TStaticText
      Left = 5
      Top = 156
      Width = 117
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Isentas ICMS'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object DBEdit3: TDBEdit
      Left = 124
      Top = 156
      Width = 120
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Valor_IsentasICMS'
      DataSource = dmFiscal.dsNotasConsumoItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object StaticText7: TStaticText
      Left = 5
      Top = 41
      Width = 117
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'C'#243'digo Tribut'#225'rio (CST)'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 18
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object DBEdit4: TDBEdit
      Left = 124
      Top = 41
      Width = 53
      Height = 21
      DataField = 'CST'
      DataSource = dmFiscal.dsNotasConsumoItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object StaticText8: TStaticText
      Left = 374
      Top = 64
      Width = 85
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Desconto'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 19
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object DBEdit5: TDBEdit
      Left = 461
      Top = 64
      Width = 100
      Height = 21
      DataField = 'Valor_Desconto'
      DataSource = dmFiscal.dsNotasConsumoItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnChange = cValorChange
      OnExit = DBEdit5Exit
    end
    object StaticText1: TStaticText
      Left = 563
      Top = 64
      Width = 85
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor l'#237'quido'
      Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
      Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
    end
    object DBEdit1: TDBEdit
      Left = 650
      Top = 64
      Width = 100
      Height = 21
      DataField = 'Valor_Liquido'
      DataSource = dmFiscal.dsNotasConsumoItens
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 21
      OnChange = cValorChange
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 401
    Width = 775
    Height = 35
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    object bSair: TButton
      Left = 710
      Top = 2
      Width = 62
      Height = 32
      Cursor = crHandPoint
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
      Width = 369
      Height = 32
      Cursor = crHandPoint
      DataSource = dmFiscal.dsNotasConsumoItens
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
  object TabEnter1: TTabEnter
    ClassNotAffected.Strings = (
      'TMemo'
      'TButton'
      'TBitBtn')
    Enabled = True
    Left = 496
    Top = 153
  end
  object tRegistro: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT MAX(Registro) AS Registro FROM NotasConsumoItens')
    FetchRows = 1
    Left = 461
    Top = 152
    object tRegistroRegistro: TSmallintField
      FieldName = 'Registro'
      ReadOnly = True
    end
  end
end
