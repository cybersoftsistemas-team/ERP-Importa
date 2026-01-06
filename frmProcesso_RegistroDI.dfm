object Processo_RegistroDI: TProcesso_RegistroDI
  Left = 343
  Top = 154
  BorderStyle = bsDialog
  Caption = 'Processo_RegistroDI'
  ClientHeight = 661
  ClientWidth = 1061
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 1061
    Height = 41
    Align = alTop
    Stretch = True
    ExplicitLeft = -112
    ExplicitTop = 160
    ExplicitWidth = 1056
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 1
    Width = 169
    Height = 21
    Caption = 'DESPACHO ADUANEIRO'
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
    Top = 17
    Width = 263
    Height = 18
    Caption = 'Registro da Declara'#231#227'o de Importa'#231#227'o (DI)'
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
    Top = 631
    Width = 1061
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      Left = 994
      Top = 1
      Width = 66
      Height = 28
      Cursor = crHandPoint
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
      Width = 315
      Height = 28
      Cursor = crHandPoint
      DataSource = dmDespacho.dsDI
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
        'Altera o registro atual.'
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
      Left = 316
      Top = 1
      Width = 62
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Align = alLeft
      Caption = '&Pesquisa'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object bGerarDI: TButton
      Left = 464
      Top = 1
      Width = 76
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Align = alLeft
      Caption = '&Gerar DI'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bGerarDIClick
    end
    object bGerarAdicoes: TButton
      Left = 378
      Top = 1
      Width = 86
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Align = alLeft
      Caption = 'Gerar &Adi'#231#245'es'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bGerarAdicoesClick
    end
    object bGerarDUIMP: TButton
      Left = 540
      Top = 1
      Width = 93
      Height = 28
      Cursor = crHandPoint
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Align = alLeft
      Caption = '&Gerar DUIMP'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bGerarDUIMPClick
    end
  end
  object pPasta: TPageControl
    Left = 4
    Top = 45
    Width = 1053
    Height = 576
    ActivePage = tTributos
    TabHeight = 24
    TabOrder = 1
    TabWidth = 110
    object tLista: TTabSheet
      Caption = 'Lista'
      object Grade: TDBGrid
        Left = 0
        Top = 0
        Width = 1045
        Height = 542
        Align = alClient
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Processo'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 122
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Data'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DI'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' DI'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtde_Adicao'
            Title.Alignment = taCenter
            Title.Caption = 'Adi'#231#245'es'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Tipo_DeclaracaoDesc'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 148
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Modalidade_Desc'
            Title.Alignment = taCenter
            Title.Caption = 'Modalidade'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 167
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Pais_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Proced'#234'ncia'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 234
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Situacao'
            Title.Alignment = taCenter
            Title.Caption = 'Situa'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 115
            Visible = True
          end>
      end
    end
    object tDadosDI: TTabSheet
      Caption = 'Dados da DI'
      Enabled = False
      object Label5: TLabel
        Left = 8
        Top = 104
        Width = 3
        Height = 13
      end
      object bPesqRec: TSpeedButton
        Left = 1014
        Top = 3
        Width = 23
        Height = 22
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
          B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
          1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
          BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
          BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
        OnClick = bPesqRecClick
      end
      object bPesqURFDesp: TSpeedButton
        Left = 493
        Top = 187
        Width = 23
        Height = 22
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
          B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
          1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
          BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
          BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
        OnClick = bPesqURFDespClick
      end
      object bPesqURFEnt: TSpeedButton
        Left = 493
        Top = 210
        Width = 23
        Height = 22
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
          B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
          1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
          BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
          BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
        OnClick = bPesqURFEntClick
      end
      object bPesqCons: TSpeedButton
        Left = 493
        Top = 233
        Width = 23
        Height = 22
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
          B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
          1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
          BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
          BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
        OnClick = bPesqConsClick
      end
      object bPesqPais: TSpeedButton
        Left = 493
        Top = 256
        Width = 23
        Height = 22
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
          B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
          1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
          BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
          BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
        OnClick = bPesqPaisClick
      end
      object bPesqMoe1: TSpeedButton
        Left = 1014
        Top = 72
        Width = 23
        Height = 22
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
          B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
          1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
          BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
          BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
        OnClick = bPesqMoe1Click
      end
      object bPesqMoe2: TSpeedButton
        Left = 1014
        Top = 164
        Width = 23
        Height = 22
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
          B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
          1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
          BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
          BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
        OnClick = bPesqMoe2Click
      end
      object SpeedButton1: TSpeedButton
        Left = 1014
        Top = 26
        Width = 23
        Height = 22
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00BBBBBBBBBBBB
          B111BBBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB19D1BBBBBBBBBBB89D
          1BBBBBB0000087F1BBBBBB066666078BBBBBB867E7E6600BBBBB8EFE7E7E660B
          BBBB8EE7E7E7E60BBBBB8EEEEE7E760BBBBB8EEFEEE7E60BBBBB8EFFEE7E760B
          BBBBB8EFEEE7E0BBBBBBBB8EEE7E0BBBBBBBBBB88888BBBBBBBB}
        OnClick = bPesqRecClick
      end
      object DBEdit24: TDBEdit
        Left = 653
        Top = 280
        Width = 134
        Height = 21
        DataField = 'Peso_Bruto'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 39
      end
      object DBEdit25: TDBEdit
        Left = 653
        Top = 257
        Width = 134
        Height = 21
        DataField = 'Peso_Liquido'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 38
      end
      object DBEdit30: TDBEdit
        Left = 653
        Top = 119
        Width = 134
        Height = 21
        DataField = 'Frete_PrePaid'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 30
      end
      object DBEdit31: TDBEdit
        Left = 653
        Top = 142
        Width = 134
        Height = 21
        DataField = 'Frete_Collect'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 31
      end
      object DBEdit33: TDBEdit
        Left = 789
        Top = 211
        Width = 134
        Height = 21
        DataField = 'Seguro_Real'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 36
      end
      object DBEdit38: TDBEdit
        Left = 653
        Top = 234
        Width = 134
        Height = 21
        DataField = 'Total_MercadoriaME'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 37
      end
      object RxDBLookupCombo7: TRxDBLookupCombo
        Left = 653
        Top = 4
        Width = 360
        Height = 21
        DropDownCount = 15
        DropDownWidth = 550
        DataField = 'Recinto_Aduaneiro'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Descricao'
        LookupDisplayIndex = 1
        LookupSource = dmDespacho.dsRecintosAduaneiros
        ParentFont = False
        TabOrder = 26
        OnChange = RxDBLookupCombo7Change
        OnClick = RxDBLookupCombo7Change
      end
      object StaticText24: TStaticText
        Left = 523
        Top = 4
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Recinto Aduaneiro'
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
      object DBEdit2: TDBEdit
        Left = 212
        Top = 50
        Width = 106
        Height = 21
        DataField = 'DI'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 12
        ParentFont = False
        TabOrder = 6
      end
      object DBCheckBox1: TDBCheckBox
        Left = 332
        Top = 52
        Width = 74
        Height = 17
        Caption = 'FUNDAP'
        DataField = 'FUNDAP'
        DataSource = dmDespacho.dsDI
        TabOrder = 1
      end
      object DBCheckBox2: TDBCheckBox
        Left = 412
        Top = 53
        Width = 74
        Height = 15
        Caption = 'Multimodal'
        DataField = 'Multimodal'
        DataSource = dmDespacho.dsDI
        TabOrder = 2
      end
      object DBEdit14: TDBEdit
        Left = 397
        Top = 326
        Width = 119
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Numero_Veiculo'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
      end
      object DBEdit20: TDBEdit
        Left = 132
        Top = 418
        Width = 141
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Numero_DocCarga'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 19
      end
      object DBEdit21: TDBEdit
        Left = 132
        Top = 441
        Width = 141
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Numero_DocCargaMaster'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 20
      end
      object StaticText3: TStaticText
        Left = 2
        Top = 27
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Data'
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
      end
      object StaticText1: TStaticText
        Left = 2
        Top = 50
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#186' da DI'
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
      object StaticText4: TStaticText
        Left = 2
        Top = 96
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Tipo de Declara'#231#227'o'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 43
        Transparent = False
        StyleElements = []
      end
      object cData: TDBDateEdit
        Left = 132
        Top = 27
        Width = 133
        Height = 21
        DataField = 'Data'
        DataSource = dmDespacho.dsDI
        CheckOnExit = True
        DialogTitle = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GlyphKind = gkCustom
        Glyph.Data = {
          D2080000424DD208000000000000360000002800000026000000130000000100
          1800000000009C08000000000000000000000000000000000000171717151515
          1515151515151515151515151515151515151515151515151515151515151515
          1515151515151515151515151515151516161617171715151515151515151515
          1515151515151515151515151515151515151515151515151515151515151515
          15151515151515151516161600005A5A5A555555565656555555555555565656
          5656565757575858585858585757575757575555555555555555555555555555
          555555555959595A5A5A55555556565655555555555556565656565657575758
          5858585858575757575757555555555555555555555555555555555555595959
          0000767676B9B9B9AEAEAEABABABAAAAAAA9A9A9A7A7A7A6A6A6A3A3A3A3A3A3
          A6A6A6ABABABB3B3B3B6B6B6B2B2B2AEAEAEACACACB0B0B0B7B7B7767676B9B9
          B9AEAEAEABABABAAAAAAA9A9A9A7A7A7A6A6A6A3A3A3A3A3A3A6A6A6ABABABB3
          B3B3B6B6B6B2B2B2AEAEAEACACACB0B0B0B7B7B700009E9E9EFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFBFBFBF6F6F6F2F2F2E6E6E6CFCFCFBEBEBEC5C5C5
          E1E1E1FDFDFDFEFEFEFEFEFEFCFCFC9E9E9EFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFBFBFBF6F6F6FFFFFFFFFFFFCFCFCFBEBEBEC5C5C5E1E1E1FDFDFDFE
          FEFEFEFEFEFCFCFC0000818181FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEE7E7E7BCBCBCC6C6C6EDEDEDE9E9E9B9B9B98D8D8D8D8D8DCCCCCCFEFEFE
          F0F0F0818181FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFF
          FFFFFFFFEDEDEDE9E9E9B9B9B98D8D8D8D8D8DCCCCCCFEFEFEF0F0F000006A6A
          6AFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFECFCFCF565656515151D0
          D0D0FEFEFEFEFEFEF3F3F3AFAFAF7D7D7DBCBCBCE3E3E36A6A6AFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFEFE
          FEF3F3F3AFAFAF7D7D7DBCBCBCE3E3E30000565656F8F8F8FEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFED3D3D33636362D2D2DCCCCCCFEFEFEFEFEFEFEFEFEFE
          FEFECFCFCFABABABB5B5B5565656F8F8F8FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFECFCFCFABAB
          ABB5B5B50000424242F0F0F0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDDDD
          DD2121210F0F0FC2C2C2FEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFEFEFEAEAEAE42
          4242F0F0F0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFC0C0C0C0C0C0FFFFFF
          FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFEFEFEAEAEAE0000333333E7E7E7
          FEFEFEFBFBFBFBFBFBFCFCFCF3F3F3C8C8C8D3D3D31A1A1A030303B3B3B3FEFE
          FEFDFDFDFDFDFDFDFDFDFEFEFEFEFEFEA7A7A7333333E7E7E7FEFEFEFBFBFBFB
          FBFBFFFFFFFFFFFFFFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFDFDFDFDFDFD
          FDFDFDFEFEFEFEFEFEA7A7A70000252525D6D6D6FEFEFEF6F6F6F6F6F6FCFCFC
          EEEEEE1919191010100D0D0D0D0D0DB3B3B3FEFEFEF8F8F8F8F8F8F8F8F8F9F9
          F9FEFEFE8E8E8E252525D6D6D6FEFEFEF6F6F6F6F6F6FFFFFFC0C0C0C0C0C0C0
          C0C0C0C0C0FFFFFFFFFFFFFEFEFEF8F8F8F8F8F8F8F8F8F9F9F9FEFEFE8E8E8E
          00001A1A1AC4C4C4FDFEFDF2F3F2F3F5F2F4F5F3FAFBF99B9C9A313231151614
          282928BCBDBCFEFEFEF5F6F5F6F7F5F6F7F5F7F9F6FEFEFE7C7C7B1A1A1AC4C4
          C4FDFDFDF2F2F2F3F3F3F4F4F4FAFAFAC0C0C0C0C0C0C0C0C0FFFFFFFFFFFFFE
          FEFEF5F5F5F6F6F6F6F6F6F7F7F7FEFEFE7B7B7B0000131313B3B6B2FDFEFCEE
          F0ECEFF2EDF0F5EEF4F9F1FEFEFEE6EBE4787D75686C66CED1CCFCFEFBF7FEF2
          F5FBF2F4F8F2F6FBF3FEFEFE696A69131313B4B4B4FDFDFDEEEEEEF0F0F0F2F2
          F2F6F6F6FFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFCFCFCF9F9F9F7F7F7F5F5F5F8
          F8F8FEFEFE696969000020231EAA7D7CE1C1A2E6CAB0E4C59DE7C99BE3C184E5
          C27EEACA83EFD697EED497EBCC85EBCC85E8C67CEBCE93EACB95E5C485E4C289
          4A4739212121818181BABABAC5C5C5BCBCBCBEBEBEB2B2B2B1B1B1B7B7B7C5C5
          C5C4C4C4B9B9B9B9B9B9B3B3B3BFBFBFBDBDBDB4B4B4B4B4B443434300002E35
          2A7D5545D1A475DEBB97E0BE8DDEB877CE963FC1852FC7892FD7A53DE9C876E8
          C46CE1B756CA8B2FD9A849E2BB71DEB36CC9954935321F3131315454549A9A9A
          B3B3B3B2B2B2A8A8A88181817171717474748A8A8AB2B2B2ADADAD9E9E9E7575
          75909090A8A8A8A2A2A28383832C2C2C000022271F7E5858A0693FA9703EB47D
          43BA823FBC8538BA7F2FC0832FC89236D9AA58DBAD5BD8A957C1852FCC9743D2
          A15BD2A35FBF8A532C2B222424245B5B5B616161666666717171737373737373
          6C6C6C6F6F6F7B7B7B9696969999999595957171718383839090909393937E7E
          7E28282800001318107C58617E532F85562F935E2FAB775BAE7748AE732FB075
          2FB47A2FB6782FB6782FC0873DBA8970B27833AA712FA2692F9E683F23232215
          15155E5E5E4C4C4C4F4F4F5555557373736E6E6E646464656565696969686868
          6868687676768686866969696262625D5D5D61616122222200000C10093F391D
          473A0050410045380068655D4946394F4000776300705D007360007D67004F45
          11757A72342C066754006856004C3E011C1B1B0D0D0D3131312929292F2F2F28
          28286262624242422E2E2E4747474343434545454A4A4A363636777777212121
          3C3C3C3E3E3E2D2D2D1B1B1B00000D110A3E3719463900534400292203686C64
          464B422A22007F69006E5C007A66005A4A00191710888F842926196A57006957
          00483B001B1B1B0E0E0E2E2E2E2929293131311919196969694747471818184B
          4B4B4242424949493535351515158B8B8B2222223E3E3E3E3E3E2A2A2A1B1B1B
          00000D110A3E371A493B003A310B1A1D186A6A6A3C3D3B0000004035007F6A00
          594A0003020010110F818181161A14302A0E695700493C001B1B1B0E0E0E2F2F
          2F2A2A2A2626261B1B1B6A6A6A3C3C3C0000002626264C4C4C35353501010110
          10108181811717172222223E3E3E2B2B2B1B1B1B0000}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 4
        YearDigits = dyFour
      end
      object RxDBComboBox2: TRxDBComboBox
        Left = 132
        Top = 165
        Width = 384
        Height = 21
        DataField = 'Tipo_Importador'
        DataSource = dmDespacho.dsDI
        DropDownCount = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'Pessoa jur'#237'dica'
          'Pessoa f'#237'sica domiciliada no pa'#237's'
          'Pessoa f'#237'sica domiciliada no exterior'
          'Miss'#227'o diplom'#225'tica ou representa'#231#227'o de organismo internacional'
          'Transportador Porta a Porta')
        ParentFont = False
        TabOrder = 8
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '6')
      end
      object StaticText6: TStaticText
        Left = 2
        Top = 165
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Tipo do Importador'
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
      object RxDBComboBox3: TRxDBComboBox
        Left = 132
        Top = 188
        Width = 186
        Height = 21
        DataField = 'Modalidade_Despacho'
        DataSource = dmDespacho.dsDI
        DropDownCount = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'Normal'
          'Antecipado'
          'Simplificado'
          'Antecipado e Simplificado'
          'Entrega Fracionada'
          'Antecipado c/ Entrega Fracionada')
        ParentFont = False
        TabOrder = 9
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6')
      end
      object StaticText7: TStaticText
        Left = 2
        Top = 188
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Modalidade de Despacho'
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
      object StaticText8: TStaticText
        Left = 2
        Top = 234
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'URF de Entrega'
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
      object StaticText9: TStaticText
        Left = 2
        Top = 211
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'URF de Despacho'
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
      object cURFEntrega: TRxDBLookupCombo
        Left = 132
        Top = 234
        Width = 360
        Height = 21
        DropDownCount = 15
        DisplayAllFields = True
        DataField = 'URF_Entrega'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Descricao'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsLocalDesembaraco
        ParentFont = False
        TabOrder = 11
      end
      object RxDBLookupCombo2: TRxDBLookupCombo
        Left = 132
        Top = 211
        Width = 360
        Height = 21
        DropDownCount = 15
        DisplayAllFields = True
        DataField = 'URF_Despacho'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Descricao'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsLocalDesembaraco
        ParentFont = False
        TabOrder = 10
      end
      object StaticText44: TStaticText
        Left = 268
        Top = 4
        Width = 95
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Modal.Importa'#231#227'o'
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
      object cModalidade: TDBLookupComboBox
        Left = 366
        Top = 4
        Width = 150
        Height = 21
        DataField = 'Modalidade_Importacao'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        KeyField = 'Codigo'
        ListField = 'Descricao'
        ListFieldIndex = 1
        ListSource = Dados.dsTiposProcesso
        ParentFont = False
        TabOrder = 12
      end
      object StaticText10: TStaticText
        Left = 2
        Top = 257
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Consignat'#225'rio'
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
      object RxDBLookupCombo3: TRxDBLookupCombo
        Left = 132
        Top = 257
        Width = 360
        Height = 21
        DropDownCount = 15
        DisplayAllFields = True
        DataField = 'Consignatario'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Nome'
        LookupSource = Dados.dsClientes
        ParentFont = False
        TabOrder = 13
      end
      object StaticText11: TStaticText
        Left = 2
        Top = 280
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Pa'#237's Proced'#234'ncia Carga'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 50
        Transparent = False
        StyleElements = []
      end
      object RxDBLookupCombo4: TRxDBLookupCombo
        Left = 132
        Top = 280
        Width = 360
        Height = 21
        DropDownCount = 15
        DisplayAllFields = True
        DataField = 'Pais_Procedencia'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Nome'
        LookupSource = Dados.dsPaises
        ParentFont = False
        TabOrder = 14
      end
      object StaticText12: TStaticText
        Left = 2
        Top = 303
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Via de Transporte'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 51
        Transparent = False
        StyleElements = []
      end
      object RxDBComboBox4: TRxDBComboBox
        Left = 132
        Top = 303
        Width = 263
        Height = 21
        DataField = 'Via_Transporte'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'MARITIMA'
          'FLUVIAL'#10
          'LACUSTRE'#10
          'AEREA'#10
          'POSTAL'#10
          'FERROVIARIA'#10
          'RODOVIARIA'#10
          'CONDUTO / REDE TRANSMISS'#195'O'#10
          'MEIOS PROPRIOS'#10
          'ENTRADA/SAIDA FICTA'#10
          'COURIER'#10
          'EM M'#195'OS'#10
          'POR REBOQUE'#10)
        ParentFont = False
        TabOrder = 15
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13')
      end
      object StaticText13: TStaticText
        Left = 312
        Top = 326
        Width = 83
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#250'mero Ve'#237'culo'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 52
        Transparent = False
        StyleElements = []
      end
      object StaticText14: TStaticText
        Left = 2
        Top = 326
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Nome Ve'#237'culo'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 53
        Transparent = False
        StyleElements = []
      end
      object StaticText17: TStaticText
        Left = 2
        Top = 349
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Agente Transportador'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 54
        Transparent = False
        StyleElements = []
      end
      object StaticText18: TStaticText
        Left = 2
        Top = 395
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Documento de Carga'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 55
        Transparent = False
        StyleElements = []
      end
      object StaticText19: TStaticText
        Left = 2
        Top = 418
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#186' Doc.de Carga'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 56
        Transparent = False
        StyleElements = []
      end
      object StaticText20: TStaticText
        Left = 2
        Top = 441
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#186' Doc.de Carga (Master)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 57
        Transparent = False
        StyleElements = []
      end
      object StaticText21: TStaticText
        Left = 2
        Top = 464
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Local de Embarque'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 58
        Transparent = False
        StyleElements = []
      end
      object cLocalEmb: TRxDBComboBox
        Left = 132
        Top = 464
        Width = 384
        Height = 21
        DataField = 'Local_Embarque'
        DataSource = dmDespacho.dsDI
        DropDownCount = 15
        EnableValues = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Sorted = True
        TabOrder = 21
      end
      object StaticText22: TStaticText
        Left = 2
        Top = 487
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Data de Embarque'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 59
        Transparent = False
        StyleElements = []
      end
      object DBDateEdit1: TDBDateEdit
        Left = 132
        Top = 487
        Width = 141
        Height = 21
        DataField = 'Data_Embarque'
        DataSource = dmDespacho.dsDI
        CheckOnExit = True
        DialogTitle = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GlyphKind = gkCustom
        Glyph.Data = {
          D2080000424DD208000000000000360000002800000026000000130000000100
          1800000000009C08000000000000000000000000000000000000171717151515
          1515151515151515151515151515151515151515151515151515151515151515
          1515151515151515151515151515151516161617171715151515151515151515
          1515151515151515151515151515151515151515151515151515151515151515
          15151515151515151516161600005A5A5A555555565656555555555555565656
          5656565757575858585858585757575757575555555555555555555555555555
          555555555959595A5A5A55555556565655555555555556565656565657575758
          5858585858575757575757555555555555555555555555555555555555595959
          0000767676B9B9B9AEAEAEABABABAAAAAAA9A9A9A7A7A7A6A6A6A3A3A3A3A3A3
          A6A6A6ABABABB3B3B3B6B6B6B2B2B2AEAEAEACACACB0B0B0B7B7B7767676B9B9
          B9AEAEAEABABABAAAAAAA9A9A9A7A7A7A6A6A6A3A3A3A3A3A3A6A6A6ABABABB3
          B3B3B6B6B6B2B2B2AEAEAEACACACB0B0B0B7B7B700009E9E9EFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFBFBFBF6F6F6F2F2F2E6E6E6CFCFCFBEBEBEC5C5C5
          E1E1E1FDFDFDFEFEFEFEFEFEFCFCFC9E9E9EFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFBFBFBF6F6F6FFFFFFFFFFFFCFCFCFBEBEBEC5C5C5E1E1E1FDFDFDFE
          FEFEFEFEFEFCFCFC0000818181FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEE7E7E7BCBCBCC6C6C6EDEDEDE9E9E9B9B9B98D8D8D8D8D8DCCCCCCFEFEFE
          F0F0F0818181FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFF
          FFFFFFFFEDEDEDE9E9E9B9B9B98D8D8D8D8D8DCCCCCCFEFEFEF0F0F000006A6A
          6AFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFECFCFCF565656515151D0
          D0D0FEFEFEFEFEFEF3F3F3AFAFAF7D7D7DBCBCBCE3E3E36A6A6AFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFEFE
          FEF3F3F3AFAFAF7D7D7DBCBCBCE3E3E30000565656F8F8F8FEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFED3D3D33636362D2D2DCCCCCCFEFEFEFEFEFEFEFEFEFE
          FEFECFCFCFABABABB5B5B5565656F8F8F8FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFECFCFCFABAB
          ABB5B5B50000424242F0F0F0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDDDD
          DD2121210F0F0FC2C2C2FEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFEFEFEAEAEAE42
          4242F0F0F0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFC0C0C0C0C0C0FFFFFF
          FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFEFEFEAEAEAE0000333333E7E7E7
          FEFEFEFBFBFBFBFBFBFCFCFCF3F3F3C8C8C8D3D3D31A1A1A030303B3B3B3FEFE
          FEFDFDFDFDFDFDFDFDFDFEFEFEFEFEFEA7A7A7333333E7E7E7FEFEFEFBFBFBFB
          FBFBFFFFFFFFFFFFFFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFDFDFDFDFDFD
          FDFDFDFEFEFEFEFEFEA7A7A70000252525D6D6D6FEFEFEF6F6F6F6F6F6FCFCFC
          EEEEEE1919191010100D0D0D0D0D0DB3B3B3FEFEFEF8F8F8F8F8F8F8F8F8F9F9
          F9FEFEFE8E8E8E252525D6D6D6FEFEFEF6F6F6F6F6F6FFFFFFC0C0C0C0C0C0C0
          C0C0C0C0C0FFFFFFFFFFFFFEFEFEF8F8F8F8F8F8F8F8F8F9F9F9FEFEFE8E8E8E
          00001A1A1AC4C4C4FDFEFDF2F3F2F3F5F2F4F5F3FAFBF99B9C9A313231151614
          282928BCBDBCFEFEFEF5F6F5F6F7F5F6F7F5F7F9F6FEFEFE7C7C7B1A1A1AC4C4
          C4FDFDFDF2F2F2F3F3F3F4F4F4FAFAFAC0C0C0C0C0C0C0C0C0FFFFFFFFFFFFFE
          FEFEF5F5F5F6F6F6F6F6F6F7F7F7FEFEFE7B7B7B0000131313B3B6B2FDFEFCEE
          F0ECEFF2EDF0F5EEF4F9F1FEFEFEE6EBE4787D75686C66CED1CCFCFEFBF7FEF2
          F5FBF2F4F8F2F6FBF3FEFEFE696A69131313B4B4B4FDFDFDEEEEEEF0F0F0F2F2
          F2F6F6F6FFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFCFCFCF9F9F9F7F7F7F5F5F5F8
          F8F8FEFEFE696969000020231EAA7D7CE1C1A2E6CAB0E4C59DE7C99BE3C184E5
          C27EEACA83EFD697EED497EBCC85EBCC85E8C67CEBCE93EACB95E5C485E4C289
          4A4739212121818181BABABAC5C5C5BCBCBCBEBEBEB2B2B2B1B1B1B7B7B7C5C5
          C5C4C4C4B9B9B9B9B9B9B3B3B3BFBFBFBDBDBDB4B4B4B4B4B443434300002E35
          2A7D5545D1A475DEBB97E0BE8DDEB877CE963FC1852FC7892FD7A53DE9C876E8
          C46CE1B756CA8B2FD9A849E2BB71DEB36CC9954935321F3131315454549A9A9A
          B3B3B3B2B2B2A8A8A88181817171717474748A8A8AB2B2B2ADADAD9E9E9E7575
          75909090A8A8A8A2A2A28383832C2C2C000022271F7E5858A0693FA9703EB47D
          43BA823FBC8538BA7F2FC0832FC89236D9AA58DBAD5BD8A957C1852FCC9743D2
          A15BD2A35FBF8A532C2B222424245B5B5B616161666666717171737373737373
          6C6C6C6F6F6F7B7B7B9696969999999595957171718383839090909393937E7E
          7E28282800001318107C58617E532F85562F935E2FAB775BAE7748AE732FB075
          2FB47A2FB6782FB6782FC0873DBA8970B27833AA712FA2692F9E683F23232215
          15155E5E5E4C4C4C4F4F4F5555557373736E6E6E646464656565696969686868
          6868687676768686866969696262625D5D5D61616122222200000C10093F391D
          473A0050410045380068655D4946394F4000776300705D007360007D67004F45
          11757A72342C066754006856004C3E011C1B1B0D0D0D3131312929292F2F2F28
          28286262624242422E2E2E4747474343434545454A4A4A363636777777212121
          3C3C3C3E3E3E2D2D2D1B1B1B00000D110A3E3719463900534400292203686C64
          464B422A22007F69006E5C007A66005A4A00191710888F842926196A57006957
          00483B001B1B1B0E0E0E2E2E2E2929293131311919196969694747471818184B
          4B4B4242424949493535351515158B8B8B2222223E3E3E3E3E3E2A2A2A1B1B1B
          00000D110A3E371A493B003A310B1A1D186A6A6A3C3D3B0000004035007F6A00
          594A0003020010110F818181161A14302A0E695700493C001B1B1B0E0E0E2F2F
          2F2A2A2A2626261B1B1B6A6A6A3C3C3C0000002626264C4C4C35353501010110
          10108181811717172222223E3E3E2B2B2B1B1B1B0000}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 22
        YearDigits = dyFour
      end
      object StaticText23: TStaticText
        Left = 277
        Top = 487
        Width = 85
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Data de Chegada'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 60
        Transparent = False
        StyleElements = []
      end
      object DBDateEdit2: TDBDateEdit
        Left = 364
        Top = 487
        Width = 152
        Height = 21
        DataField = 'Data_Chegada'
        DataSource = dmDespacho.dsDI
        CheckOnExit = True
        DialogTitle = 'Data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        GlyphKind = gkCustom
        Glyph.Data = {
          D2080000424DD208000000000000360000002800000026000000130000000100
          1800000000009C08000000000000000000000000000000000000171717151515
          1515151515151515151515151515151515151515151515151515151515151515
          1515151515151515151515151515151516161617171715151515151515151515
          1515151515151515151515151515151515151515151515151515151515151515
          15151515151515151516161600005A5A5A555555565656555555555555565656
          5656565757575858585858585757575757575555555555555555555555555555
          555555555959595A5A5A55555556565655555555555556565656565657575758
          5858585858575757575757555555555555555555555555555555555555595959
          0000767676B9B9B9AEAEAEABABABAAAAAAA9A9A9A7A7A7A6A6A6A3A3A3A3A3A3
          A6A6A6ABABABB3B3B3B6B6B6B2B2B2AEAEAEACACACB0B0B0B7B7B7767676B9B9
          B9AEAEAEABABABAAAAAAA9A9A9A7A7A7A6A6A6A3A3A3A3A3A3A6A6A6ABABABB3
          B3B3B6B6B6B2B2B2AEAEAEACACACB0B0B0B7B7B700009E9E9EFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFBFBFBF6F6F6F2F2F2E6E6E6CFCFCFBEBEBEC5C5C5
          E1E1E1FDFDFDFEFEFEFEFEFEFCFCFC9E9E9EFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEFEFEFBFBFBF6F6F6FFFFFFFFFFFFCFCFCFBEBEBEC5C5C5E1E1E1FDFDFDFE
          FEFEFEFEFEFCFCFC0000818181FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FEFEE7E7E7BCBCBCC6C6C6EDEDEDE9E9E9B9B9B98D8D8D8D8D8DCCCCCCFEFEFE
          F0F0F0818181FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFFFFFFFFFFF
          FFFFFFFFEDEDEDE9E9E9B9B9B98D8D8D8D8D8DCCCCCCFEFEFEF0F0F000006A6A
          6AFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFECFCFCF565656515151D0
          D0D0FEFEFEFEFEFEF3F3F3AFAFAF7D7D7DBCBCBCE3E3E36A6A6AFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFEFEFEFFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFEFE
          FEF3F3F3AFAFAF7D7D7DBCBCBCE3E3E30000565656F8F8F8FEFEFEFEFEFEFEFE
          FEFEFEFEFEFEFEFEFEFED3D3D33636362D2D2DCCCCCCFEFEFEFEFEFEFEFEFEFE
          FEFECFCFCFABABABB5B5B5565656F8F8F8FEFEFEFEFEFEFEFEFEFEFEFEFEFEFE
          FFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFECFCFCFABAB
          ABB5B5B50000424242F0F0F0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEDDDD
          DD2121210F0F0FC2C2C2FEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFEFEFEAEAEAE42
          4242F0F0F0FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFFFFC0C0C0C0C0C0FFFFFF
          FFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFDFDFDFEFEFEAEAEAE0000333333E7E7E7
          FEFEFEFBFBFBFBFBFBFCFCFCF3F3F3C8C8C8D3D3D31A1A1A030303B3B3B3FEFE
          FEFDFDFDFDFDFDFDFDFDFEFEFEFEFEFEA7A7A7333333E7E7E7FEFEFEFBFBFBFB
          FBFBFFFFFFFFFFFFFFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFEFEFEFDFDFDFDFDFD
          FDFDFDFEFEFEFEFEFEA7A7A70000252525D6D6D6FEFEFEF6F6F6F6F6F6FCFCFC
          EEEEEE1919191010100D0D0D0D0D0DB3B3B3FEFEFEF8F8F8F8F8F8F8F8F8F9F9
          F9FEFEFE8E8E8E252525D6D6D6FEFEFEF6F6F6F6F6F6FFFFFFC0C0C0C0C0C0C0
          C0C0C0C0C0FFFFFFFFFFFFFEFEFEF8F8F8F8F8F8F8F8F8F9F9F9FEFEFE8E8E8E
          00001A1A1AC4C4C4FDFEFDF2F3F2F3F5F2F4F5F3FAFBF99B9C9A313231151614
          282928BCBDBCFEFEFEF5F6F5F6F7F5F6F7F5F7F9F6FEFEFE7C7C7B1A1A1AC4C4
          C4FDFDFDF2F2F2F3F3F3F4F4F4FAFAFAC0C0C0C0C0C0C0C0C0FFFFFFFFFFFFFE
          FEFEF5F5F5F6F6F6F6F6F6F7F7F7FEFEFE7B7B7B0000131313B3B6B2FDFEFCEE
          F0ECEFF2EDF0F5EEF4F9F1FEFEFEE6EBE4787D75686C66CED1CCFCFEFBF7FEF2
          F5FBF2F4F8F2F6FBF3FEFEFE696A69131313B4B4B4FDFDFDEEEEEEF0F0F0F2F2
          F2F6F6F6FFFFFFC0C0C0C0C0C0FFFFFFFFFFFFFCFCFCF9F9F9F7F7F7F5F5F5F8
          F8F8FEFEFE696969000020231EAA7D7CE1C1A2E6CAB0E4C59DE7C99BE3C184E5
          C27EEACA83EFD697EED497EBCC85EBCC85E8C67CEBCE93EACB95E5C485E4C289
          4A4739212121818181BABABAC5C5C5BCBCBCBEBEBEB2B2B2B1B1B1B7B7B7C5C5
          C5C4C4C4B9B9B9B9B9B9B3B3B3BFBFBFBDBDBDB4B4B4B4B4B443434300002E35
          2A7D5545D1A475DEBB97E0BE8DDEB877CE963FC1852FC7892FD7A53DE9C876E8
          C46CE1B756CA8B2FD9A849E2BB71DEB36CC9954935321F3131315454549A9A9A
          B3B3B3B2B2B2A8A8A88181817171717474748A8A8AB2B2B2ADADAD9E9E9E7575
          75909090A8A8A8A2A2A28383832C2C2C000022271F7E5858A0693FA9703EB47D
          43BA823FBC8538BA7F2FC0832FC89236D9AA58DBAD5BD8A957C1852FCC9743D2
          A15BD2A35FBF8A532C2B222424245B5B5B616161666666717171737373737373
          6C6C6C6F6F6F7B7B7B9696969999999595957171718383839090909393937E7E
          7E28282800001318107C58617E532F85562F935E2FAB775BAE7748AE732FB075
          2FB47A2FB6782FB6782FC0873DBA8970B27833AA712FA2692F9E683F23232215
          15155E5E5E4C4C4C4F4F4F5555557373736E6E6E646464656565696969686868
          6868687676768686866969696262625D5D5D61616122222200000C10093F391D
          473A0050410045380068655D4946394F4000776300705D007360007D67004F45
          11757A72342C066754006856004C3E011C1B1B0D0D0D3131312929292F2F2F28
          28286262624242422E2E2E4747474343434545454A4A4A363636777777212121
          3C3C3C3E3E3E2D2D2D1B1B1B00000D110A3E3719463900534400292203686C64
          464B422A22007F69006E5C007A66005A4A00191710888F842926196A57006957
          00483B001B1B1B0E0E0E2E2E2E2929293131311919196969694747471818184B
          4B4B4242424949493535351515158B8B8B2222223E3E3E3E3E3E2A2A2A1B1B1B
          00000D110A3E371A493B003A310B1A1D186A6A6A3C3D3B0000004035007F6A00
          594A0003020010110F818181161A14302A0E695700493C001B1B1B0E0E0E2F2F
          2F2A2A2A2626261B1B1B6A6A6A3C3C3C0000002626264C4C4C35353501010110
          10108181811717172222223E3E3E2B2B2B1B1B1B0000}
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 23
        YearDigits = dyFour
      end
      object cNomeVei: TRxDBComboBox
        Left = 132
        Top = 326
        Width = 177
        Height = 21
        Style = csDropDown
        DataField = 'Nome_Veiculo'
        DataSource = dmDespacho.dsDI
        DropDownCount = 15
        EnableValues = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Sorted = True
        TabOrder = 16
      end
      object StaticText5: TStaticText
        Left = 2
        Top = 510
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Tipo de Manifesto'
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
      object RxDBComboBox6: TRxDBComboBox
        Left = 132
        Top = 510
        Width = 141
        Height = 21
        DataField = 'Tipo_Manifesto'
        DataSource = dmDespacho.dsDI
        DropDownCount = 15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'DTA'
          'Manifesto da Carga'#9#9#9#9
          'MIC/DTA'
          'Termo de Entrada'#9#9#9#9)
        ParentFont = False
        Sorted = True
        TabOrder = 24
        Values.Strings = (
          '1'
          '2'
          '3'
          '4')
      end
      object StaticText16: TStaticText
        Left = 277
        Top = 510
        Width = 85
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'N'#186' do Manifesto'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 62
        Transparent = False
        StyleElements = []
      end
      object DBEdit1: TDBEdit
        Left = 364
        Top = 510
        Width = 152
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Numero_Manifesto'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 25
      end
      object StaticText2: TStaticText
        Left = 2
        Top = 4
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Processo'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 63
        Transparent = False
        StyleElements = []
      end
      object RxDBLookupCombo8: TRxDBLookupCombo
        Left = 132
        Top = 96
        Width = 384
        Height = 21
        DropDownCount = 10
        DropDownWidth = 420
        DisplayAllFields = True
        DataField = 'Tipo_Declaracao'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Descricao'
        LookupSource = dmDespacho.dsTiposDeclaracao
        ParentFont = False
        TabOrder = 7
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 541
        Top = 405
        Width = 143
        Height = 74
        Caption = 'Pagamento dos Tributos'
        DataField = 'Tipo_Pagamento'
        DataSource = dmDespacho.dsDI
        Items.Strings = (
          'D'#233'bito em conta'
          'DARF')
        TabOrder = 3
        Values.Strings = (
          '1'
          '2')
      end
      object RxDBLookupCombo9: TRxDBLookupCombo
        Left = 653
        Top = 50
        Width = 360
        Height = 21
        DropDownCount = 15
        DataField = 'Banco'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Nome;Conta'
        LookupSource = Dados.dsBancos
        ParentFont = False
        TabOrder = 28
      end
      object StaticText25: TStaticText
        Left = 523
        Top = 50
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Banco'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 64
        Transparent = False
        StyleElements = []
      end
      object StaticText26: TStaticText
        Left = 523
        Top = 119
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Valor do Frete Prepaid'
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
      object StaticText28: TStaticText
        Left = 523
        Top = 96
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Moeda do Frete'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 66
        Transparent = False
        StyleElements = []
      end
      object cMoedaFrete: TRxDBLookupCombo
        Left = 653
        Top = 96
        Width = 360
        Height = 21
        DropDownCount = 15
        DisplayAllFields = True
        DataField = 'Moeda_Frete'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Nome;Simbolo;Pais'
        LookupSource = Dados.dsMoedas
        ParentFont = False
        TabOrder = 29
      end
      object StaticText27: TStaticText
        Left = 523
        Top = 142
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Valor do Frete Collect'
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
      object DBEdit3: TDBEdit
        Left = 653
        Top = 211
        Width = 134
        Height = 21
        DataField = 'Seguro_ME'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 35
      end
      object StaticText29: TStaticText
        Left = 523
        Top = 211
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Valor do Seguro'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 68
        Transparent = False
        StyleElements = []
      end
      object StaticText30: TStaticText
        Left = 523
        Top = 188
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Moeda do Seguro'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 69
        Transparent = False
        StyleElements = []
      end
      object cMoedaSeguro: TRxDBLookupCombo
        Left = 653
        Top = 188
        Width = 360
        Height = 21
        DropDownCount = 15
        DisplayAllFields = True
        DataField = 'Moeda_Seguro'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Nome;Simbolo;Pais'
        LookupSource = Dados.dsMoedas
        ParentFont = False
        TabOrder = 34
      end
      object DBEdit4: TDBEdit
        Left = 789
        Top = 142
        Width = 134
        Height = 21
        DataField = 'Frete_Real'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 32
      end
      object StaticText31: TStaticText
        Left = 523
        Top = 234
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Valor Total (VMLE)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 70
        Transparent = False
        StyleElements = []
      end
      object StaticText32: TStaticText
        Left = 523
        Top = 280
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Peso Bruto'
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
      object StaticText33: TStaticText
        Left = 523
        Top = 257
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Peso L'#237'quido'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 72
        Transparent = False
        StyleElements = []
      end
      object cProcesso: TDBLookupComboBox
        Left = 132
        Top = 4
        Width = 133
        Height = 21
        DataField = 'Processo'
        DataSource = dmDespacho.dsDI
        DropDownRows = 15
        DropDownWidth = 200
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Pitch = fpFixed
        Font.Style = [fsBold]
        KeyField = 'Processo'
        ListField = 'Processo; Numero'
        ListSource = Dados.dsInvoice
        NullValueKey = 46
        ParentFont = False
        TabOrder = 0
        OnExit = cProcessoExit
      end
      object DBEdit6: TDBEdit
        Left = 132
        Top = 50
        Width = 76
        Height = 21
        DataField = 'Registro'
        DataSource = dmDespacho.dsDI
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 12
        ParentFont = False
        TabOrder = 5
        OnChange = DBEdit6Change
      end
      object RxDBComboBox1: TRxDBComboBox
        Left = 653
        Top = 303
        Width = 360
        Height = 21
        DataField = 'Local_Embarque'
        DataSource = dmDespacho.dsDI
        DropDownCount = 15
        EnableValues = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Sorted = True
        TabOrder = 73
      end
      object StaticText38: TStaticText
        Left = 523
        Top = 303
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Local de Embarque'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 74
        Transparent = False
        StyleElements = []
      end
      object StaticText42: TStaticText
        Left = 2
        Top = 119
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Motivo Admm.Temporaria'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 75
        Transparent = False
        StyleElements = []
      end
      object RxDBLookupCombo14: TRxDBLookupCombo
        Left = 132
        Top = 119
        Width = 384
        Height = 21
        DropDownCount = 10
        DropDownWidth = 500
        DisplayAllFields = True
        DataField = 'Motivo_AdmissaoTemp'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Descricao'
        LookupSource = dmDespacho.dsMotivoAdmissaoTemp
        ParentFont = False
        TabOrder = 76
      end
      object StaticText46: TStaticText
        Left = 523
        Top = 27
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Recinto Aduaneiro (Setor)'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 77
        Transparent = False
        StyleElements = []
      end
      object RxDBLookupCombo17: TRxDBLookupCombo
        Left = 653
        Top = 27
        Width = 360
        Height = 21
        DropDownCount = 15
        DataField = 'Recinto_AduaneiroSetor'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Setor'
        LookupDisplay = 'Setor;Descricao'
        LookupDisplayIndex = 1
        LookupSource = dstSetor
        ParentFont = False
        TabOrder = 27
      end
      object StaticText47: TStaticText
        Left = 277
        Top = 418
        Width = 85
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Tipo Conh.Carga'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 78
        Transparent = False
        StyleElements = []
      end
      object cTipoConhecimento: TRxDBLookupCombo
        Left = 364
        Top = 418
        Width = 152
        Height = 21
        DropDownCount = 15
        DataField = 'Tipo_Conhecimento'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Descricao'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsTipoConhecimento
        ParentFont = False
        TabOrder = 79
      end
      object StaticText48: TStaticText
        Left = 277
        Top = 441
        Width = 85
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Doc.Chegada N'#186
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 80
        Transparent = False
        StyleElements = []
      end
      object DBEdit5: TDBEdit
        Left = 364
        Top = 441
        Width = 152
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Documento_Chegada'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 81
      end
      object cNomeAgente: TRxDBComboBox
        Left = 132
        Top = 348
        Width = 384
        Height = 21
        Style = csDropDown
        DataField = 'Agente_Transportador'
        DataSource = dmDespacho.dsDI
        DropDownCount = 15
        EnableValues = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Sorted = True
        TabOrder = 18
      end
      object DBEdit10: TDBEdit
        Left = 132
        Top = 372
        Width = 384
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Agente_Numero'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 82
      end
      object StaticText15: TStaticText
        Left = 2
        Top = 372
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Agente Numero'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 83
        Transparent = False
        StyleElements = []
      end
      object StaticText51: TStaticText
        Left = 523
        Top = 326
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Tipo de Embalagem'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 84
        Transparent = False
        StyleElements = []
      end
      object cEmbalagem: TRxDBLookupCombo
        Left = 653
        Top = 326
        Width = 235
        Height = 21
        DropDownCount = 15
        DataField = 'Tipo_Embalagem'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Descricao'
        LookupDisplayIndex = 1
        LookupSource = dmDespacho.dsEmbalagens
        ParentFont = False
        TabOrder = 85
      end
      object StaticText52: TStaticText
        Left = 523
        Top = 349
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Qtde Volumes'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 86
        Transparent = False
        StyleElements = []
      end
      object DBEdit12: TDBEdit
        Left = 653
        Top = 349
        Width = 134
        Height = 21
        CharCase = ecUpperCase
        DataField = 'Volumes_Embalagem'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 87
      end
      object DBEdit13: TDBEdit
        Left = 653
        Top = 165
        Width = 134
        Height = 21
        DataField = 'Frete_TerritorioNac'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 33
      end
      object StaticText53: TStaticText
        Left = 523
        Top = 165
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Frete Territ'#243'rio Nacional'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 88
        Transparent = False
        StyleElements = []
      end
      object StaticText54: TStaticText
        Left = 523
        Top = 73
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Moeda Negociada'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 89
        Transparent = False
        StyleElements = []
      end
      object cMoedaFOB: TRxDBLookupCombo
        Left = 653
        Top = 73
        Width = 360
        Height = 21
        DropDownCount = 15
        DisplayAllFields = True
        DataField = 'Moeda_FOB'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Nome;Simbolo;Pais'
        LookupSource = Dados.dsMoedas
        ParentFont = False
        TabOrder = 90
      end
      object RxDBLookupCombo1: TRxDBLookupCombo
        Left = 132
        Top = 395
        Width = 384
        Height = 21
        DropDownCount = 15
        DisplayAllFields = True
        DataField = 'Tipo_DocCarga'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Descricao'
        LookupSource = dmDespacho.dsDocumentoTransp
        ParentFont = False
        TabOrder = 91
      end
      object StaticText55: TStaticText
        Left = 2
        Top = 142
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Motivo Situa'#231#227'o Especial'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 92
        Transparent = False
        StyleElements = []
      end
      object RxDBLookupCombo5: TRxDBLookupCombo
        Left = 132
        Top = 142
        Width = 384
        Height = 21
        DropDownCount = 10
        DropDownWidth = 500
        DisplayAllFields = True
        DataField = 'Motivo_SitEspecial'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'Codigo;Descricao'
        LookupSource = dmDespacho.dsMotivoSit
        ParentFont = False
        TabOrder = 93
      end
      object StaticText56: TStaticText
        Left = 2
        Top = 73
        Width = 128
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Adquirente'
        Color = 7293440
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 94
        Transparent = False
        StyleElements = []
      end
      object RxDBLookupCombo6: TRxDBLookupCombo
        Left = 132
        Top = 73
        Width = 384
        Height = 21
        DropDownCount = 10
        DropDownWidth = 420
        DisplayAllFields = True
        DataField = 'Adquirente'
        DataSource = dmDespacho.dsDI
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        LookupField = 'Codigo'
        LookupDisplay = 'CNPJ;Nome'
        LookupDisplayIndex = 1
        LookupSource = Dados.dsClientes
        ParentFont = False
        TabOrder = 95
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Acr'#233'scimos'
      ImageIndex = 4
      object Panel2: TPanel
        Left = 0
        Top = 129
        Width = 1045
        Height = 30
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 0
        object NavegaAcre: TDBNavigator
          Left = 1
          Top = 1
          Width = 296
          Height = 28
          DataSource = dmDespacho.dsDIAcrescimo
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Align = alLeft
          TabOrder = 0
          BeforeAction = NavegaAcreBeforeAction
          OnClick = NavegaAcreClick
        end
      end
      object GradeAcre: TDBGrid
        Left = 0
        Top = 159
        Width = 569
        Height = 383
        Align = alLeft
        DataSource = dmDespacho.dsDIAcrescimo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
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
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 200
            Visible = True
          end
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'Moeda'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Moeda_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Moeda Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 165
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_ME'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 91
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1045
        Height = 129
        Align = alTop
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 2
        object StaticText34: TStaticText
          Left = 8
          Top = 30
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Acrescimo'
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
        object cAcrescimo: TRxDBLookupCombo
          Left = 105
          Top = 30
          Width = 450
          Height = 21
          DropDownCount = 15
          DisplayAllFields = True
          DataField = 'Codigo'
          DataSource = dmDespacho.dsDIAcrescimo
          EmptyStrIsNull = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Descricao'
          LookupSource = dmDespacho.dsAcrescimos
          ParentFont = False
          TabOrder = 1
        end
        object cValorME: TDBEdit
          Left = 105
          Top = 76
          Width = 134
          Height = 21
          DataField = 'Valor_ME'
          DataSource = dmDespacho.dsDIAcrescimo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object StaticText35: TStaticText
          Left = 8
          Top = 76
          Width = 95
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
          TabOrder = 4
          Transparent = False
          StyleElements = []
        end
        object StaticText36: TStaticText
          Left = 8
          Top = 53
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Moeda Negociada'
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
        object cMoedaAcre: TRxDBLookupCombo
          Left = 105
          Top = 53
          Width = 450
          Height = 21
          DropDownCount = 15
          DisplayAllFields = True
          DataField = 'Moeda'
          DataSource = dmDespacho.dsDIAcrescimo
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Nome;Simbolo;Pais'
          LookupSource = Dados.dsMoedas
          ParentFont = False
          TabOrder = 2
        end
        object StaticText37: TStaticText
          Left = 8
          Top = 99
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Valor Real'
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
        object DBEdit7: TDBEdit
          Left = 185
          Top = 7
          Width = 106
          Height = 21
          DataField = 'DI'
          DataSource = dmDespacho.dsDI
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 12
          ParentFont = False
          TabOrder = 7
        end
        object StaticText39: TStaticText
          Left = 8
          Top = 7
          Width = 95
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'DI'
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
        object DBEdit8: TDBEdit
          Left = 105
          Top = 7
          Width = 76
          Height = 21
          DataField = 'Registro'
          DataSource = dmDespacho.dsDI
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 12
          ParentFont = False
          TabOrder = 9
          OnChange = DBEdit6Change
        end
        object DBEdit9: TDBEdit
          Left = 295
          Top = 7
          Width = 138
          Height = 21
          DataField = 'Processo'
          DataSource = dmDespacho.dsDI
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          MaxLength = 12
          ParentFont = False
          TabOrder = 10
        end
        object cValorReal: TDBEdit
          Left = 105
          Top = 99
          Width = 134
          Height = 21
          DataField = 'Valor_Real'
          DataSource = dmDespacho.dsDIAcrescimo
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
      end
      object DBGrid1: TDBGrid
        Left = 569
        Top = 159
        Width = 470
        Height = 383
        Align = alLeft
        DataSource = dsTotalAcre
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
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
            FieldName = 'Moeda'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Moeda_Nome'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 226
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotalME'
            Title.Alignment = taCenter
            Title.Caption = 'Total ME'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 82
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TotalReal'
            Title.Alignment = taCenter
            Title.Caption = 'Total Real'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 94
            Visible = True
          end>
      end
    end
    object tTributos: TTabSheet
      Caption = 'Tributos'
      Enabled = False
      ImageIndex = -1
      object GroupBox1: TGroupBox
        Left = 8
        Top = 3
        Width = 1017
        Height = 81
        Caption = 'Imposto de Importa'#231#227'o - (II)'
        TabOrder = 0
        object StaticText40: TStaticText
          Left = 7
          Top = 19
          Width = 128
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Regime de Tributa'#231#227'o'
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
        object RxDBLookupCombo12: TRxDBLookupCombo
          Left = 137
          Top = 19
          Width = 360
          Height = 21
          DropDownCount = 15
          DisplayAllFields = True
          DataField = 'Regime_TributacaoII'
          DataSource = dmDespacho.dsDI
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Descricao'
          LookupSource = dmDespacho.dsRegimeTributacao
          ParentFont = False
          TabOrder = 1
        end
        object StaticText41: TStaticText
          Left = 7
          Top = 42
          Width = 128
          Height = 21
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
          TabOrder = 2
          Transparent = False
          StyleElements = []
        end
        object RxDBLookupCombo13: TRxDBLookupCombo
          Left = 137
          Top = 42
          Width = 864
          Height = 21
          DropDownCount = 15
          DisplayAllFields = True
          DataField = 'Fundamento_Legal'
          DataSource = dmDespacho.dsDI
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Descricao'
          LookupDisplayIndex = 1
          LookupSource = dmDespacho.dsFundamentoLegal
          ParentFont = False
          TabOrder = 3
        end
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 89
        Width = 1017
        Height = 81
        Caption = 'Imposto Sobre Produtos Industrializados - (IPI)'
        TabOrder = 1
        object StaticText43: TStaticText
          Left = 7
          Top = 19
          Width = 128
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Regime de Tributa'#231#227'o'
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
        object RxDBLookupCombo15: TRxDBLookupCombo
          Left = 137
          Top = 19
          Width = 360
          Height = 21
          DropDownCount = 15
          DisplayAllFields = True
          DataSource = dmDespacho.dsDI
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Descricao'
          LookupSource = dmDespacho.dsRegimeTributacao
          ParentFont = False
          TabOrder = 1
        end
        object StaticText45: TStaticText
          Left = 7
          Top = 42
          Width = 128
          Height = 21
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
          TabOrder = 2
          Transparent = False
          StyleElements = []
        end
        object RxDBLookupCombo16: TRxDBLookupCombo
          Left = 137
          Top = 42
          Width = 864
          Height = 21
          DropDownCount = 15
          DisplayAllFields = True
          DataField = 'Fundamento_Legal'
          DataSource = dmDespacho.dsDI
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          LookupField = 'Codigo'
          LookupDisplay = 'Codigo;Descricao'
          LookupDisplayIndex = 1
          LookupSource = dmDespacho.dsFundamentoLegal
          ParentFont = False
          TabOrder = 3
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Doc.Int.Despacho'
      ImageIndex = 6
      object DBGrid3: TDBGrid
        Left = 0
        Top = 151
        Width = 1045
        Height = 391
        Align = alBottom
        DataSource = dmDespacho.dsDIDocumentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12615680
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
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
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 43
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
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 781
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Numero'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 195
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 121
        Width = 1045
        Height = 30
        Align = alBottom
        BevelOuter = bvLowered
        TabOrder = 1
        object NavegaDOC: TDBNavigator
          Left = 1
          Top = 1
          Width = 296
          Height = 28
          DataSource = dmDespacho.dsDIDocumentos
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
          Align = alLeft
          TabOrder = 0
          BeforeAction = NavegaDOCBeforeAction
          OnClick = NavegaDOCClick
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1045
        Height = 69
        Align = alTop
        BevelOuter = bvLowered
        Enabled = False
        TabOrder = 2
        object StaticText49: TStaticText
          Left = 11
          Top = 13
          Width = 65
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
        object StaticText50: TStaticText
          Left = 11
          Top = 36
          Width = 65
          Height = 21
          AutoSize = False
          BevelInner = bvNone
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = sbsSunken
          Caption = 'Numero'
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
        object DBEdit11: TDBEdit
          Left = 78
          Top = 36
          Width = 179
          Height = 21
          CharCase = ecUpperCase
          DataField = 'Numero'
          DataSource = dmDespacho.dsDIDocumentos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 78
          Top = 13
          Width = 699
          Height = 21
          DataField = 'Codigo'
          DataSource = dmDespacho.dsDIDocumentos
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListFieldIndex = 1
          ListSource = dmDespacho.dsDocInstrucao
          ParentFont = False
          TabOrder = 3
        end
      end
    end
    object pAdicoes: TTabSheet
      Caption = 'Adic'#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object DBGrid2: TDBGrid
        Left = 0
        Top = 279
        Width = 1045
        Height = 263
        Align = alBottom
        DataSource = dmDespacho.dsDIAdicoes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 12615680
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NCM'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 77
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Adicao'
            Title.Alignment = taCenter
            Title.Caption = 'Adi'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 40
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'LI'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fabricante_Nome'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 370
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Quantidade'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_MercadoriaME'
            Title.Alignment = taCenter
            Title.Caption = 'Valor (ME)'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Frete'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr Frete'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor_Seguro'
            Title.Alignment = taCenter
            Title.Caption = 'Vlr Seguro'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1041
        Height = 226
        BevelOuter = bvLowered
        TabOrder = 1
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'XML da DI'
      ImageIndex = 3
      object Memo: TMemo
        Left = 0
        Top = 0
        Width = 1045
        Height = 542
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'JetBrains Mono NL'
        Font.Style = []
        Lines.Strings = (
          'Memo')
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        StyleElements = [seBorder]
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Json da DUIMP'
      ImageIndex = 7
      object cMemDUIMP: TMemo
        Left = 0
        Top = 0
        Width = 1045
        Height = 542
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'JetBrains Mono NL'
        Font.Style = []
        Lines.Strings = (
          'Memo')
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        StyleElements = [seBorder]
      end
    end
  end
  object tReg: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 316
    Top = 310
  end
  object tTotalAcre: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'use Cybersoft_RB'
      'select dia.Moeda'
      
        '      ,Moeda_Nome = (select Nome from Cybersoft_Cadastros.dbo.Mo' +
        'edas where Codigo = dia.Moeda)'
      '      ,TotalME   = sum(isnull(dia.Valor, 0))'
      
        '      ,TotalReal = sum(dia.Valor) * (select isnull(cot.Valor, 1)' +
        ' from Cybersoft_Cadastros.dbo.Cotacao cot where cot.Moeda = dia.' +
        'Moeda and Data = '#39'09/16/2022'#39')'
      'from DIAcrescimo dia'
      'where dia.Registro_DI = 1'
      'group by dia.Registro_DI, dia.moeda')
    Left = 404
    Top = 310
    object tTotalAcreMoeda: TIntegerField
      FieldName = 'Moeda'
    end
    object tTotalAcreTotalME: TCurrencyField
      FieldName = 'TotalME'
      ReadOnly = True
      DisplayFormat = ',##0.00'
    end
    object tTotalAcreTotalReal: TFloatField
      FieldName = 'TotalReal'
      ReadOnly = True
      DisplayFormat = ',##0.00'
      currency = True
    end
    object tTotalAcreMoeda_Nome: TStringField
      FieldKind = fkLookup
      FieldName = 'Moeda_Nome'
      LookupDataSet = Dados.Moedas
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'Moeda'
      Size = 50
      Lookup = True
    end
  end
  object dsTotalAcre: TDataSource
    DataSet = tTotalAcre
    Left = 405
    Top = 359
  end
  object tAdicoes: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 316
    Top = 358
  end
  object tAcrescimos: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 316
    Top = 406
  end
  object tTotal: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 404
    Top = 408
  end
  object tMercadoria: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 316
    Top = 454
  end
  object ttmp: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 404
    Top = 464
  end
  object tSetor: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'select Setor = cast(Setor as smallint)'
      '      ,Descricao'
      'from OrgaosSRF')
    Left = 484
    Top = 312
    object tSetorSetor: TSmallintField
      DisplayWidth = 3
      FieldName = 'Setor'
      ReadOnly = True
    end
    object tSetorDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
  end
  object dstSetor: TDataSource
    DataSet = tSetor
    Left = 485
    Top = 361
  end
  object tEmpresas: TMSQuery
    Connection = Dados.Banco
    Left = 558
    Top = 311
  end
end
