object Cadastro_CentroCusto: TCadastro_CentroCusto
  Left = 483
  Top = 125
  HelpContext = 104
  BorderStyle = bsDialog
  Caption = 'Cadastro_CentroCusto'
  ClientHeight = 491
  ClientWidth = 441
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
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 441
    Height = 45
    Align = alTop
    Stretch = True
    ExplicitWidth = 436
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 133
    Height = 21
    Caption = 'CENTRO DE CUSTO'
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
    Width = 261
    Height = 18
    Caption = 'Manuten'#231#227'o da tabela de centro de custo.'
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
    Top = 461
    Width = 441
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      Left = 373
      Top = 1
      Width = 67
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
      Left = -4
      Top = 2
      Width = 288
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsCentroCusto
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
      Left = 290
      Top = 1
      Width = 68
      Height = 28
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
    Top = 50
    Width = 429
    Height = 77
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 1
    object StaticText1: TStaticText
      Left = 5
      Top = 5
      Width = 86
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
      TabOrder = 0
      Transparent = False
      StyleElements = []
    end
    object cCodigo: TDBEdit
      Left = 93
      Top = 5
      Width = 132
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Codigo'
      DataSource = Dados.dsCentroCusto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object StaticText5: TStaticText
      Left = 5
      Top = 28
      Width = 86
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
      TabOrder = 3
      Transparent = False
      StyleElements = []
    end
    object cDescricao: TDBEdit
      Left = 93
      Top = 28
      Width = 324
      Height = 21
      DataField = 'Descricao'
      DataSource = Dados.dsCentroCusto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object StaticText2: TStaticText
      Left = 5
      Top = 51
      Width = 86
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Ref.Processo'
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
    object DBCheckBox1: TDBCheckBox
      Left = 94
      Top = 53
      Width = 17
      Height = 17
      DataField = 'Processo'
      DataSource = Dados.dsCentroCusto
      TabOrder = 5
    end
  end
  object Grade: TDBGrid
    Left = 4
    Top = 130
    Width = 429
    Height = 327
    DataSource = Dados.dsCentroCusto
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = GradeDrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Codigo'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 65
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
        Width = 305
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Processo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Proc.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 36
        Visible = True
      end>
  end
  object tMovimento: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO Trader'
      '  (Codigo, Nome, Telefone01, Telefone02, Comissao)'
      'VALUES'
      '  (:Codigo, :Nome, :Telefone01, :Telefone02, :Comissao)')
    SQLDelete.Strings = (
      'DELETE FROM Trader'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLUpdate.Strings = (
      'UPDATE Trader'
      'SET'
      
        '  Codigo = :Codigo, Nome = :Nome, Telefone01 = :Telefone01, Tele' +
        'fone02 = :Telefone02, Comissao = :Comissao'
      'WHERE'
      '  Codigo = :Old_Codigo')
    SQLRefresh.Strings = (
      
        'SELECT Trader.Codigo, Trader.Nome, Trader.Telefone01, Trader.Tel' +
        'efone02, Trader.Comissao FROM Trader'
      'WHERE Trader.Codigo = :Codigo ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT COUNT(*) FROM PagarReceber')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 316
    Top = 8
  end
end
