object Cadastro_Usuarios2: TCadastro_Usuarios2
  Left = 549
  Top = 77
  HelpContext = 103
  BorderStyle = bsDialog
  Caption = 'Cadastro_Usuarios2'
  ClientHeight = 762
  ClientWidth = 1192
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
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
    Width = 1192
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitTop = 8
    ExplicitWidth = 601
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 180
    Height = 21
    Caption = 'CADASTRO DE USU'#193'RIOS'
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
    Width = 239
    Height = 18
    Caption = 'Manuten'#231#227'o do Cadastro de Us'#250'arios.'
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
    AlignWithMargins = True
    Left = 3
    Top = 49
    Width = 1186
    Height = 666
    Margins.Bottom = 15
    Align = alClient
    BevelOuter = bvLowered
    Enabled = False
    TabOrder = 0
    object cMatricula: TDBEdit
      Left = 137
      Top = 5
      Width = 149
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Matricula'
      DataSource = Dados.dsUsuarios
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = cMatriculaChange
    end
    object cNome: TDBEdit
      Left = 137
      Top = 28
      Width = 350
      Height = 21
      CharCase = ecUpperCase
      DataField = 'Nome'
      DataSource = Dados.dsUsuarios
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 137
      Top = 51
      Width = 350
      Height = 21
      DataField = 'Setor'
      DataSource = Dados.dsUsuarios
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object StaticText11: TStaticText
      Left = 5
      Top = 5
      Width = 130
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Matr'#237'cula'
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
    object StaticText1: TStaticText
      Left = 5
      Top = 28
      Width = 130
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Nome'
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
    object StaticText2: TStaticText
      Left = 5
      Top = 51
      Width = 130
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Setor'
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
    object StaticText3: TStaticText
      Left = 5
      Top = 74
      Width = 130
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Fun'#231#227'o'
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
    object DBEdit4: TDBEdit
      Left = 137
      Top = 74
      Width = 350
      Height = 21
      DataField = 'Funcao'
      DataSource = Dados.dsUsuarios
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
    end
    object StaticText4: TStaticText
      Left = 5
      Top = 97
      Width = 130
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Senha'
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
    object DBEdit5: TDBEdit
      Left = 137
      Top = 97
      Width = 350
      Height = 21
      DataField = 'Chave'
      DataSource = Dados.dsUsuarios
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      PasswordChar = #8226
      TabOrder = 9
    end
    object DBEdit1: TDBEdit
      Left = 137
      Top = 166
      Width = 350
      Height = 21
      DataField = 'Sistema_ExternoUsuario'
      DataSource = Dados.dsUsuarios
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
    end
    object DBEdit2: TDBEdit
      Left = 137
      Top = 189
      Width = 350
      Height = 21
      DataField = 'Sistema_ExternoSenha'
      DataSource = Dados.dsUsuarios
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      PasswordChar = #8226
      TabOrder = 11
    end
    object StaticText6: TStaticText
      Left = 5
      Top = 166
      Width = 130
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Usu'#225'rio (Sistema Externo)'
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
    object StaticText8: TStaticText
      Left = 5
      Top = 189
      Width = 130
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Senha (Sistema Externo)'
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
    object StaticText9: TStaticText
      Left = 5
      Top = 143
      Width = 130
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Sistema Externo'
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
    object DBComboBox1: TDBComboBox
      Left = 137
      Top = 143
      Width = 216
      Height = 21
      DataField = 'Sistema_Externo'
      DataSource = Dados.dsUsuarios
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Items.Strings = (
        'INFOCONSULT'
        'TECWIN'
        'ECONET')
      ParentFont = False
      TabOrder = 15
    end
    object StaticText13: TStaticText
      Left = 5
      Top = 120
      Width = 130
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'E-Mail'
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
    object DBEdit8: TDBEdit
      Left = 137
      Top = 120
      Width = 350
      Height = 21
      DataField = 'Email'
      DataSource = Dados.dsUsuarios
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
    end
    object StaticText5: TStaticText
      Left = 5
      Top = 212
      Width = 130
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'C'#243'digo de Representante'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 18
      Transparent = False
      StyleElements = []
    end
    object cCodigoRep: TRxDBLookupCombo
      Left = 137
      Top = 212
      Width = 350
      Height = 21
      DropDownCount = 8
      DisplayAllFields = True
      DataField = 'Codigo_Representante'
      DataSource = Dados.dsUsuarios
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo;Comissao;Nome'
      LookupSource = Dados.dsFornecedores
      ParentFont = False
      TabOrder = 19
    end
    object GroupBox4: TGroupBox
      Left = 5
      Top = 395
      Width = 746
      Height = 271
      Caption = 'Empresas Permitidas'
      TabOrder = 20
      object Grade: TDBGrid
        AlignWithMargins = True
        Left = 2
        Top = 15
        Width = 742
        Height = 108
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Align = alTop
        BorderStyle = bsNone
        DataSource = Dados.dsEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
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
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Razao_Social'
            Title.Alignment = taCenter
            Title.Caption = 'Raz'#227'o Social'
            Width = 451
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CNPJ'
            Title.Alignment = taCenter
            Width = 120
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Estado'
            Title.Caption = 'UF'
            Width = 50
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'Numero_Filial'
            Title.Alignment = taCenter
            Title.Caption = 'Filial'
            Width = 50
            Visible = True
          end>
      end
      object GradeUsuarios: TDBGrid
        AlignWithMargins = True
        Left = 2
        Top = 156
        Width = 742
        Height = 110
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Align = alBottom
        BorderStyle = bsNone
        DataSource = Dados.dsUsuariosEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
            FieldName = 'Empresa'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Razao_Social'
            Title.Alignment = taCenter
            Title.Caption = 'Raz'#227'o Social'
            Width = 449
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CNPJ'
            Title.Alignment = taCenter
            Width = 120
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Estado'
            Title.Alignment = taCenter
            Title.Caption = 'UF'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Filial'
            Title.Alignment = taCenter
            Width = 50
            Visible = True
          end>
      end
      object bRemover: TButton
        Left = 286
        Top = 127
        Width = 92
        Height = 28
        Caption = '&Remover'
        TabOrder = 2
        OnClick = bRemoverClick
      end
      object bAdicionarTodos: TButton
        Left = 381
        Top = 127
        Width = 92
        Height = 28
        Caption = 'Adicionar &Todas'
        TabOrder = 3
        OnClick = bAdicionarTodosClick
      end
      object bRemoverTodos: TButton
        Left = 476
        Top = 127
        Width = 92
        Height = 28
        Caption = 'Re&mover Todas'
        TabOrder = 4
        OnClick = bRemoverTodosClick
      end
      object bAdd: TButton
        Left = 190
        Top = 127
        Width = 92
        Height = 28
        Caption = '&Adicionar'
        TabOrder = 5
        OnClick = bAddClick
      end
    end
    object GroupBox1: TGroupBox
      Left = 759
      Top = 1
      Width = 426
      Height = 664
      Align = alRight
      Caption = 'Permiss'#245'es'
      TabOrder = 21
      object OpMenu: TTreeView
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 416
        Height = 607
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HotTrack = True
        Images = ImageList1
        Indent = 35
        ParentFont = False
        ReadOnly = True
        ShowRoot = False
        TabOrder = 0
        ToolTips = False
        OnClick = OpMenuClick
      end
      object bSelTodos: TButton
        AlignWithMargins = True
        Left = 5
        Top = 630
        Width = 105
        Height = 28
        Hint = 'Procurar no banco de dados pelo registro informado.'
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = 'Selecionar Todos'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = bSelTodosClick
      end
      object bSelNenhum: TButton
        AlignWithMargins = True
        Left = 112
        Top = 629
        Width = 107
        Height = 28
        Hint = 'Procurar no banco de dados pelo registro informado.'
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Caption = 'Selecionar Nehum'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnClick = bSelNenhumClick
      end
    end
    object StaticText7: TStaticText
      Left = 5
      Top = 235
      Width = 130
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Nivel de Lan'#231'amentos'
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
    object cNivel: TDBLookupComboBox
      Left = 137
      Top = 235
      Width = 350
      Height = 21
      DataField = 'Nivel'
      DataSource = Dados.dsUsuarios
      DropDownRows = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Nivel'
      ListField = 'Descricao; Nivel'
      ListSource = Dados.dsNivelClassificacao
      ParentFont = False
      TabOrder = 23
    end
    object StaticText10: TStaticText
      Left = 5
      Top = 258
      Width = 130
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Lucro % (Minimo)'
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
    object DBEdit6: TDBEdit
      Left = 133
      Top = 258
      Width = 93
      Height = 21
      DataField = 'Lucro_Min'
      DataSource = Dados.dsUsuarios
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 25
    end
    object StaticText12: TStaticText
      Left = 232
      Top = 258
      Width = 113
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Lucro % (Max'#237'mo)'
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
    object DBEdit7: TDBEdit
      Left = 348
      Top = 258
      Width = 93
      Height = 21
      DataField = 'Lucro_Max'
      DataSource = Dados.dsUsuarios
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 27
    end
    object GroupBox3: TGroupBox
      Left = 501
      Top = 187
      Width = 250
      Height = 212
      Caption = 'Checagens'
      TabOrder = 28
      object DBCheckBox2: TDBCheckBox
        Left = 11
        Top = 13
        Width = 79
        Height = 17
        Caption = 'Demurrage'
        DataField = 'Checagem_Demurrage'
        DataSource = Dados.dsUsuarios
        TabOrder = 0
      end
      object DBCheckBox3: TDBCheckBox
        Left = 11
        Top = 29
        Width = 101
        Height = 17
        Caption = 'Contrato clientes'
        DataField = 'Checagem_ContratoClientes'
        DataSource = Dados.dsUsuarios
        TabOrder = 1
      end
      object DBCheckBox4: TDBCheckBox
        Left = 11
        Top = 45
        Width = 170
        Height = 17
        Caption = 'Vencimento Radar (SISCOMEX)'
        DataField = 'Checagem_Radar'
        DataSource = Dados.dsUsuarios
        TabOrder = 2
      end
      object DBCheckBox5: TDBCheckBox
        Left = 11
        Top = 61
        Width = 138
        Height = 17
        Caption = 'Vencimento vincula'#231#245'es'
        DataField = 'Checagem_Viculacoes'
        DataSource = Dados.dsUsuarios
        TabOrder = 3
      end
      object DBCheckBox6: TDBCheckBox
        Left = 11
        Top = 77
        Width = 155
        Height = 17
        Caption = 'Prazo Retorno de NF (ICMS)'
        DataField = 'Checagem_PrazoRetorno'
        DataSource = Dados.dsUsuarios
        TabOrder = 4
      end
      object DBCheckBox7: TDBCheckBox
        Left = 11
        Top = 141
        Width = 194
        Height = 17
        Caption = 'Processos s/containers cadastrados'
        DataField = 'Checagem_ProcessoContainer'
        DataSource = Dados.dsUsuarios
        TabOrder = 5
      end
      object DBCheckBox8: TDBCheckBox
        Left = 11
        Top = 93
        Width = 138
        Height = 17
        Caption = 'Prazo entrega arquivos'
        DataField = 'Checagem_PrazoArquivos'
        DataSource = Dados.dsUsuarios
        TabOrder = 6
      end
      object DBCheckBox9: TDBCheckBox
        Left = 11
        Top = 109
        Width = 103
        Height = 17
        Caption = 'Estoque min'#237'mo'
        DataField = 'Checagem_EstoqueMinimo'
        DataSource = Dados.dsUsuarios
        TabOrder = 7
      end
      object DBCheckBox10: TDBCheckBox
        Left = 11
        Top = 157
        Width = 190
        Height = 17
        Caption = 'Clientes com pagamentos em atraso'
        DataField = 'Checagem_ClientesAtraso'
        DataSource = Dados.dsUsuarios
        TabOrder = 8
      end
      object DBCheckBox11: TDBCheckBox
        Left = 11
        Top = 125
        Width = 205
        Height = 17
        Caption = 'Clientes sem movimenta'#231#227'o no per'#237'odo'
        DataField = 'Checagem_ClientesMovimento'
        DataSource = Dados.dsUsuarios
        TabOrder = 9
      end
      object DBCheckBox12: TDBCheckBox
        Left = 11
        Top = 173
        Width = 128
        Height = 17
        Caption = 'Exonera'#231#227'o do ICMS'
        DataField = 'Checagem_Exoneracao'
        DataSource = Dados.dsUsuarios
        TabOrder = 10
      end
      object DBCheckBox13: TDBCheckBox
        Left = 11
        Top = 189
        Width = 187
        Height = 17
        Caption = 'Vencimento de emiss'#227'o NF DI/DA'
        DataField = 'Checagem_DIDA'
        DataSource = Dados.dsUsuarios
        TabOrder = 11
      end
    end
    object GroupBox2: TGroupBox
      Left = 501
      Top = 4
      Width = 250
      Height = 180
      Caption = 'Par'#226'metros Diversos'
      TabOrder = 29
      object cAtiva: TDBCheckBox
        Left = 11
        Top = 14
        Width = 46
        Height = 17
        Caption = 'Ativo'
        DataField = 'Ativo'
        DataSource = Dados.dsUsuarios
        TabOrder = 0
      end
      object DBCheckBox62: TDBCheckBox
        Left = 11
        Top = 78
        Width = 172
        Height = 17
        Caption = 'Informar senha no primeiro login'
        DataField = 'Chave_Cadastro'
        DataSource = Dados.dsUsuarios
        TabOrder = 1
      end
      object DBCheckBox162: TDBCheckBox
        Left = 11
        Top = 94
        Width = 230
        Height = 17
        Caption = 'Checar vencimentos na entrada do sistema.'
        DataField = 'Checagem'
        DataSource = Dados.dsUsuarios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBCheckBox194: TDBCheckBox
        Left = 11
        Top = 110
        Width = 156
        Height = 17
        Caption = 'Executar backup automatico'
        DataField = 'Backup_Automatico'
        DataSource = Dados.dsUsuarios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBCheckBox249: TDBCheckBox
        Left = 11
        Top = 30
        Width = 70
        Height = 17
        Caption = 'Comprador'
        DataField = 'Comprador'
        DataSource = Dados.dsUsuarios
        TabOrder = 4
      end
      object DBCheckBox250: TDBCheckBox
        Left = 11
        Top = 46
        Width = 60
        Height = 17
        Caption = 'Gerente'
        DataField = 'Gerente'
        DataSource = Dados.dsUsuarios
        TabOrder = 5
      end
      object DBCheckBox251: TDBCheckBox
        Left = 11
        Top = 62
        Width = 54
        Height = 17
        Caption = 'Diretor'
        DataField = 'Diretor'
        DataSource = Dados.dsUsuarios
        TabOrder = 6
      end
      object cCallCenter: TDBCheckBox
        Left = 11
        Top = 126
        Width = 140
        Height = 17
        Caption = 'Atendente'
        DataField = 'Call_Center'
        DataSource = Dados.dsUsuarios
        TabOrder = 7
        OnClick = cCallCenterClick
      end
      object DBCheckBox216: TDBCheckBox
        Left = 11
        Top = 142
        Width = 240
        Height = 17
        Caption = 'Visualizar os pedidos de todos os atendentes.'
        DataField = 'Call_CenterTodos'
        DataSource = Dados.dsUsuarios
        TabOrder = 8
        OnClick = cCallCenterClick
      end
      object DBCheckBox192: TDBCheckBox
        Left = 11
        Top = 158
        Width = 105
        Height = 17
        Caption = 'Baixa Autom'#225'tica'
        DataField = 'Baixa_Automatica'
        DataSource = Dados.dsUsuarios
        TabOrder = 9
      end
    end
    object GroupBox5: TGroupBox
      Left = 5
      Top = 303
      Width = 482
      Height = 76
      Caption = 'Abas vis'#237'veis no gerenciador de pedidos de representantes'
      TabOrder = 30
      object cVerLib: TDBCheckBox
        Left = 9
        Top = 19
        Width = 150
        Height = 17
        Caption = 'Liberados p/Faturamento'
        DataField = 'PedidoRep_VerLib'
        DataSource = Dados.dsUsuarios
        TabOrder = 0
      end
      object cVerConf: TDBCheckBox
        Left = 9
        Top = 35
        Width = 150
        Height = 17
        Caption = 'Aguardando Confer'#234'ncia'
        DataField = 'PedidoRep_VerCof'
        DataSource = Dados.dsUsuarios
        TabOrder = 1
      end
      object cVerFat: TDBCheckBox
        Left = 162
        Top = 35
        Width = 150
        Height = 17
        Caption = 'Faturados'
        DataField = 'PedidoRep_VerFat'
        DataSource = Dados.dsUsuarios
        TabOrder = 2
      end
      object cVerdesp: TDBCheckBox
        Left = 162
        Top = 51
        Width = 150
        Height = 17
        Caption = 'Despachados'
        DataField = 'PedidoRep_VerDesp'
        DataSource = Dados.dsUsuarios
        TabOrder = 3
      end
      object DBCheckBox252: TDBCheckBox
        Left = 9
        Top = 51
        Width = 150
        Height = 17
        Caption = 'Separados'
        DataField = 'PedidoRep_VerSep'
        DataSource = Dados.dsUsuarios
        TabOrder = 4
      end
      object DBCheckBox253: TDBCheckBox
        Left = 162
        Top = 19
        Width = 150
        Height = 17
        Caption = 'Aguardando Faturamento'
        DataField = 'PedidoRep_VerAgFat'
        DataSource = Dados.dsUsuarios
        TabOrder = 5
      end
      object DBCheckBox1: TDBCheckBox
        Left = 319
        Top = 19
        Width = 142
        Height = 17
        Caption = 'Permitido alterar pedidos'
        DataField = 'PedidoRep_AlterarPed'
        DataSource = Dados.dsUsuarios
        TabOrder = 6
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 730
    Width = 1192
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object bSair: TButton
      AlignWithMargins = True
      Left = 1126
      Top = 2
      Width = 64
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      AlignWithMargins = True
      Left = 2
      Top = 2
      Width = 264
      Height = 28
      Cursor = crHandPoint
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      DataSource = Dados.dsUsuarios
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbEdit, nbPost, nbCancel]
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
      ShowHint = True
      TabOrder = 1
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
    object bPesquisa: TButton
      AlignWithMargins = True
      Left = 268
      Top = 2
      Width = 65
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Pesquisa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bPesquisaClick
    end
    object bPerfil: TButton
      AlignWithMargins = True
      Left = 335
      Top = 2
      Width = 78
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Copiar Perfil'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bPerfilClick
    end
    object bImprimir: TButton
      AlignWithMargins = True
      Left = 415
      Top = 2
      Width = 66
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bImprimirClick
    end
  end
  object tRegistro: TMSQuery
    Connection = Dados.Banco
    Left = 892
    Top = 135
  end
  object rPerfil: TppReport
    AutoStop = False
    Columns = 2
    DataPipeline = pPerfil
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'PERFIL DE USU'#193'RIOS'
    PrinterSetup.PaperName = 'A4 (210 x 297 mm)'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = False
    OutlineSettings.CreatePageNodes = False
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = False
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.PageDisplay = pdContinuousTwoUp
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    Left = 961
    Top = 366
    Version = '19.04'
    mmColumnWidth = 98650
    DataPipelineName = 'pPerfil'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 34396
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 'PERFIL DE ACESSO DE USU'#193'RIOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 90223
        mmTop = 6085
        mmWidth = 45244
        BandType = 0
        LayerName = Foreground
      end
      object iLogo: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'iLogo'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        MaintainAspectRatio = False
        Stretch = True
        Border.mmPadding = 0
        mmHeight = 13758
        mmLeft = 0
        mmTop = 0
        mmWidth = 22490
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'Razao_Social'
        DataPipeline = pEmpresas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        ParentDataPipeline = False
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'pEmpresas'
        mmHeight = 4995
        mmLeft = 28315
        mmTop = 0
        mmWidth = 169349
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'MATR'#205'CULA:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 15080
        mmWidth = 17992
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1319
        mmLeft = 5
        mmTop = 14022
        mmWidth = 196050
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'Matricula'
        DataPipeline = pUsuario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pUsuario'
        mmHeight = 3703
        mmLeft = 19317
        mmTop = 15080
        mmWidth = 36513
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'Nome'
        DataPipeline = pUsuario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pUsuario'
        mmHeight = 3703
        mmLeft = 68255
        mmTop = 15080
        mmWidth = 67215
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'Setor'
        DataPipeline = pUsuario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pUsuario'
        mmHeight = 3703
        mmLeft = 148430
        mmTop = 15080
        mmWidth = 46049
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'NOME:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 57679
        mmTop = 15080
        mmWidth = 8996
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'SETOR:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 137319
        mmTop = 15080
        mmWidth = 10054
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'FUN'#199#195'O:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 19313
        mmWidth = 18000
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'Funcao'
        DataPipeline = pUsuario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pUsuario'
        mmHeight = 3703
        mmLeft = 19315
        mmTop = 19312
        mmWidth = 116152
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'PERFIL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 23545
        mmWidth = 18000
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'E-MAIL:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 27779
        mmWidth = 18000
        BandType = 0
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'Email'
        DataPipeline = pUsuario
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pUsuario'
        mmHeight = 3703
        mmLeft = 19315
        mmTop = 27781
        mmWidth = 116152
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 5
        mmTop = 32279
        mmWidth = 196050
        BandType = 0
        LayerName = Foreground
      end
      object lPerfil: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'lPerfil'
        AutoSize = False
        Border.mmPadding = 0
        Caption = 'lPerfil'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3704
        mmLeft = 19315
        mmTop = 23548
        mmWidth = 116152
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppColumnHeaderBand1: TppColumnHeaderBand
      Visible = False
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      BeforePrint = ppDetailBand1BeforePrint
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppImage1: TppImage
        DesignLayer = ppDesignLayer1
        UserName = 'Image1'
        AlignHorizontal = ahCenter
        AlignVertical = avCenter
        AutoSize = True
        MaintainAspectRatio = False
        Stretch = True
        Transparent = True
        Border.mmPadding = 0
        Picture.Data = {
          07544269746D617036040000424D360400000000000036000000280000001000
          0000100000000100200000000000000400000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF0000
          00FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF008000FF008000FF0080
          00FF008000FF008000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FF008000FF008000FF008000FF008000FF0080
          00FF008000FF008000FF008000FF008000FF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000FF008000FF008000FF008000FF008000FF008000FF0080
          00FF008000FF008000FF008000FF008000FF008000FF000000FFFFFFFFFFFFFF
          FFFFFFFFFFFF000000FF008000FF008000FF008000FF008000FF008000FF0080
          00FF008000FF008000FF008000FF008000FF008000FF000000FFFFFFFFFFFFFF
          FFFF000000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
          00FF008000FF008000FF008000FF008000FF008000FF008000FF000000FFFFFF
          FFFF000000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
          00FF008000FF008000FF008000FF008000FF008000FF008000FF000000FFFFFF
          FFFF000000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
          00FF008000FF008000FF008000FF008000FF008000FF008000FF000000FFFFFF
          FFFF000000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
          00FF008000FF008000FF008000FF008000FF008000FF008000FF000000FFFFFF
          FFFF000000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
          00FF008000FF008000FF008000FF008000FF008000FF008000FF000000FFFFFF
          FFFFFFFFFFFF000000FF008000FF008000FF008000FF008000FF008000FF0080
          00FF008000FF008000FF008000FF008000FF008000FF000000FFFFFFFFFFFFFF
          FFFFFFFFFFFF000000FF008000FF008000FF008000FF008000FF008000FF0080
          00FF008000FF008000FF008000FF008000FF008000FF000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FF008000FF008000FF008000FF008000FF0080
          00FF008000FF008000FF008000FF008000FF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF008000FF008000FF0080
          00FF008000FF008000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FF0000
          00FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF}
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 4233
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'Nome'
        DataPipeline = pPerfil
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Calibri'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        VerticalAlignment = avCenter
        DataPipelineName = 'pPerfil'
        mmHeight = 4407
        mmLeft = 5468
        mmTop = 0
        mmWidth = 92957
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppLabel63: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label101'
        Border.mmPadding = 0
        Caption = 'ERP Importa (Cybersoft Sistemas Ltda.)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 2910
        mmLeft = 0
        mmTop = 529
        mmWidth = 45773
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable2: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable2'
        Border.mmPadding = 0
        VarType = vtDocumentName
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 74877
        mmTop = 529
        mmWidth = 55033
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable3: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable3'
        Border.mmPadding = 0
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2646
        mmLeft = 156369
        mmTop = 529
        mmWidth = 24077
        BandType = 8
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 48154
        mmTop = 265
        mmWidth = 5821
        BandType = 8
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Pen.Width = 0
        mmHeight = 1058
        mmLeft = 5
        mmTop = 0
        mmWidth = 196050
        BandType = 8
        LayerName = Foreground
      end
      object ppSystemVariable1: TppSystemVariable
        DesignLayer = ppDesignLayer1
        UserName = 'SystemVariable1'
        Border.mmPadding = 0
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 179123
        mmTop = 529
        mmWidth = 18256
        BandType = 8
        LayerName = Foreground
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line5'
        Border.mmPadding = 0
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 179651
        mmTop = 265
        mmWidth = 1852
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object pPerfil: TppDBPipeline
    DataSource = dstPerfil
    CloseDataSource = True
    UserName = 'pPerfil'
    Left = 959
    Top = 206
  end
  object dstPerfil: TDataSource
    DataSet = tPerfil
    Left = 892
    Top = 259
  end
  object tPerfil: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'select * from PerfilMenu order by Pai')
    Left = 892
    Top = 206
  end
  object pEmpresas: TppDBPipeline
    DataSource = Dados.dsEmpresas
    UserName = 'pEmpresas'
    Left = 959
    Top = 259
  end
  object pUsuario: TppDBPipeline
    DataSource = Dados.dsUsuarios
    UserName = 'pUsuario'
    Left = 959
    Top = 310
  end
  object ImageList1: TImageList
    DrawingStyle = dsTransparent
    Left = 960
    Top = 133
    Bitmap = {
      494C010102002000040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF000000FF008000FF008000FF008000FF008000FF008000FF000000FF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000080000000800000008000000080000000800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF000000FF0080
      00FF008000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF000000FF008000FF0080
      00FF008000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
      00FF008000FF000000FFFFFFFFFFFFFFFFFF0000000000000000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF000000FF008000FF0080
      00FF008000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
      00FF008000FF000000FFFFFFFFFFFFFFFFFF0000000000000000008000000080
      00000080000000800000C0C0C000FFFFFF000080000000800000008000000080
      0000008000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF008000FF008000FF0080
      00FF008000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
      00FF008000FF008000FF000000FFFFFFFFFF0000000000800000008000000080
      000000800000C0C0C000FFFFFF00FFFFFF00FFFFFF0000800000008000000080
      0000008000000080000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF008000FF008000FF0080
      00FF008000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
      00FF008000FF008000FF000000FFFFFFFFFF0000000000800000008000000080
      0000C0C0C000FFFFFF00C0C0C000FFFFFF00FFFFFF0000800000008000000080
      0000008000000080000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF008000FF008000FF0080
      00FF008000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
      00FF008000FF008000FF000000FFFFFFFFFF0000000000800000008000000080
      000000800000008000000080000000800000FFFFFF00FFFFFF00008000000080
      0000008000000080000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF008000FF008000FF0080
      00FF008000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
      00FF008000FF008000FF000000FFFFFFFFFF0000000000800000008000000080
      000000800000008000000080000000800000FFFFFF00FFFFFF00008000000080
      0000008000000080000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000FF008000FF008000FF0080
      00FF008000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
      00FF008000FF008000FF000000FFFFFFFFFF0000000000800000008000000080
      00000080000000800000008000000080000000800000FFFFFF00C0C0C0000080
      0000008000000080000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF000000FF008000FF0080
      00FF008000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
      00FF008000FF000000FFFFFFFFFFFFFFFFFF0000000000000000008000000080
      00000080000000800000008000000080000000800000C0C0C000FFFFFF000080
      0000008000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF000000FF008000FF0080
      00FF008000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
      00FF008000FF000000FFFFFFFFFFFFFFFFFF0000000000000000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF000000FF0080
      00FF008000FF008000FF008000FF008000FF008000FF008000FF008000FF0080
      00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF000000FF008000FF008000FF008000FF008000FF008000FF000000FF0000
      00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000080000000800000008000000080000000800000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000FF000000FF000000FF000000FF000000FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF000000FFFF000000000000F83F00000000
      0000E00F000000000000C0070000000000008003000000000000800300000000
      0000000100000000000000010000000000000001000000000000000100000000
      0000000100000000000080030000000000008003000000000000C00700000000
      0000E00F000000000000F83F0000000000000000000000000000000000000000
      000000000000}
  end
end
