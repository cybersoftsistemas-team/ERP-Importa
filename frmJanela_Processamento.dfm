object Janela_Processamento: TJanela_Processamento
  Left = 579
  Top = 412
  Cursor = crAppStart
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cybersoft - Processando...'
  ClientHeight = 98
  ClientWidth = 429
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 429
    Height = 98
    Align = alClient
    Stretch = True
  end
  object lProcesso: TLabel
    Left = 15
    Top = 16
    Width = 362
    Height = 13
    AutoSize = False
    Caption = 'Imprimindo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    StyleElements = [seClient, seBorder]
  end
  object Label1: TLabel
    Left = 398
    Top = 34
    Width = 17
    Height = 13
    Alignment = taRightJustify
    Caption = '0%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    StyleElements = [seClient, seBorder]
  end
  object Progresso: TProgressBar
    Left = 15
    Top = 33
    Width = 362
    Height = 16
    TabOrder = 0
  end
  object bCancelar: TButton
    Left = 177
    Top = 59
    Width = 75
    Height = 25
    Cursor = crAppStart
    Caption = '&Cancelar'
    TabOrder = 1
    OnClick = bCancelarClick
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 16
    Top = 56
  end
end
