object Cadastro_ICMS: TCadastro_ICMS
  Left = 392
  Top = 82
  HelpContext = 401
  Anchors = [akTop]
  BorderStyle = bsDialog
  Caption = 'Cadastro_ICMS'
  ClientHeight = 709
  ClientWidth = 768
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
    Width = 768
    Height = 40
    Align = alTop
    Stretch = True
    ExplicitWidth = 771
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 0
    Width = 39
    Height = 21
    Caption = 'ICMS'
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
    Width = 356
    Height = 18
    Caption = 'Manuten'#231#227'o da tabela de aliquotas de ICMS dos estados.'
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
    Top = 679
    Width = 768
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      768
      30)
    object bSair: TButton
      Left = 709
      Top = 1
      Width = 59
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
      Width = 342
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsICMS
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
    object bPesquisa: TButton
      Left = 649
      Top = 1
      Width = 59
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Anchors = [akTop, akRight]
      Caption = '&Pesquisa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bPesquisaClick
    end
  end
  object RxDBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 529
    Width = 762
    Height = 147
    Align = alBottom
    DataSource = Dados.dsICMS
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Estado'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 46
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Inscricao'
        Title.Alignment = taCenter
        Title.Caption = 'Inscri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 191
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Imp_Contribuinte'
        Title.Alignment = taCenter
        Title.Caption = 'A'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Imp_NContribuinte'
        Title.Alignment = taCenter
        Title.Caption = 'B'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 125
        Visible = True
      end
      item
        Color = 12713983
        Expanded = False
        FieldName = 'Nac_Contribuinte'
        Title.Alignment = taCenter
        Title.Caption = 'C'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 125
        Visible = True
      end
      item
        Color = 12713983
        Expanded = False
        FieldName = 'Nac_NContribuinte'
        Title.Alignment = taCenter
        Title.Caption = 'D'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 125
        Visible = True
      end>
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 43
    Width = 762
    Height = 483
    ActivePage = TabSheet1
    Align = alTop
    TabHeight = 25
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Dados Gerais'
      Enabled = False
      object cInscricao: TDBEdit
        Left = 184
        Top = 52
        Width = 206
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Inscricao'
        DataSource = Dados.dsICMS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object StaticText10: TStaticText
        Left = 6
        Top = 6
        Width = 146
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Estado'
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
        Left = 6
        Top = 52
        Width = 176
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Inscri'#231#227'o Substitui'#231#227'o Tribut'#225'ria'
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
      object GroupBox1: TGroupBox
        Left = 6
        Top = 264
        Width = 241
        Height = 86
        Caption = '(ICMS) Produtos Importados'
        TabOrder = 3
        object StaticText5: TStaticText
          Left = 7
          Top = 34
          Width = 103
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'A - Contribuinte'
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
        object DBEdit1: TDBEdit
          Left = 174
          Top = 34
          Width = 60
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Imp_Contribuinte'
          DataSource = Dados.dsICMS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 174
          Top = 57
          Width = 60
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Imp_NContribuinte'
          DataSource = Dados.dsICMS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object StaticText6: TStaticText
          Left = 7
          Top = 57
          Width = 103
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'B - N'#227'o Contribuinte'
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
        object DBEdit10: TDBEdit
          Left = 112
          Top = 34
          Width = 60
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Imp_ContribuinteCheia'
          DataSource = Dados.dsICMS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit11: TDBEdit
          Left = 112
          Top = 57
          Width = 60
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Imp_NContribuinteCheia'
          DataSource = Dados.dsICMS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object StaticText12: TStaticText
          Left = 112
          Top = 15
          Width = 60
          Height = 18
          Alignment = taCenter
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Integral'
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
        object StaticText13: TStaticText
          Left = 174
          Top = 15
          Width = 60
          Height = 18
          Alignment = taCenter
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Diferenc.'
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
      end
      object GroupBox2: TGroupBox
        Left = 6
        Top = 356
        Width = 241
        Height = 86
        Caption = '(ICMS) Produtos Nacionais'
        TabOrder = 4
        object DBEdit4: TDBEdit
          Left = 112
          Top = 34
          Width = 60
          Height = 21
          CharCase = ecUpperCase
          Color = 12713983
          DataField = 'Nac_ContribuinteCheia'
          DataSource = Dados.dsICMS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DBEdit6: TDBEdit
          Left = 112
          Top = 57
          Width = 60
          Height = 21
          CharCase = ecUpperCase
          Color = 12713983
          DataField = 'Nac_NContribuinteCheia'
          DataSource = Dados.dsICMS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object StaticText4: TStaticText
          Left = 7
          Top = 57
          Width = 103
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'D - N'#227'o Contribuinte'
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
        object StaticText1: TStaticText
          Left = 7
          Top = 34
          Width = 103
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'C - Contribuinte'
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
        object StaticText14: TStaticText
          Left = 112
          Top = 15
          Width = 60
          Height = 18
          Alignment = taCenter
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Integral'
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
        object StaticText15: TStaticText
          Left = 174
          Top = 15
          Width = 60
          Height = 18
          Alignment = taCenter
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Diferenc.'
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
        object DBEdit12: TDBEdit
          Left = 174
          Top = 34
          Width = 60
          Height = 21
          CharCase = ecUpperCase
          Color = 12713983
          DataField = 'Nac_Contribuinte'
          DataSource = Dados.dsICMS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit13: TDBEdit
          Left = 174
          Top = 57
          Width = 60
          Height = 21
          CharCase = ecUpperCase
          Color = 12713983
          DataField = 'Nac_NContribuinte'
          DataSource = Dados.dsICMS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
      end
      object cEstado: TDBLookupComboBox
        Left = 184
        Top = 6
        Width = 207
        Height = 21
        DataField = 'UF'
        DataSource = Dados.dsICMS
        DropDownRows = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Nome'
        ListSource = Dados.dsEstados
        ParentFont = False
        TabOrder = 5
      end
      object StaticText9: TStaticText
        Left = 6
        Top = 121
        Width = 176
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Al'#237'quota de Redu'#231#227'o ICMS (NCM)'
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
      object DBEdit8: TDBEdit
        Left = 184
        Top = 121
        Width = 100
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Reducao_ICMS'
        DataSource = Dados.dsICMS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object StaticText2: TStaticText
        Left = 6
        Top = 167
        Width = 176
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Al'#237'quota do Simples Nacional'
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
      object DBEdit3: TDBEdit
        Left = 184
        Top = 167
        Width = 100
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Simples_Nacional'
        DataSource = Dados.dsICMS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object DBEdit5: TDBEdit
        Left = 184
        Top = 75
        Width = 100
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ICMSSub_ReceitaDentro'
        DataSource = Dados.dsICMS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object StaticText3: TStaticText
        Left = 6
        Top = 75
        Width = 176
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'd.Rec.ICMS Sub.(Dentro Estado)'
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
      object DBEdit7: TDBEdit
        Left = 184
        Top = 98
        Width = 100
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ICMSSub_ReceitaFora'
        DataSource = Dados.dsICMS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
      object StaticText7: TStaticText
        Left = 6
        Top = 98
        Width = 176
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'd.Rec.ICMS Sub.(Fora Estado)'
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
      object StaticText8: TStaticText
        Left = 6
        Top = 144
        Width = 176
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Red.Al'#237'quota do MVA Simples Nac.'
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
      object DBEdit9: TDBEdit
        Left = 184
        Top = 144
        Width = 100
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Reducao_MVASimplesNac'
        DataSource = Dados.dsICMS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
      end
      object StaticText16: TStaticText
        Left = 6
        Top = 29
        Width = 176
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Mascara da Incri'#231#227'o Estadual'
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
      object cMascara: TDBEdit
        Left = 184
        Top = 29
        Width = 206
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Mascara_Inscricao'
        DataSource = Dados.dsEstados
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
      end
      object StaticText17: TStaticText
        Left = 6
        Top = 190
        Width = 176
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Al'#237'quota do ICMS Tabela CAMEX'
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
      object DBEdit14: TDBEdit
        Left = 184
        Top = 190
        Width = 100
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ICMS_CAMEX'
        DataSource = Dados.dsICMS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 19
      end
      object DBCheckBox1: TDBCheckBox
        Left = 423
        Top = 8
        Width = 90
        Height = 17
        Caption = 'Calcula MVA'
        DataField = 'MVA'
        DataSource = Dados.dsICMS
        TabOrder = 20
      end
      object cUF: TDBEdit
        Left = 154
        Top = 6
        Width = 28
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Codigo'
        DataSource = Dados.dsEstados
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 21
        OnChange = cUFChange
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 286
        Top = 75
        Width = 450
        Height = 21
        DataField = 'ICMSSub_ReceitaDentro'
        DataSource = Dados.dsICMS
        DropDownRows = 15
        DropDownWidth = 600
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = Dados.dsCodigosReceitaSPED
        ParentFont = False
        TabOrder = 22
      end
      object DBLookupComboBox3: TDBLookupComboBox
        Left = 286
        Top = 98
        Width = 450
        Height = 21
        DataField = 'ICMSSub_ReceitaFora'
        DataSource = Dados.dsICMS
        DropDownRows = 15
        DropDownWidth = 600
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = Dados.dsCodigosReceitaSPED
        ParentFont = False
        TabOrder = 23
      end
      object StaticText29: TStaticText
        Left = 6
        Top = 213
        Width = 176
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Al'#237'quota do ICMS (CT-e)'
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
      object DBEdit18: TDBEdit
        Left = 184
        Top = 213
        Width = 100
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ICMS_CTe'
        DataSource = Dados.dsICMS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 25
      end
      object StaticText30: TStaticText
        Left = 6
        Top = 236
        Width = 176
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Percentual Cr'#233'dito Presumido ICMS'
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
      object DBEdit24: TDBEdit
        Left = 184
        Top = 236
        Width = 100
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ICMS_CreditoPresumido'
        DataSource = Dados.dsICMS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 27
      end
      object GroupBox3: TGroupBox
        Left = 259
        Top = 264
        Width = 182
        Height = 86
        Caption = '(ICMS) Atacadistas'
        TabOrder = 28
        object DBEdit25: TDBEdit
          Left = 112
          Top = 24
          Width = 60
          Height = 21
          CharCase = ecUpperCase
          Color = 12713983
          DataField = 'Nac_Atacadista'
          DataSource = Dados.dsICMS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object StaticText32: TStaticText
          Left = 7
          Top = 24
          Width = 103
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Produto Nacional'
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
        object DBEdit26: TDBEdit
          Left = 112
          Top = 47
          Width = 60
          Height = 21
          CharCase = ecUpperCase
          Color = 12713983
          DataField = 'Imp_Atacadista'
          DataSource = Dados.dsICMS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object StaticText31: TStaticText
          Left = 7
          Top = 47
          Width = 103
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Produto Importado'
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
      end
      object GroupBox4: TGroupBox
        Left = 259
        Top = 356
        Width = 182
        Height = 86
        Caption = '(ICMS) Varejista'
        TabOrder = 29
        object DBEdit27: TDBEdit
          Left = 112
          Top = 24
          Width = 60
          Height = 21
          CharCase = ecUpperCase
          Color = 12713983
          DataField = 'Nac_Varejista'
          DataSource = Dados.dsICMS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object StaticText33: TStaticText
          Left = 7
          Top = 24
          Width = 103
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Produto Nacional'
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
        object DBEdit28: TDBEdit
          Left = 112
          Top = 47
          Width = 60
          Height = 21
          CharCase = ecUpperCase
          Color = 12713983
          DataField = 'Imp_Varejista'
          DataSource = Dados.dsICMS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object StaticText34: TStaticText
          Left = 7
          Top = 47
          Width = 103
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Produto Importado'
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
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 580
        Top = 3
        Width = 156
        Height = 64
        Caption = 'Envio NF-e'
        DataField = 'NFE_Envio'
        DataSource = Dados.dsICMS
        Items.Strings = (
          'Ass'#237'ncrono'
          'S'#237'ncrono')
        TabOrder = 30
        Values.Strings = (
          '0'
          '1')
      end
      object GroupBox5: TGroupBox
        Left = 455
        Top = 264
        Width = 182
        Height = 86
        Caption = 'IBS'
        TabOrder = 31
        object DBEdit29: TDBEdit
          Left = 112
          Top = 24
          Width = 60
          Height = 21
          CharCase = ecUpperCase
          Color = 12713983
          DataField = 'Aliquota_IBS'
          DataSource = Dados.dsICMS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object StaticText35: TStaticText
          Left = 7
          Top = 24
          Width = 103
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Al'#237'quota IBS'
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
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Configura'#231#245'es da GNRE'
      ImageIndex = 1
      object StaticText18: TStaticText
        Left = 240
        Top = 47
        Width = 124
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Al'#237'quota (FCP)'
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
      object DBEdit15: TDBEdit
        Left = 366
        Top = 47
        Width = 66
        Height = 21
        CharCase = ecUpperCase
        DataField = 'FCP'
        DataSource = Dados.dsICMS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
      end
      object StaticText19: TStaticText
        Left = 2
        Top = 47
        Width = 152
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Al'#237'quota ICMS Interna'
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
      object DBEdit16: TDBEdit
        Left = 156
        Top = 47
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ICMS_Interno'
        DataSource = Dados.dsICMS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object StaticText20: TStaticText
        Left = 240
        Top = 93
        Width = 124
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'd.Receita ICMS ST'
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
      object DBEdit17: TDBEdit
        Left = 366
        Top = 93
        Width = 66
        Height = 21
        CharCase = ecUpperCase
        DataField = 'GNRE_ST'
        DataSource = Dados.dsICMS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object StaticText21: TStaticText
        Left = 2
        Top = 70
        Width = 152
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'd.Receita ICMS DIFAL'
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
      object cCodDIFAL: TDBEdit
        Left = 156
        Top = 70
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'GNRE_DIFAL'
        DataSource = Dados.dsICMS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object StaticText22: TStaticText
        Left = 2
        Top = 93
        Width = 152
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'd.Receita ICMS Importa'#231#227'o'
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
      object DBEdit19: TDBEdit
        Left = 156
        Top = 93
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'GNRE_Imp'
        DataSource = Dados.dsICMS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object DBCheckBox2: TDBCheckBox
        Left = 2
        Top = 3
        Width = 168
        Height = 17
        Caption = 'Estado Gera GNRE eletr'#244'nico.'
        DataField = 'GNRE'
        DataSource = Dados.dsICMS
        TabOrder = 1
      end
      object cCampos: TCheckListBox
        Left = 2
        Top = 248
        Width = 736
        Height = 113
        Columns = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 13
        Items.Strings = (
          'c01_UfFavorecida'
          'c02_receita'
          'c03_idContribuinteEmitente'
          'c04_docOrigem'
          'c05_referencia'
          'c06_valorPrincipal'
          'c10_valorTotal'
          'c14_dataVencimento'
          'c15_convenio'
          'c16_razaoSocialEmitente'
          'c17_inscricaoEstadualEmitente'
          'c18_enderecoEmitente'
          'c19_municipioEmitente'
          'c20_ufEnderecoEmitente'
          'c21_cepEmitente'
          'c22_telefoneEmitente'
          'c25_detalhamentoReceita'
          'c26_produto'
          'c27_tipoIdentificacaoEmitente'
          'c28_tipoDocOrigem'
          'c33_dataPagamento'
          'c34_tipoIdentificacaoDestinatario'
          'c35_idContribuinteDestinatario'
          'c36_inscricaoEstadualDestinatario'
          'c37_razaoSocialDestinatario'
          'c38_municipioDestinatario'
          'c39_camposExtras'
          'c42_identificadorGuia')
        ParentFont = False
        Sorted = True
        TabOrder = 12
      end
      object StaticText23: TStaticText
        Left = 2
        Top = 230
        Width = 736
        Height = 18
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Campos obrigat'#243'rios da GNRE'
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
      object bConfig: TButton
        Left = 2
        Top = 363
        Width = 180
        Height = 32
        Caption = 'Buscar Configura'#231#227'o da &Receita'
        TabOrder = 18
        OnClick = bConfigClick
      end
      object StaticText24: TStaticText
        Left = 240
        Top = 70
        Width = 124
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Campo Adicional Tipo'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 19
        Transparent = False
        StyleElements = []
      end
      object DBEdit20: TDBEdit
        Left = 366
        Top = 70
        Width = 66
        Height = 21
        CharCase = ecUpperCase
        DataField = 'GNRE_AdicTipo'
        DataSource = Dados.dsICMS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object StaticText25: TStaticText
        Left = 440
        Top = 70
        Width = 124
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Campo Adicional C'#243'digo'
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
      object DBEdit21: TDBEdit
        Left = 566
        Top = 70
        Width = 66
        Height = 21
        CharCase = ecUpperCase
        DataField = 'GNRE_AdicCod'
        DataSource = Dados.dsICMS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object StaticText26: TStaticText
        Left = 240
        Top = 24
        Width = 124
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#186' do Conv'#234'nio'
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
      object DBEdit22: TDBEdit
        Left = 366
        Top = 24
        Width = 66
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Convenio'
        DataSource = Dados.dsICMS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object StaticText27: TStaticText
        Left = 2
        Top = 24
        Width = 152
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'digo GNRE'
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
      object DBEdit23: TDBEdit
        Left = 156
        Top = 24
        Width = 80
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Codigo_GNRE'
        DataSource = Dados.dsICMS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object GroupBox20: TGroupBox
        Left = 2
        Top = 116
        Width = 735
        Height = 111
        Caption = 'Lan'#231'amento Financeiro (Pagamento GNRE)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        object StaticText84: TStaticText
          Left = 5
          Top = 61
          Width = 123
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tipo de Documento'
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
        object DBLookupComboBox27: TDBLookupComboBox
          Left = 130
          Top = 61
          Width = 600
          Height = 21
          DataField = 'GNRE_TipoDocumento'
          DataSource = Dados.dsICMS
          DropDownRows = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsTiposDocumentos
          NullValueKey = 46
          ParentFont = False
          TabOrder = 2
        end
        object StaticText85: TStaticText
          Left = 5
          Top = 38
          Width = 123
          Height = 21
          Cursor = crHandPoint
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
          TabOrder = 4
          Transparent = False
          StyleElements = []
        end
        object DBLookupComboBox28: TDBLookupComboBox
          Left = 130
          Top = 38
          Width = 600
          Height = 21
          DataField = 'GNRE_CentroCusto'
          DataSource = Dados.dsICMS
          DropDownRows = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo; Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsCentroCusto
          NullValueKey = 46
          ParentFont = False
          TabOrder = 1
        end
        object StaticText86: TStaticText
          Left = 5
          Top = 15
          Width = 123
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Classifica'#231#227'o Financeira'
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
        object DBLookupComboBox29: TDBLookupComboBox
          Left = 130
          Top = 15
          Width = 600
          Height = 21
          DataField = 'GNRE_Classificacao'
          DataSource = Dados.dsICMS
          DropDownRows = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsClassificacaoFinanceira
          NullValueKey = 46
          ParentFont = False
          TabOrder = 0
        end
        object StaticText28: TStaticText
          Left = 5
          Top = 84
          Width = 123
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Org'#227'o Arrecadador'
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
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 130
          Top = 84
          Width = 600
          Height = 21
          DataField = 'GNRE_Orgao'
          DataSource = Dados.dsICMS
          DropDownRows = 20
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Nome'
          ListFieldIndex = 1
          ListSource = Dados.dsOrgaos
          NullValueKey = 46
          ParentFont = False
          TabOrder = 7
        end
      end
    end
  end
  object tICMS: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO ICMS'
      
        '  (UF, Inscricao, Imp_Contribuinte, Imp_NContribuinte, Nac_Contr' +
        'ibuinte, Nac_NContribuinte, Reducao_ICMS, Simples_Nacional, ICMS' +
        'Sub_ReceitaDentro, ICMSSub_ReceitaFora, Reducao_MVASimplesNac)'
      'VALUES'
      
        '  (:UF, :Inscricao, :Imp_Contribuinte, :Imp_NContribuinte, :Nac_' +
        'Contribuinte, :Nac_NContribuinte, :Reducao_ICMS, :Simples_Nacion' +
        'al, :ICMSSub_ReceitaDentro, :ICMSSub_ReceitaFora, :Reducao_MVASi' +
        'mplesNac)')
    SQLDelete.Strings = (
      'DELETE FROM ICMS'
      'WHERE'
      '  UF = :Old_UF')
    SQLUpdate.Strings = (
      'UPDATE ICMS'
      'SET'
      
        '  UF = :UF, Inscricao = :Inscricao, Imp_Contribuinte = :Imp_Cont' +
        'ribuinte, Imp_NContribuinte = :Imp_NContribuinte, Nac_Contribuin' +
        'te = :Nac_Contribuinte, Nac_NContribuinte = :Nac_NContribuinte, ' +
        'Reducao_ICMS = :Reducao_ICMS, Simples_Nacional = :Simples_Nacion' +
        'al, ICMSSub_ReceitaDentro = :ICMSSub_ReceitaDentro, ICMSSub_Rece' +
        'itaFora = :ICMSSub_ReceitaFora, Reducao_MVASimplesNac = :Reducao' +
        '_MVASimplesNac'
      'WHERE'
      '  UF = :Old_UF')
    SQLRefresh.Strings = (
      
        'SELECT ICMS.UF, ICMS.Inscricao, ICMS.Imp_Contribuinte, ICMS.Imp_' +
        'NContribuinte, ICMS.Nac_Contribuinte, ICMS.Nac_NContribuinte, IC' +
        'MS.Reducao_ICMS, ICMS.Simples_Nacional, ICMS.ICMSSub_ReceitaDent' +
        'ro, ICMS.ICMSSub_ReceitaFora, ICMS.Reducao_MVASimplesNac FROM IC' +
        'MS'
      'WHERE ICMS.UF = :UF ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM ICMS ORDER BY UF')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 56
    Top = 551
  end
end
