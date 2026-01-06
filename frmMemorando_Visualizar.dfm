object Memorando_Visualizar: TMemorando_Visualizar
  Left = 430
  Top = 210
  BorderStyle = bsSingle
  Caption = 'Pedido_Visualizar2'
  ClientHeight = 554
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    1024
    554)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1024
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
      OnClick = bImprimirClick
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
    Top = 533
    Width = 1024
    Height = 21
    Panels = <
      item
        Text = ' Tipo:'
        Width = 100
      end
      item
        Text = 'Memorando:'
        Width = 120
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
  end
  object cMemo: TMemo
    Left = 5
    Top = 35
    Width = 1013
    Height = 496
    Anchors = [akLeft, akTop, akRight, akBottom]
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
    TabOrder = 2
    WordWrap = False
    OnClick = cMemoClick
    OnKeyDown = cMemoKeyDown
  end
end
