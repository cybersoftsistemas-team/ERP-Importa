object Utilitario_SistemaAcoes: TUtilitario_SistemaAcoes
  Left = 359
  Top = 127
  Width = 977
  Height = 626
  Caption = 'Utilitario_SistemaAcoes'
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  DesignSize = (
    961
    587)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 947
    Height = 533
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelInner = bvLowered
    BevelOuter = bvLowered
    Color = clBlack
    TabOrder = 0
    object Tela: TImage
      Left = 2
      Top = 2
      Width = 943
      Height = 529
      Align = alClient
     
      IncrementalDisplay = True
      Stretch = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 546
    Width = 961
    Height = 41
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      961
      41)
    object SpeedButton1: TSpeedButton
      Left = 1
      Top = 1
      Width = 56
      Height = 39
      Caption = 'Play'
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 57
      Top = 1
      Width = 56
      Height = 39
      Caption = 'Stop'
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 905
      Top = 1
      Width = 56
      Height = 39
      Anchors = [akRight, akBottom]
      Caption = '&Sair'
      OnClick = SpeedButton3Click
    end
    object StaticText1: TStaticText
      Left = 336
      Top = 4
      Width = 62
      Height = 30
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Velocidade'
    Color = 7293440
      Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    StyleElements = []
    Transparent = False
    end
    object cVelocidade: TRxSlider
      Left = 400
      Top = 4
      Width = 206
      Height = 30
      BevelStyle = bvLowered
      TabOrder = 1
      Value = 20
    end
    object Button1: TButton
      Left = 128
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Tela Cheia'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
end
