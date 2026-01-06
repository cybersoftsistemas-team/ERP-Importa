object Utilitario_ExportaAPI: TUtilitario_ExportaAPI
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Utilitario_ExportaAPI'
  ClientHeight = 762
  ClientWidth = 926
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image3: TImage
    Left = 0
    Top = 0
    Width = 926
    Height = 37
    Align = alTop
    Stretch = True
    ExplicitWidth = 605
  end
  object RxLabel3: TRxLabel
    Left = 5
    Top = -1
    Width = 196
    Height = 23
    Caption = 'EXPORTA'#199#195'O DE DADOS'
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
    Left = 5
    Top = 16
    Width = 181
    Height = 18
    Caption = 'Exporta'#231#227'o de dados via API.'
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
  object Label1: TLabel
    Left = 8
    Top = 80
    Width = 122
    Height = 13
    Caption = 'Arquivos XML para envio:'
  end
  object cArq: TListBox
    AlignWithMargins = True
    Left = 3
    Top = 100
    Width = 920
    Height = 372
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 12615680
    Font.Height = -11
    Font.Name = 'JetBrains Mono'
    Font.Style = []
    ItemHeight = 14
    ParentFont = False
    TabOrder = 0
    StyleElements = [seClient, seBorder]
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 727
    Width = 920
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object bttEnviarXML: TSpeedButton
      AlignWithMargins = True
      Left = 83
      Top = 2
      Width = 78
      Height = 28
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Enviar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = bttEnviarXMLClick
      ExplicitLeft = 244
      ExplicitTop = 10
      ExplicitHeight = 31
    end
    object bSair: TSpeedButton
      AlignWithMargins = True
      Left = 847
      Top = 2
      Width = 71
      Height = 28
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = bSairClick
      ExplicitLeft = 518
    end
    object bArq: TSpeedButton
      AlignWithMargins = True
      Left = 2
      Top = 2
      Width = 79
      Height = 28
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Arquivos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = bArqClick
      ExplicitHeight = 32
    end
    object SpeedButton1: TSpeedButton
      AlignWithMargins = True
      Left = 163
      Top = 2
      Width = 78
      Height = 28
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alLeft
      Caption = '&Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
      ExplicitLeft = 199
      ExplicitTop = -2
    end
  end
  object cLog: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 478
    Width = 920
    Height = 236
    Margins.Bottom = 10
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'JetBrains Mono'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentFont = False
    TabOrder = 2
  end
  object CheckBox1: TCheckBox
    Left = 634
    Top = 54
    Width = 265
    Height = 17
    Caption = 'Mover arquivos enviados para pasta de enviados.'
    TabOrder = 3
  end
  object dArq: TOpenDialog
    DefaultExt = '*.xml'
    Filter = 'xml|*.xml'
    Options = [ofReadOnly, ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 199
    Top = 256
  end
end
