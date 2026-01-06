object Pedido_Visualizar: TPedido_Visualizar
  Left = 92
  Top = 69
  BorderStyle = bsSingle
  Caption = 'Pedido_Visualizar'
  ClientHeight = 596
  ClientWidth = 898
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnPaint = FormPaint
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 898
    Height = 32
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 314
      Top = 9
      Width = 27
      Height = 13
      Caption = 'Fonte'
    end
    object Label2: TLabel
      Left = 605
      Top = 9
      Width = 45
      Height = 13
      Caption = 'Tamanho'
    end
    object bCopiar: TButton
      Left = 78
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Copiar'
      TabOrder = 0
      OnClick = bCopiarClick
    end
    object bSair: TButton
      Left = 228
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 1
      OnClick = bSairClick
    end
    object bImprimir: TButton
      Left = 153
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Imprimir'
      TabOrder = 2
    end
    object bSelecionar: TButton
      Left = 3
      Top = 4
      Width = 75
      Height = 25
      Caption = '&Selecionar'
      TabOrder = 3
      OnClick = bSelecionarClick
    end
    object cFontes: TComboBox
      Left = 344
      Top = 6
      Width = 249
      Height = 21
      ItemHeight = 13
      Sorted = True
      TabOrder = 4
      OnChange = cFontesChange
    end
    object cTamanho: TRxSpinEdit
      Left = 654
      Top = 6
      Width = 50
      Height = 21
      TabOrder = 5
      OnChange = cTamanhoChange
    end
  end
  object Barra: TStatusBar
    Left = 0
    Top = 575
    Width = 898
    Height = 21
    Panels = <
      item
        Text = ' Tipo:'
        Width = 100
      end
      item
        Text = ' Pedido:'
        Width = 100
      end
      item
        Text = ' Formul'#225'rios:'
        Width = 130
      end
      item
        Text = ' Linha:0'
        Width = 100
      end
      item
        Text = ' Coluna:0'
        Width = 100
      end
      item
        Width = 50
      end>
    SimplePanel = False
  end
  object VrDisplay1: TVrDisplay
    Left = 0
    Top = 32
    Width = 898
    Height = 543
    Bevel.InnerWidth = 2
    Bevel.OuterWidth = 2
    ShadowColor1 = 6190950
    ShadowColor2 = 8165509
    ShadowLayout = soTopLeft
    Align = alClient
    Color = 8165509
    object cMemo: TMemo
      Left = 13
      Top = 11
      Width = 1000
      Height = 636
      BorderStyle = bsNone
      Color = 8165509
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Terminal'
      Font.Style = []
      Lines.Strings = (
        'cMemo')
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      WordWrap = False
      OnClick = cMemoClick
      OnKeyDown = cMemoKeyDown
    end
  end
end
