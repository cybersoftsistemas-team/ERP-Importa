object Invoice_ItensQtde: TInvoice_ItensQtde
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Invoice_ItensQtde'
  ClientHeight = 170
  ClientWidth = 320
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  DesignSize = (
    320
    170)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 10
    Width = 303
    Height = 103
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 16
      Width = 215
      Height = 16
      Caption = 'Informe os valores para o item.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lDI: TStaticText
      Left = 12
      Top = 62
      Width = 113
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Quantidade'
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
    object cQuantidade: TCurrencyEdit
      Left = 195
      Top = 62
      Width = 94
      Height = 21
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '#,##0.000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object cPercentualQtde: TCurrencyEdit
      Left = 127
      Top = 62
      Width = 66
      Height = 21
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = '0.00%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnChange = cPercentualQtdeChange
    end
    object StaticText6: TStaticText
      Left = 12
      Top = 39
      Width = 113
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Produto'
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
    object cProduto: TDBEdit
      Left = 127
      Top = 39
      Width = 162
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = 16769505
      DataField = 'Codigo_Mercadoria'
      DataSource = Dados.dsAdicoes
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      StyleElements = [seBorder]
    end
  end
  object bOK: TButton
    Left = 85
    Top = 130
    Width = 75
    Height = 28
    Hint = '  Confirma as informa'#231#245'es e sai.  '
    Anchors = [akLeft, akBottom]
    Caption = '&OK'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = bOKClick
    ExplicitTop = 350
  end
  object bCancela: TButton
    Left = 161
    Top = 130
    Width = 75
    Height = 28
    Hint = '  Cancela as informa'#231#245'es e sai.  '
    Anchors = [akLeft, akBottom]
    Caption = '&Cancelar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = bCancelaClick
    ExplicitTop = 350
  end
end
