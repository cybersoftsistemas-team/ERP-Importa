object Cadastro_NaturezaOperacao: TCadastro_NaturezaOperacao
  Left = 516
  Top = 159
  HelpContext = 402
  BorderStyle = bsDialog
  Caption = 'Cadastro_NaturezaOperacao'
  ClientHeight = 566
  ClientWidth = 625
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
    Width = 625
    Height = 41
    Align = alTop
    Stretch = True
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 1
    Width = 184
    Height = 21
    Caption = 'NATUREZA DA OPERA'#199#195'O'
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
    Top = 20
    Width = 303
    Height = 18
    Caption = 'Manuten'#231#227'o da tabela de natureza da opera'#231#227'o.'
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
    Top = 536
    Width = 625
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      Left = 550
      Top = 1
      Width = 74
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
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
      DataSource = Dados.dsNatureza
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
      Width = 74
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
    Left = 5
    Top = 51
    Width = 616
    Height = 259
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 1
    object cCodigo: TDBEdit
      Left = 124
      Top = 5
      Width = 64
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Codigo'
      DataSource = Dados.dsNatureza
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object StaticText1: TStaticText
      Left = 6
      Top = 5
      Width = 116
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'C'#243'digo '
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
    object StaticText4: TStaticText
      Left = 6
      Top = 51
      Width = 116
      Height = 70
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Classifica'#231#227'o'
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
    object cObservacao: TDBMemo
      Left = 124
      Top = 51
      Width = 485
      Height = 70
      DataField = 'Observacao'
      DataSource = Dados.dsNatureza
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object StaticText3: TStaticText
      Left = 6
      Top = 28
      Width = 116
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Descri'#231#227'o NF'
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
    object DBEdit1: TDBEdit
      Left = 124
      Top = 28
      Width = 485
      Height = 21
      DataField = 'Descricao_NF'
      DataSource = Dados.dsNatureza
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object DBCheckBox4: TDBCheckBox
      Left = 195
      Top = 6
      Width = 54
      Height = 17
      Caption = 'Ativa.'
      DataField = 'Ativo'
      DataSource = Dados.dsNatureza
      TabOrder = 1
    end
    object StaticText9: TStaticText
      Left = 6
      Top = 123
      Width = 116
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'CFOP Devolu'#231#227'o'
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
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 190
      Top = 123
      Width = 419
      Height = 21
      Color = clWhite
      DataField = 'Codigo_Devolucao'
      DataSource = Dados.dsNatureza
      DropDownRows = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Descricao_NF;Codigo'
      ListSource = dsNatureza_Devolucao
      NullValueKey = 46
      ParentFont = False
      TabOrder = 5
    end
    object DBEdit2: TDBEdit
      Left = 124
      Top = 123
      Width = 64
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Codigo_Devolucao'
      DataSource = Dados.dsNatureza
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object GroupBox1: TGroupBox
      Left = 175
      Top = 196
      Width = 432
      Height = 58
      Caption = 'Par'#226'metros'
      TabOrder = 10
      object DBCheckBox2: TDBCheckBox
        Left = 7
        Top = 16
        Width = 185
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Referente a presta'#231#227'o de servi'#231'os'
        DataField = 'Servico'
        DataSource = Dados.dsNatureza
        TabOrder = 0
      end
      object DBCheckBox3: TDBCheckBox
        Left = 204
        Top = 16
        Width = 214
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Calcular diferencial de ali'#237'quota de ICMS'
        DataField = 'Diferencial_ICMS'
        DataSource = Dados.dsNatureza
        TabOrder = 1
      end
      object DBCheckBox5: TDBCheckBox
        Left = 204
        Top = 35
        Width = 214
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Ativo Imobilizado'
        DataField = 'Imobilizado'
        DataSource = Dados.dsNatureza
        TabOrder = 2
      end
      object DBCheckBox1: TDBCheckBox
        Left = 7
        Top = 35
        Width = 185
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Apura PIS/COFINS'
        DataField = 'Apuracao_PISCOFINS'
        DataSource = Dados.dsNatureza
        TabOrder = 3
      end
    end
    object StaticText2: TStaticText
      Left = 6
      Top = 169
      Width = 116
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Prazo p/Retorno (Dias)'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 11
      Transparent = False
      StyleElements = []
    end
    object DBEdit3: TDBEdit
      Left = 124
      Top = 169
      Width = 64
      Height = 21
      DataField = 'Prazo_Retorno'
      DataSource = Dados.dsNatureza
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 6
      Top = 196
      Width = 163
      Height = 58
      Caption = 'Tipo'
      Columns = 2
      DataField = 'Saida_Entrada'
      DataSource = Dados.dsNatureza
      Items.Strings = (
        'Entrada'
        'Sa'#237'da')
      TabOrder = 13
      Values.Strings = (
        '0'
        '1')
    end
    object StaticText5: TStaticText
      Left = 6
      Top = 146
      Width = 116
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'CFOP Estorno'
      Color = 7293440
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
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 190
      Top = 146
      Width = 419
      Height = 21
      Color = clWhite
      DataField = 'Codigo_Estorno'
      DataSource = Dados.dsNatureza
      DropDownRows = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Descricao_NF;Codigo'
      ListSource = dsNatureza_Devolucao
      NullValueKey = 46
      ParentFont = False
      TabOrder = 15
    end
    object DBEdit4: TDBEdit
      Left = 124
      Top = 146
      Width = 64
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Codigo_Estorno'
      DataSource = Dados.dsNatureza
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
    end
  end
  object DBGrid1: TDBGrid
    Left = 5
    Top = 313
    Width = 616
    Height = 219
    DataSource = Dados.dsNatureza
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao_NF'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 542
        Visible = True
      end>
  end
  object Natureza_Devolucao: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT * FROM Natureza WHERE (Ativo = 1) ORDER BY Descricao_NF')
    Left = 360
    object Natureza_DevolucaoCodigo: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object Natureza_DevolucaoDescricao_NF: TStringField
      FieldName = 'Descricao_NF'
      Size = 50
    end
  end
  object dsNatureza_Devolucao: TDataSource
    DataSet = Natureza_Devolucao
    Left = 360
    Top = 48
  end
  object tPesquisa: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT * FROM Natureza WHERE (Ativo = 1) ORDER BY Codigo')
    Left = 512
    Top = 8
    object StringField1: TStringField
      FieldName = 'Codigo'
      Size = 4
    end
    object StringField2: TStringField
      FieldName = 'Descricao_NF'
      Size = 50
    end
  end
  object tNatureza: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 512
    Top = 56
  end
end
