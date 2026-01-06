object Financeiro_Agendamento: TFinanceiro_Agendamento
  Left = 426
  Top = 172
  BorderStyle = bsDialog
  Caption = 'Financeiro_Agendamento'
  ClientHeight = 538
  ClientWidth = 687
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 687
    Height = 41
    Align = alTop
    Stretch = True
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = -1
    Width = 124
    Height = 21
    Caption = 'AGENDAMENTOS'
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
    Width = 361
    Height = 18
    Caption = 'Manuten'#231#227'o da tabela de Agendamentos de vencimentos.'
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
    Left = 7
    Top = 48
    Width = 671
    Height = 231
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 0
    object cDescricao: TDBEdit
      Left = 123
      Top = 13
      Width = 537
      Height = 21
      DataField = 'Descricao'
      DataSource = Dados.dsAgenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit5: TDBEdit
      Left = 123
      Top = 60
      Width = 70
      Height = 21
      DataField = 'Vencimento_Dia'
      DataSource = Dados.dsAgenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit7: TDBEdit
      Left = 123
      Top = 83
      Width = 70
      Height = 21
      DataField = 'Percentual'
      DataSource = Dados.dsAgenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit8: TDBEdit
      Left = 123
      Top = 153
      Width = 134
      Height = 21
      DataField = 'Valor_Fixo'
      DataSource = Dados.dsAgenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object DBEdit9: TDBEdit
      Left = 123
      Top = 106
      Width = 70
      Height = 21
      DataField = 'Multa_Atraso'
      DataSource = Dados.dsAgenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object DBEdit10: TDBEdit
      Left = 123
      Top = 130
      Width = 70
      Height = 21
      DataField = 'Juro_Atraso'
      DataSource = Dados.dsAgenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object StaticText1: TStaticText
      Left = 14
      Top = 14
      Width = 107
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
      TabOrder = 7
      Transparent = False
      StyleElements = []
    end
    object StaticText2: TStaticText
      Left = 14
      Top = 37
      Width = 107
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Benefici'#225'rio'
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
      Left = 123
      Top = 36
      Width = 537
      Height = 21
      DataField = 'Beneficiario'
      DataSource = Dados.dsAgenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo;Nome'
      ListFieldIndex = 1
      ListSource = Dados.dsFornecedores
      ParentFont = False
      TabOrder = 1
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 365
      Top = 62
      Width = 124
      Height = 104
      Caption = 'Tipo'
      DataField = 'Tipo'
      DataSource = Dados.dsAgenda
      Items.Strings = (
        'Tributo Municipal'
        'Tributo Estadual'
        'Tributo Federal'
        'Outros')
      TabOrder = 8
      Values.Strings = (
        'M'
        'E'
        'F'
        'O')
    end
    object StaticText3: TStaticText
      Left = 14
      Top = 60
      Width = 107
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Vencimento (Dia)'
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
    object DBRadioGroup2: TDBRadioGroup
      Left = 508
      Top = 62
      Width = 152
      Height = 160
      Caption = 'Frequ'#234'ncia de Vencimento'
      DataField = 'Vencimento_Frequencia'
      DataSource = Dados.dsAgenda
      Items.Strings = (
        'Semanal'
        'Quinzenal'
        'Mensal'
        'Trimestral'
        'Semestral'
        'Anual'
        'Outros')
      TabOrder = 10
      Values.Strings = (
        'S'
        'Q'
        'M'
        'T'
        'E'
        'A'
        'O')
    end
    object StaticText4: TStaticText
      Left = 14
      Top = 83
      Width = 107
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Percentual'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 12
      Transparent = False
      StyleElements = []
    end
    object StaticText5: TStaticText
      Left = 14
      Top = 153
      Width = 107
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Valor Fixo'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 13
      Transparent = False
      StyleElements = []
    end
    object StaticText6: TStaticText
      Left = 14
      Top = 106
      Width = 107
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Multa por Atraso (%)'
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
    object StaticText7: TStaticText
      Left = 14
      Top = 130
      Width = 107
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Juros por Atraso (%)'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 15
      Transparent = False
      StyleElements = []
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 502
    Width = 687
    Height = 36
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      687
      36)
    object bSair: TButton
      Left = 602
      Top = 1
      Width = 84
      Height = 35
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      Left = 2
      Top = 1
      Width = 351
      Height = 35
      Cursor = crHandPoint
      DataSource = Dados.dsAgenda
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
  object Grade: TRxDBGrid
    Left = 7
    Top = 283
    Width = 673
    Height = 213
    DataSource = Dados.dsAgenda
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    RowColor2 = 16776176
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
        Width = 333
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Beneficiario_Nome'
        Title.Alignment = taCenter
        Title.Caption = 'Benefici'#225'rio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 278
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Vencimento_Dia'
        Title.Alignment = taCenter
        Title.Caption = 'Dia'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 39
        Visible = True
      end>
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 448
    Top = 8
  end
end
