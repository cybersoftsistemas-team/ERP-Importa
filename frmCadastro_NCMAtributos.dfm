object Cadastro_NCMAtributos: TCadastro_NCMAtributos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frmCadastro_NCMAtributos'
  ClientHeight = 617
  ClientWidth = 992
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 992
    Height = 37
    Align = alTop
    Stretch = True
    ExplicitLeft = -235
    ExplicitWidth = 1046
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 0
    Width = 47
    Height = 21
    Caption = 'N.C.M'
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
    Width = 225
    Height = 18
    Caption = 'Manuten'#231#227'o da tabela de atributos.'
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
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 40
    Width = 986
    Height = 151
    Align = alTop
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 0
    object StaticText4: TStaticText
      Left = 5
      Top = 6
      Width = 119
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
    object cCodigoAtt: TDBEdit
      Left = 126
      Top = 6
      Width = 187
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Codigo'
      DataSource = dmFiscal.dsAtributosNCM
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = cCodigoAttChange
    end
    object StaticText6: TStaticText
      Left = 5
      Top = 29
      Width = 119
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Nome do Atributo'
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
    object StaticText7: TStaticText
      Left = 5
      Top = 52
      Width = 119
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Nome de Apresenta'#231#227'o'
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
    object cNomeAtt: TDBEdit
      Left = 126
      Top = 29
      Width = 849
      Height = 21
      DataField = 'Nome_Atributo'
      DataSource = dmFiscal.dsAtributosNCM
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit7: TDBEdit
      Left = 126
      Top = 52
      Width = 849
      Height = 21
      DataField = 'Nome_Apresentacao'
      DataSource = dmFiscal.dsAtributosNCM
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 5
      Top = 79
      Width = 152
      Height = 59
      Caption = 'Tipo de Opera'#231#227'o'
      DataField = 'Modalidade_Operacao'
      DataSource = dmFiscal.dsAtributosNCM
      Items.Strings = (
        'Importa'#231#227'o'
        'Exporta'#231#227'o')
      TabOrder = 4
      Values.Strings = (
        'Importa'#231#227'o'
        'Exporta'#231#227'o')
    end
    object DBCheckBox3: TDBCheckBox
      Left = 319
      Top = 8
      Width = 93
      Height = 17
      Caption = 'Multivalorado'
      DataField = 'Multivalorado'
      DataSource = dmFiscal.dsAtributosNCM
      TabOrder = 1
    end
    object DBRadioGroup2: TDBRadioGroup
      Left = 173
      Top = 79
      Width = 802
      Height = 59
      Caption = 'Tipo de Subdetalhe'
      Columns = 5
      DataField = 'Tipo_SubDetalhe'
      DataSource = dmFiscal.dsAtributosNCM
      Items.Strings = (
        'Lista est'#225'tica'
        'Booleano'
        'Data'
        'Data e hora'
        'Numero inteiro'
        'Numero real'
        'Texto'
        'Dominio din'#226'mico'
        'Composto'
        'Lista tabx filtro')
      TabOrder = 5
      Values.Strings = (
        'Lista est'#225'tica'
        'Booleano'
        'Data'
        'Data e hora'
        'Numero inteiro'
        'Numero real'
        'Texto'
        'Dominio din'#226'mico'
        'Composto'
        'Lista tabx filtro')
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 584
    Width = 986
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 230
      Height = 28
      Cursor = crHandPoint
      DataSource = dmFiscal.dsAtributosNCM
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
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
      ConfirmDelete = False
      ShowHint = True
      TabOrder = 0
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
    object bSair: TButton
      Left = 913
      Top = 1
      Width = 72
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bSairClick
    end
    object Button1: TButton
      Left = 231
      Top = 1
      Width = 82
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alLeft
      Caption = '&Importar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 216
    Width = 702
    Height = 362
    Margins.Top = 0
    Align = alLeft
    DataSource = dmFiscal.dsAtributosNCM
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'C'#211'DIGO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome_Atributo'
        Title.Alignment = taCenter
        Title.Caption = 'NOME ATRIBUTO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 270
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome_Apresentacao'
        Title.Alignment = taCenter
        Title.Caption = 'NOME APRESENTA'#199#195'O'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 270
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    AlignWithMargins = True
    Left = 711
    Top = 216
    Width = 278
    Height = 362
    Margins.Top = 0
    Align = alRight
    DataSource = dmFiscal.dsDominiosAtt
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'C'#211'DIGO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Title.Alignment = taCenter
        Title.Caption = 'DESCRI'#199#195'O'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 208
        Visible = True
      end>
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 194
    Width = 986
    Height = 22
    Margins.Top = 0
    Margins.Bottom = 0
    Align = alTop
    BevelOuter = bvNone
    Color = 7293440
    ParentBackground = False
    TabOrder = 4
    StyleElements = [seBorder]
    object Panel4: TPanel
      Left = 705
      Top = 0
      Width = 281
      Height = 22
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alClient
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = 'DOM'#205'NIOS'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      StyleElements = [seBorder]
    end
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 705
      Height = 22
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Caption = 'ATRIBUTOS'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      StyleElements = [seBorder]
    end
  end
  object tTmp: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 299
    Top = 291
  end
end
