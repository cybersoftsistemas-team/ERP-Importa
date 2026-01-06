object Janela_BACKUP: TJanela_BACKUP
  Left = 500
  Top = 295
  Cursor = crSQLWait
  BorderStyle = bsDialog
  Caption = 'Janela_BACKUP'
  ClientHeight = 141
  ClientWidth = 601
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 601
    Height = 42
    Align = alTop
    Stretch = True
  end
  object lAcao: TLabel
    Left = 8
    Top = 56
    Width = 115
    Height = 13
    Caption = 'Executando o Backup...'
  end
  object lLocal: TLabel
    Left = 60
    Top = 97
    Width = 425
    Height = 13
    AutoSize = False
    Caption = 'C:\Backup SQL Server\Importa\... Aguarde'
  end
  object Label3: TLabel
    Left = 3
    Top = 81
    Width = 57
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Servidor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 3
    Top = 97
    Width = 57
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Pasta :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lServidor: TLabel
    Left = 60
    Top = 81
    Width = 425
    Height = 13
    AutoSize = False
    Caption = 'SERCYBERSOFT'
  end
  object Label2: TLabel
    Left = 3
    Top = 113
    Width = 57
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'C'#243'pia :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lCopia: TLabel
    Left = 60
    Top = 113
    Width = 425
    Height = 13
    AutoSize = False
    Caption = 'C:\Backup SQL Server\Importa\... Aguarde'
  end
  object lTitulo1: TRxLabel
    Left = 8
    Top = 2
    Width = 60
    Height = 21
    Caption = 'BACKUP'
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
  object lTitulo2: TRxLabel
    Left = 8
    Top = 20
    Width = 241
    Height = 18
    Caption = 'Backup do banco de dados do Sistema.'
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
  object Progresso: TActivityIndicator
    Left = 536
    Top = 67
    IndicatorSize = aisLarge
    IndicatorType = aitSectorRing
  end
end
