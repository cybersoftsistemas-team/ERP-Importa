object Financeiro_LancamentoParcelas: TFinanceiro_LancamentoParcelas
  Left = 651
  Top = 174
  BorderStyle = bsToolWindow
  Caption = 'Financeiro_LancamentoParcelas'
  ClientHeight = 495
  ClientWidth = 269
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bOK: TButton
    Left = 112
    Top = 487
    Width = 75
    Height = 25
    Caption = '&OK'
    TabOrder = 0
    OnClick = bOKClick
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 412
    Width = 118
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Total das Duplicatas'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    StyleElements = []
    Transparent = False
  end
  object cValor: TCurrencyEdit
    Left = 128
    Top = 412
    Width = 116
    Height = 21
    TabStop = False
    AutoSize = False
    DecimalPlaces = 6
    DisplayFormat = '###,###,###,##0.00;-###,###,###,##0.00'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object Grade: TRxDBGrid
    Left = 8
    Top = 8
    Width = 253
    Height = 401
    DataSource = Dados.dsTabParcelas
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taRightJustify
        Color = 16766935
        Expanded = False
        FieldName = 'Parcela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ReadOnly = True
        Title.Alignment = taCenter
        Width = 49
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Vencimento'
        Title.Alignment = taCenter
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Title.Alignment = taCenter
        Width = 113
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 464
    Width = 269
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 4
    DesignSize = (
      269
      31)
    object bCancelar: TButton
      Left = 195
      Top = 2
      Width = 75
      Height = 28
      Anchors = [akLeft, akTop, akRight]
      Caption = '&Sair'
      TabOrder = 0
      OnClick = bCancelarClick
    end
  end
  object StaticText2: TStaticText
    Left = 8
    Top = 435
    Width = 118
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Valor do Documento'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 5
    StyleElements = []
    Transparent = False
  end
  object cTotalDocumento: TCurrencyEdit
    Left = 128
    Top = 435
    Width = 116
    Height = 21
    TabStop = False
    AutoSize = False
    DecimalPlaces = 6
    DisplayFormat = '###,###,###,##0.00;-###,###,###,##0.00'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
end
