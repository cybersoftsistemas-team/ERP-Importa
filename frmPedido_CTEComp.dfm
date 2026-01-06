object Pedido_CTEComp: TPedido_CTEComp
  Left = 534
  Top = 326
  BorderStyle = bsDialog
  Caption = 'Pedido_CTEComp'
  ClientHeight = 292
  ClientWidth = 554
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
  object Grade: TDBGrid
    Left = 5
    Top = 66
    Width = 545
    Height = 193
    DataSource = Dados.dsPedidoCTEComp
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
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
        Title.Alignment = taCenter
        Title.Caption = 'C'#211'DIGO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Title.Alignment = taCenter
        Title.Caption = 'DESCRI'#199#195'O'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 335
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Title.Alignment = taCenter
        Title.Caption = 'VALOR'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 103
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 263
    Width = 554
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 4
    DesignSize = (
      554
      29)
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 351
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsPedidoCTEComp
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
      ConfirmDelete = False
      ShowHint = True
      TabOrder = 1
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
    object bSair: TButton
      Left = 491
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
  end
  object StaticText28: TStaticText
    Left = 5
    Top = 10
    Width = 46
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
    TabOrder = 5
    Transparent = False
    StyleElements = []
  end
  object cCodigo: TDBEdit
    Left = 53
    Top = 10
    Width = 100
    Height = 21
    CharCase = ecUpperCase
    DataField = 'Codigo'
    DataSource = Dados.dsPedidoCTEComp
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object StaticText1: TStaticText
    Left = 5
    Top = 33
    Width = 46
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Valor'
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
  object DBEdit1: TDBEdit
    Left = 53
    Top = 33
    Width = 100
    Height = 21
    CharCase = ecUpperCase
    DataField = 'Valor'
    DataSource = Dados.dsPedidoCTEComp
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object cClassificacao: TRxDBLookupCombo
    Left = 155
    Top = 10
    Width = 395
    Height = 21
    DropDownCount = 15
    DisplayAllFields = True
    DataField = 'Codigo'
    DataSource = Dados.dsPedidoCTEComp
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo;Descricao; Tipo'
    LookupDisplayIndex = 1
    LookupSource = Dados.dsClassificacaoFinanceira
    ParentFont = False
    TabOrder = 1
  end
  object tReg: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 296
    Top = 152
  end
end
