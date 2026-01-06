object Cadastro_TiposProcesso: TCadastro_TiposProcesso
  Left = 446
  Top = 84
  Anchors = [akTop, akRight]
  BorderStyle = bsDialog
  Caption = 'Cadastro_TiposProcesso'
  ClientHeight = 610
  ClientWidth = 604
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
    Width = 604
    Height = 46
    Align = alTop
    Stretch = True
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 144
    Height = 21
    Caption = 'TIPOS DE PROCESSO'
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
    Width = 221
    Height = 18
    Caption = 'Manuten'#231#227'o dos Tipos de Processo.'
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
    Top = 580
    Width = 604
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitTop = 549
    DesignSize = (
      604
      30)
    object bSair: TButton
      Left = 536
      Top = 1
      Width = 68
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
      Width = 369
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsTiposProcesso
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
      Left = 370
      Top = 1
      Width = 68
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Caption = '&Pesquisa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
  end
  object Grade: TDBGrid
    Left = 5
    Top = 419
    Width = 594
    Height = 138
    DataSource = Dados.dsTiposProcesso
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
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
        FieldName = 'Codigo'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 84
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
        Width = 488
        Visible = True
      end>
  end
  object PageControl1: TPageControl
    Left = 5
    Top = 51
    Width = 596
    Height = 365
    ActivePage = TabSheet2
    TabHeight = 28
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = '&Tipo de Processo'
      Enabled = False
      ExplicitHeight = 304
      object StaticText1: TStaticText
        Left = 2
        Top = 2
        Width = 106
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
        Left = 110
        Top = 2
        Width = 60
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Codigo'
        DataSource = Dados.dsTiposProcesso
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object StaticText5: TStaticText
        Left = 2
        Top = 25
        Width = 106
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
        TabOrder = 4
        Transparent = False
        StyleElements = []
      end
      object cDescricao: TDBEdit
        Left = 110
        Top = 25
        Width = 467
        Height = 21
        DataField = 'Descricao'
        DataSource = Dados.dsTiposProcesso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object DBCheckBox1: TDBCheckBox
        Left = 305
        Top = 4
        Width = 83
        Height = 17
        Caption = 'Exige Cliente'
        DataField = 'Exige_Cliente'
        DataSource = Dados.dsTiposProcesso
        TabOrder = 3
      end
      object cTelaPed: TDBRadioGroup
        Left = 3
        Top = 66
        Width = 168
        Height = 102
        Caption = 'Telas de Pedidos'
        DataField = 'Pedido'
        DataSource = Dados.dsTiposProcesso
        Items.Strings = (
          'Pedidos de Importa'#231#227'o'
          'Pedidos Outros'
          'Todos')
        TabOrder = 5
        Values.Strings = (
          'I'
          'O'
          'T')
      end
      object DBCheckBox2: TDBCheckBox
        Left = 187
        Top = 4
        Width = 112
        Height = 17
        Caption = 'Apura PIS/COFINS'
        DataField = 'Apuracao_PISCOFINS'
        DataSource = Dados.dsTiposProcesso
        TabOrder = 6
      end
      object DBCheckBox3: TDBCheckBox
        Left = 396
        Top = 4
        Width = 77
        Height = 17
        Caption = 'Exporta'#231#227'o'
        DataField = 'Exportacao'
        DataSource = Dados.dsTiposProcesso
        TabOrder = 7
      end
      object DBCheckBox4: TDBCheckBox
        Left = 482
        Top = 4
        Width = 95
        Height = 17
        Caption = 'Ref.a Processo'
        DataField = 'Processo'
        DataSource = Dados.dsTiposProcesso
        TabOrder = 8
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&Parametriza'#231#227'o Financeira Importa'#231#227'o de DI'#39's'
      Enabled = False
      ImageIndex = 1
      ExplicitHeight = 304
      object StaticText96: TStaticText
        Left = 1
        Top = 2
        Width = 161
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Documento'
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
      object StaticText97: TStaticText
        Left = 1
        Top = 25
        Width = 161
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Centro de Custo'
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
      object StaticText98: TStaticText
        Left = 1
        Top = 48
        Width = 161
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Org'#227'o'
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
      object StaticText99: TStaticText
        Left = 1
        Top = 117
        Width = 161
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Classifica'#231#227'o (II)'
        Color = 7293440
        Enabled = False
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
      object StaticText100: TStaticText
        Left = 1
        Top = 163
        Width = 161
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Classifica'#231#227'o (PIS)'
        Color = 7293440
        Enabled = False
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
      object StaticText101: TStaticText
        Left = 1
        Top = 140
        Width = 161
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Classifica'#231#227'o (IPI)'
        Color = 7293440
        Enabled = False
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
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 164
        Top = 2
        Width = 422
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'SISCOMEX_Documento'
        DataSource = Dados.dsTiposProcesso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo; Descricao'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsTiposDocumentos
        ParentFont = False
        TabOrder = 6
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 164
        Top = 25
        Width = 422
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'SISCOMEX_CentroCusto'
        DataSource = Dados.dsTiposProcesso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo; Descricao'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsCentroCusto
        ParentFont = False
        TabOrder = 7
      end
      object RxDBLookupCombo3: TRxDBLookupCombo
        Left = 164
        Top = 48
        Width = 422
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'SISCOMEX_Orgao'
        DataSource = Dados.dsTiposProcesso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo; Nome'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsOrgaos
        ParentFont = False
        TabOrder = 8
      end
      object RxDBLookupCombo4: TRxDBLookupCombo
        Left = 164
        Top = 117
        Width = 422
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'SISCOMEX_ClassificacaoII'
        DataSource = Dados.dsTiposProcesso
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Descricao'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsClassificacaoFinanceira
        ParentFont = False
        TabOrder = 11
      end
      object RxDBLookupCombo5: TRxDBLookupCombo
        Left = 164
        Top = 140
        Width = 422
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'SISCOMEX_ClassificacaoIPI'
        DataSource = Dados.dsTiposProcesso
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Descricao'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsClassificacaoFinanceira
        ParentFont = False
        TabOrder = 12
      end
      object RxDBLookupCombo6: TRxDBLookupCombo
        Left = 164
        Top = 163
        Width = 422
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'SISCOMEX_ClassificacaoPIS'
        DataSource = Dados.dsTiposProcesso
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Descricao'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsClassificacaoFinanceira
        ParentFont = False
        TabOrder = 13
      end
      object StaticText8: TStaticText
        Left = 1
        Top = 186
        Width = 161
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Classifica'#231#227'o (COFINS)'
        Color = 7293440
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 14
        Transparent = False
        StyleElements = []
      end
      object RxDBLookupCombo10: TRxDBLookupCombo
        Left = 164
        Top = 186
        Width = 422
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'SISCOMEX_ClassificacaoCOFINS'
        DataSource = Dados.dsTiposProcesso
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Descricao'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsClassificacaoFinanceira
        ParentFont = False
        TabOrder = 15
      end
      object StaticText103: TStaticText
        Left = 1
        Top = 209
        Width = 161
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Classifica'#231#227'o (Taxa SISCOMEX)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 16
        Transparent = False
        StyleElements = []
      end
      object StaticText113: TStaticText
        Left = 1
        Top = 232
        Width = 161
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Classifica'#231#227'o (ANTIDUMPING)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 17
        Transparent = False
        StyleElements = []
      end
      object RxDBLookupCombo8: TRxDBLookupCombo
        Left = 164
        Top = 209
        Width = 422
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'SISCOMEX_ClassificacaoTaxaSISCOMEX'
        DataSource = Dados.dsTiposProcesso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Descricao'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsClassificacaoFinanceira
        ParentFont = False
        TabOrder = 18
      end
      object RxDBLookupCombo9: TRxDBLookupCombo
        Left = 164
        Top = 232
        Width = 422
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'SISCOMEX_ClassificacaoANTIDUMPING'
        DataSource = Dados.dsTiposProcesso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Descricao'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsClassificacaoFinanceira
        ParentFont = False
        TabOrder = 19
      end
      object StaticText102: TStaticText
        Left = 1
        Top = 71
        Width = 161
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Classifica'#231#227'o (Difer.PIS'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 20
        Transparent = False
        StyleElements = []
      end
      object RxDBLookupCombo7: TRxDBLookupCombo
        Left = 164
        Top = 71
        Width = 422
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'SISCOMEX_ClassificacaoDifPIS'
        DataSource = Dados.dsTiposProcesso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Descricao'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsClassificacaoFinanceira
        ParentFont = False
        TabOrder = 9
      end
      object StaticText9: TStaticText
        Left = 1
        Top = 94
        Width = 161
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Classifica'#231#227'o (Difer.COFINS)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 21
        Transparent = False
        StyleElements = []
      end
      object RxDBLookupCombo11: TRxDBLookupCombo
        Left = 164
        Top = 94
        Width = 422
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'SISCOMEX_ClassificacaoDifCOFINS'
        DataSource = Dados.dsTiposProcesso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Descricao'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsClassificacaoFinanceira
        ParentFont = False
        TabOrder = 10
      end
      object StaticText141: TStaticText
        Left = 1
        Top = 255
        Width = 161
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Classifica'#231#227'o AFRMM'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 22
        Transparent = False
        StyleElements = []
      end
      object DBLookupComboBox31: TDBLookupComboBox
        Left = 164
        Top = 255
        Width = 422
        Height = 21
        DataField = 'Classificacao_AFRMM'
        DataSource = Dados.dsTiposProcesso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = Dados.dsClassificacaoFinanceira
        NullValueKey = 46
        ParentFont = False
        TabOrder = 23
      end
      object StaticText15: TStaticText
        Left = 1
        Top = 278
        Width = 161
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Tx.Util.Portu'#225'rio (TUP)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 24
        Transparent = False
        StyleElements = []
      end
      object DBLookupComboBox9: TDBLookupComboBox
        Left = 164
        Top = 278
        Width = 422
        Height = 21
        DataField = 'Classificacao_TUP'
        DataSource = Dados.dsTiposProcesso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = Dados.dsClassificacaoFinanceira
        NullValueKey = 46
        ParentFont = False
        TabOrder = 25
      end
      object StaticText16: TStaticText
        Left = 1
        Top = 301
        Width = 161
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Classifica'#231#227'o Diferen'#231'a COFINS'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 26
        Transparent = False
        StyleElements = []
      end
      object DBLookupComboBox10: TDBLookupComboBox
        Left = 164
        Top = 301
        Width = 422
        Height = 21
        DataField = 'Classificacao_COFINSDifer'
        DataSource = Dados.dsTiposProcesso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = Dados.dsClassificacaoFinanceira
        NullValueKey = 46
        ParentFont = False
        TabOrder = 27
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Par'#226'metriza'#231#227'o Contabil'
      ImageIndex = 2
      ExplicitHeight = 304
      object GroupBox1: TGroupBox
        Left = 0
        Top = 1
        Width = 585
        Height = 282
        Caption = 'Cria'#231#227'o de contas autom'#225'tico no plano de contas '
        TabOrder = 0
        DesignSize = (
          585
          282)
        object SpeedButton2: TSpeedButton
          Left = 555
          Top = 255
          Width = 23
          Height = 22
          Anchors = [akBottom]
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            20000000000000040000C40E0000C40E00000000000000000000040404000404
            0400040404000404040004040400040404000404040004040400040404000404
            0400040404000404040004040400040404000404040004040400040404000404
            0400000099FF0404040004040400040404000404040004040400040404000404
            04000404040004040400040404000000FFFF0404040004040400040404003333
            CCFF0000FFFF000099FF04040400040404000404040004040400040404000404
            0400040404000404040004040400040404000404040004040400040404003333
            CCFF3399FFFF0000FFFF000099FF040404000404040004040400040404000404
            040004040400040404000000FFFF040404000404040004040400040404000404
            04003333CCFF0066FFFF0000CCFF040404000404040004040400040404000404
            0400040404000000FFFF04040400040404000404040004040400040404000404
            0400040404000000CCFF0000FFFF000099FF0404040004040400040404000404
            04000000FFFF000099FF04040400040404000404040004040400040404000404
            040004040400040404000000CCFF0000FFFF000099FF04040400040404000000
            FFFF000099FF0404040004040400040404000404040004040400040404000404
            04000404040004040400040404000000CCFF0000FFFF000099FF0000FFFF0000
            99FF040404000404040004040400040404000404040004040400040404000404
            0400040404000404040004040400040404000000CCFF0000FFFF000099FF0404
            0400040404000404040004040400040404000404040004040400040404000404
            04000404040004040400040404000000CCFF0000FFFF000099FF0000CCFF0000
            99FF040404000404040004040400040404000404040004040400040404000404
            040004040400040404000000CCFF0000FFFF000099FF04040400040404000000
            CCFF000099FF0404040004040400040404000404040004040400040404000404
            04000000CCFF0000FFFF0000FFFF000099FF0404040004040400040404000404
            04000000CCFF000099FF04040400040404000404040004040400040404000000
            CCFF3399FFFF0000FFFF000099FF040404000404040004040400040404000404
            0400040404000000CCFF000099FF040404000404040004040400040404006666
            99FF0000CCFF666699FF04040400040404000404040004040400040404000404
            04000404040004040400040404000000CCFF0404040004040400040404000404
            0400040404000404040004040400040404000404040004040400040404000404
            0400040404000404040004040400040404000404040004040400040404000404
            0400040404000404040004040400040404000404040004040400040404000404
            0400040404000404040004040400040404000404040004040400}
          OnClick = SpeedButton2Click
        end
        object StaticText2: TStaticText
          Left = 5
          Top = 16
          Width = 154
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Grupo (Clientes)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 21
          Transparent = False
          StyleElements = []
        end
        object StaticText3: TStaticText
          Left = 5
          Top = 177
          Width = 154
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Grupo Impostos (Processo)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 22
          Transparent = False
          StyleElements = []
        end
        object StaticText4: TStaticText
          Left = 5
          Top = 200
          Width = 154
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Grupo Despesa (Processo)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 23
          Transparent = False
          StyleElements = []
        end
        object DBLookupComboBox14: TDBLookupComboBox
          Left = 231
          Top = 16
          Width = 347
          Height = 21
          DataField = 'Conta_Cliente'
          DataSource = Dados.dsTiposProcesso
          DropDownRows = 10
          DropDownWidth = 500
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Conta;Codigo;Descricao'
          ListFieldIndex = 2
          ListSource = dmContab.dsPlanoContas
          NullValueKey = 46
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Left = 161
          Top = 16
          Width = 68
          Height = 21
          DataField = 'Conta_Cliente'
          DataSource = Dados.dsTiposProcesso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 161
          Top = 177
          Width = 68
          Height = 21
          DataField = 'Conta_Impostos'
          DataSource = Dados.dsTiposProcesso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 231
          Top = 177
          Width = 347
          Height = 21
          DataField = 'Conta_Impostos'
          DataSource = Dados.dsTiposProcesso
          DropDownRows = 10
          DropDownWidth = 500
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Conta;Codigo;Descricao'
          ListFieldIndex = 2
          ListSource = dmContab.dsPlanoContas
          NullValueKey = 46
          ParentFont = False
          TabOrder = 15
        end
        object DBEdit3: TDBEdit
          Left = 161
          Top = 200
          Width = 68
          Height = 21
          DataField = 'Conta_Despesas'
          DataSource = Dados.dsTiposProcesso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 16
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 231
          Top = 200
          Width = 347
          Height = 21
          DataField = 'Conta_Despesas'
          DataSource = Dados.dsTiposProcesso
          DropDownRows = 10
          DropDownWidth = 500
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Conta;Codigo;Descricao'
          ListFieldIndex = 2
          ListSource = dmContab.dsPlanoContas
          NullValueKey = 46
          ParentFont = False
          TabOrder = 17
        end
        object DBLookupComboBox16: TDBLookupComboBox
          Left = 231
          Top = 39
          Width = 347
          Height = 21
          DataField = 'Conta_ClienteAdiantamento'
          DataSource = Dados.dsTiposProcesso
          DropDownRows = 10
          DropDownWidth = 500
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Conta;Codigo;Descricao'
          ListFieldIndex = 2
          ListSource = dmContab.dsPlanoContas
          NullValueKey = 46
          ParentFont = False
          TabOrder = 3
        end
        object StaticText39: TStaticText
          Left = 5
          Top = 39
          Width = 154
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Grupo Adiantamentos (Clientes)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 24
          Transparent = False
          StyleElements = []
        end
        object DBEdit4: TDBEdit
          Left = 161
          Top = 39
          Width = 68
          Height = 21
          DataField = 'Conta_ClienteAdiantamento'
          DataSource = Dados.dsTiposProcesso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object StaticText6: TStaticText
          Left = 5
          Top = 85
          Width = 154
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Grupo (Fornecedores Nacionais)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 25
          Transparent = False
          StyleElements = []
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 231
          Top = 85
          Width = 347
          Height = 21
          DataField = 'Conta_Fornecedor'
          DataSource = Dados.dsTiposProcesso
          DropDownRows = 10
          DropDownWidth = 500
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Conta;Codigo;Descricao'
          ListFieldIndex = 2
          ListSource = dmContab.dsPlanoContas
          NullValueKey = 46
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit5: TDBEdit
          Left = 161
          Top = 85
          Width = 68
          Height = 21
          DataField = 'Conta_Fornecedor'
          DataSource = Dados.dsTiposProcesso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 231
          Top = 131
          Width = 347
          Height = 21
          DataField = 'Conta_FornecedorAdiantamento'
          DataSource = Dados.dsTiposProcesso
          DropDownRows = 10
          DropDownWidth = 500
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Conta;Codigo;Descricao'
          ListFieldIndex = 2
          ListSource = dmContab.dsPlanoContas
          NullValueKey = 46
          ParentFont = False
          TabOrder = 11
        end
        object StaticText7: TStaticText
          Left = 5
          Top = 131
          Width = 154
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Grupo Adiantamentos (Fornec.)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 26
          Transparent = False
          StyleElements = []
        end
        object DBEdit6: TDBEdit
          Left = 161
          Top = 131
          Width = 68
          Height = 21
          DataField = 'Conta_FornecedorAdiantamento'
          DataSource = Dados.dsTiposProcesso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object StaticText11: TStaticText
          Left = 5
          Top = 223
          Width = 154
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Grupo Adiantamento (Processo)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 27
          Transparent = False
          StyleElements = []
        end
        object DBEdit7: TDBEdit
          Left = 161
          Top = 223
          Width = 68
          Height = 21
          DataField = 'Conta_Adiantamento'
          DataSource = Dados.dsTiposProcesso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 18
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 231
          Top = 223
          Width = 347
          Height = 21
          DataField = 'Conta_Adiantamento'
          DataSource = Dados.dsTiposProcesso
          DropDownRows = 10
          DropDownWidth = 500
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Conta;Codigo;Descricao'
          ListFieldIndex = 2
          ListSource = dmContab.dsPlanoContas
          NullValueKey = 46
          ParentFont = False
          TabOrder = 19
        end
        object StaticText10: TStaticText
          Left = 5
          Top = 256
          Width = 92
          Height = 21
          Anchors = [akLeft, akBottom]
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Filtrar Contas'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 28
          Transparent = False
          StyleElements = []
        end
        object cFiltro: TEdit
          Left = 99
          Top = 256
          Width = 454
          Height = 21
          Anchors = [akLeft, akBottom]
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 20
          OnChange = cFiltroChange
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 231
          Top = 62
          Width = 347
          Height = 21
          DataField = 'Conta_ClienteDevolucao'
          DataSource = Dados.dsTiposProcesso
          DropDownRows = 10
          DropDownWidth = 500
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Conta;Codigo;Descricao'
          ListFieldIndex = 2
          ListSource = dmContab.dsPlanoContas
          NullValueKey = 46
          ParentFont = False
          TabOrder = 5
        end
        object StaticText12: TStaticText
          Left = 5
          Top = 62
          Width = 154
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Grupo Devolu'#231#227'o (Clientes)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 29
          Transparent = False
          StyleElements = []
        end
        object DBEdit8: TDBEdit
          Left = 161
          Top = 62
          Width = 68
          Height = 21
          DataField = 'Conta_ClienteDevolucao'
          DataSource = Dados.dsTiposProcesso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object DBLookupComboBox7: TDBLookupComboBox
          Left = 231
          Top = 154
          Width = 347
          Height = 21
          DataField = 'Conta_FornecedorDevolucao'
          DataSource = Dados.dsTiposProcesso
          DropDownRows = 10
          DropDownWidth = 500
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Conta;Codigo;Descricao'
          ListFieldIndex = 2
          ListSource = dmContab.dsPlanoContas
          NullValueKey = 46
          ParentFont = False
          TabOrder = 13
        end
        object StaticText13: TStaticText
          Left = 5
          Top = 154
          Width = 154
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Grupo Devolu'#231#227'o (Fornec.)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 30
          Transparent = False
          StyleElements = []
        end
        object DBEdit9: TDBEdit
          Left = 161
          Top = 154
          Width = 68
          Height = 21
          DataField = 'Conta_FornecedorDevolucao'
          DataSource = Dados.dsTiposProcesso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
        end
        object StaticText14: TStaticText
          Left = 5
          Top = 108
          Width = 154
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Grupo (Fornecedores Exterior)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 31
          Transparent = False
          StyleElements = []
        end
        object DBLookupComboBox8: TDBLookupComboBox
          Left = 231
          Top = 108
          Width = 347
          Height = 21
          DataField = 'Conta_FornecedorExt'
          DataSource = Dados.dsTiposProcesso
          DropDownRows = 10
          DropDownWidth = 500
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Conta;Codigo;Descricao'
          ListFieldIndex = 2
          ListSource = dmContab.dsPlanoContas
          NullValueKey = 46
          ParentFont = False
          TabOrder = 9
        end
        object DBEdit10: TDBEdit
          Left = 161
          Top = 108
          Width = 68
          Height = 21
          DataField = 'Conta_FornecedorExt'
          DataSource = Dados.dsTiposProcesso
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
      end
    end
  end
  object tCodigo: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM TiposProcesso')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 334
    Top = 8
  end
end
