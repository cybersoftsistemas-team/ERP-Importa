object NotaFiscal_Preview: TNotaFiscal_Preview
  Left = 182
  Top = 122
  Width = 838
  Height = 605
  Caption = 'NotaFiscal_Preview'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 813
    Height = 673
    Align = alTop
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 10485760
    Font.Height = -12
    Font.Name = 'Terminal'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 0
    WantReturns = False
    WordWrap = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 673
    Width = 813
    Height = 35
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object bImprimir: TButton
      Left = 462
      Top = 2
      Width = 70
      Height = 32
      Hint = '   Imprimir o pedido corrente.   '
      Caption = '&Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object bSair: TButton
      Left = 533
      Top = 2
      Width = 70
      Height = 32
      Caption = '&Sair'
      TabOrder = 1
      OnClick = bSairClick
    end
  end
end
