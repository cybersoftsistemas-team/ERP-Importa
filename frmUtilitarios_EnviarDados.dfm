object Utilitarios_EnviarDados: TUtilitarios_EnviarDados
  Left = 770
  Top = 358
  BorderStyle = bsToolWindow
  Caption = 'Utilitarios_EnviarDados'
  ClientHeight = 437
  ClientWidth = 746
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object ListBox1: TListBox
    Left = 0
    Top = 0
    Width = 746
    Height = 196
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = 16768991
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 407
    Width = 746
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      746
      30)
    object bExecutar: TButton
      Left = 518
      Top = 1
      Width = 76
      Height = 28
      Anchors = [akTop, akRight]
      Caption = '&Executar'
      TabOrder = 0
      OnClick = bExecutarClick
    end
    object bSair: TButton
      Left = 670
      Top = 1
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      TabOrder = 1
      OnClick = bSairClick
    end
    object bCancelar: TButton
      Left = 594
      Top = 1
      Width = 76
      Height = 28
      Anchors = [akTop, akRight]
      Caption = '&Cancelar'
      TabOrder = 2
      OnClick = bCancelarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 196
    Width = 746
    Height = 208
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 2
    DesignSize = (
      746
      208)
    object lProgresso: TLabel
      Left = 146
      Top = 171
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Anchors = [akRight, akBottom]
      AutoSize = False
      Caption = '0%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 146
      Top = 16
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Anchors = [akRight, akBottom]
      AutoSize = False
      Caption = '0%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 146
      Top = 39
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Anchors = [akRight, akBottom]
      AutoSize = False
      Caption = '0%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ProgressBar1: TProgressBar
      Left = 199
      Top = 168
      Width = 528
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 0
    end
    object StaticText1: TStaticText
      Left = 19
      Top = 76
      Width = 127
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkTile
      BevelOuter = bvNone
      BorderStyle = sbsSunken
      Caption = 'Enviando'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      Transparent = False
      StyleElements = []
    end
    object StaticText2: TStaticText
      Left = 19
      Top = 99
      Width = 127
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkTile
      BevelOuter = bvNone
      BorderStyle = sbsSunken
      Caption = 'Tamanho'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      Transparent = False
      StyleElements = []
    end
    object StaticText3: TStaticText
      Left = 19
      Top = 122
      Width = 127
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkTile
      BevelOuter = bvNone
      BorderStyle = sbsSunken
      Caption = 'Taxa de Transfer'#234'ncia'
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
    object StaticText4: TStaticText
      Left = 19
      Top = 145
      Width = 127
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkTile
      BevelOuter = bvNone
      BorderStyle = sbsSunken
      Caption = 'Tempo Restante'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      Transparent = False
      StyleElements = []
    end
    object StaticText5: TStaticText
      Left = 19
      Top = 168
      Width = 127
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkTile
      BevelOuter = bvNone
      BorderStyle = sbsSunken
      Caption = 'Transferindo'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 5
      Transparent = False
      StyleElements = []
    end
    object lArq: TStaticText
      Left = 148
      Top = 76
      Width = 579
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkTile
      BevelOuter = bvNone
      BorderStyle = sbsSunken
      Color = 6710784
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6010624
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 6
    end
    object lTam: TStaticText
      Left = 148
      Top = 99
      Width = 579
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkTile
      BevelOuter = bvNone
      BorderStyle = sbsSunken
      Color = 6710784
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6010624
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 7
    end
    object lVel: TStaticText
      Left = 148
      Top = 122
      Width = 579
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkTile
      BevelOuter = bvNone
      BorderStyle = sbsSunken
      Color = 6710784
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6010624
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 8
    end
    object lTempo: TStaticText
      Left = 148
      Top = 145
      Width = 579
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkTile
      BevelOuter = bvNone
      BorderStyle = sbsSunken
      Color = 6710784
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 6010624
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 9
    end
    object ProgressBar2: TProgressBar
      Left = 199
      Top = 12
      Width = 528
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 10
    end
    object StaticText6: TStaticText
      Left = 19
      Top = 12
      Width = 127
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkTile
      BevelOuter = bvNone
      BorderStyle = sbsSunken
      Caption = 'Compactando Arqauivo'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 11
      Transparent = False
      StyleElements = []
    end
    object ProgressBar3: TProgressBar
      Left = 199
      Top = 35
      Width = 528
      Height = 21
      Anchors = [akLeft, akBottom]
      TabOrder = 12
    end
    object StaticText7: TStaticText
      Left = 19
      Top = 35
      Width = 127
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkTile
      BevelOuter = bvNone
      BorderStyle = sbsSunken
      Caption = 'Total Compactado'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 13
      Transparent = False
      StyleElements = []
    end
  end
  object IdLogEvent1: TIdLogEvent
    ReplaceCRLF = False
    Left = 324
    Top = 136
  end
  object IdFTP1: TIdFTP
    OnWork = IdFTP1Work
    OnWorkBegin = IdFTP1WorkBegin
    OnWorkEnd = IdFTP1WorkEnd
    IPVersion = Id_IPv4
    ConnectTimeout = 0
    TransferType = ftBinary
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    ReadTimeout = 30000
    Left = 256
    Top = 136
  end
end
