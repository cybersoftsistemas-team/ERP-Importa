object Cadastro_HistoricoPadrao: TCadastro_HistoricoPadrao
  Left = 393
  Top = 84
  HelpContext = 602
  BorderStyle = bsDialog
  Caption = 'Cadastro_HistoricoPadrao'
  ClientHeight = 554
  ClientWidth = 597
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 597
    Height = 37
    Align = alTop
    Stretch = True
  end
  object RxLabel3: TRxLabel
    Left = 5
    Top = 2
    Width = 144
    Height = 21
    Caption = 'HIST'#211'RICO PADR'#195'O'
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
    Width = 221
    Height = 18
    Caption = 'Manuten'#231#227'o dos hist'#243'ricos padr'#227'o.'
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
    Top = 523
    Width = 597
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      597
      31)
    object bSair: TButton
      Left = 528
      Top = 1
      Width = 69
      Height = 29
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
      Width = 351
      Height = 29
      Cursor = crHandPoint
      DataSource = dmContab.dsHistoricos
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
      Left = 352
      Top = 1
      Width = 66
      Height = 29
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Caption = '&Pesquisa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bPesquisaClick
    end
  end
  object Panel2: TPanel
    Left = 4
    Top = 41
    Width = 589
    Height = 237
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 1
    object StaticText5: TStaticText
      Left = 5
      Top = 28
      Width = 101
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Descri'#231#227'o'
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
    object StaticText6: TStaticText
      Left = 5
      Top = 5
      Width = 101
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'C'#243'digo'
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
    object cCodigo: TDBEdit
      Left = 108
      Top = 5
      Width = 66
      Height = 21
      DataField = 'Codigo'
      DataSource = dmContab.dsHistoricos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object cDescricao: TDBEdit
      Left = 108
      Top = 28
      Width = 474
      Height = 21
      DataField = 'Descricao'
      DataSource = dmContab.dsHistoricos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object StaticText1: TStaticText
      Left = 5
      Top = 51
      Width = 101
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Pedir Complemento'
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
    object DBCheckBox1: TDBCheckBox
      Left = 108
      Top = 53
      Width = 17
      Height = 17
      DataField = 'Complemento'
      DataSource = dmContab.dsHistoricos
      TabOrder = 2
    end
    object StaticText7: TStaticText
      Left = 5
      Top = 74
      Width = 101
      Height = 78
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 
        '                                                                ' +
        ' Complemento'
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
    object cComplemento: TDBMemo
      Left = 108
      Top = 74
      Width = 474
      Height = 78
      DataField = 'Macro'
      DataSource = dmContab.dsHistoricos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      PopupMenu = mnVariavel
      TabOrder = 3
      OnChange = cComplementoChange
    end
    object StaticText2: TStaticText
      Left = 5
      Top = 154
      Width = 101
      Height = 78
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 
        '                                                                ' +
        '              Exemplo'
      Color = 7293440
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
    object cExemplo: TMemo
      Left = 108
      Top = 154
      Width = 474
      Height = 78
      TabStop = False
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = -1
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
  end
  object Grade: TDBGrid
    Left = 4
    Top = 281
    Width = 589
    Height = 237
    DataSource = dmContab.dsHistoricos
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
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
        Title.Font.Style = [fsBold]
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
        Width = 503
        Visible = True
      end>
  end
  object tCodigo: TMSQuery
    SQLRefresh.Strings = (
      
        'SELECT PlanoContas.Conta, PlanoContas.Codigo, PlanoContas.Descri' +
        'cao, PlanoContas.Saldo, PlanoContas.Debito, PlanoContas.Credito ' +
        'FROM PlanoContas'
      'WHERE PlanoContas.Conta = :Conta ')
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM HistoricoPadrao')
    FetchRows = 1
    Left = 345
    Top = 8
    object tCodigoCodigo: TSmallintField
      FieldName = 'Codigo'
      Origin = '.'
      ReadOnly = True
    end
  end
  object mnVariavel: TPopupMenu
    Left = 400
    Top = 8
    object FORNECEDORES1: TMenuItem
      Caption = '<{BENEFICIARIO}>'
      OnClick = FORNECEDORES1Click
    end
    object PROCESSO1: TMenuItem
      Caption = '<{PROCESSO}>'
      OnClick = PROCESSO1Click
    end
    object DI1: TMenuItem
      Caption = '<{DI}>'
      OnClick = DI1Click
    end
    object DESCRIOCLASSIFICAOFINANCEIRA1: TMenuItem
      Caption = '<{DESCRI'#199#195'O CLASSIFICA'#199#195'O FINANCEIRA}>'
      OnClick = DESCRIOCLASSIFICAOFINANCEIRA1Click
    end
    object IPODEDOCUMENTO1: TMenuItem
      Caption = '<{TIPO DE DOCUMENTO}>'
      OnClick = IPODEDOCUMENTO1Click
    end
    object NDOCUMENTP1: TMenuItem
      Caption = '<{N'#186' DOCUMENTO}>'
      OnClick = NDOCUMENTP1Click
    end
    object DATADOCUMENTO1: TMenuItem
      Caption = '<{DATA DOCUMENTO}>'
      OnClick = DATADOCUMENTO1Click
    end
    object MES1: TMenuItem
      Caption = '<{MES}>'
      OnClick = MES1Click
    end
    object NOMEDOMES1: TMenuItem
      Caption = '<{NOME DO MES}>'
      OnClick = NOMEDOMES1Click
    end
    object BANCO1: TMenuItem
      Caption = '<{BANCO}>'
      OnClick = BANCO1Click
    end
    object OBSERVAO1: TMenuItem
      Caption = '<{OBSERVA'#199#195'O}>'
      OnClick = OBSERVAO1Click
    end
  end
end
