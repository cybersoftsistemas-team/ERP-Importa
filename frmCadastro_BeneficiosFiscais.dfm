object Cadastro_BeneficiosFiscais: TCadastro_BeneficiosFiscais
  Left = 319
  Top = 14
  BorderStyle = bsDialog
  Caption = 'Cadastro_BeneficiosFiscais'
  ClientHeight = 699
  ClientWidth = 650
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
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 650
    Height = 45
    Align = alTop
    Stretch = True
    ExplicitWidth = 645
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 3
    Width = 142
    Height = 21
    Caption = 'BENEF'#205'CIOS FISCAIS'
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
    Width = 171
    Height = 18
    Caption = 'Tabela de benef'#237'cios fiscais.'
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
    Top = 667
    Width = 650
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      AlignWithMargins = True
      Left = 574
      Top = 2
      Width = 74
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
      Width = 360
      Height = 28
      Cursor = crHandPoint
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      DataSource = Dados.dsIncentivosFiscais
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alLeft
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
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      BeforeAction = NavegaBeforeAction
      OnClick = NavegaClick
    end
  end
  object Grade: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 567
    Width = 644
    Height = 97
    Align = alBottom
    DataSource = Dados.dsIncentivosFiscais
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
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
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
        FieldName = 'Nome'
        Title.Alignment = taCenter
        Width = 428
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Codigo_Receita'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd. Receita'
        Width = 91
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Estado'
        Title.Alignment = taCenter
        Width = 51
        Visible = True
      end>
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 48
    Width = 644
    Height = 517
    ActivePage = TabSheet1
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabHeight = 28
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Benficios'
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 630
        Height = 473
        Align = alClient
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 0
        object cCodigo: TDBEdit
          Left = 169
          Top = 11
          Width = 71
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Codigo'
          DataSource = Dados.dsIncentivosFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnChange = cCodigoChange
        end
        object StaticText1: TStaticText
          Left = 11
          Top = 11
          Width = 156
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
          TabOrder = 21
          Transparent = False
          StyleElements = []
        end
        object cNome: TDBEdit
          Left = 169
          Top = 34
          Width = 166
          Height = 21
          DataField = 'Nome'
          DataSource = Dados.dsIncentivosFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object StaticText8: TStaticText
          Left = 11
          Top = 34
          Width = 156
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
          TabOrder = 22
          Transparent = False
          StyleElements = []
        end
        object GroupBox1: TGroupBox
          Left = 11
          Top = 329
          Width = 604
          Height = 43
          Caption = 'Composi'#231#227'o da BC ICMS na Entrada'
          TabOrder = 19
          object DBCheckBox1: TDBCheckBox
            Left = 6
            Top = 17
            Width = 46
            Height = 17
            Alignment = taLeftJustify
            Caption = 'FOB'
            DataField = 'BCICMSEnt_FOB'
            DataSource = Dados.dsIncentivosFiscais
            TabOrder = 0
          end
          object DBCheckBox2: TDBCheckBox
            Left = 78
            Top = 17
            Width = 46
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Frete'
            DataField = 'BCICMSEnt_Frete'
            DataSource = Dados.dsIncentivosFiscais
            TabOrder = 1
          end
          object DBCheckBox3: TDBCheckBox
            Left = 150
            Top = 17
            Width = 57
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Seguro'
            DataField = 'BCICMSEnt_Seguro'
            DataSource = Dados.dsIncentivosFiscais
            TabOrder = 2
          end
          object DBCheckBox4: TDBCheckBox
            Left = 238
            Top = 17
            Width = 27
            Height = 17
            Alignment = taLeftJustify
            Caption = 'II'
            DataField = 'BCICMSEnt_II'
            DataSource = Dados.dsIncentivosFiscais
            TabOrder = 3
          end
          object DBCheckBox5: TDBCheckBox
            Left = 294
            Top = 17
            Width = 34
            Height = 17
            Alignment = taLeftJustify
            Caption = 'IPI'
            DataField = 'BCICMSEnt_IPI'
            DataSource = Dados.dsIncentivosFiscais
            TabOrder = 4
          end
          object DBCheckBox6: TDBCheckBox
            Left = 355
            Top = 17
            Width = 40
            Height = 17
            Alignment = taLeftJustify
            Caption = 'PIS'
            DataField = 'BCICMSEnt_PIS'
            DataSource = Dados.dsIncentivosFiscais
            TabOrder = 5
          end
          object DBCheckBox7: TDBCheckBox
            Left = 418
            Top = 17
            Width = 61
            Height = 17
            Alignment = taLeftJustify
            Caption = 'COFINS'
            DataField = 'BCICMSEnt_COFINS'
            DataSource = Dados.dsIncentivosFiscais
            TabOrder = 6
          end
          object DBCheckBox15: TDBCheckBox
            Left = 503
            Top = 17
            Width = 70
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Despesas'
            DataField = 'BCICMSEnt_Despesas'
            DataSource = Dados.dsIncentivosFiscais
            TabOrder = 7
          end
        end
        object StaticText2: TStaticText
          Left = 338
          Top = 35
          Width = 44
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
          TabOrder = 23
          Transparent = False
          StyleElements = []
        end
        object cUF: TDBEdit
          Left = 384
          Top = 35
          Width = 38
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Estado'
          DataSource = Dados.dsIncentivosFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnChange = cUFChange
        end
        object StaticText3: TStaticText
          Left = 11
          Top = 57
          Width = 156
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'C'#243'digo Receita (At'#233' 4%)'
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
        object DBEdit2: TDBEdit
          Left = 169
          Top = 57
          Width = 78
          Height = 21
          DataField = 'Codigo_Receita'
          DataSource = Dados.dsIncentivosFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object StaticText4: TStaticText
          Left = 11
          Top = 126
          Width = 156
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Venc.ICMS Operacional'
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
        object DBEdit3: TDBEdit
          Left = 169
          Top = 126
          Width = 78
          Height = 21
          DataField = 'Vencimento_ICMS'
          DataSource = Dados.dsIncentivosFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 424
          Top = 35
          Width = 196
          Height = 21
          DataField = 'Estado'
          DataSource = Dados.dsIncentivosFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Nome'
          ListFieldIndex = 1
          ListSource = Dados.dsEstados
          ParentFont = False
          TabOrder = 3
        end
        object StaticText5: TStaticText
          Left = 11
          Top = 149
          Width = 156
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Redu'#231#227'o BC ICMS Entrada (%)'
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
        object DBEdit4: TDBEdit
          Left = 169
          Top = 149
          Width = 78
          Height = 21
          DataField = 'ReducaoICMS_Entrada'
          DataSource = Dados.dsIncentivosFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object StaticText6: TStaticText
          Left = 250
          Top = 149
          Width = 116
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Red.BC ICMS Sa'#237'da (%)'
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
        object DBEdit5: TDBEdit
          Left = 368
          Top = 149
          Width = 78
          Height = 21
          DataField = 'ReducaoICMS_Saida'
          DataSource = Dados.dsIncentivosFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object GroupBox2: TGroupBox
          Left = 11
          Top = 374
          Width = 604
          Height = 43
          Caption = 'Composi'#231#227'o da BC ICMS na Sa'#237'da'
          TabOrder = 20
          object DBCheckBox8: TDBCheckBox
            Left = 6
            Top = 17
            Width = 46
            Height = 17
            Alignment = taLeftJustify
            Caption = 'FOB'
            DataField = 'BCICMSSai_FOB'
            DataSource = Dados.dsIncentivosFiscais
            TabOrder = 0
          end
          object DBCheckBox9: TDBCheckBox
            Left = 78
            Top = 17
            Width = 46
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Frete'
            DataField = 'BCICMSSai_Frete'
            DataSource = Dados.dsIncentivosFiscais
            TabOrder = 1
          end
          object DBCheckBox10: TDBCheckBox
            Left = 150
            Top = 17
            Width = 57
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Seguro'
            DataField = 'BCICMSSai_Seguro'
            DataSource = Dados.dsIncentivosFiscais
            TabOrder = 2
          end
          object DBCheckBox11: TDBCheckBox
            Left = 238
            Top = 17
            Width = 27
            Height = 17
            Alignment = taLeftJustify
            Caption = 'II'
            DataField = 'BCICMSSai_II'
            DataSource = Dados.dsIncentivosFiscais
            TabOrder = 3
          end
          object DBCheckBox12: TDBCheckBox
            Left = 294
            Top = 17
            Width = 34
            Height = 17
            Alignment = taLeftJustify
            Caption = 'IPI'
            DataField = 'BCICMSSai_IPI'
            DataSource = Dados.dsIncentivosFiscais
            TabOrder = 4
          end
          object DBCheckBox13: TDBCheckBox
            Left = 355
            Top = 17
            Width = 40
            Height = 17
            Alignment = taLeftJustify
            Caption = 'PIS'
            DataField = 'BCICMSSai_PIS'
            DataSource = Dados.dsIncentivosFiscais
            TabOrder = 5
          end
          object DBCheckBox14: TDBCheckBox
            Left = 418
            Top = 17
            Width = 61
            Height = 17
            Alignment = taLeftJustify
            Caption = 'COFINS'
            DataField = 'BCICMSSai_COFINS'
            DataSource = Dados.dsIncentivosFiscais
            TabOrder = 6
          end
          object DBCheckBox16: TDBCheckBox
            Left = 503
            Top = 17
            Width = 70
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Despesas'
            DataField = 'BCICMSSai_Despesas'
            DataSource = Dados.dsIncentivosFiscais
            TabOrder = 7
          end
        end
        object DBCheckBox17: TDBCheckBox
          Left = 457
          Top = 13
          Width = 89
          Height = 18
          Alignment = taLeftJustify
          Caption = 'ICMS Diferido'
          DataField = 'ICMS_Diferido'
          DataSource = Dados.dsIncentivosFiscais
          TabOrder = 17
        end
        object StaticText9: TStaticText
          Left = 250
          Top = 126
          Width = 116
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Venc.ICMS Substitutivo'
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
        object DBEdit6: TDBEdit
          Left = 368
          Top = 126
          Width = 78
          Height = 21
          DataField = 'Vencimento_ICMSSub'
          DataSource = Dados.dsIncentivosFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object StaticText10: TStaticText
          Left = 11
          Top = 172
          Width = 156
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Redu'#231#227'o Aliquota ICMS (%)'
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
        object DBEdit7: TDBEdit
          Left = 169
          Top = 172
          Width = 78
          Height = 21
          DataField = 'Reducao_AliquotaICMS'
          DataSource = Dados.dsIncentivosFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
        end
        object DBCheckBox18: TDBCheckBox
          Left = 552
          Top = 13
          Width = 70
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Desativar'
          DataField = 'Desativada'
          DataSource = Dados.dsIncentivosFiscais
          TabOrder = 16
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 250
          Top = 58
          Width = 370
          Height = 21
          DataField = 'Codigo_Receita'
          DataSource = Dados.dsIncentivosFiscais
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
          TabOrder = 5
        end
        object StaticText12: TStaticText
          Left = 11
          Top = 195
          Width = 156
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Cau'#231#227'o Reten'#231#227'o BANDES'
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
        object DBEdit1: TDBEdit
          Left = 169
          Top = 195
          Width = 78
          Height = 21
          DataField = 'Caucao_RetBANDES'
          DataSource = Dados.dsIncentivosFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object StaticText7: TStaticText
          Left = 11
          Top = 218
          Width = 156
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Valor Taxa Reg.Contrato Cart'#243'rio'
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
        object DBEdit8: TDBEdit
          Left = 169
          Top = 218
          Width = 78
          Height = 21
          DataField = 'Valor_TaxaCartorio'
          DataSource = Dados.dsIncentivosFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 13
        end
        object StaticText14: TStaticText
          Left = 250
          Top = 218
          Width = 116
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Perc. Reg.Cont. Cart'#243'rio'
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
        object DBEdit9: TDBEdit
          Left = 368
          Top = 218
          Width = 78
          Height = 21
          DataField = 'Percentual_TaxaCartorio'
          DataSource = Dados.dsIncentivosFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
        end
        object StaticText15: TStaticText
          Left = 250
          Top = 195
          Width = 116
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Taxa Leil'#227'o BANDES'
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
        end
        object DBEdit10: TDBEdit
          Left = 368
          Top = 195
          Width = 78
          Height = 21
          DataField = 'Taxa_LeilaoBANDES'
          DataSource = Dados.dsIncentivosFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
        end
        object StaticText16: TStaticText
          Left = 449
          Top = 218
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Lim.Vlr Tx.Cont.'
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
        end
        object DBEdit11: TDBEdit
          Left = 550
          Top = 218
          Width = 70
          Height = 21
          DataField = 'Limite_Contrato'
          DataSource = Dados.dsIncentivosFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
        end
        object GroupBox3: TGroupBox
          Left = 11
          Top = 240
          Width = 604
          Height = 88
          Caption = 'C'#243'digo do ajustes/benef'#237'cio/incentivo'
          TabOrder = 18
          object StaticText17: TStaticText
            Left = 6
            Top = 15
            Width = 60
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'NF Entrada'
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
          object DBEdit12: TDBEdit
            Left = 68
            Top = 15
            Width = 91
            Height = 21
            DataField = 'Codigo_AjusteNFE'
            DataSource = Dados.dsIncentivosFiscais
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
          end
          object StaticText18: TStaticText
            Left = 6
            Top = 38
            Width = 60
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'NF Sa'#237'da'
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
          object DBEdit13: TDBEdit
            Left = 68
            Top = 38
            Width = 91
            Height = 21
            DataField = 'Codigo_AjusteNFS'
            DataSource = Dados.dsIncentivosFiscais
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
          end
          object StaticText19: TStaticText
            Left = 6
            Top = 61
            Width = 60
            Height = 21
            AutoSize = False
            BevelInner = bvNone
            BevelKind = bkSoft
            BevelOuter = bvSpace
            BorderStyle = sbsSunken
            Caption = 'CTR'
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
          object DBEdit14: TDBEdit
            Left = 68
            Top = 61
            Width = 91
            Height = 21
            DataField = 'Codigo_AjusteCTR'
            DataSource = Dados.dsIncentivosFiscais
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
          end
          object DBEdit15: TDBEdit
            Left = 160
            Top = 15
            Width = 439
            Height = 21
            DataField = 'Descricao_AjusteNFE'
            DataSource = Dados.dsIncentivosFiscais
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
          object DBEdit16: TDBEdit
            Left = 160
            Top = 38
            Width = 439
            Height = 21
            DataField = 'Descricao_AjusteNFS'
            DataSource = Dados.dsIncentivosFiscais
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
          end
          object DBEdit17: TDBEdit
            Left = 160
            Top = 61
            Width = 439
            Height = 21
            DataField = 'Descricao_AjusteCTR'
            DataSource = Dados.dsIncentivosFiscais
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
          end
        end
        object StaticText20: TStaticText
          Left = 11
          Top = 80
          Width = 156
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'C'#243'digo Receita (Acima 4%)'
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
        end
        object DBEdit18: TDBEdit
          Left = 169
          Top = 80
          Width = 78
          Height = 21
          DataField = 'Codigo_Receita2'
          DataSource = Dados.dsIncentivosFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 36
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 250
          Top = 81
          Width = 370
          Height = 21
          DataField = 'Codigo_Receita2'
          DataSource = Dados.dsIncentivosFiscais
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
          TabOrder = 37
        end
        object StaticText21: TStaticText
          Left = 11
          Top = 103
          Width = 156
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'C'#243'digo Obrig.ICMS Recolher'
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
        end
        object DBEdit19: TDBEdit
          Left = 169
          Top = 103
          Width = 78
          Height = 21
          DataField = 'Codigo_Recolher'
          DataSource = Dados.dsIncentivosFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 39
        end
        object StaticText22: TStaticText
          Left = 449
          Top = 149
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = '% ICMS Dif.(Sa'#237'da)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 40
          Transparent = False
          StyleElements = []
        end
        object DBEdit20: TDBEdit
          Left = 550
          Top = 149
          Width = 70
          Height = 21
          DataField = 'ICMS_DiferidoSai'
          DataSource = Dados.dsIncentivosFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 41
        end
        object StaticText23: TStaticText
          Left = 449
          Top = 126
          Width = 100
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = '% ICMS Dif.(Entrada)'
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
        end
        object DBEdit21: TDBEdit
          Left = 550
          Top = 126
          Width = 70
          Height = 21
          DataField = 'ICMS_DiferidoEnt'
          DataSource = Dados.dsIncentivosFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 43
        end
        object StaticText24: TStaticText
          Left = 250
          Top = 172
          Width = 116
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Percent.Beneficio (%)'
          Color = 7293440
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 44
          Transparent = False
          StyleElements = []
        end
        object DBEdit22: TDBEdit
          Left = 368
          Top = 172
          Width = 78
          Height = 21
          DataField = 'Percentual_Beneficio'
          DataSource = Dados.dsIncentivosFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 45
        end
        object DBRadioGroup1: TDBRadioGroup
          Left = 11
          Top = 423
          Width = 297
          Height = 42
          Caption = 'Forma de Calculos para apura'#231#227'o ICMS a Recuperar'
          Columns = 2
          DataField = 'Forma_Calculo'
          DataSource = Dados.dsIncentivosFiscais
          Items.Strings = (
            'Forma de C'#225'lculo 1'
            'Forma de C'#225'lculo 2')
          TabOrder = 46
          Values.Strings = (
            '1'
            '2')
        end
        object DBEdit25: TDBEdit
          Left = 334
          Top = 11
          Width = 118
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Codigo_Incentivo'
          DataSource = Dados.dsIncentivosFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 47
          OnChange = cCodigoChange
        end
        object StaticText28: TStaticText
          Left = 243
          Top = 11
          Width = 89
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'C'#243'digo  Inc.Fiscal'
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
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Tabela ICMS Recuperar'
      ImageIndex = 1
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 444
        Width = 630
        Height = 32
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 0
        object NavegaRec: TDBNavigator
          AlignWithMargins = True
          Left = 2
          Top = 2
          Width = 288
          Height = 28
          Cursor = crHandPoint
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          DataSource = Dados.dsRecuperarICMS
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
          TabOrder = 0
          BeforeAction = NavegaRecBeforeAction
          OnClick = NavegaRecClick
        end
      end
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 133
        Width = 631
        Height = 305
        Margins.Right = 2
        Align = alClient
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 1
        object cAliquotaICMS: TDBEdit
          Left = 236
          Top = 30
          Width = 78
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Aliquota_ICMS'
          DataSource = Dados.dsRecuperarICMS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object StaticText11: TStaticText
          Left = 79
          Top = 30
          Width = 155
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Al'#237'quota de ICMS na Sa'#237'da'
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
        object StaticText13: TStaticText
          Left = 79
          Top = 52
          Width = 155
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Al'#237'quota de ICMS a Recuperar'
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
        object cAliquotaRec: TDBEdit
          Left = 236
          Top = 53
          Width = 78
          Height = 21
          DataField = 'Aliquota_Recuperar'
          DataSource = Dados.dsRecuperarICMS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object cBC: TDBRadioGroup
          Left = 79
          Top = 96
          Width = 235
          Height = 85
          Caption = 'Base de Calculo '
          DataField = 'Base_Calculo'
          DataSource = Dados.dsRecuperarICMS
          Items.Strings = (
            'Valor Total da Nota Fiscal'
            'Valor do ICMS'
            'Valor da Base de Calculo do ICMS')
          TabOrder = 4
          Values.Strings = (
            'TOTALNF'
            'VLRICMS'
            'BCICMS')
        end
        object gRetorno: TDBGrid
          AlignWithMargins = True
          Left = 329
          Top = 30
          Width = 220
          Height = 243
          DataSource = Dados.dsRecuperarICMS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
          ParentFont = False
          TabOrder = 5
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Aliquota_ICMS'
              Title.Alignment = taCenter
              Title.Caption = 'ICMS'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Aliquota_Recuperar'
              Title.Alignment = taCenter
              Title.Caption = 'Recuperar'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Tahoma'
              Title.Font.Style = [fsBold]
              Width = 100
              Visible = True
            end>
        end
      end
      object Panel5: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 630
        Height = 124
        Align = alTop
        BevelOuter = bvLowered
        Caption = 'Panel5'
        TabOrder = 2
        object StaticText25: TStaticText
          Left = 6
          Top = 32
          Width = 107
          Height = 87
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Fundamento Legal'
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
        object cFundamento: TDBMemo
          AlignWithMargins = True
          Left = 115
          Top = 32
          Width = 518
          Height = 87
          DataField = 'Fundamento_Legal'
          DataSource = Dados.dsIncentivosFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object DBEdit23: TDBEdit
          Left = 115
          Top = 9
          Width = 73
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Codigo_TratamentoTrib'
          DataSource = Dados.dsIncentivosFiscais
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnChange = cCodigoChange
        end
        object StaticText26: TStaticText
          Left = 6
          Top = 9
          Width = 107
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'C'#243'digo  Trat.Trib.ICMS'
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
    end
    object TabSheet3: TTabSheet
      Caption = 'Tabela Credito Presumido ICMS'
      ImageIndex = 2
      object Panel6: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 444
        Width = 630
        Height = 32
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 0
        object NavegaCred: TDBNavigator
          AlignWithMargins = True
          Left = 2
          Top = 2
          Width = 288
          Height = 28
          Cursor = crHandPoint
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          DataSource = dmFiscal.dsCreditoPresumido
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
          TabOrder = 0
          BeforeAction = NavegaCredBeforeAction
          OnClick = NavegaCredClick
        end
      end
      object Panel7: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 631
        Height = 137
        Margins.Right = 2
        Align = alClient
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 1
        object StaticText29: TStaticText
          Left = 5
          Top = 29
          Width = 135
          Height = 22
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Percentual ICMS'
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
        object cICMS: TDBEdit
          Left = 142
          Top = 29
          Width = 78
          Height = 21
          DataField = 'ICMS'
          DataSource = dmFiscal.dsCreditoPresumido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnChange = cICMSChange
        end
        object StaticText30: TStaticText
          Left = 5
          Top = 53
          Width = 135
          Height = 22
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Percentual de Carga Efetiva'
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
        object DBEdit27: TDBEdit
          Left = 142
          Top = 53
          Width = 78
          Height = 21
          DataField = 'Carga_Efetiva'
          DataSource = dmFiscal.dsCreditoPresumido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnChange = DBEdit27Change
        end
        object StaticText31: TStaticText
          Left = 5
          Top = 77
          Width = 135
          Height = 22
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Percentual Cr'#233'dito'
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
        object DBEdit28: TDBEdit
          Left = 142
          Top = 77
          Width = 78
          Height = 21
          DataField = 'Credito_Presumido'
          DataSource = dmFiscal.dsCreditoPresumido
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object StaticText32: TStaticText
          Left = 5
          Top = 101
          Width = 135
          Height = 22
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
          TabOrder = 6
          Transparent = False
          StyleElements = []
        end
        object DBEdit29: TDBEdit
          Left = 142
          Top = 101
          Width = 479
          Height = 21
          DataField = 'Descricao'
          DataSource = dmFiscal.dsCreditoPresumido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object StaticText27: TStaticText
          Left = 5
          Top = 5
          Width = 135
          Height = 22
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
        object DBEdit24: TDBEdit
          Left = 142
          Top = 5
          Width = 194
          Height = 21
          TabStop = False
          DataField = 'Codigo'
          DataSource = dmFiscal.dsCreditoPresumido
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
      end
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 146
        Width = 630
        Height = 292
        Align = alBottom
        DataSource = dmFiscal.dsCreditoPresumido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'Registro'
            Title.Alignment = taCenter
            Title.Caption = 'Reg'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 29
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
            Width = 578
            Visible = True
          end>
      end
    end
  end
  object tCodigo: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM IncentivosFiscais')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 206
    Top = 10
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM IncentivosFiscais')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 270
    Top = 10
  end
end
