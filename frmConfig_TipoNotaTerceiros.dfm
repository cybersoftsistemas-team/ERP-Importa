object Config_TipoNotaTerceiros: TConfig_TipoNotaTerceiros
  Left = 806
  Top = 225
  BorderStyle = bsDialog
  Caption = 'Config_TipoNotaTerceiros'
  ClientHeight = 715
  ClientWidth = 784
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
    Width = 784
    Height = 46
    Align = alTop
    Stretch = True
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 160
    Height = 21
    Caption = 'TIPOS DE NOTA FISCAL'
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
    Width = 351
    Height = 18
    Caption = 'Manuten'#231#227'o da tabela de tipos de nota fiscal (Terceiros).'
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
    Top = 685
    Width = 784
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      Left = 708
      Top = 1
      Width = 75
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
      Left = 1
      Top = 1
      Width = 351
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsReferenciasFiscais
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
      ShowHint = True
      TabOrder = 1
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
    object bPesquisar: TButton
      Left = 352
      Top = 1
      Width = 75
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alLeft
      Caption = '&Pesquisar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bPesquisarClick
    end
    object bDuplicar: TButton
      Left = 427
      Top = 1
      Width = 75
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alLeft
      Caption = '&Duplicar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bDuplicarClick
    end
    object bFiliais: TButton
      Left = 502
      Top = 1
      Width = 85
      Height = 28
      Align = alLeft
      Caption = '&Exportar Filiais'
      TabOrder = 4
      OnClick = bFiliaisClick
    end
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 49
    Width = 778
    Height = 633
    ActivePage = TabSheet1
    Align = alClient
    TabHeight = 28
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Refer'#234'ncia'
      DesignSize = (
        770
        595)
      object Panel2: TPanel
        Left = 2
        Top = 1
        Width = 765
        Height = 592
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 0
        object StaticText1: TStaticText
          Left = 7
          Top = 5
          Width = 162
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
          Left = 171
          Top = 5
          Width = 69
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Codigo'
          DataSource = Dados.dsReferenciasFiscais
          Enabled = False
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
          Left = 7
          Top = 28
          Width = 162
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
          TabOrder = 27
          Transparent = False
          StyleElements = []
        end
        object cDescricao: TDBEdit
          Left = 171
          Top = 28
          Width = 587
          Height = 21
          DataField = 'Descricao'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object StaticText2: TStaticText
          Left = 7
          Top = 74
          Width = 162
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'CFOP (Dentro Estado)'
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
          OnClick = StaticText2Click
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 233
          Top = 74
          Width = 420
          Height = 21
          DataField = 'Natureza_Dentro'
          DataSource = Dados.dsReferenciasFiscais
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao_NF; Codigo'
          ListSource = Dados.dsNatureza
          ParentFont = False
          TabOrder = 9
        end
        object cCFOPDentro: TDBEdit
          Left = 171
          Top = 74
          Width = 60
          Height = 21
          DataField = 'Natureza_Dentro'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 5
          ParentFont = False
          TabOrder = 8
        end
        object StaticText3: TStaticText
          Left = 7
          Top = 97
          Width = 162
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'CFOP (Fora Estado)'
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
          OnClick = StaticText3Click
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 233
          Top = 97
          Width = 420
          Height = 21
          DataField = 'Natureza_Fora'
          DataSource = Dados.dsReferenciasFiscais
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao_NF; Codigo'
          ListSource = Dados.dsNatureza
          ParentFont = False
          TabOrder = 11
        end
        object cCFOPFora: TDBEdit
          Left = 171
          Top = 97
          Width = 60
          Height = 21
          DataField = 'Natureza_Fora'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 5
          ParentFont = False
          TabOrder = 10
        end
        object StaticText8: TStaticText
          Left = 7
          Top = 212
          Width = 162
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Esp'#233'cie'
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
          OnClick = StaticText8Click
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 233
          Top = 212
          Width = 420
          Height = 21
          DataField = 'Especie'
          DataSource = Dados.dsReferenciasFiscais
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao; Codigo'
          ListSource = Dados.dsTiposDocumentos
          ParentFont = False
          TabOrder = 21
        end
        object DBEdit5: TDBEdit
          Left = 171
          Top = 212
          Width = 60
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Especie'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 20
        end
        object StaticText9: TStaticText
          Left = 7
          Top = 51
          Width = 162
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Servi'#231'o'
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
          OnClick = StaticText9Click
        end
        object DBLookupComboBox7: TDBLookupComboBox
          Left = 233
          Top = 51
          Width = 420
          Height = 21
          DataField = 'Servico'
          DataSource = Dados.dsReferenciasFiscais
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao'
          ListSource = Dados.dsServicos
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit6: TDBEdit
          Left = 171
          Top = 51
          Width = 60
          Height = 21
          DataField = 'Servico'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnChange = DBEdit6Change
        end
        object StaticText39: TStaticText
          Left = 343
          Top = 5
          Width = 81
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Incentivo Fiscal'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 32
          Transparent = False
          StyleElements = []
        end
        object StaticText4: TStaticText
          Left = 7
          Top = 235
          Width = 162
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'CST ICMS'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 33
          Transparent = False
          StyleElements = []
          OnClick = StaticText8Click
        end
        object cCSTICMS: TDBEdit
          Left = 171
          Top = 235
          Width = 60
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CSTICMS'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 22
        end
        object StaticText6: TStaticText
          Left = 233
          Top = 235
          Width = 47
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'CST IPI'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 34
          Transparent = False
          StyleElements = []
          OnClick = StaticText8Click
        end
        object cCSTIPI: TDBLookupComboBox
          Left = 282
          Top = 235
          Width = 81
          Height = 21
          DataField = 'CSTIPI'
          DataSource = Dados.dsReferenciasFiscais
          DropDownRows = 25
          DropDownWidth = 300
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo; Descricao'
          ListFieldIndex = 2
          ListSource = Dados.dsCSTIPI
          NullValueKey = 46
          ParentFont = False
          TabOrder = 23
        end
        object cFinalidade: TDBRadioGroup
          Left = 7
          Top = 292
          Width = 210
          Height = 218
          Caption = ' Finalidade da Mercadoria '
          DataField = 'Finalidade_Mercadoria'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Items.Strings = (
            'Revenda'
            'Consumo'
            'Devolu'#231#227'o'
            'Exporta'#231#227'o'
            'Pr'#243'pria em Poder de Terceiros'
            'Terceiros em Poder da Empresa'
            'Imobilizado'
            'Outras')
          ParentFont = False
          TabOrder = 26
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '9')
        end
        object StaticText11: TStaticText
          Left = 7
          Top = 258
          Width = 162
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Tipo B.C.Cr'#233'dito'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 35
          Transparent = False
          StyleElements = []
          OnClick = StaticText8Click
        end
        object cTipoCredito: TRxDBLookupCombo
          Left = 171
          Top = 258
          Width = 587
          Height = 21
          DropDownCount = 8
          DropDownWidth = 650
          DisplayAllFields = True
          DataField = 'Tipo_Credito'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo; Descricao'
          LookupDisplayIndex = 1
          LookupSource = Dados.dsTiposBCCredito
          ParentFont = False
          TabOrder = 24
        end
        object GroupBox2: TGroupBox
          Left = 233
          Top = 292
          Width = 349
          Height = 293
          Caption = 'Par'#226'metros Diversos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 25
          object cEstoque: TDBCheckBox
            Left = 7
            Top = 15
            Width = 334
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Movimenta Estoque'
            DataField = 'Movimenta_Estoque'
            DataSource = Dados.dsReferenciasFiscais
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object cApuracaoPISCOFINS: TDBCheckBox
            Left = 7
            Top = 110
            Width = 334
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Gera apura'#231#227'o de  PIS / COFINS'
            DataField = 'Apuracao_PISCOFINS'
            DataSource = Dados.dsReferenciasFiscais
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object cInventario: TDBCheckBox
            Left = 7
            Top = 34
            Width = 334
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Movimenta Invent'#225'rio Pr'#243'prio'
            DataField = 'Movimenta_Inventario'
            DataSource = Dados.dsReferenciasFiscais
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object DBCheckBox3: TDBCheckBox
            Left = 7
            Top = 53
            Width = 334
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Movimenta Invent'#225'rio Terceiros'
            DataField = 'Inventario_Terceiros'
            DataSource = Dados.dsReferenciasFiscais
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object DBCheckBox1: TDBCheckBox
            Left = 7
            Top = 129
            Width = 334
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Somar "ICMS ST" ao valor do Produto na Importa'#231#227'o da NF-e'
            DataField = 'Somar_ICMSST'
            DataSource = Dados.dsReferenciasFiscais
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object DBCheckBox4: TDBCheckBox
            Left = 7
            Top = 148
            Width = 334
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Somar valor dos Impostos Dedut'#237'veis ao total da Nota de Servi'#231'o'
            DataField = 'Somar_ImpostosServico'
            DataSource = Dados.dsReferenciasFiscais
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object DBCheckBox5: TDBCheckBox
            Left = 7
            Top = 167
            Width = 334
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Relacionamento de Produtos na Importa'#231#227'o do XML Obrigat'#243'rio'
            DataField = 'Relaciona_Produtos'
            DataSource = Dados.dsReferenciasFiscais
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object DBCheckBox6: TDBCheckBox
            Left = 7
            Top = 186
            Width = 334
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Relacionamento das Adi'#231#245'es na Importa'#231#227'o do XML Obrigat'#243'rio'
            DataField = 'Relaciona_Adicoes'
            DataSource = Dados.dsReferenciasFiscais
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object DBCheckBox7: TDBCheckBox
            Left = 7
            Top = 205
            Width = 334
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Permitir apenas itens com origem em nota fiscal de refer'#234'ncia'
            DataField = 'Nota_Referencia'
            DataSource = Dados.dsReferenciasFiscais
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
          end
          object cEstoqueRep: TDBCheckBox
            Left = 7
            Top = 72
            Width = 334
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Movimenta Estoque Representante'
            DataField = 'Movimenta_EstoqueRep'
            DataSource = Dados.dsReferenciasFiscais
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object DBCheckBox8: TDBCheckBox
            Left = 7
            Top = 224
            Width = 334
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Atualizar al'#237'quotas de impostos dos produtos pela NCM'
            DataField = 'Produto_NCM'
            DataSource = Dados.dsReferenciasFiscais
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
          object cMovimentaInd: TDBCheckBox
            Left = 7
            Top = 91
            Width = 334
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Movimenta Estoque de Industrializa'#231#227'o'
            DataField = 'Movimenta_EstoqueInd'
            DataSource = Dados.dsReferenciasFiscais
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = cMovimentaIndClick
          end
          object DBCheckBox10: TDBCheckBox
            Left = 7
            Top = 243
            Width = 334
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Nota Fiscal de Transfer'#234'ncia'
            DataField = 'Transferencia'
            DataSource = Dados.dsReferenciasFiscais
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
          end
          object DBCheckBox38: TDBCheckBox
            Left = 7
            Top = 262
            Width = 334
            Height = 22
            Alignment = taLeftJustify
            Caption = 'Incluir no Fechamento do Processo'
            DataField = 'Fechamento_Processo'
            DataSource = Dados.dsReferenciasFiscais
            TabOrder = 13
          end
        end
        object DBCheckBox2: TDBCheckBox
          Left = 245
          Top = 7
          Width = 46
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Ativa'
          DataField = 'Ativo'
          DataSource = Dados.dsReferenciasFiscais
          TabOrder = 2
        end
        object cIncentivo: TDBLookupComboBox
          Left = 426
          Top = 5
          Width = 227
          Height = 21
          DataField = 'Incentivo_Fiscal'
          DataSource = Dados.dsReferenciasFiscais
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Nome'
          ListField = 'Estado;Nome'
          ListFieldIndex = 1
          ListSource = Dados.dsIncentivosFiscais
          ParentFont = False
          TabOrder = 3
        end
        object DBEdit2: TDBEdit
          Left = 693
          Top = 51
          Width = 65
          Height = 21
          DataField = 'Aliquota_ISS'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
          OnChange = DBEdit6Change
        end
        object StaticText13: TStaticText
          Left = 655
          Top = 51
          Width = 36
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ISS %'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 36
          Transparent = False
          StyleElements = []
        end
        object StaticText17: TStaticText
          Left = 7
          Top = 166
          Width = 162
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'CFOP Industrializa'#231#227'o (Entrada)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 37
          Transparent = False
          StyleElements = []
          OnClick = StaticText2Click
        end
        object cNaturezaIndEntra2: TDBLookupComboBox
          Left = 233
          Top = 166
          Width = 420
          Height = 21
          DataField = 'Natureza_IndEntrada'
          DataSource = Dados.dsReferenciasFiscais
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao_NF; Codigo'
          ListSource = Dados.dsNatureza
          ParentFont = False
          TabOrder = 17
        end
        object cNaturezaIndEntra: TDBEdit
          Left = 171
          Top = 166
          Width = 60
          Height = 21
          DataField = 'Natureza_IndEntrada'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 5
          ParentFont = False
          TabOrder = 16
        end
        object StaticText18: TStaticText
          Left = 7
          Top = 189
          Width = 162
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'CFOP Industrializa'#231#227'o (Sa'#237'da)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 38
          Transparent = False
          StyleElements = []
          OnClick = StaticText3Click
        end
        object cNaturezaIndSai2: TDBLookupComboBox
          Left = 233
          Top = 189
          Width = 420
          Height = 21
          DataField = 'Natureza_IndSaida'
          DataSource = Dados.dsReferenciasFiscais
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao_NF; Codigo'
          ListSource = Dados.dsNatureza
          ParentFont = False
          TabOrder = 19
        end
        object cNaturezaIndSai: TDBEdit
          Left = 171
          Top = 189
          Width = 60
          Height = 21
          DataField = 'Natureza_IndSaida'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 5
          ParentFont = False
          TabOrder = 18
        end
        object GroupBox5: TGroupBox
          Left = 598
          Top = 292
          Width = 149
          Height = 77
          Caption = 'CST PIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 39
          object StaticText7: TStaticText
            Left = 9
            Top = 21
            Width = 69
            Height = 21
            Cursor = crHandPoint
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Basica'
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
            OnClick = StaticText8Click
          end
          object cCSTPIS: TDBLookupComboBox
            Left = 80
            Top = 21
            Width = 60
            Height = 21
            BiDiMode = bdLeftToRight
            DataField = 'CSTPIS'
            DataSource = Dados.dsReferenciasFiscais
            DropDownAlign = daRight
            DropDownRows = 25
            DropDownWidth = 600
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Codigo; Descricao'
            ListFieldIndex = 2
            ListSource = Dados.dsCSTPIS
            NullValueKey = 46
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 1
            OnEnter = cCSTPISEnter
          end
          object StaticText10: TStaticText
            Left = 9
            Top = 44
            Width = 69
            Height = 21
            Cursor = crHandPoint
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Diferenciada'
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
            OnClick = StaticText8Click
          end
          object cCSTCOFINS: TDBLookupComboBox
            Left = 80
            Top = 44
            Width = 60
            Height = 21
            DataField = 'CSTPIS_Dif'
            DataSource = Dados.dsReferenciasFiscais
            DropDownAlign = daRight
            DropDownRows = 25
            DropDownWidth = 600
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Codigo; Descricao'
            ListFieldIndex = 2
            ListSource = Dados.dsCSTCONFINS
            NullValueKey = 46
            ParentFont = False
            TabOrder = 3
            OnEnter = cCSTPISEnter
          end
        end
        object GroupBox6: TGroupBox
          Left = 598
          Top = 385
          Width = 149
          Height = 76
          Caption = 'CST COFINS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 40
          object StaticText30: TStaticText
            Left = 9
            Top = 21
            Width = 69
            Height = 21
            Cursor = crHandPoint
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Basica'
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
            OnClick = StaticText8Click
          end
          object DBLookupComboBox13: TDBLookupComboBox
            Left = 80
            Top = 21
            Width = 60
            Height = 21
            BiDiMode = bdLeftToRight
            DataField = 'CSTCOFINS'
            DataSource = Dados.dsReferenciasFiscais
            DropDownAlign = daRight
            DropDownRows = 25
            DropDownWidth = 600
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Codigo; Descricao'
            ListFieldIndex = 2
            ListSource = Dados.dsCSTPIS
            NullValueKey = 46
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 1
            OnEnter = cCSTPISEnter
          end
          object StaticText31: TStaticText
            Left = 9
            Top = 44
            Width = 69
            Height = 21
            Cursor = crHandPoint
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'Diferenciada'
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
            OnClick = StaticText8Click
          end
          object DBLookupComboBox14: TDBLookupComboBox
            Left = 80
            Top = 44
            Width = 60
            Height = 21
            DataField = 'CSTCOFINS_Dif'
            DataSource = Dados.dsReferenciasFiscais
            DropDownAlign = daRight
            DropDownRows = 25
            DropDownWidth = 600
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            KeyField = 'Codigo'
            ListField = 'Codigo; Descricao'
            ListFieldIndex = 2
            ListSource = Dados.dsCSTCONFINS
            NullValueKey = 46
            ParentFont = False
            TabOrder = 3
            OnEnter = cCSTPISEnter
          end
        end
        object StaticText43: TStaticText
          Left = 7
          Top = 120
          Width = 162
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'CFOP Vincular (Dentro Estado)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 41
          Transparent = False
          StyleElements = []
          OnClick = StaticText3Click
        end
        object DBLookupComboBox15: TDBLookupComboBox
          Left = 233
          Top = 120
          Width = 420
          Height = 21
          DataField = 'Natureza_RefDentro'
          DataSource = Dados.dsReferenciasFiscais
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao_NF; Codigo'
          ListSource = Dados.dsNatureza
          ParentFont = False
          TabOrder = 13
        end
        object DBEdit1: TDBEdit
          Left = 171
          Top = 120
          Width = 60
          Height = 21
          DataField = 'Natureza_RefDentro'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 5
          ParentFont = False
          TabOrder = 12
        end
        object StaticText44: TStaticText
          Left = 7
          Top = 143
          Width = 162
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'CFOP Vincular (Fora Estado)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 42
          Transparent = False
          StyleElements = []
          OnClick = StaticText3Click
        end
        object DBLookupComboBox20: TDBLookupComboBox
          Left = 233
          Top = 143
          Width = 420
          Height = 21
          DataField = 'Natureza_RefFora'
          DataSource = Dados.dsReferenciasFiscais
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Descricao_NF; Codigo'
          ListSource = Dados.dsNatureza
          ParentFont = False
          TabOrder = 15
        end
        object DBEdit3: TDBEdit
          Left = 171
          Top = 143
          Width = 60
          Height = 21
          DataField = 'Natureza_RefFora'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 5
          ParentFont = False
          TabOrder = 14
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'F'#243'rmulas p/C'#225'lculos de Entrada'
      ImageIndex = 2
      object fFornula2: TGroupBox
        Left = 7
        Top = 2
        Width = 754
        Height = 131
        Caption = 'C'#225'lculo do Valor do Invent'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 7
          Top = 45
          Width = 45
          Height = 13
          Caption = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 99
          Top = 46
          Width = 17
          Height = 13
          Caption = 'IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 171
          Top = 46
          Width = 62
          Height = 13
          Caption = 'ICMS Oper'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 281
          Top = 46
          Width = 51
          Height = 13
          Caption = 'ICMS ST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 463
          Top = 60
          Width = 85
          Height = 13
          Caption = 'PIS (Aliq,Difer)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 604
          Top = 60
          Width = 110
          Height = 13
          Caption = 'COFINS (Aliq.Difer)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 377
          Top = 46
          Width = 30
          Height = 13
          Caption = 'Frete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lFormula: TLabel
          Left = 136
          Top = 87
          Width = 586
          Height = 18
          AutoSize = False
          Caption = 'F'#243'rmula:'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsItalic]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label15: TLabel
          Left = 463
          Top = 32
          Width = 96
          Height = 13
          Caption = 'PIS (Aliq.B'#225'sica)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 604
          Top = 32
          Width = 121
          Height = 13
          Caption = 'COFINS (Aliq.B'#225'sica)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel2: TBevel
          Left = 417
          Top = 21
          Width = 316
          Height = 64
          Shape = bsFrame
        end
        object lFormulaDif: TLabel
          Left = 136
          Top = 108
          Width = 586
          Height = 18
          AutoSize = False
          Caption = 'F'#243'rmula:'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsItalic]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object cSinalIPI: TRxDBComboBox
          Left = 59
          Top = 40
          Width = 39
          Height = 26
          DataField = 'Sinal_IPI'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Items.Strings = (
            '+'
            '-'
            '')
          ParentColor = True
          ParentFont = False
          TabOrder = 0
          Values.Strings = (
            '+'
            '-'
            '')
          OnChange = cSinalIPIClick
          OnClick = cSinalIPIClick
        end
        object cSinalICMSOper: TRxDBComboBox
          Left = 130
          Top = 40
          Width = 39
          Height = 26
          DataField = 'Sinal_ICMSOper'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Items.Strings = (
            '+'
            '-'
            '')
          ParentColor = True
          ParentFont = False
          TabOrder = 1
          Values.Strings = (
            '+'
            '-'
            '')
          OnChange = cSinalIPIClick
          OnClick = cSinalIPIClick
        end
        object cSinalICMSST: TRxDBComboBox
          Left = 239
          Top = 40
          Width = 39
          Height = 26
          DataField = 'Sinal_ICMSST'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Items.Strings = (
            '+'
            '-'
            '')
          ParentColor = True
          ParentFont = False
          TabOrder = 2
          Values.Strings = (
            '+'
            '-'
            '')
          OnChange = cSinalIPIClick
          OnClick = cSinalIPIClick
        end
        object cSinalPISDif: TRxDBComboBox
          Left = 421
          Top = 54
          Width = 39
          Height = 26
          DataField = 'Sinal_PISDif'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Items.Strings = (
            '+'
            '-'
            '')
          ParentColor = True
          ParentFont = False
          TabOrder = 3
          Values.Strings = (
            '+'
            '-'
            '')
          OnChange = cSinalIPIClick
          OnClick = cSinalIPIClick
        end
        object cSinalCOFINSDif: TRxDBComboBox
          Left = 563
          Top = 54
          Width = 39
          Height = 26
          DataField = 'Sinal_COFINSDif'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Items.Strings = (
            '+'
            '-'
            '')
          ParentColor = True
          ParentFont = False
          TabOrder = 4
          Values.Strings = (
            '+'
            '-'
            '')
          OnChange = cSinalIPIClick
          OnClick = cSinalIPIClick
        end
        object cSinalFrete: TRxDBComboBox
          Left = 336
          Top = 40
          Width = 39
          Height = 26
          DataField = 'Sinal_Frete'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Items.Strings = (
            '+'
            '-'
            '')
          ParentColor = True
          ParentFont = False
          TabOrder = 5
          Values.Strings = (
            '+'
            '-'
            '')
          OnChange = cSinalIPIClick
          OnClick = cSinalIPIClick
        end
        object StaticText12: TStaticText
          Left = 7
          Top = 87
          Width = 127
          Height = 18
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'F'#243'rmula c/PIS Aliq.B'#225'sica'
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
          OnClick = StaticText8Click
        end
        object bLimpar1: TBitBtn
          Left = 725
          Top = 94
          Width = 23
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
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
          Layout = blGlyphBottom
          Margin = 4
          ParentFont = False
          Spacing = 0
          TabOrder = 7
          OnClick = bLimpar1Click
        end
        object cInventarioEstoque: TDBCheckBox
          Left = 6
          Top = 14
          Width = 298
          Height = 17
          Caption = 'Buscar valor de inventario na ficha de estoque.'
          DataField = 'Inventario_Estoque'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnClick = cInventarioEstoqueClick
        end
        object cSinalPIS: TRxDBComboBox
          Left = 421
          Top = 26
          Width = 39
          Height = 26
          DataField = 'Sinal_PIS'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Items.Strings = (
            '+'
            '-'
            '')
          ParentColor = True
          ParentFont = False
          TabOrder = 9
          Values.Strings = (
            '+'
            '-'
            '')
          OnChange = cSinalIPIClick
          OnClick = cSinalIPIClick
        end
        object cSinalCOFINS: TRxDBComboBox
          Left = 563
          Top = 26
          Width = 39
          Height = 26
          DataField = 'Sinal_COFINS'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Items.Strings = (
            '+'
            '-'
            '')
          ParentColor = True
          ParentFont = False
          TabOrder = 10
          Values.Strings = (
            '+'
            '-'
            '')
          OnChange = cSinalIPIClick
          OnClick = cSinalIPIClick
        end
        object StaticText34: TStaticText
          Left = 7
          Top = 108
          Width = 127
          Height = 18
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'F'#243'rmula c/PIS Aliq.Difer.'
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
          OnClick = StaticText8Click
        end
      end
      object cPrecoVenda: TDBRadioGroup
        Left = 7
        Top = 221
        Width = 754
        Height = 129
        Caption = 'Forma'#231#227'o do Pre'#231'o de Venda'
        DataField = 'Preco_Venda'
        DataSource = Dados.dsReferenciasFiscais
        Items.Strings = (
          '0   Nenhum'
          '1   Produto'
          '2   (Produto+Lucro)'
          
            '3   (Produto+Lucro)/(100- (ICMS+PIS+COFINS+IRPJ+CSLL+Comiss'#227'o+Cu' +
            'sto Financeiro+Custo Fixo+Margem   -  (Lucro Real)'
          
            '4   (Produto+Lucro)/(100- (ICMS+PIS+COFINS+IRPJ+CSLL+Comiss'#227'o+Cu' +
            'sto Financeiro+Custo Fixo+Margem   -  (Lucro Presumido)'
          '5   (Produto + IPI)')
        TabOrder = 1
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5')
      end
      object StaticText14: TStaticText
        Left = 7
        Top = 445
        Width = 90
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'digo da CSLL'
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
        OnClick = StaticText14Click
      end
      object StaticText15: TStaticText
        Left = 7
        Top = 468
        Width = 90
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'#243'digo do IRPJ'
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
        OnClick = StaticText14Click
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 99
        Top = 445
        Width = 657
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'Codigo_CSLL'
        DataSource = Dados.dsReferenciasFiscais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Descricao;Valor'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsImpostos
        ParentFont = False
        TabOrder = 4
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 99
        Top = 468
        Width = 657
        Height = 21
        DropDownCount = 8
        DisplayAllFields = True
        DataField = 'Codigo_IRPJ'
        DataSource = Dados.dsReferenciasFiscais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Descricao;Valor'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsImpostos
        ParentFont = False
        TabOrder = 5
      end
      object GroupBox4: TGroupBox
        Left = 7
        Top = 139
        Width = 754
        Height = 76
        Caption = 'C'#225'lculo do Valor do Produto na Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        object Label8: TLabel
          Left = 6
          Top = 23
          Width = 45
          Height = 13
          Caption = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 98
          Top = 24
          Width = 17
          Height = 13
          Caption = 'IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 178
          Top = 24
          Width = 62
          Height = 13
          Caption = 'ICMS Oper'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 296
          Top = 24
          Width = 51
          Height = 13
          Caption = 'ICMS ST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 401
          Top = 24
          Width = 21
          Height = 13
          Caption = 'PIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 478
          Top = 24
          Width = 46
          Height = 13
          Caption = 'COFINS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 573
          Top = 24
          Width = 30
          Height = 13
          Caption = 'Frete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lFormula2: TLabel
          Left = 56
          Top = 50
          Width = 667
          Height = 18
          AutoSize = False
          Caption = 'F'#243'rmula:'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsItalic]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label17: TLabel
          Left = 653
          Top = 24
          Width = 50
          Height = 13
          Caption = 'Despesa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cSinalEntradaIPI: TRxDBComboBox
          Left = 58
          Top = 18
          Width = 39
          Height = 26
          DataField = 'Sinal_EntradaIPI'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Items.Strings = (
            '+'
            '-'
            '')
          ParentColor = True
          ParentFont = False
          TabOrder = 0
          Values.Strings = (
            '+'
            '-'
            '')
          OnChange = cSinalEntradaIPIClick
          OnClick = cSinalEntradaIPIClick
        end
        object cSinalEntradaICMSOper: TRxDBComboBox
          Left = 137
          Top = 18
          Width = 39
          Height = 26
          DataField = 'Sinal_EntradaICMSOper'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Items.Strings = (
            '+'
            '-'
            '')
          ParentColor = True
          ParentFont = False
          TabOrder = 1
          Values.Strings = (
            '+'
            '-'
            '')
          OnChange = cSinalEntradaIPIClick
          OnClick = cSinalEntradaIPIClick
        end
        object cSinalEntradaICMSST: TRxDBComboBox
          Left = 255
          Top = 18
          Width = 39
          Height = 26
          DataField = 'Sinal_EntradaICMSST'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Items.Strings = (
            '+'
            '-'
            '')
          ParentColor = True
          ParentFont = False
          TabOrder = 2
          Values.Strings = (
            '+'
            '-'
            '')
          OnChange = cSinalEntradaIPIClick
          OnClick = cSinalEntradaIPIClick
        end
        object cSinalEntradaPIS: TRxDBComboBox
          Left = 360
          Top = 18
          Width = 39
          Height = 26
          DataField = 'Sinal_EntradaPIS'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Items.Strings = (
            '+'
            '-'
            '')
          ParentColor = True
          ParentFont = False
          TabOrder = 3
          Values.Strings = (
            '+'
            '-'
            '')
          OnChange = cSinalEntradaIPIClick
          OnClick = cSinalEntradaIPIClick
        end
        object cSinalEntradaCOFINS: TRxDBComboBox
          Left = 437
          Top = 18
          Width = 39
          Height = 26
          DataField = 'Sinal_EntradaCOFINS'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Items.Strings = (
            '+'
            '-'
            '')
          ParentColor = True
          ParentFont = False
          TabOrder = 4
          Values.Strings = (
            '+'
            '-'
            '')
          OnChange = cSinalEntradaIPIClick
          OnClick = cSinalEntradaIPIClick
        end
        object cSinalEntradaFrete: TRxDBComboBox
          Left = 532
          Top = 18
          Width = 39
          Height = 26
          DataField = 'Sinal_EntradaFrete'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Items.Strings = (
            '+'
            '-'
            '')
          ParentColor = True
          ParentFont = False
          TabOrder = 5
          Values.Strings = (
            '+'
            '-'
            '')
          OnChange = cSinalEntradaIPIClick
          OnClick = cSinalEntradaIPIClick
        end
        object StaticText16: TStaticText
          Left = 7
          Top = 50
          Width = 47
          Height = 18
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'F'#243'rmula'
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
          OnClick = StaticText8Click
        end
        object bLimpar2: TBitBtn
          Left = 724
          Top = 47
          Width = 23
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
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
          Layout = blGlyphBottom
          Margin = 4
          ParentFont = False
          Spacing = 0
          TabOrder = 7
          OnClick = bLimpar2Click
        end
        object RxDBComboBox1: TRxDBComboBox
          Left = 612
          Top = 18
          Width = 39
          Height = 26
          DataField = 'Sinal_EntradaDespesa'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Items.Strings = (
            '+'
            '-'
            '')
          ParentColor = True
          ParentFont = False
          TabOrder = 8
          Values.Strings = (
            '+'
            '-'
            '')
          OnChange = cSinalEntradaIPIClick
          OnClick = cSinalEntradaIPIClick
        end
      end
      object DBCheckBox9: TDBCheckBox
        Left = 9
        Top = 495
        Width = 315
        Height = 17
        Caption = 'Zerar al'#237'quota do IPI na importa'#231#227'o do XML de terceiros.'
        DataField = 'Zerar_IPI'
        DataSource = Dados.dsReferenciasFiscais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = cInventarioEstoqueClick
      end
      object GroupBox3: TGroupBox
        Left = 7
        Top = 359
        Width = 754
        Height = 76
        Caption = 'C'#225'lculo do Valor da Base de C'#225'lculo do PIS/COFINS na Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        object Label18: TLabel
          Left = 6
          Top = 23
          Width = 45
          Height = 13
          Caption = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 98
          Top = 24
          Width = 17
          Height = 13
          Caption = 'IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 178
          Top = 24
          Width = 62
          Height = 13
          Caption = 'ICMS Oper'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 296
          Top = 24
          Width = 51
          Height = 13
          Caption = 'ICMS ST'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 397
          Top = 24
          Width = 30
          Height = 13
          Caption = 'Frete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lFormulaBC: TLabel
          Left = 56
          Top = 50
          Width = 667
          Height = 18
          AutoSize = False
          Caption = 'F'#243'rmula:'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold, fsItalic]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object cSinalBCIPI: TRxDBComboBox
          Left = 58
          Top = 18
          Width = 39
          Height = 26
          DataField = 'Sinal_BCIPI'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Items.Strings = (
            '+'
            '-'
            '')
          ParentColor = True
          ParentFont = False
          TabOrder = 0
          Values.Strings = (
            '+'
            '-'
            '')
          OnChange = cSinalBCIPIClick
          OnClick = cSinalBCIPIClick
        end
        object cSinalBCICMSOper: TRxDBComboBox
          Left = 137
          Top = 18
          Width = 39
          Height = 26
          DataField = 'Sinal_BCICMSOper'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Items.Strings = (
            '+'
            '-'
            '')
          ParentColor = True
          ParentFont = False
          TabOrder = 1
          Values.Strings = (
            '+'
            '-'
            '')
          OnChange = cSinalBCIPIClick
          OnClick = cSinalBCIPIClick
        end
        object cSinalBCICMSST: TRxDBComboBox
          Left = 255
          Top = 18
          Width = 39
          Height = 26
          DataField = 'Sinal_BCICMSST'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Items.Strings = (
            '+'
            '-'
            '')
          ParentColor = True
          ParentFont = False
          TabOrder = 2
          Values.Strings = (
            '+'
            '-'
            '')
          OnChange = cSinalBCIPIClick
          OnClick = cSinalBCIPIClick
        end
        object cSinalBCFrete: TRxDBComboBox
          Left = 356
          Top = 18
          Width = 39
          Height = 26
          DataField = 'Sinal_BCFrete'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial Black'
          Font.Style = [fsBold]
          Items.Strings = (
            '+'
            '-'
            '')
          ParentColor = True
          ParentFont = False
          TabOrder = 3
          Values.Strings = (
            '+'
            '-'
            '')
          OnChange = cSinalBCIPIClick
          OnClick = cSinalBCIPIClick
        end
        object StaticText42: TStaticText
          Left = 7
          Top = 50
          Width = 47
          Height = 18
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'F'#243'rmula'
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
          OnClick = StaticText8Click
        end
        object BitBtn1: TBitBtn
          Left = 724
          Top = 47
          Width = 23
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
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
          Layout = blGlyphBottom
          Margin = 4
          ParentFont = False
          Spacing = 0
          TabOrder = 5
          OnClick = BitBtn1Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&Parametriza'#231#227'o Financeira'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 5
        Top = 7
        Width = 756
        Height = 218
        Cursor = crHandPoint
        Caption = 'Classifica'#231#245'es Financeiras (Notas Terceiros/Servi'#231'os)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object lContaTotalNota: TStaticText
          Left = 6
          Top = 158
          Width = 95
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Total Nota'
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
          OnClick = lContaTotalNotaClick
        end
        object cContaTotalNota: TDBEdit
          Left = 103
          Top = 158
          Width = 87
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Classificacao_TotalNota'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
        end
        object cContaTotalNota2: TDBLookupComboBox
          Left = 192
          Top = 158
          Width = 558
          Height = 21
          DataField = 'Classificacao_TotalNota'
          DataSource = Dados.dsReferenciasFiscais
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsClassificacaoFinanceira
          ParentFont = False
          TabOrder = 13
        end
        object lContaICMSOper: TStaticText
          Left = 6
          Top = 20
          Width = 95
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ICMS Operacional'
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
          OnClick = lContaTotalNotaClick
        end
        object cContaICMSOper: TDBEdit
          Left = 103
          Top = 20
          Width = 87
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Classificacao_ICMSOper'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object cContaICMSOper2: TDBLookupComboBox
          Left = 192
          Top = 20
          Width = 558
          Height = 21
          DataField = 'Classificacao_ICMSOper'
          DataSource = Dados.dsReferenciasFiscais
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsClassificacaoFinanceira
          ParentFont = False
          TabOrder = 1
        end
        object lContaICMSSub: TStaticText
          Left = 6
          Top = 43
          Width = 95
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ICMS Substitutivo'
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
          OnClick = lContaTotalNotaClick
        end
        object cContaICMSSub: TDBEdit
          Left = 103
          Top = 43
          Width = 87
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Classificacao_ICMSSub'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object cContaICMSSub2: TDBLookupComboBox
          Left = 192
          Top = 43
          Width = 558
          Height = 21
          DataField = 'Classificacao_ICMSSub'
          DataSource = Dados.dsReferenciasFiscais
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsClassificacaoFinanceira
          ParentFont = False
          TabOrder = 3
        end
        object lContaIPI: TStaticText
          Left = 6
          Top = 66
          Width = 95
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'IPI'
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
          OnClick = lContaTotalNotaClick
        end
        object cContaIPI: TDBEdit
          Left = 103
          Top = 66
          Width = 87
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Classificacao_IPI'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object cContaIPI2: TDBLookupComboBox
          Left = 192
          Top = 66
          Width = 558
          Height = 21
          DataField = 'Classificacao_IPI'
          DataSource = Dados.dsReferenciasFiscais
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsClassificacaoFinanceira
          ParentFont = False
          TabOrder = 5
        end
        object lContaPIS: TStaticText
          Left = 6
          Top = 89
          Width = 95
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'PIS'
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
          OnClick = lContaTotalNotaClick
        end
        object cContaPIS: TDBEdit
          Left = 103
          Top = 89
          Width = 87
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Classificacao_PIS'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object cContaPIS2: TDBLookupComboBox
          Left = 192
          Top = 89
          Width = 558
          Height = 21
          DataField = 'Classificacao_PIS'
          DataSource = Dados.dsReferenciasFiscais
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsClassificacaoFinanceira
          ParentFont = False
          TabOrder = 7
        end
        object lContaCOFINS: TStaticText
          Left = 6
          Top = 112
          Width = 95
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'COFINS'
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
          OnClick = lContaTotalNotaClick
        end
        object cContaCOFINS: TDBEdit
          Left = 103
          Top = 112
          Width = 87
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Classificacao_COFINS'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object cContaCOFINS2: TDBLookupComboBox
          Left = 192
          Top = 112
          Width = 558
          Height = 21
          DataField = 'Classificacao_COFINS'
          DataSource = Dados.dsReferenciasFiscais
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsClassificacaoFinanceira
          ParentFont = False
          TabOrder = 9
        end
        object lContaISS: TStaticText
          Left = 6
          Top = 181
          Width = 95
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'ISS'
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
          OnClick = lContaTotalNotaClick
        end
        object cContaISS: TDBEdit
          Left = 103
          Top = 181
          Width = 87
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Classificacao_ISS'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
        end
        object cContaISS2: TDBLookupComboBox
          Left = 192
          Top = 181
          Width = 558
          Height = 21
          DataField = 'Classificacao_ISS'
          DataSource = Dados.dsReferenciasFiscais
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsClassificacaoFinanceira
          ParentFont = False
          TabOrder = 17
        end
        object lContaLiquido: TStaticText
          Left = 6
          Top = 135
          Width = 95
          Height = 21
          Cursor = crHandPoint
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Total L'#237'quido'
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
          OnClick = lContaTotalNotaClick
        end
        object cContaLiquido: TDBEdit
          Left = 103
          Top = 135
          Width = 87
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Classificacao_TotalProdutos'
          DataSource = Dados.dsReferenciasFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object cContaLiquido2: TDBLookupComboBox
          Left = 192
          Top = 135
          Width = 558
          Height = 21
          DataField = 'Classificacao_TotalProdutos'
          DataSource = Dados.dsReferenciasFiscais
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = Dados.dsClassificacaoFinanceira
          ParentFont = False
          TabOrder = 11
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Parametriza'#231#227'o &Cont'#225'bil'
      ImageIndex = 3
      DesignSize = (
        770
        595)
      object SpeedButton2: TSpeedButton
        Left = 513
        Top = 439
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
      object Bevel1: TBevel
        Left = 6
        Top = 427
        Width = 754
        Height = 2
      end
      object SpeedButton1: TSpeedButton
        Left = 513
        Top = 462
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
      object StaticText70: TStaticText
        Left = 9
        Top = 465
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
        TabOrder = 0
        Transparent = False
        StyleElements = []
      end
      object cPesquisa: TEdit
        Left = 112
        Top = 465
        Width = 400
        Height = 21
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 36
        OnChange = cPesquisaChange
      end
      object bCopiarContabil: TButton
        Left = 576
        Top = 433
        Width = 95
        Height = 28
        Hint = '  Copiar a parametriza'#231#227'o de contas de outro tipo de nota  '
        Caption = '&Importar Contas'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 37
        OnClick = bCopiarContabilClick
      end
      object bLimparContabil: TButton
        Left = 670
        Top = 433
        Width = 85
        Height = 28
        Hint = '  Copiar a parametriza'#231#227'o de contas de outro tipo de nota  '
        Caption = '&Limpar Contas'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 38
        OnClick = bLimparContabilClick
      end
      object DBLookupComboBox26: TDBLookupComboBox
        Left = 161
        Top = 338
        Width = 258
        Height = 21
        Color = 11468799
        DataField = 'Conta_Estoque_C'
        DataSource = Dados.dsReferenciasFiscais
        DropDownRows = 20
        DropDownWidth = 450
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
        TabOrder = 35
      end
      object cEstoqueD: TDBEdit
        Left = 78
        Top = 338
        Width = 82
        Height = 21
        Color = 11468799
        DataField = 'Conta_Estoque_C'
        DataSource = Dados.dsReferenciasFiscais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = mnVariavel
        TabOrder = 34
      end
      object StaticText68: TStaticText
        Left = 62
        Top = 339
        Width = 15
        Height = 21
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'D'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 39
        Transparent = False
        StyleElements = []
      end
      object cCOFINS_NomeC: TDBLookupComboBox
        Left = 161
        Top = 203
        Width = 258
        Height = 21
        DataField = 'Conta_COFINS_C'
        DataSource = Dados.dsReferenciasFiscais
        DropDownRows = 20
        DropDownWidth = 450
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
        TabOrder = 25
      end
      object cPIS_NomeC: TDBLookupComboBox
        Left = 161
        Top = 158
        Width = 258
        Height = 21
        Color = 11468799
        DataField = 'Conta_PIS_C'
        DataSource = Dados.dsReferenciasFiscais
        DropDownRows = 20
        DropDownWidth = 450
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
        TabOrder = 20
      end
      object cIPI_NomeC: TDBLookupComboBox
        Left = 161
        Top = 113
        Width = 258
        Height = 21
        DataField = 'Conta_IPI_C'
        DataSource = Dados.dsReferenciasFiscais
        DropDownRows = 20
        DropDownWidth = 450
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
        TabOrder = 15
      end
      object cICMSSub_NomeC: TDBLookupComboBox
        Left = 161
        Top = 68
        Width = 258
        Height = 21
        Color = 11468799
        DataField = 'Conta_ICMSSub_C'
        DataSource = Dados.dsReferenciasFiscais
        DropDownRows = 20
        DropDownWidth = 450
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
        TabOrder = 10
      end
      object cICMSOper_NomeC: TDBLookupComboBox
        Left = 161
        Top = 23
        Width = 258
        Height = 21
        Color = clWhite
        DataField = 'Conta_ICMSOper_C'
        DataSource = Dados.dsReferenciasFiscais
        DropDownRows = 20
        DropDownWidth = 450
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
        TabOrder = 5
      end
      object StaticText19: TStaticText
        Left = 1
        Top = 1
        Width = 60
        Height = 43
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'ICMS Oper.'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 40
        Transparent = False
        StyleElements = []
      end
      object DBLookupComboBox4: TDBLookupComboBox
        Left = 161
        Top = 1
        Width = 258
        Height = 21
        Color = clWhite
        DataField = 'Conta_ICMSOper_D'
        DataSource = Dados.dsReferenciasFiscais
        DropDownRows = 20
        DropDownWidth = 450
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
        TabOrder = 2
      end
      object cICMSOper_CodD: TDBEdit
        Left = 78
        Top = 1
        Width = 82
        Height = 21
        Color = clWhite
        DataField = 'Conta_ICMSOper_D'
        DataSource = Dados.dsReferenciasFiscais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = mnVariavel
        TabOrder = 1
      end
      object StaticText20: TStaticText
        Left = 1
        Top = 46
        Width = 60
        Height = 43
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'ICMS Subs.'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 41
        Transparent = False
        StyleElements = []
      end
      object StaticText21: TStaticText
        Left = 1
        Top = 91
        Width = 60
        Height = 43
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'IPI'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 42
        Transparent = False
        StyleElements = []
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 470
        Top = 1
        Width = 294
        Height = 21
        DataField = 'Historico_ICMSOper'
        DataSource = Dados.dsReferenciasFiscais
        DropDownRows = 20
        DropDownWidth = 450
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = dmContab.dsHistoricos
        NullValueKey = 46
        ParentFont = False
        TabOrder = 3
      end
      object cICMSSub_CodD: TDBEdit
        Left = 78
        Top = 46
        Width = 82
        Height = 21
        Color = 11468799
        DataField = 'Conta_ICMSSub_D'
        DataSource = Dados.dsReferenciasFiscais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = mnVariavel
        TabOrder = 6
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 470
        Top = 46
        Width = 294
        Height = 21
        Color = 11468799
        DataField = 'Historico_ICMSSub'
        DataSource = Dados.dsReferenciasFiscais
        DropDownRows = 20
        DropDownWidth = 450
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = dmContab.dsHistoricos
        NullValueKey = 46
        ParentFont = False
        TabOrder = 8
      end
      object DBLookupComboBox8: TDBLookupComboBox
        Left = 161
        Top = 91
        Width = 258
        Height = 21
        DataField = 'Conta_IPI_D'
        DataSource = Dados.dsReferenciasFiscais
        DropDownRows = 20
        DropDownWidth = 450
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
        TabOrder = 12
      end
      object cIPI_CodD: TDBEdit
        Left = 78
        Top = 91
        Width = 82
        Height = 21
        DataField = 'Conta_IPI_D'
        DataSource = Dados.dsReferenciasFiscais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = mnVariavel
        TabOrder = 11
      end
      object DBLookupComboBox9: TDBLookupComboBox
        Left = 470
        Top = 90
        Width = 294
        Height = 21
        DataField = 'Historico_IPI'
        DataSource = Dados.dsReferenciasFiscais
        DropDownRows = 20
        DropDownWidth = 450
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = dmContab.dsHistoricos
        NullValueKey = 46
        ParentFont = False
        TabOrder = 13
      end
      object lPIS: TStaticText
        Left = 1
        Top = 136
        Width = 60
        Height = 43
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'PIS'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 43
        Transparent = False
        StyleElements = []
      end
      object DBLookupComboBox16: TDBLookupComboBox
        Left = 161
        Top = 136
        Width = 258
        Height = 21
        Color = 11468799
        DataField = 'Conta_PIS_D'
        DataSource = Dados.dsReferenciasFiscais
        DropDownRows = 20
        DropDownWidth = 450
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
        TabOrder = 17
      end
      object DBEdit4: TDBEdit
        Left = 78
        Top = 136
        Width = 82
        Height = 21
        Color = 11468799
        DataField = 'Conta_PIS_D'
        DataSource = Dados.dsReferenciasFiscais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = mnVariavel
        TabOrder = 16
      end
      object DBLookupComboBox17: TDBLookupComboBox
        Left = 470
        Top = 137
        Width = 294
        Height = 21
        Color = 11468799
        DataField = 'Historico_PIS'
        DataSource = Dados.dsReferenciasFiscais
        DropDownRows = 20
        DropDownWidth = 450
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = dmContab.dsHistoricos
        NullValueKey = 46
        ParentFont = False
        TabOrder = 18
      end
      object lCOFINS: TStaticText
        Left = 1
        Top = 181
        Width = 60
        Height = 43
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'COFINS'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 44
        Transparent = False
        StyleElements = []
      end
      object DBLookupComboBox18: TDBLookupComboBox
        Left = 161
        Top = 181
        Width = 258
        Height = 21
        DataField = 'Conta_COFINS_D'
        DataSource = Dados.dsReferenciasFiscais
        DropDownRows = 20
        DropDownWidth = 450
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
        TabOrder = 22
      end
      object DBEdit23: TDBEdit
        Left = 78
        Top = 181
        Width = 82
        Height = 21
        DataField = 'Conta_COFINS_D'
        DataSource = Dados.dsReferenciasFiscais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = mnVariavel
        TabOrder = 21
      end
      object DBLookupComboBox19: TDBLookupComboBox
        Left = 470
        Top = 180
        Width = 294
        Height = 21
        DataField = 'Historico_COFINS'
        DataSource = Dados.dsReferenciasFiscais
        DropDownRows = 20
        DropDownWidth = 450
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = dmContab.dsHistoricos
        NullValueKey = 46
        ParentFont = False
        TabOrder = 23
      end
      object cICMSOper_CodC: TDBEdit
        Left = 78
        Top = 23
        Width = 82
        Height = 21
        Color = clWhite
        DataField = 'Conta_ICMSOper_C'
        DataSource = Dados.dsReferenciasFiscais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = mnVariavel
        TabOrder = 4
      end
      object cIPI_CodC: TDBEdit
        Left = 78
        Top = 113
        Width = 82
        Height = 21
        DataField = 'Conta_IPI_C'
        DataSource = Dados.dsReferenciasFiscais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = mnVariavel
        TabOrder = 14
      end
      object cPIS_CodC: TDBEdit
        Left = 78
        Top = 158
        Width = 82
        Height = 21
        Color = 11468799
        DataField = 'Conta_PIS_C'
        DataSource = Dados.dsReferenciasFiscais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = mnVariavel
        TabOrder = 19
      end
      object cCOFINS_CodC: TDBEdit
        Left = 78
        Top = 203
        Width = 82
        Height = 21
        DataField = 'Conta_COFINS_C'
        DataSource = Dados.dsReferenciasFiscais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = mnVariavel
        TabOrder = 24
      end
      object StaticText26: TStaticText
        Left = 420
        Top = 1
        Width = 48
        Height = 43
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
        TabOrder = 45
        Transparent = False
        StyleElements = []
      end
      object StaticText27: TStaticText
        Left = 420
        Top = 46
        Width = 48
        Height = 43
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
        TabOrder = 46
        Transparent = False
        StyleElements = []
      end
      object StaticText28: TStaticText
        Left = 420
        Top = 91
        Width = 48
        Height = 43
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
        TabOrder = 47
        Transparent = False
        StyleElements = []
      end
      object StaticText32: TStaticText
        Left = 420
        Top = 137
        Width = 48
        Height = 43
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
        TabOrder = 48
        Transparent = False
        StyleElements = []
      end
      object StaticText33: TStaticText
        Left = 420
        Top = 181
        Width = 48
        Height = 43
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
        TabOrder = 49
        Transparent = False
        StyleElements = []
      end
      object DBLookupComboBox21: TDBLookupComboBox
        Left = 161
        Top = 46
        Width = 258
        Height = 21
        Color = 11468799
        DataField = 'Conta_ICMSSub_D'
        DataSource = Dados.dsReferenciasFiscais
        DropDownRows = 20
        DropDownWidth = 450
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
        TabOrder = 7
      end
      object cICMSSub_CodC: TDBEdit
        Left = 78
        Top = 68
        Width = 82
        Height = 21
        Color = 11468799
        DataField = 'Conta_ICMSSub_C'
        DataSource = Dados.dsReferenciasFiscais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = mnVariavel
        TabOrder = 9
      end
      object StaticText35: TStaticText
        Left = 62
        Top = 1
        Width = 15
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'D'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 50
        Transparent = False
        StyleElements = []
      end
      object StaticText36: TStaticText
        Left = 62
        Top = 23
        Width = 15
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 51
        Transparent = False
        StyleElements = []
      end
      object StaticText37: TStaticText
        Left = 62
        Top = 46
        Width = 15
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'D'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 52
        Transparent = False
        StyleElements = []
      end
      object StaticText38: TStaticText
        Left = 62
        Top = 68
        Width = 15
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 53
        Transparent = False
        StyleElements = []
      end
      object StaticText40: TStaticText
        Left = 62
        Top = 91
        Width = 15
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'D'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 54
        Transparent = False
        StyleElements = []
      end
      object StaticText41: TStaticText
        Left = 62
        Top = 113
        Width = 15
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 55
        Transparent = False
        StyleElements = []
      end
      object StaticText48: TStaticText
        Left = 62
        Top = 136
        Width = 15
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'D'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 56
        Transparent = False
        StyleElements = []
      end
      object StaticText49: TStaticText
        Left = 62
        Top = 158
        Width = 15
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 57
        Transparent = False
        StyleElements = []
      end
      object StaticText50: TStaticText
        Left = 62
        Top = 181
        Width = 15
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'D'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 58
        Transparent = False
        StyleElements = []
      end
      object StaticText51: TStaticText
        Left = 62
        Top = 203
        Width = 15
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 59
        Transparent = False
        StyleElements = []
      end
      object StaticText55: TStaticText
        Left = 62
        Top = 317
        Width = 15
        Height = 21
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 60
        Transparent = False
        StyleElements = []
      end
      object DBLookupComboBox23: TDBLookupComboBox
        Left = 470
        Top = 225
        Width = 294
        Height = 21
        Color = 11468799
        DataField = 'Historico_TotalProdutos'
        DataSource = Dados.dsReferenciasFiscais
        DropDownRows = 20
        DropDownWidth = 450
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = dmContab.dsHistoricos
        NullValueKey = 46
        ParentFont = False
        TabOrder = 28
      end
      object StaticText62: TStaticText
        Left = 420
        Top = 226
        Width = 48
        Height = 43
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
        TabOrder = 61
        Transparent = False
        StyleElements = []
      end
      object StaticText63: TStaticText
        Left = 1
        Top = 226
        Width = 60
        Height = 43
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Total Produtos / Servi'#231'os'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 62
        Transparent = False
        StyleElements = []
      end
      object StaticText64: TStaticText
        Left = 62
        Top = 226
        Width = 15
        Height = 21
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'D'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 63
        Transparent = False
        StyleElements = []
      end
      object StaticText65: TStaticText
        Left = 62
        Top = 248
        Width = 15
        Height = 21
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 64
        Transparent = False
        StyleElements = []
      end
      object cHistoricoProdutos: TDBLookupComboBox
        Left = 161
        Top = 226
        Width = 258
        Height = 21
        Color = 11468799
        DataField = 'Conta_TotalProdutos_D'
        DataSource = Dados.dsReferenciasFiscais
        DropDownRows = 20
        DropDownWidth = 450
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
        TabOrder = 27
      end
      object cProdutosD: TDBEdit
        Left = 78
        Top = 226
        Width = 82
        Height = 21
        Color = 11468799
        DataField = 'Conta_TotalProdutos_D'
        DataSource = Dados.dsReferenciasFiscais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = mnVariavel
        TabOrder = 26
      end
      object cProdutosC: TDBEdit
        Left = 78
        Top = 248
        Width = 82
        Height = 21
        Color = 11468799
        DataField = 'Conta_TotalProdutos_C'
        DataSource = Dados.dsReferenciasFiscais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = mnVariavel
        TabOrder = 29
      end
      object DBLookupComboBox25: TDBLookupComboBox
        Left = 161
        Top = 248
        Width = 258
        Height = 21
        Color = 11468799
        DataField = 'Conta_TotalProdutos_C'
        DataSource = Dados.dsReferenciasFiscais
        DropDownRows = 20
        DropDownWidth = 450
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
        TabOrder = 30
      end
      object cHistoricoEstoque: TDBLookupComboBox
        Left = 470
        Top = 316
        Width = 294
        Height = 21
        Color = 11468799
        DataField = 'Historico_Estoque'
        DataSource = Dados.dsReferenciasFiscais
        DropDownRows = 20
        DropDownWidth = 450
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = dmContab.dsHistoricos
        NullValueKey = 46
        ParentFont = False
        TabOrder = 33
      end
      object StaticText66: TStaticText
        Left = 420
        Top = 317
        Width = 48
        Height = 43
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
        TabOrder = 65
        Transparent = False
        StyleElements = []
      end
      object StaticText67: TStaticText
        Left = 1
        Top = 317
        Width = 60
        Height = 43
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Estoque'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 66
        Transparent = False
        StyleElements = []
      end
      object cEstoqueC: TDBEdit
        Left = 78
        Top = 316
        Width = 82
        Height = 21
        Color = 11468799
        DataField = 'Conta_Estoque_D'
        DataSource = Dados.dsReferenciasFiscais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = mnVariavel
        TabOrder = 31
      end
      object DBLookupComboBox27: TDBLookupComboBox
        Left = 161
        Top = 316
        Width = 258
        Height = 21
        Color = 11468799
        DataField = 'Conta_Estoque_D'
        DataSource = Dados.dsReferenciasFiscais
        DropDownRows = 20
        DropDownWidth = 450
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
        TabOrder = 32
      end
      object StaticText22: TStaticText
        Left = 9
        Top = 488
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
        TabOrder = 67
        Transparent = False
        StyleElements = []
      end
      object cPesquisaH: TEdit
        Left = 112
        Top = 488
        Width = 400
        Height = 21
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 68
        OnChange = cPesquisaHChange
      end
      object bCopiarTodos: TButton
        Left = 576
        Top = 460
        Width = 179
        Height = 28
        Hint = '  Copiar a parametriza'#231#227'o de contas de outro tipo de nota  '
        Caption = '&Exporta para todas as Refer'#234'ncias'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 69
        OnClick = bCopiarTodosClick
      end
      object DBLookupComboBox10: TDBLookupComboBox
        Left = 470
        Top = 270
        Width = 294
        Height = 21
        Color = clWhite
        DataField = 'Historico_TotalNota'
        DataSource = Dados.dsReferenciasFiscais
        DropDownRows = 20
        DropDownWidth = 450
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Codigo;Descricao'
        ListFieldIndex = 1
        ListSource = dmContab.dsHistoricos
        NullValueKey = 46
        ParentFont = False
        TabOrder = 70
      end
      object StaticText23: TStaticText
        Left = 420
        Top = 271
        Width = 48
        Height = 43
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
        TabOrder = 71
        Transparent = False
        StyleElements = []
      end
      object StaticText24: TStaticText
        Left = 1
        Top = 272
        Width = 60
        Height = 43
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Total Nota'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 72
        Transparent = False
        StyleElements = []
      end
      object StaticText25: TStaticText
        Left = 62
        Top = 272
        Width = 15
        Height = 21
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'D'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 73
        Transparent = False
        StyleElements = []
      end
      object StaticText29: TStaticText
        Left = 62
        Top = 294
        Width = 15
        Height = 21
        Alignment = taCenter
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'C'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -9
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 74
        Transparent = False
        StyleElements = []
      end
      object DBLookupComboBox11: TDBLookupComboBox
        Left = 161
        Top = 271
        Width = 258
        Height = 21
        Color = clWhite
        DataField = 'Conta_TotalNota_D'
        DataSource = Dados.dsReferenciasFiscais
        DropDownRows = 20
        DropDownWidth = 450
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
        TabOrder = 75
      end
      object DBEdit7: TDBEdit
        Left = 78
        Top = 271
        Width = 82
        Height = 21
        Color = clWhite
        DataField = 'Conta_TotalNota_D'
        DataSource = Dados.dsReferenciasFiscais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = mnVariavel
        TabOrder = 76
      end
      object DBEdit8: TDBEdit
        Left = 78
        Top = 293
        Width = 82
        Height = 21
        Color = clWhite
        DataField = 'Conta_TotalNota_C'
        DataSource = Dados.dsReferenciasFiscais
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = mnVariavel
        TabOrder = 77
      end
      object DBLookupComboBox12: TDBLookupComboBox
        Left = 161
        Top = 293
        Width = 258
        Height = 21
        Color = clWhite
        DataField = 'Conta_TotalNota_C'
        DataSource = Dados.dsReferenciasFiscais
        DropDownRows = 20
        DropDownWidth = 450
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
        TabOrder = 78
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Lista'
      ImageIndex = 4
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 770
        Height = 595
        Align = alClient
        DataSource = Dados.dsReferenciasFiscais
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 72
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
            Width = 564
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Incentivo_Fiscal'
            Title.Alignment = taCenter
            Title.Caption = 'Incentivo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 107
            Visible = True
          end>
      end
    end
  end
  object tCodigo: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM ReferenciasFiscais')
    Left = 448
    Top = 8
    object tCodigoCodigo: TSmallintField
      FieldName = 'Codigo'
      Origin = '.'
      ReadOnly = True
    end
  end
  object mnVariavel: TPopupMenu
    Left = 552
    Top = 8
    object FORNECEDORES1: TMenuItem
      Caption = '&FORNECEDOR (Conta do cadastro do fornecedor)'
      OnClick = FORNECEDORES1Click
    end
    object PROCESSO1: TMenuItem
      Caption = '&PROCESSO (Conta do processo)'
      OnClick = PROCESSO1Click
    end
    object DEVOLUO1: TMenuItem
      Caption = '&DEVOLU'#199#195'O (Saida/Entrada)'
      Visible = False
      OnClick = DEVOLUO1Click
    end
    object CLIENTE1: TMenuItem
      Caption = 'CLIENTE (SERVI'#199'O PRESTADO)'
      Visible = False
      OnClick = CLIENTE1Click
    end
  end
  object tNotas: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      '')
    Left = 392
    Top = 8
  end
  object tCopia: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 496
    Top = 8
  end
end
