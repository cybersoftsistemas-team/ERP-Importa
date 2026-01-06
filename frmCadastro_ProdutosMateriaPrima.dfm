object Cadastro_ProdutosMateriaPrima: TCadastro_ProdutosMateriaPrima
  Left = 426
  Top = 234
  BorderStyle = bsDialog
  Caption = 'Cadastro_ProdutosMateriaPrima'
  ClientHeight = 469
  ClientWidth = 912
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 439
    Width = 912
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      912
      30)
    object bSair: TButton
      Left = 849
      Top = 1
      Width = 63
      Height = 28
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
      Width = 360
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsProdutosMateriaPrima
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
    object bPesquisa: TButton
      Left = 361
      Top = 1
      Width = 73
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Caption = '&Pesquisa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
  end
  object RxDBGrid1: TDBGrid
    Left = 8
    Top = 127
    Width = 897
    Height = 301
    DataSource = Dados.dsProdutosMateriaPrima
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo_MateriaPrima'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 128
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
        Title.Font.Style = [fsBold]
        Width = 747
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 8
    Top = 8
    Width = 897
    Height = 113
    BevelOuter = bvLowered
    TabOrder = 2
    object cCodigo: TDBEdit
      Left = 122
      Top = 13
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Codigo_Produto'
      DataSource = Dados.dsProdutosMateriaPrima
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object StaticText1: TStaticText
      Left = 7
      Top = 13
      Width = 113
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
      TabOrder = 1
      Transparent = False
      StyleElements = []
    end
    object StaticText11: TStaticText
      Left = 7
      Top = 36
      Width = 113
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'C'#243'digo Mat'#233'ria Prima'
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
    object cDetalhe: TRxDBLookupCombo
      Left = 245
      Top = 36
      Width = 644
      Height = 21
      DropDownCount = 8
      DisplayAllFields = True
      DataField = 'Codigo_MateriaPrima'
      DataSource = Dados.dsProdutosMateriaPrima
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo;Descricao_Reduzida;NCM'
      LookupDisplayIndex = 1
      LookupSource = dstProdutos
      ParentFont = False
      TabOrder = 3
    end
    object cCodigoMat: TDBEdit
      Left = 122
      Top = 36
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Codigo_MateriaPrima'
      DataSource = Dados.dsProdutosMateriaPrima
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object StaticText2: TStaticText
      Left = 7
      Top = 59
      Width = 113
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Quantidade Utilizada'
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
    object DBEdit1: TDBEdit
      Left = 122
      Top = 59
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Quantidade_Utilizada'
      DataSource = Dados.dsProdutosMateriaPrima
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object cConversao: TDBCheckBox
      Left = 8
      Top = 89
      Width = 369
      Height = 17
      Alignment = taLeftJustify
      Caption = 'Converter de Metro C'#250'bico (M2) para Metro Quadrado (M3).'
      DataField = 'Conversao_M2M3'
      DataSource = Dados.dsProdutosMateriaPrima
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
  end
  object tRegistro: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Registro) FROM ProdutosMateriaPrima')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 388
    Top = 200
  end
  object tProdutos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Codigo'
      '      ,Descricao_Reduzida '
      '      ,NCM'
      'FROM Produtos '
      'ORDER BY Descricao_Reduzida')
    FetchRows = 1
    Left = 420
    Top = 200
    object tProdutosCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'Produtos.Codigo'
    end
    object tProdutosDescricao_Reduzida: TStringField
      DisplayWidth = 44
      FieldName = 'Descricao_Reduzida'
      Origin = 'Produtos.Descricao_Reduzida'
      Size = 60
    end
    object tProdutosNCM: TStringField
      FieldName = 'NCM'
      Origin = 'Produtos.NCM'
      Size = 10
    end
  end
  object dstProdutos: TDataSource
    DataSet = tProdutos
    Left = 450
    Top = 200
  end
end
