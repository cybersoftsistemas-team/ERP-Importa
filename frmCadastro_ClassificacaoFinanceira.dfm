object Cadastro_ClassificacaoFinanceira: TCadastro_ClassificacaoFinanceira
  Left = 430
  Top = 73
  HelpContext = 201
  BorderStyle = bsDialog
  Caption = 'Cadastro_ClassificacaoFinanceira'
  ClientHeight = 694
  ClientWidth = 785
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
    Width = 785
    Height = 45
    Align = alTop
    Stretch = True
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 202
    Height = 21
    Caption = 'CLASSIFICA'#199#195'O FINANCEIRA'
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
    Width = 316
    Height = 18
    Caption = 'Manuten'#231#227'o da tabela de Classifica'#231#227'o Financeira.'
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
    Top = 663
    Width = 785
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      Left = 709
      Top = 1
      Width = 75
      Height = 29
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
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
      DataSource = Dados.dsClassificacaoFinanceira
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
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
      TabOrder = 1
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
    object bPesquisa: TButton
      Left = 352
      Top = 1
      Width = 75
      Height = 29
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Align = alLeft
      Caption = '&Pesquisa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bPesquisaClick
    end
    object Button2: TButton
      Left = 427
      Top = 1
      Width = 93
      Height = 29
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Align = alLeft
      Caption = '&Exporta Plano'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object Grade: TDBGrid
    Left = 4
    Top = 415
    Width = 777
    Height = 165
    DataSource = Dados.dsClassificacaoFinanceira
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgTitleClick]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = GradeDrawColumnCell
    OnTitleClick = GradeTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 132
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
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 551
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Nivel'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 34
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Titulo'
        Title.Alignment = taCenter
        Title.Caption = 'T'#237'tulo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = []
        Width = 36
        Visible = True
      end>
  end
  object PageControl1: TPageControl
    Left = 4
    Top = 50
    Width = 777
    Height = 362
    ActivePage = aDados
    TabHeight = 24
    TabOrder = 2
    TabWidth = 130
    object aDados: TTabSheet
      Caption = '&Dados da Classifica'#231#227'o'
      Enabled = False
      object cTipo: TDBRadioGroup
        Left = 3
        Top = 98
        Width = 100
        Height = 114
        Caption = 'Tipo Lan'#231'amento'
        DataField = 'Tipo'
        DataSource = Dados.dsClassificacaoFinanceira
        Items.Strings = (
          'Pagamento'
          'Recebimento')
        TabOrder = 10
        Values.Strings = (
          'P'
          'R')
        OnChange = cTipoChange
      end
      object StaticText1: TStaticText
        Left = 3
        Top = 3
        Width = 70
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
        Left = 75
        Top = 3
        Width = 112
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Codigo'
        DataSource = Dados.dsClassificacaoFinanceira
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnChange = cCodigoChange
      end
      object StaticText5: TStaticText
        Left = 3
        Top = 49
        Width = 70
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
        TabOrder = 9
        Transparent = False
        StyleElements = []
      end
      object cDescricao: TDBEdit
        Left = 75
        Top = 49
        Width = 690
        Height = 21
        DataField = 'Descricao'
        DataSource = Dados.dsClassificacaoFinanceira
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
      end
      object GroupBox3: TGroupBox
        Left = 111
        Top = 98
        Width = 654
        Height = 114
        Caption = 'Caracteristicas da Classifica'#231#227'o Financeira'
        TabOrder = 11
        object DBCheckBox1: TDBCheckBox
          Left = 292
          Top = 16
          Width = 130
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = 'N'#227'o listar nos relat'#243'rios'
          DataField = 'Relatorio'
          DataSource = Dados.dsClassificacaoFinanceira
          ParentBiDiMode = False
          TabOrder = 8
        end
        object cCusto: TDBCheckBox
          Left = 153
          Top = 35
          Width = 116
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = 'Custo Geral (Sa'#237'da)'
          DataField = 'Custo'
          DataSource = Dados.dsClassificacaoFinanceira
          ParentBiDiMode = False
          TabOrder = 5
          OnClick = cCustoClick
        end
        object DBCheckBox3: TDBCheckBox
          Left = 292
          Top = 54
          Width = 87
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = 'Adiantamento'
          DataField = 'Adiantamento'
          DataSource = Dados.dsClassificacaoFinanceira
          ParentBiDiMode = False
          TabOrder = 10
        end
        object DBCheckBox4: TDBCheckBox
          Left = 292
          Top = 73
          Width = 59
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = 'C'#226'mbio'
          DataField = 'Cambio'
          DataSource = Dados.dsClassificacaoFinanceira
          ParentBiDiMode = False
          TabOrder = 11
        end
        object DBCheckBox5: TDBCheckBox
          Left = 7
          Top = 35
          Width = 125
          Height = 17
          Caption = 'Somente Faturamento'
          DataField = 'Somente_Faturamento'
          DataSource = Dados.dsClassificacaoFinanceira
          TabOrder = 1
        end
        object DBCheckBox6: TDBCheckBox
          Left = 7
          Top = 54
          Width = 75
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = 'Devolu'#231#227'o'
          DataField = 'Devolucao'
          DataSource = Dados.dsClassificacaoFinanceira
          ParentBiDiMode = False
          TabOrder = 2
        end
        object DBCheckBox7: TDBCheckBox
          Left = 7
          Top = 16
          Width = 52
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = 'T'#237'tulo'
          DataField = 'Titulo'
          DataSource = Dados.dsClassificacaoFinanceira
          ParentBiDiMode = False
          TabOrder = 0
        end
        object DBCheckBox8: TDBCheckBox
          Left = 292
          Top = 35
          Width = 118
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = 'Baixa Autom'#225'tica'
          DataField = 'Baixa_Automatica'
          DataSource = Dados.dsClassificacaoFinanceira
          ParentBiDiMode = False
          TabOrder = 9
        end
        object DBCheckBox9: TDBCheckBox
          Left = 467
          Top = 16
          Width = 87
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = 'Despesa Fixa'
          DataField = 'Despesa_Fixa'
          DataSource = Dados.dsClassificacaoFinanceira
          ParentBiDiMode = False
          TabOrder = 12
        end
        object DBCheckBox11: TDBCheckBox
          Left = 467
          Top = 35
          Width = 89
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = 'Transfer'#234'ncia'
          DataField = 'Transferencia'
          DataSource = Dados.dsClassificacaoFinanceira
          ParentBiDiMode = False
          TabOrder = 13
        end
        object DBCheckBox12: TDBCheckBox
          Left = 467
          Top = 54
          Width = 92
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = 'NF Refer'#234'ncia'
          DataField = 'Nota_Referencia'
          DataSource = Dados.dsClassificacaoFinanceira
          ParentBiDiMode = False
          TabOrder = 14
        end
        object DBCheckBox13: TDBCheckBox
          Left = 467
          Top = 73
          Width = 128
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = 'Fechamento Processo'
          DataField = 'Fechamento_Processo'
          DataSource = Dados.dsClassificacaoFinanceira
          ParentBiDiMode = False
          TabOrder = 15
        end
        object DBCheckBox14: TDBCheckBox
          Left = 7
          Top = 73
          Width = 122
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = 'Processo Obrigat'#243'rio'
          DataField = 'Processo_Obrigatorio'
          DataSource = Dados.dsClassificacaoFinanceira
          ParentBiDiMode = False
          TabOrder = 3
        end
        object cCustoSeletivo: TDBCheckBox
          Left = 153
          Top = 73
          Width = 97
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = 'Custo (Seletivo)'
          DataField = 'Custo_Seletivo'
          DataSource = Dados.dsClassificacaoFinanceira
          ParentBiDiMode = False
          TabOrder = 7
          OnClick = cCustoSeletivoClick
        end
        object cCustoEntrada: TDBCheckBox
          Left = 153
          Top = 16
          Width = 124
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = 'Custo Geral (Entrada)'
          DataField = 'Custo_Entrada'
          DataSource = Dados.dsClassificacaoFinanceira
          ParentBiDiMode = False
          TabOrder = 4
          OnClick = cCustoClick
        end
        object cCustoOutros: TDBCheckBox
          Left = 153
          Top = 54
          Width = 116
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = 'Custo Geral (Outros)'
          DataField = 'Custo_Outros'
          DataSource = Dados.dsClassificacaoFinanceira
          ParentBiDiMode = False
          TabOrder = 6
        end
        object cBoleto: TDBCheckBox
          Left = 7
          Top = 92
          Width = 122
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = 'Gera Boleto banc'#225'rio'
          DataField = 'Boleto'
          DataSource = Dados.dsClassificacaoFinanceira
          ParentBiDiMode = False
          TabOrder = 16
        end
        object DBCheckBox2: TDBCheckBox
          Left = 153
          Top = 92
          Width = 56
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = 'Tributo'
          DataField = 'Tributo'
          DataSource = Dados.dsClassificacaoFinanceira
          ParentBiDiMode = False
          TabOrder = 17
        end
        object DBCheckBox15: TDBCheckBox
          Left = 292
          Top = 92
          Width = 165
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = 'Despesa de Ag'#234'ncia Mar'#237'tima'
          DataField = 'Despesa_Agmaritima'
          DataSource = Dados.dsClassificacaoFinanceira
          ParentBiDiMode = False
          TabOrder = 18
        end
        object DBCheckBox16: TDBCheckBox
          Left = 467
          Top = 92
          Width = 173
          Height = 17
          BiDiMode = bdLeftToRight
          Caption = 'Gera Juros SPED PIS/COFINS'
          DataField = 'Juros_SPEDPISCOFINS'
          DataSource = Dados.dsClassificacaoFinanceira
          ParentBiDiMode = False
          TabOrder = 19
        end
      end
      object GroupBox4: TGroupBox
        Left = 3
        Top = 214
        Width = 762
        Height = 114
        Caption = 'Apura'#231#227'o PIS/COFINS'
        TabOrder = 13
        object StaticText2: TStaticText
          Left = 6
          Top = 18
          Width = 90
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Al'#237'quota PIS'
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
        object cAliquotaPIS: TDBEdit
          Left = 98
          Top = 18
          Width = 51
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Aliquota_PIS'
          DataSource = Dados.dsClassificacaoFinanceira
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object StaticText6: TStaticText
          Left = 6
          Top = 41
          Width = 90
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Al'#237'quota COFINS'
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
        object cAliquotaCOFINS: TDBEdit
          Left = 98
          Top = 41
          Width = 51
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Aliquota_COFINS'
          DataSource = Dados.dsClassificacaoFinanceira
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object StaticText30: TStaticText
          Left = 152
          Top = 18
          Width = 68
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'CST PIS'
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
        object cCodigoCSTPIS: TDBEdit
          Left = 222
          Top = 18
          Width = 40
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CST_PIS'
          DataSource = Dados.dsClassificacaoFinanceira
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object StaticText32: TStaticText
          Left = 152
          Top = 41
          Width = 68
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'CST COFINS'
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
        object cCodigoCSTCOFINS: TDBEdit
          Left = 222
          Top = 41
          Width = 40
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CST_COFINS'
          DataSource = Dados.dsClassificacaoFinanceira
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object cListaCSTPIS: TDBLookupComboBox
          Left = 264
          Top = 18
          Width = 491
          Height = 21
          DataField = 'CST_PIS'
          DataSource = Dados.dsClassificacaoFinanceira
          DropDownRows = 10
          DropDownWidth = 450
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsCSTPIS
          ParentFont = False
          TabOrder = 2
        end
        object cListaCSTCOFINS: TDBLookupComboBox
          Left = 264
          Top = 41
          Width = 491
          Height = 21
          DataField = 'CST_COFINS'
          DataSource = Dados.dsClassificacaoFinanceira
          DropDownRows = 10
          DropDownWidth = 450
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsCSTPIS
          ParentFont = False
          TabOrder = 5
        end
        object StaticText10: TStaticText
          Left = 6
          Top = 64
          Width = 91
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'C'#243'digo BC Cr'#233'dito'
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
        object DBEdit2: TDBEdit
          Left = 98
          Top = 64
          Width = 51
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BCCredito'
          DataSource = Dados.dsClassificacaoFinanceira
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 152
          Top = 64
          Width = 603
          Height = 21
          DataField = 'BCCredito'
          DataSource = Dados.dsClassificacaoFinanceira
          DropDownRows = 10
          DropDownWidth = 450
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsBCCredito
          ParentFont = False
          TabOrder = 7
        end
        object StaticText12: TStaticText
          Left = 6
          Top = 87
          Width = 91
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Natureza Receita'
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
          Left = 98
          Top = 87
          Width = 51
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Natureza_Receita'
          DataSource = Dados.dsClassificacaoFinanceira
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Pitch = fpFixed
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
        end
      end
      object StaticText7: TStaticText
        Left = 3
        Top = 26
        Width = 70
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Nivel Acesso'
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
        OnClick = StaticText7Click
      end
      object DBCheckBox10: TDBCheckBox
        Left = 190
        Top = 5
        Width = 79
        Height = 17
        BiDiMode = bdLeftToRight
        Caption = 'Desativada'
        DataField = 'Desativada'
        DataSource = Dados.dsClassificacaoFinanceira
        ParentBiDiMode = False
        TabOrder = 2
      end
      object StaticText11: TStaticText
        Left = 317
        Top = 2
        Width = 118
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Modalidade Importa'#231#227'o'
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
        OnClick = StaticText11Click
      end
      object cNivel: TRxDBLookupCombo
        Left = 75
        Top = 26
        Width = 238
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'Nivel_Codigo'
        DataSource = Dados.dsClassificacaoFinanceira
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Nivel; Descricao'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsNivelClassificacao
        ParentFont = False
        TabOrder = 4
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 437
        Top = 2
        Width = 329
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'Modalidade_Importacao'
        DataSource = Dados.dsClassificacaoFinanceira
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo; Descricao'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsTiposProcesso
        ParentFont = False
        TabOrder = 3
      end
      object StaticText16: TStaticText
        Left = 3
        Top = 72
        Width = 70
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'digo RFB'
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
        OnClick = StaticText16Click
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 152
        Top = 72
        Width = 613
        Height = 21
        DropDownCount = 8
        DataField = 'Codigo_RFB'
        DataSource = Dados.dsClassificacaoFinanceira
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo; Descricao'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsCodigosRFB
        ParentFont = False
        TabOrder = 8
      end
      object DBEdit3: TDBEdit
        Left = 75
        Top = 72
        Width = 76
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Codigo_RFB'
        DataSource = Dados.dsClassificacaoFinanceira
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object StaticText19: TStaticText
        Left = 317
        Top = 25
        Width = 118
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Tipo Documento Ref.'
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
        OnClick = StaticText7Click
      end
      object RxDBLookupCombo3: TRxDBLookupCombo
        Left = 437
        Top = 25
        Width = 329
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'Tipo_Documento'
        DataSource = Dados.dsClassificacaoFinanceira
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
        TabOrder = 5
        OnExit = RxDBLookupCombo3Exit
      end
    end
    object aContabil: TTabSheet
      Caption = '&Parametriza'#231#227'o Contabil'
      Enabled = False
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 4
        Top = 0
        Width = 763
        Height = 88
        Caption = 'Lan'#231'amento Contabil (Provis'#227'o)'
        TabOrder = 0
        object StaticText3: TStaticText
          Left = 5
          Top = 16
          Width = 80
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Conta D'#233'bito'
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
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 191
          Top = 16
          Width = 490
          Height = 21
          DataField = 'Provisao_ContaD'
          DataSource = Dados.dsClassificacaoFinanceira
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Conta;Codigo;Descricao'
          ListFieldIndex = 2
          ListSource = dmContab.dsPlanoContas
          NullValueKey = 46
          ParentFont = False
          TabOrder = 1
        end
        object cProvisaoContaD: TDBEdit
          Left = 87
          Top = 16
          Width = 102
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Provisao_ContaD'
          DataSource = Dados.dsClassificacaoFinanceira
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          PopupMenu = mnVarProv
          TabOrder = 0
          OnExit = cProvisaoContaDExit
        end
        object cProvisaoContaC: TDBEdit
          Left = 87
          Top = 39
          Width = 102
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Provisao_ContaC'
          DataSource = Dados.dsClassificacaoFinanceira
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          PopupMenu = mnVarProv
          TabOrder = 2
          OnExit = cProvisaoContaCExit
        end
        object StaticText4: TStaticText
          Left = 5
          Top = 39
          Width = 80
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Conta Cr'#233'dito'
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
        object DBEdit4: TDBEdit
          Left = 87
          Top = 62
          Width = 102
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Provisao_Historico'
          DataSource = Dados.dsClassificacaoFinanceira
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object StaticText8: TStaticText
          Left = 5
          Top = 62
          Width = 80
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Hist'#243'rico'
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
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 191
          Top = 62
          Width = 490
          Height = 21
          DataField = 'Provisao_Historico'
          DataSource = Dados.dsClassificacaoFinanceira
          DropDownRows = 15
          DropDownWidth = 650
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = dstHistoricos
          NullValueKey = 46
          ParentFont = False
          TabOrder = 5
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 191
          Top = 39
          Width = 490
          Height = 21
          DataField = 'Provisao_ContaC'
          DataSource = Dados.dsClassificacaoFinanceira
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Conta;Codigo;Descricao'
          ListFieldIndex = 2
          ListSource = dmContab.dsPlanoContas
          NullValueKey = 46
          ParentFont = False
          TabOrder = 3
        end
        object bLimparProvisao: TButton
          Left = 688
          Top = 15
          Width = 67
          Height = 67
          Caption = '&Limpar'
          TabOrder = 9
          OnClick = bLimparProvisaoClick
        end
      end
      object GroupBox2: TGroupBox
        Left = 4
        Top = 90
        Width = 763
        Height = 121
        Caption = 
          'Lan'#231'amento Contabil (Pagamento/Recebimento) - [Contra Partida Ba' +
          'nco]'
        TabOrder = 1
        DesignSize = (
          763
          121)
        object SpeedButton2: TSpeedButton
          Left = 428
          Top = 68
          Width = 23
          Height = 23
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
        object SpeedButton1: TSpeedButton
          Left = 428
          Top = 92
          Width = 23
          Height = 23
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
          OnClick = SpeedButton1Click
        end
        object lContaPagamento: TStaticText
          Left = 5
          Top = 16
          Width = 80
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Conta'
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
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 191
          Top = 16
          Width = 565
          Height = 21
          DataField = 'Pagamento_Conta'
          DataSource = Dados.dsClassificacaoFinanceira
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Conta;Codigo;Descricao'
          ListFieldIndex = 2
          ListSource = dmContab.dsPlanoContas
          NullValueKey = 46
          ParentFont = False
          TabOrder = 1
        end
        object cPagamentoConta: TDBEdit
          Left = 87
          Top = 16
          Width = 102
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Pagamento_Conta'
          DataSource = Dados.dsClassificacaoFinanceira
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          PopupMenu = mnVarPag
          TabOrder = 0
          OnExit = cPagamentoContaExit
        end
        object DBEdit5: TDBEdit
          Left = 87
          Top = 39
          Width = 102
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Pagamento_Historico'
          DataSource = Dados.dsClassificacaoFinanceira
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object StaticText9: TStaticText
          Left = 5
          Top = 39
          Width = 80
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Hist'#243'rico'
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
        object DBLookupComboBox7: TDBLookupComboBox
          Left = 191
          Top = 39
          Width = 565
          Height = 21
          DataField = 'Pagamento_Historico'
          DataSource = Dados.dsClassificacaoFinanceira
          DropDownRows = 15
          DropDownWidth = 650
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = dstHistoricos
          NullValueKey = 46
          ParentFont = False
          TabOrder = 3
        end
        object cTipoLancamento: TDBRadioGroup
          Left = 490
          Top = 66
          Width = 263
          Height = 49
          Caption = 'Tipo de Lan'#231'amento'
          Columns = 2
          DataField = 'Tipo_Lancamento'
          DataSource = Dados.dsClassificacaoFinanceira
          Items.Strings = (
            'Partida Simples'
            'Partida Dobrada')
          TabOrder = 6
          Values.Strings = (
            'S'
            'D')
        end
        object StaticText65: TStaticText
          Left = 9
          Top = 70
          Width = 101
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
          TabOrder = 7
          Transparent = False
          StyleElements = []
        end
        object cPesquisa: TEdit
          Left = 112
          Top = 70
          Width = 317
          Height = 21
          Anchors = [akLeft, akBottom]
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnChange = cPesquisaChange
        end
        object StaticText66: TStaticText
          Left = 9
          Top = 92
          Width = 101
          Height = 21
          Anchors = [akLeft, akBottom]
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Filtrar Hist'#243'ricos'
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
        object cPesquisaH: TEdit
          Left = 112
          Top = 92
          Width = 317
          Height = 21
          Anchors = [akLeft, akBottom]
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnChange = cPesquisaHChange
        end
      end
      object GroupBox5: TGroupBox
        Left = 4
        Top = 215
        Width = 763
        Height = 111
        Caption = 'Parametriza'#231#227'o DRE Gerencial'
        TabOrder = 2
        object StaticText13: TStaticText
          Left = 6
          Top = 15
          Width = 122
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Valor Principal'
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
          OnClick = StaticText7Click
        end
        object StaticText14: TStaticText
          Left = 6
          Top = 38
          Width = 122
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Multa / Juros'
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
          OnClick = StaticText7Click
        end
        object StaticText15: TStaticText
          Left = 6
          Top = 61
          Width = 122
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Desconto Financeiro'
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
          OnClick = StaticText7Click
        end
        object Button1: TButton
          Left = 685
          Top = 23
          Width = 70
          Height = 70
          Caption = '&Limpar'
          TabOrder = 3
          OnClick = Button1Click
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 130
          Top = 15
          Width = 550
          Height = 21
          DataField = 'DRE_Principal'
          DataSource = Dados.dsClassificacaoFinanceira
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao'
          ListSource = Dados.dsDRE
          ParentFont = False
          TabOrder = 4
        end
        object DBLookupComboBox8: TDBLookupComboBox
          Left = 130
          Top = 38
          Width = 550
          Height = 21
          DataField = 'DRE_Juros'
          DataSource = Dados.dsClassificacaoFinanceira
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao'
          ListSource = Dados.dsDRE
          ParentFont = False
          TabOrder = 5
        end
        object DBLookupComboBox9: TDBLookupComboBox
          Left = 130
          Top = 61
          Width = 550
          Height = 21
          DataField = 'DRE_Desconto'
          DataSource = Dados.dsClassificacaoFinanceira
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao'
          ListSource = Dados.dsDRE
          ParentFont = False
          TabOrder = 6
        end
        object StaticText17: TStaticText
          Left = 6
          Top = 84
          Width = 122
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Desconto de Duplicata'
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
          OnClick = StaticText7Click
        end
        object DBLookupComboBox10: TDBLookupComboBox
          Left = 130
          Top = 84
          Width = 550
          Height = 21
          DataField = 'DRE_DescontoDupl'
          DataSource = Dados.dsClassificacaoFinanceira
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao'
          ListSource = Dados.dsDRE
          ParentFont = False
          TabOrder = 8
        end
      end
    end
  end
  object cMostrar: TRadioGroup
    Left = 4
    Top = 582
    Width = 777
    Height = 54
    Caption = 'Mostrar Classifica'#231#245'es (Filtro)'
    Columns = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemIndex = 0
    Items.Strings = (
      'Ativas'
      'Desativadas'
      'T'#237'tulos'
      'Anal'#237'ticas'
      'Custo Entrada'
      'Custo Sa'#237'da'
      'Custo Seletivo'
      'Pagamento'
      'Recebimento'
      'Todas')
    ParentFont = False
    TabOrder = 3
    OnClick = cMostrarClick
  end
  object StaticText18: TStaticText
    Left = 4
    Top = 639
    Width = 70
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Pesquisar'
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
  object cPesq1: TEdit
    Left = 76
    Top = 639
    Width = 704
    Height = 21
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnChange = cPesq1Change
  end
  object ImageList1: TImageList
    Left = 336
    Top = 8
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000008000000000000000000000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800000000000000000000000000080808000808080008080
      8000808080000000000000000000000000000000000000000000808080008080
      0000808000008080000000000000808080008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008000000080000000800000008000000080000000800000008000000000
      000080808000808080000000000000000000000000000000000080800000FFFF
      0000FFFF00008080000000800000808000008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      0000008000000080000000800000008000000080000000800000008000000080
      000000000000808080008080800000000000000000008080800000FF0000FFFF
      0000FFFF0000FFFF000080800000008000008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008000000080000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000000000080808000000000000000000000FF0000FFFF0000FFFF
      0000FFFF0000FFFF000080800000008000008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000000000008080
      800080000000C0C0C000C0C0C000800000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000800000008000000080
      00000080000000800000C0C0C000FFFFFF000080000000800000008000000080
      00000080000000800000808080000000000080808000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000808000000000000080808000808080000000
      0000000000000000000000000000000000000000000000000000808080008000
      0000C0C0C000C0C0C000C0C0C000C0C0C0008000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000800000008000000080
      000000800000C0C0C000FFFFFF00FFFFFF00FFFFFF0000800000008000000080
      000000800000008000008080800080808000FFFF0000FFFF0000FFFF0000FFFF
      0000FFFF0000FFFF0000FFFF0000808000000080000080800000808080008080
      800000000000000000000000000000000000000000008080800080000000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000800000008000000080
      0000C0C0C000FFFFFF00C0C0C000FFFFFF00FFFFFF0000800000008000000080
      000000800000008000000000000080808000C0C0C000FFFF0000FFFF0000FFFF
      000000000000C0C0C000FFFF0000FFFF00008080000000000000808080008080
      8000808080000000000000000000000000000000000080000000808080008080
      8000808080008000000080000000808080008080800080808000800000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000800000008000000080
      000000800000008000000080000000800000FFFFFF00FFFFFF00008000000080
      00000080000000800000000000008080800000000000FFFF0000FFFF00000000
      00000000000000000000C0C0C000FFFF0000FFFF000080800000000000008080
      8000808080000000000000000000000000000000000080000000808080008080
      8000800000008080800080808000800000008080800080808000808080008000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000800000008000000080
      000000800000008000000080000000800000FFFFFF00FFFFFF00008000000080
      0000008000000080000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000FFFF000080800000008000008080
      8000808080008080800000000000000000000000000080808000800000008000
      00008080800000000000000000008080800080000000C0C0C000C0C0C000C0C0
      C000800000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000800000008000000080
      00000080000000800000008000000080000000800000FFFFFF00FFFFFF000080
      0000008000000080000080808000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000FFFF0000FFFF0000808000000000
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080000000C0C0C000C0C0
      C000C0C0C0008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000800000008000000080
      00000080000000800000008000000080000000800000FFFFFF00FFFFFF000080
      0000008000000080000080808000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000FFFF0000FFFF00008080
      0000000000008080800000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800080000000C0C0
      C000C0C0C0008000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000008000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000008000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000FFFF0000FFFF
      0000808000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008000
      0000800000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      0000008000000080000000800000008000000080000000800000008000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000FFFF00008080000000000000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008000000080000000800000008000000080000000800000008000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C0C0
      C000C0C0C000FFFF000080800000808000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C0C0C000C0C0C000FFFF000000FF00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FE3FC07FFFFF0000F007C07FFFFF0000
      E003C03FFFFF0000C001803FF0FF00008001801FE07F00008001001FC03F0000
      8000000F801F000000000807800F000000009C07800700000001FC0386030000
      8001FE03FF0300008001FF03FF8300008003FF81FFC30000C007FFC0FFFF0000
      E00FFFE0FFFF0000FC7FFFF0FFFF000000000000000000000000000000000000
      000000000000}
  end
  object mnVarProv: TPopupMenu
    Left = 200
    Top = 8
    object Clientes1: TMenuItem
      Caption = 'CLIENTE - (Conta do cliente - Adiantamento/ Devolu'#231#227'o)'
      OnClick = Clientes1Click
    end
    object FORNECEDORES1: TMenuItem
      Caption = 'FORNECEDOR - (Conta do Fornecedor - Adiantamento/ Devolu'#231#227'o)'
      OnClick = FORNECEDORES1Click
    end
    object Processo1: TMenuItem
      Caption = 'PROCESSO (Conta do processo)'
      OnClick = Processo1Click
    end
  end
  object tCodigo: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Codigo FROM ClassificacaoFinanceira')
    Left = 392
    Top = 9
  end
  object tMovimento: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Codigo FROM ClassificacaoFinanceira')
    Left = 456
    Top = 9
  end
  object tPesquisa: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT Codigo FROM ClassificacaoFinanceira')
    Left = 520
    Top = 9
  end
  object tHistoricos: TMSQuery
    Connection = Dados.Banco_Contabilidade
    SQL.Strings = (
      'SELECT  Codigo'
      '       ,Descricao = Descricao + CAST(Macro AS VARCHAR(120))'
      '       ,Complemento'
      '       ,Macro'
      'FROM HistoricoPadrao '
      'ORDER BY Codigo')
    FetchRows = 1
    Left = 584
    Top = 9
    object tHistoricosCodigo: TSmallintField
      DisplayWidth = 5
      FieldName = 'Codigo'
      Origin = 'HistoricoPadrao.Codigo'
    end
    object tHistoricosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'HistoricoPadrao.Descricao'
      Size = 60
    end
    object tHistoricosComplemento: TBooleanField
      FieldName = 'Complemento'
      Origin = 'HistoricoPadrao.Complemento'
    end
    object tHistoricosMacro: TMemoField
      FieldName = 'Macro'
      Origin = 'HistoricoPadrao.Macro'
      BlobType = ftMemo
    end
  end
  object dstHistoricos: TDataSource
    DataSet = tHistoricos
    Left = 654
    Top = 9
  end
  object mnVarPag: TPopupMenu
    Left = 272
    Top = 8
    object MenuItem1: TMenuItem
      Caption = 'CLIENTE - (Conta do cliente - Adiantamento/ Devolu'#231#227'o)'
      OnClick = Clientes1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'FORNECEDOR - (Conta do Fornecedor - Adiantamento/ Devolu'#231#227'o)'
      OnClick = FORNECEDORES1Click
    end
    object MenuItem3: TMenuItem
      Caption = 'BANCO (Conta do banco)'
      OnClick = BANCOS1Click
    end
    object MenuItem4: TMenuItem
      Caption = 'PROCESSO (Conta do processo)'
      OnClick = Processo1Click
    end
  end
end
