object Janela_ProcessamentoSPED: TJanela_ProcessamentoSPED
  Left = 708
  Top = 416
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cybersoft - Processando'
  ClientHeight = 211
  ClientWidth = 441
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 441
    Height = 211
    Align = alClient
    Stretch = True
  end
  object lProcesso: TLabel
    Left = 15
    Top = 19
    Width = 64
    Height = 11
    Caption = 'Notas Fiscais'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    StyleElements = [seClient, seBorder]
  end
  object Label1: TLabel
    Left = 392
    Top = 34
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = '100%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    StyleElements = [seClient, seBorder]
  end
  object lRegistro: TLabel
    Left = 15
    Top = 59
    Width = 88
    Height = 11
    Caption = 'Registro : C100...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    StyleElements = [seClient, seBorder]
  end
  object Label3: TLabel
    Left = 392
    Top = 74
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = '100%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    StyleElements = [seClient, seBorder]
  end
  object lRegistro2: TLabel
    Left = 15
    Top = 99
    Width = 15
    Height = 11
    Caption = '. . .'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    StyleElements = [seClient, seBorder]
  end
  object Label4: TLabel
    Left = 392
    Top = 114
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = '100%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    StyleElements = [seClient, seBorder]
  end
  object lRegistro3: TLabel
    Left = 15
    Top = 139
    Width = 15
    Height = 11
    Caption = '. . .'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    StyleElements = [seClient, seBorder]
  end
  object Label6: TLabel
    Left = 392
    Top = 154
    Width = 31
    Height = 13
    Alignment = taRightJustify
    Caption = '100%'
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
    Smooth = True
    TabOrder = 0
    TabStop = True
  end
  object bCancelar: TButton
    Left = 183
    Top = 179
    Width = 75
    Height = 25
    Cursor = crAppStart
    Caption = '&Cancelar'
    TabOrder = 1
    OnClick = bCancelarClick
  end
  object Progresso2: TProgressBar
    Left = 15
    Top = 73
    Width = 362
    Height = 16
    TabOrder = 2
  end
  object Progresso3: TProgressBar
    Left = 15
    Top = 113
    Width = 362
    Height = 16
    TabOrder = 3
  end
  object Progresso4: TProgressBar
    Left = 15
    Top = 153
    Width = 362
    Height = 16
    TabOrder = 4
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = Timer1Timer
    Left = 16
    Top = 176
  end
end
