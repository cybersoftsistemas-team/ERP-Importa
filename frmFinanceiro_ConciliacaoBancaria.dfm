object Financeiro_ConciliacaoBancaria: TFinanceiro_ConciliacaoBancaria
  Left = 76
  Top = 45
  BorderStyle = bsDialog
  Caption = 'Financeiro_ConciliacaoBancaria'
  ClientHeight = 697
  ClientWidth = 1305
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
    Width = 1305
    Height = 43
    Align = alTop
    Stretch = True
    ExplicitWidth = 1186
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 0
    Width = 100
    Height = 23
    Caption = 'FINANCEIRO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ShadowColor = clBlack
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel4: TRxLabel
    Left = 8
    Top = 20
    Width = 202
    Height = 18
    Caption = 'Concilia'#231#227'o de extrato banc'#225'rio.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ShadowColor = clBlack
    ShadowPos = spRightBottom
    Transparent = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 667
    Width = 1305
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object bSair: TButton
      Left = 1243
      Top = 1
      Width = 61
      Height = 28
      Hint = '   Fecha a janela atual e cancela os processos pendentes.   '
      Align = alRight
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bGerar: TButton
      Left = 256
      Top = 1
      Width = 150
      Height = 28
      Align = alLeft
      Caption = '&Gerar Lan'#231'amentos Taxas'
      Enabled = False
      TabOrder = 1
      OnClick = bGerarClick
    end
    object bConciliar: TButton
      Left = 103
      Top = 1
      Width = 68
      Height = 28
      Align = alLeft
      Caption = '&Conciliar'
      TabOrder = 2
      OnClick = bConciliarClick
    end
    object bDesfazer: TButton
      Left = 171
      Top = 1
      Width = 85
      Height = 28
      Align = alLeft
      Caption = '&Desconciliar'
      TabOrder = 3
      OnClick = bDesfazerClick
    end
    object bDesmarcar: TButton
      Left = 1
      Top = 1
      Width = 102
      Height = 28
      Align = alLeft
      Caption = '&Desmarcar Tudo'
      TabOrder = 4
      OnClick = bDesmarcarClick
    end
    object bTitulo: TButton
      Left = 406
      Top = 1
      Width = 86
      Height = 28
      Align = alLeft
      Caption = 'Incluir &T'#237'tulo'
      TabOrder = 5
      OnClick = bTituloClick
    end
  end
  object PageControl1: TPageControl
    Left = 4
    Top = 159
    Width = 664
    Height = 503
    ActivePage = TabSheet1
    TabHeight = 24
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Lan'#231'amentos Financeiros (Baixados)'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GradeBaixas: TDBGrid
        Left = 0
        Top = 0
        Width = 656
        Height = 362
        Align = alTop
        BorderStyle = bsNone
        Color = clWhite
        Ctl3D = True
        DataSource = dstBaixas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = GradeBaixasCellClick
        OnDrawColumnCell = GradeBaixasDrawColumnCell
        OnDblClick = GradeBaixasDblClick
        OnKeyPress = GradeBaixasKeyPress
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Data'
            Title.Alignment = taCenter
            Title.Caption = 'Vencto.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 252
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Forma_TipoDocumento'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero Doc.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 134
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Conciliado'
            Title.Alignment = taCenter
            Title.Caption = 'Con'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Registro'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Selecionado'
            Title.Caption = 'SL'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 17
            Visible = True
          end>
      end
      object StaticText8: TStaticText
        Left = 3
        Top = 439
        Width = 71
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Benefic'#237'ario'
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
      object DBEdit3: TDBEdit
        Left = 76
        Top = 439
        Width = 509
        Height = 21
        TabStop = False
        Color = clBtnFace
        Ctl3D = True
        DataField = 'Beneficiario'
        DataSource = dstTitulos
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object StaticText9: TStaticText
        Left = 3
        Top = 393
        Width = 71
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Total Baixas'
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
      object cSelFin: TCurrencyEdit
        Left = 76
        Top = 416
        Width = 121
        Height = 21
        AutoSize = False
        Color = clBtnFace
        Ctl3D = True
        DisplayFormat = ',##0.00'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object StaticText10: TStaticText
        Left = 3
        Top = 370
        Width = 71
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'D'#233'bitos'
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
      object cDebitosFin: TCurrencyEdit
        Left = 76
        Top = 370
        Width = 121
        Height = 21
        AutoSize = False
        Color = clBtnFace
        Ctl3D = True
        DisplayFormat = ',##0.00'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
      end
      object StaticText3: TStaticText
        Left = 200
        Top = 370
        Width = 70
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Cr'#233'ditos'
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
      object cCreditosFin: TCurrencyEdit
        Left = 272
        Top = 370
        Width = 121
        Height = 21
        AutoSize = False
        Color = clBtnFace
        Ctl3D = True
        DisplayFormat = ',##0.00'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
      end
      object StaticText11: TStaticText
        Left = 395
        Top = 370
        Width = 70
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Saldo'
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
      object cSaldoFin: TCurrencyEdit
        Left = 467
        Top = 370
        Width = 121
        Height = 21
        AutoSize = False
        Color = clBtnFace
        Ctl3D = True
        DisplayFormat = ',##0.00'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
      end
      object StaticText7: TStaticText
        Left = 3
        Top = 416
        Width = 71
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Total Selec.'
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
      object cTotalFin: TCurrencyEdit
        Left = 76
        Top = 393
        Width = 121
        Height = 21
        AutoSize = False
        Color = clBtnFace
        Ctl3D = True
        DisplayFormat = ',##0.00'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Lan'#231'amentos Financeiros (Abertos)'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GradeAbertos: TDBGrid
        Left = 0
        Top = 0
        Width = 656
        Height = 362
        Align = alTop
        BorderStyle = bsNone
        Color = clWhite
        Ctl3D = True
        DataSource = dstAbertos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Calibri'
        Font.Style = []
        Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = GradeAbertosCellClick
        OnDrawColumnCell = GradeAbertosDrawColumnCell
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'Data'
            Title.Alignment = taCenter
            Title.Caption = 'Vencto.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Alignment = taCenter
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 252
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Forma_TipoDocumento'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero Doc.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 134
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Conciliado'
            Title.Alignment = taCenter
            Title.Caption = 'Con'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 24
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Registro'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Selecionado'
            Title.Caption = 'SL'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Calibri'
            Title.Font.Style = [fsBold]
            Width = 17
            Visible = True
          end>
      end
      object StaticText5: TStaticText
        Left = 11
        Top = 442
        Width = 71
        Height = 21
        Cursor = crHandPoint
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Benefic'#237'ario'
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
      object DBEdit1: TDBEdit
        Left = 84
        Top = 442
        Width = 509
        Height = 21
        TabStop = False
        Color = clBtnFace
        Ctl3D = True
        DataField = 'Beneficiario'
        DataSource = dstTitulos
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object StaticText20: TStaticText
        Left = 11
        Top = 401
        Width = 71
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Total Baixas'
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
      object CurrencyEdit1: TCurrencyEdit
        Left = 84
        Top = 424
        Width = 121
        Height = 21
        AutoSize = False
        Color = clBtnFace
        Ctl3D = True
        DisplayFormat = ',##0.00'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
      end
      object StaticText21: TStaticText
        Left = 11
        Top = 378
        Width = 71
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'D'#233'bitos'
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
      object CurrencyEdit2: TCurrencyEdit
        Left = 84
        Top = 378
        Width = 121
        Height = 21
        AutoSize = False
        Color = clBtnFace
        Ctl3D = True
        DisplayFormat = ',##0.00'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
      end
      object StaticText22: TStaticText
        Left = 208
        Top = 378
        Width = 70
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Cr'#233'ditos'
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
      object CurrencyEdit3: TCurrencyEdit
        Left = 280
        Top = 378
        Width = 121
        Height = 21
        AutoSize = False
        Color = clBtnFace
        Ctl3D = True
        DisplayFormat = ',##0.00'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
      end
      object StaticText23: TStaticText
        Left = 403
        Top = 378
        Width = 70
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Saldo'
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
      object CurrencyEdit4: TCurrencyEdit
        Left = 475
        Top = 378
        Width = 121
        Height = 21
        AutoSize = False
        Color = clBtnFace
        Ctl3D = True
        DisplayFormat = ',##0.00'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
      end
      object StaticText24: TStaticText
        Left = 11
        Top = 424
        Width = 71
        Height = 21
        AutoSize = False
        BevelInner = bvNone
        BevelKind = bkSoft
        BevelOuter = bvSpace
        BorderStyle = sbsSunken
        Caption = 'Total Selec.'
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
      object CurrencyEdit5: TCurrencyEdit
        Left = 84
        Top = 401
        Width = 121
        Height = 21
        AutoSize = False
        Color = clBtnFace
        Ctl3D = True
        DisplayFormat = ',##0.00'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
      end
    end
  end
  object Panel2: TPanel
    Left = 672
    Top = 186
    Width = 627
    Height = 476
    BevelOuter = bvLowered
    Caption = 'Panel2'
    TabOrder = 2
    object Grade: TDBGrid
      Left = 2
      Top = 4
      Width = 621
      Height = 362
      BorderStyle = bsNone
      Color = 14155775
      DataSource = dstExtrato
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = []
      Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      StyleElements = [seFont, seBorder]
      OnCellClick = GradeCellClick
      OnDrawColumnCell = GradeDrawColumnCell
      OnDblClick = GradeDblClick
      OnKeyPress = GradeKeyPress
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Data'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 258
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Documento'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 96
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 117
          Visible = True
        end
        item
          Color = 12049407
          Expanded = False
          FieldName = 'Titulo'
          Title.Alignment = taCenter
          Title.Caption = 'Conc'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Selecionado'
          Title.Alignment = taCenter
          Title.Caption = 'SL'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Calibri'
          Title.Font.Style = [fsBold]
          Width = 20
          Visible = True
        end>
    end
    object StaticText12: TStaticText
      Left = 11
      Top = 373
      Width = 69
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'D'#233'bitos'
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
    object cDebitosExt: TCurrencyEdit
      Left = 82
      Top = 373
      Width = 118
      Height = 21
      AutoSize = False
      Color = 14155775
      Ctl3D = True
      DisplayFormat = ',##0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object StaticText13: TStaticText
      Left = 203
      Top = 373
      Width = 66
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Cr'#233'ditos'
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
    object cCreditosExt: TCurrencyEdit
      Left = 271
      Top = 373
      Width = 121
      Height = 21
      AutoSize = False
      Color = 14155775
      Ctl3D = True
      DisplayFormat = ',##0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
    end
    object StaticText14: TStaticText
      Left = 395
      Top = 373
      Width = 51
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Saldo'
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
    object cSaldoExt: TCurrencyEdit
      Left = 448
      Top = 373
      Width = 121
      Height = 21
      AutoSize = False
      Color = 14155775
      Ctl3D = True
      DisplayFormat = ',##0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
    end
    object StaticText18: TStaticText
      Left = 11
      Top = 419
      Width = 69
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Total Selec.'
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
    object cSelExt: TCurrencyEdit
      Left = 82
      Top = 419
      Width = 118
      Height = 21
      AutoSize = False
      Color = 14155775
      Ctl3D = True
      DisplayFormat = ',##0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 8
    end
    object StaticText6: TStaticText
      Left = 11
      Top = 396
      Width = 69
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Total Extrato'
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
    object cTotalExt: TCurrencyEdit
      Left = 82
      Top = 396
      Width = 118
      Height = 21
      AutoSize = False
      Color = 14155775
      Ctl3D = True
      DisplayFormat = ',##0.00'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 10
    end
    object StaticText19: TStaticText
      Left = 11
      Top = 442
      Width = 69
      Height = 21
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
      TabOrder = 11
      Transparent = False
      StyleElements = []
    end
    object cCodClass: TEdit
      Left = 82
      Top = 442
      Width = 107
      Height = 21
      Color = 14155775
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object cDescClass: TEdit
      Left = 190
      Top = 442
      Width = 391
      Height = 21
      Color = 14155775
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
    end
  end
  object StaticText2: TStaticText
    Left = 671
    Top = 159
    Width = 628
    Height = 25
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Extrato banc'#225'rio (A Conciliar)'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    Transparent = False
    StyleElements = []
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 46
    Width = 1299
    Height = 103
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 4
    ExplicitTop = 49
    ExplicitWidth = 1277
    object bFiltro: TSpeedButton
      Left = 593
      Top = 19
      Width = 60
      Height = 60
      Hint = '  Limpar todos os filtros.  '
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF0000808000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF0000808000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF0000808000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00C0C0C000808000008080
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00FFFF0000FFFF0000C0C0C0008080
        00008080000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00FFFF0000FFFFFF00C0C0C000FFFF0000C0C0
        C000808000008080000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF0000C0C0C0008080
        0000C0C0C000808000008080000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00C0C0C000FFFF0000C0C0
        C00080800000C0C0C000808000008080000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
        FF00FFFF0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFF0000C0C0C0008080
        0000C0C0C00080800000C0C0C000808000008080000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFF
        0000FFFFFF00FFFF0000FFFFFF00FFFF0000FFFFFF00C0C0C000FFFF0000C0C0
        C00080800000C0C0C00080800000C0C0C000808000008080000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FFFF0000FFFF
        FF00000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000008080000080800000808000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
        000080808000808080008080800080808000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF000000000080808000000000000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000808080008080800000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800080808000808080008080
        8000FFFFFF0000000000C0C0C000000000008080800080808000808080008080
        80008080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000080808000808080008080800080808000000000008080
        8000808080008080800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF000000000080808000C0C0C0000000000080808000808080008080
        8000808080008080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000008080800080808000808080008080800000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0080808000808080008080800080808000FFFF
        FF000000000080808000C0C0C000808080000000000080808000808080008080
        800080808000808080008080800000000000FF00FF00FF00FF00FF00FF00FF00
        FF00000000008080800080808000808080008080800000000000808080008080
        80008080800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000C0C0C00080808000C0C0C0008080800000000000808080008080
        800080808000808080008080800000000000FF00FF00FF00FF00FF00FF00FF00
        FF000000000080808000808080008080800000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF008080800080808000808080008080800080808000FFFF
        FF0000000000C0C0C000C0C0C00080808000C0C0C00000000000808080008080
        800080808000808080008080800000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000080808000808080000000000080808000808080008080
        800080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000FFFFFF00C0C0C000C0C0C00080808000C0C0C000000000008080
        8000808080008080800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF008080800080808000808080008080800080808000FFFFFF000000
        0000FFFFFF00C0C0C000FFFFFF0080808000C0C0C00080808000000000008080
        80000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000008080800080808000808080008080
        8000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        0000C0C0C000FFFFFF00C0C0C000C0C0C00080808000C0C0C000808080000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF008080800080808000808080008080800080808000FFFFFF00000000000000
        0000FFFFFF00C0C0C000FFFFFF00C0C0C000C0C0C00080808000C0C0C0000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000080808000808080008080800080808000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
        FF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000C0C0C000808080000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00000000000000000000000000000000000000000000000000FFFF
        FF00FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000C0C0C0008080
        800000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00000000000000000000000000000000000000
        000000000000C0C0C000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00C0C0C000FFFFFF00000000000000000000000000C0C0
        C00000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000000000008080800080808000C0C0C00080808000C0C0
        C00080808000C0C0C000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000808080008080800080808000C0C0C00080808000C0C0C0008080
        8000C0C0C000C0C0C000C0C0C000000000000000000000000000000000000000
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000080808000808080008080800080808000C0C0C00080808000C0C0
        C000C0C0C000C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000080808000C0C0C00080808000C0C0C0008080
        8000C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000000000000000C0C0C00080808000C0C0
        C000C0C0C000C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
        0000C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFF
        FF00FFFFFF0000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      ParentShowHint = False
      ShowHint = True
      OnClick = bFiltroClick
    end
    object StaticText1: TStaticText
      Left = 7
      Top = 6
      Width = 99
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
      TabOrder = 0
      Transparent = False
      StyleElements = []
    end
    object StaticText4: TStaticText
      Left = 7
      Top = 52
      Width = 99
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Nome do Arquivo'
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
    object cBanco: TDBLookupComboBox
      Left = 108
      Top = 6
      Width = 286
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'Codigo'
      ListField = 'Codigo;Numero_Banco; Nome'
      ListFieldIndex = 2
      ListSource = Dados.dsBancos
      ParentFont = False
      TabOrder = 2
      OnExit = cBancoExit
    end
    object cArquivo: TFilenameEdit
      Left = 108
      Top = 52
      Width = 476
      Height = 21
      FileEditStyle = fsComboBox
      Filter = 'All files (*.*)|*.ofx'
      DialogTitle = 'Explorar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NumGlyphs = 1
      ParentFont = False
      TabOrder = 3
      Text = ''
    end
    object cDataIni: TDateEdit
      Left = 108
      Top = 29
      Width = 101
      Height = 21
      CheckOnExit = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
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
      YearDigits = dyFour
      TabOrder = 4
    end
    object StaticText15: TStaticText
      Left = 7
      Top = 29
      Width = 99
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Data Inicial'
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
    object cDataFim: TDateEdit
      Left = 288
      Top = 29
      Width = 102
      Height = 21
      CheckOnExit = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
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
      YearDigits = dyFour
      TabOrder = 6
    end
    object StaticText16: TStaticText
      Left = 216
      Top = 29
      Width = 70
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Data Final'
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
    object StaticText17: TStaticText
      Left = 7
      Top = 75
      Width = 99
      Height = 21
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
      TabOrder = 8
      Transparent = False
      StyleElements = []
    end
    object cClassificacao: TRxDBLookupCombo
      Left = 108
      Top = 75
      Width = 475
      Height = 21
      DropDownCount = 8
      DisplayAllFields = True
      FieldsDelimiter = '|'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo; Descricao'
      LookupSource = Dados.dsClassificacaoFinanceira
      ParentFont = False
      TabOrder = 9
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 140
    Top = 228
  end
  object tNumero: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Numero) AS Numero FROM PagarReceber')
    FetchRows = 1
    Left = 342
    Top = 278
  end
  object tExtrato: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO ExtratoBancario'
      
        '  (Registro, Data, Descricao, Valor, Tipo, Baixado, Aberto, Clas' +
        'sificacao, Documento, Historico, Selecionado, Titulo, Banco, Con' +
        'ciliado)'
      'VALUES'
      
        '  (:Registro, :Data, :Descricao, :Valor, :Tipo, :Baixado, :Abert' +
        'o, :Classificacao, :Documento, :Historico, :Selecionado, :Titulo' +
        ', :Banco, :Conciliado)')
    SQLDelete.Strings = (
      'DELETE FROM ExtratoBancario'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE ExtratoBancario'
      'SET'
      
        '  Registro = :Registro, Data = :Data, Descricao = :Descricao, Va' +
        'lor = :Valor, Tipo = :Tipo, Baixado = :Baixado, Aberto = :Aberto' +
        ', Classificacao = :Classificacao, Documento = :Documento, Histor' +
        'ico = :Historico, Selecionado = :Selecionado, Titulo = :Titulo, ' +
        'Banco = :Banco, Conciliado = :Conciliado'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT ExtratoBancario.Registro, ExtratoBancario.Data, ExtratoBa' +
        'ncario.Descricao, ExtratoBancario.Valor, ExtratoBancario.Tipo, E' +
        'xtratoBancario.Baixado, ExtratoBancario.Aberto, ExtratoBancario.' +
        'Classificacao, ExtratoBancario.Documento, ExtratoBancario.Histor' +
        'ico, ExtratoBancario.Selecionado, ExtratoBancario.Titulo, Extrat' +
        'oBancario.Banco, ExtratoBancario.Conciliado FROM ExtratoBancario'
      'WHERE ExtratoBancario.Registro = :Registro ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM ExtratoBancario ORDER BY Registro')
    FetchRows = 1
    AfterScroll = tExtratoAfterScroll
    Left = 212
    Top = 278
    object tExtratoRegistro: TIntegerField
      FieldName = 'Registro'
      Origin = 'ExtratoBancario.Registro'
    end
    object tExtratoData: TDateTimeField
      FieldName = 'Data'
      Origin = 'ExtratoBancario.Data'
    end
    object tExtratoDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'ExtratoBancario.Descricao'
      Size = 60
    end
    object tExtratoValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'ExtratoBancario.Valor'
      DisplayFormat = ',##0.00'
    end
    object tExtratoTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'ExtratoBancario.Tipo'
      FixedChar = True
      Size = 1
    end
    object tExtratoBaixado: TBooleanField
      FieldName = 'Baixado'
      Origin = 'ExtratoBancario.Baixado'
    end
    object tExtratoAberto: TBooleanField
      FieldName = 'Aberto'
      Origin = 'ExtratoBancario.Aberto'
    end
    object tExtratoClassificacao: TStringField
      FieldName = 'Classificacao'
      Origin = 'ExtratoBancario.Classificacao'
      Size = 15
    end
    object tExtratoDocumento: TStringField
      FieldName = 'Documento'
      Origin = 'ExtratoBancario.Documento'
      Size = 15
    end
    object tExtratoHistorico: TSmallintField
      FieldName = 'Historico'
      Origin = 'ExtratoBancario.Historico'
    end
    object tExtratoSelecionado: TBooleanField
      FieldName = 'Selecionado'
      Origin = 'ExtratoBancario.Selecionado'
    end
    object tExtratoTitulo: TIntegerField
      FieldName = 'Titulo'
      Origin = 'ExtratoBancario.Titulo'
    end
    object tExtratoBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'ExtratoBancario.Banco'
    end
    object tExtratoConciliado: TBooleanField
      FieldName = 'Conciliado'
      Origin = 'ExtratoBancario.Conciliado'
    end
  end
  object dstExtrato: TDataSource
    DataSet = tExtrato
    Left = 212
    Top = 326
  end
  object dstBaixas: TDataSource
    DataSet = tBaixas
    Left = 139
    Top = 326
  end
  object tBaixas: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO PagarReceberBaixas'
      
        '  (Registro, Numero, Data, Valor, Forma_TipoDocumento, Tipo, Ban' +
        'co, Conciliado, Selecionado)'
      'VALUES'
      
        '  (:Registro, :Numero, :Data, :Valor, :Forma_TipoDocumento, :Tip' +
        'o, :Banco, :Conciliado, :Selecionado)')
    SQLDelete.Strings = (
      'DELETE FROM PagarReceberBaixas'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE PagarReceberBaixas'
      'SET'
      
        '  Registro = :Registro, Numero = :Numero, Data = :Data, Valor = ' +
        ':Valor, Forma_TipoDocumento = :Forma_TipoDocumento, Tipo = :Tipo' +
        ', Banco = :Banco, Conciliado = :Conciliado, Selecionado = :Selec' +
        'ionado'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT PagarReceberBaixas.Registro, PagarReceberBaixas.Numero, P' +
        'agarReceberBaixas.Data, PagarReceberBaixas.Valor, PagarReceberBa' +
        'ixas.Forma_TipoDocumento, PagarReceberBaixas.Tipo, PagarReceberB' +
        'aixas.Banco, PagarReceberBaixas.Conciliado, PagarReceberBaixas.S' +
        'elecionado FROM PagarReceberBaixas'
      'WHERE PagarReceberBaixas.Registro = :Registro ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT  Registro'
      '       ,Numero'
      '       ,Data'
      '       ,Valor'
      '       ,Forma_TipoDocumento'
      '       ,Tipo'
      '       ,Banco'
      '       ,Conciliado'
      
        '       ,Descricao = (SELECT Descricao FROM ClassificacaoFinancei' +
        'ra WHERE Codigo = (SELECT Classificacao FROM PagarReceber PR WHE' +
        'RE PR.Numero = PRB.Numero))'
      '       ,Selecionado'
      'FROM   PagarReceberBaixas PRB'
      'ORDER  BY Selecionado, Data')
    FetchRows = 1
    AfterScroll = tBaixasAfterScroll
    Left = 139
    Top = 278
    object tBaixasRegistro: TLargeintField
      FieldName = 'Registro'
      Origin = 'PagarReceberBaixas.Registro'
    end
    object tBaixasNumero: TLargeintField
      FieldName = 'Numero'
      Origin = 'PagarReceberBaixas.Numero'
    end
    object tBaixasData: TDateTimeField
      FieldName = 'Data'
      Origin = 'PagarReceberBaixas.Data'
    end
    object tBaixasValor: TCurrencyField
      FieldName = 'Valor'
      Origin = 'PagarReceberBaixas.Valor'
      DisplayFormat = ',##0.00'
    end
    object tBaixasForma_TipoDocumento: TStringField
      FieldName = 'Forma_TipoDocumento'
      Origin = 'PagarReceberBaixas.Forma_TipoDocumento'
      Size = 15
    end
    object tBaixasTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'PagarReceberBaixas.Tipo'
      FixedChar = True
      Size = 1
    end
    object tBaixasBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'PagarReceberBaixas.Banco'
    end
    object tBaixasDescricao: TStringField
      FieldName = 'Descricao'
      Origin = '.'
      ReadOnly = True
      Size = 60
    end
    object tBaixasConciliado: TBooleanField
      FieldName = 'Conciliado'
      Origin = 'PagarReceberBaixas.Conciliado'
    end
    object tBaixasSelecionado: TBooleanField
      FieldName = 'Selecionado'
      Origin = 'PagarReceberBaixas.Selecionado'
    end
  end
  object tTotal: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Numero) AS Numero FROM PagarReceber')
    FetchRows = 1
    Left = 405
    Top = 278
  end
  object tTitulos: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 64
    Top = 278
  end
  object dstTitulos: TDataSource
    DataSet = tTitulos
    Left = 64
    Top = 326
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 464
    Top = 278
  end
  object tCodigo: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM HistoricosBancos')
    FetchRows = 1
    Left = 285
    Top = 278
  end
  object tAbertos: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO PagarReceberBaixas'
      
        '  (Registro, Numero, Data, Valor, Forma_TipoDocumento, Tipo, Ban' +
        'co, Conciliado, Selecionado)'
      'VALUES'
      
        '  (:Registro, :Numero, :Data, :Valor, :Forma_TipoDocumento, :Tip' +
        'o, :Banco, :Conciliado, :Selecionado)')
    SQLDelete.Strings = (
      'DELETE FROM PagarReceberBaixas'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLUpdate.Strings = (
      'UPDATE PagarReceberBaixas'
      'SET'
      
        '  Registro = :Registro, Numero = :Numero, Data = :Data, Valor = ' +
        ':Valor, Forma_TipoDocumento = :Forma_TipoDocumento, Tipo = :Tipo' +
        ', Banco = :Banco, Conciliado = :Conciliado, Selecionado = :Selec' +
        'ionado'
      'WHERE'
      '  Registro = :Old_Registro')
    SQLRefresh.Strings = (
      
        'SELECT PagarReceberBaixas.Registro, PagarReceberBaixas.Numero, P' +
        'agarReceberBaixas.Data, PagarReceberBaixas.Valor, PagarReceberBa' +
        'ixas.Forma_TipoDocumento, PagarReceberBaixas.Tipo, PagarReceberB' +
        'aixas.Banco, PagarReceberBaixas.Conciliado, PagarReceberBaixas.S' +
        'elecionado FROM PagarReceberBaixas'
      'WHERE PagarReceberBaixas.Registro = :Registro ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT  Numero'
      '       ,Data = Data_Vencimento'
      '       ,Valor = Valor_Operacao'
      '       ,Forma_TipoDocumento = Numero_Documento'
      '       ,Tipo'
      '       ,Banco'
      
        '       ,Descricao = (SELECT Descricao FROM ClassificacaoFinancei' +
        'ra WHERE Codigo = Classificacao)'
      '       ,Selecionado = cast(0 as bit)'
      '       ,Conciliado = cast(0 as bit)'
      'FROM   PagarReceber PR'
      'ORDER  BY Selecionado, Data_Vencimento')
    FetchRows = 1
    AfterScroll = tBaixasAfterScroll
    Left = 139
    Top = 384
    object LargeintField2: TLargeintField
      FieldName = 'Numero'
      Origin = 'PagarReceberBaixas.Numero'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'Data'
      Origin = 'PagarReceberBaixas.Data'
    end
    object CurrencyField1: TCurrencyField
      FieldName = 'Valor'
      Origin = 'PagarReceberBaixas.Valor'
      DisplayFormat = ',##0.00'
    end
    object StringField1: TStringField
      FieldName = 'Forma_TipoDocumento'
      Origin = 'PagarReceberBaixas.Forma_TipoDocumento'
      Size = 15
    end
    object StringField2: TStringField
      FieldName = 'Tipo'
      Origin = 'PagarReceberBaixas.Tipo'
      FixedChar = True
      Size = 1
    end
    object SmallintField1: TSmallintField
      FieldName = 'Banco'
      Origin = 'PagarReceberBaixas.Banco'
    end
    object StringField3: TStringField
      FieldName = 'Descricao'
      Origin = '.'
      ReadOnly = True
      Size = 60
    end
    object BooleanField1: TBooleanField
      FieldName = 'Conciliado'
      Origin = 'PagarReceberBaixas.Conciliado'
    end
    object BooleanField2: TBooleanField
      FieldName = 'Selecionado'
      Origin = 'PagarReceberBaixas.Selecionado'
    end
  end
  object dstAbertos: TDataSource
    DataSet = tAbertos
    Left = 139
    Top = 432
  end
end
