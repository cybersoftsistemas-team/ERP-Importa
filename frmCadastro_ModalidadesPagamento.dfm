object Cadastro_ModalidadesPagamento: TCadastro_ModalidadesPagamento
  Left = 629
  Top = 257
  HelpContext = 205
  BorderStyle = bsDialog
  Caption = 'Cadastro_ModalidadesPagamento'
  ClientHeight = 604
  ClientWidth = 456
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
    Width = 456
    Height = 46
    Align = alTop
    Stretch = True
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 228
    Height = 21
    Caption = 'MODALIDADES DE PAGAMENTO'
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
    Width = 342
    Height = 18
    Caption = 'Manuten'#231#227'o da tabela de modalidades de pagamento.'
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
    Top = 574
    Width = 456
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitTop = 616
    DesignSize = (
      456
      30)
    object bSair: TButton
      Left = 392
      Top = 2
      Width = 64
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
      Top = 2
      Width = 288
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsModalidadesPgto
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
      Top = 2
      Width = 67
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
    AlignWithMargins = True
    Left = 3
    Top = 49
    Width = 450
    Height = 326
    Align = alTop
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 1
    object StaticText5: TStaticText
      Left = 5
      Top = 28
      Width = 117
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
    object cDescricao: TDBEdit
      Left = 124
      Top = 28
      Width = 317
      Height = 21
      DataField = 'Descricao'
      DataSource = Dados.dsModalidadesPgto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object StaticText3: TStaticText
      Left = 5
      Top = 5
      Width = 117
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
      TabOrder = 8
      Transparent = False
      StyleElements = []
    end
    object cCodigo: TDBEdit
      Left = 124
      Top = 5
      Width = 59
      Height = 21
      DataField = 'Codigo'
      DataSource = Dados.dsModalidadesPgto
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = cCodigoChange
    end
    object cForma: TDBRadioGroup
      AlignWithMargins = True
      Left = 159
      Top = 173
      Width = 117
      Height = 78
      Caption = 'Forma de Pagamento'
      DataField = 'Forma_Pagamento'
      DataSource = Dados.dsModalidadesPgto
      Items.Strings = (
        'A Vista'
        'A Prazo'
        'Outros')
      TabOrder = 6
      Values.Strings = (
        '0'
        '1'
        '2')
    end
    object StaticText15: TStaticText
      Left = 5
      Top = 51
      Width = 117
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'N'#186' de Parcelas'
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
    object cNumeroParcelas: TDBEdit
      Left = 124
      Top = 51
      Width = 97
      Height = 21
      DataField = 'Numero_Parcelas'
      DataSource = Dados.dsModalidadesPgto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object StaticText16: TStaticText
      Left = 5
      Top = 74
      Width = 117
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Prazo 1'#170' Parcela'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 10
      Transparent = False
      StyleElements = []
    end
    object DBEdit13: TDBEdit
      Left = 124
      Top = 74
      Width = 97
      Height = 21
      DataField = 'Prazo_Primeira'
      DataSource = Dados.dsModalidadesPgto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnExit = DBEdit13Exit
    end
    object StaticText17: TStaticText
      Left = 5
      Top = 97
      Width = 117
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Demais Parcelas'
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
    object DBEdit14: TDBEdit
      Left = 124
      Top = 97
      Width = 97
      Height = 21
      DataField = 'Prazo_Demais'
      DataSource = Dados.dsModalidadesPgto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object StaticText1: TStaticText
      Left = 5
      Top = 120
      Width = 117
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Dia Fixo p/Vencimento'
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
    object cDia: TDBEdit
      Left = 124
      Top = 120
      Width = 97
      Height = 21
      DataField = 'Prazo_Dia'
      DataSource = Dados.dsModalidadesPgto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object StaticText2: TStaticText
      Left = 4
      Top = 143
      Width = 118
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Percentual s/Venda'
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
    object DBEdit1: TDBEdit
      Left = 124
      Top = 143
      Width = 97
      Height = 21
      DataField = 'Percentual_Venda'
      DataSource = Dados.dsModalidadesPgto
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 14
    end
    object DBCheckBox1: TDBCheckBox
      Left = 13
      Top = 267
      Width = 201
      Height = 17
      Caption = 'Gerar Duplicatas na emiss'#227'o da Nota'
      DataField = 'Gera_Duplicata'
      DataSource = Dados.dsModalidadesPgto
      TabOrder = 15
    end
    object GradeParcelas: TDBGrid
      AlignWithMargins = True
      Left = 297
      Top = 55
      Width = 128
      Height = 229
      DataSource = Dados.dsModalidadesParcelas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      TabOrder = 16
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyPress = GradeParcelasKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'Parcela'
          Title.Alignment = taCenter
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
          FieldName = 'Dias'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 54
          Visible = True
        end>
    end
    object Button1: TButton
      Left = 308
      Top = 286
      Width = 106
      Height = 27
      Caption = '&Criar Vencimentos'
      TabOrder = 17
      OnClick = Button1Click
    end
    object DBRadioGroup1: TDBRadioGroup
      AlignWithMargins = True
      Left = 5
      Top = 173
      Width = 148
      Height = 78
      Caption = 'Data Base p/Vencimentos'
      DataField = 'Data_Base'
      DataSource = Dados.dsModalidadesPgto
      Items.Strings = (
        'Data da Emiss'#227'o'
        'Data do Vencimento')
      TabOrder = 18
      Values.Strings = (
        'E'
        'V')
    end
    object DBCheckBox2: TDBCheckBox
      Left = 13
      Top = 291
      Width = 87
      Height = 17
      Caption = 'Gerar Boletos'
      DataField = 'Gera_Boleto'
      DataSource = Dados.dsModalidadesPgto
      TabOrder = 19
    end
  end
  object Grade: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 379
    Width = 450
    Height = 192
    Align = alBottom
    DataSource = Dados.dsModalidadesPgto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
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
        Width = 60
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
        Width = 368
        Visible = True
      end>
  end
  object tCodigo: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM ModalidadesPagamento')
    FetchRows = 1
    Left = 256
    Top = 8
    object tCodigoCodigo: TSmallintField
      FieldName = 'Codigo'
      ReadOnly = True
    end
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM ModalidadesPagamento')
    FetchRows = 1
    Left = 257
    Top = 53
  end
end
