object Atualiza_Sistema: TAtualiza_Sistema
  Left = 670
  Top = 333
  BorderStyle = bsDialog
  Caption = 'Atualiza_Sistema'
  ClientHeight = 585
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 560
    Height = 45
    Align = alTop
    Stretch = True
    ExplicitWidth = 655
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 64
    Height = 21
    Caption = 'SISTEMA'
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
  object RxLabel2: TRxLabel
    Left = 8
    Top = 22
    Width = 150
    Height = 18
    Caption = 'Atualiza'#231#227'o do sistema.'
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
  object Label4: TLabel
    Left = 13
    Top = 150
    Width = 100
    Height = 13
    Caption = 'Log de Execu'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 11
    Top = 322
    Width = 190
    Height = 13
    Caption = 'Log de Script de banco de dados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 11
    Top = 59
    Width = 535
    Height = 81
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object lProgresso: TLabel
      Left = 218
      Top = 44
      Width = 39
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object ProgressBar1: TProgressBar
      Left = 260
      Top = 44
      Width = 226
      Height = 16
      TabOrder = 0
      Visible = False
    end
    object StaticText1: TStaticText
      Left = 7
      Top = 7
      Width = 80
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Arquivo'
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
    object lArquivo: TStaticText
      Left = 89
      Top = 7
      Width = 437
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      StyleElements = []
    end
    object StaticText2: TStaticText
      Left = 7
      Top = 30
      Width = 80
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
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
      TabOrder = 3
      Transparent = False
      StyleElements = []
    end
    object lTamanho: TStaticText
      Left = 89
      Top = 30
      Width = 106
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      StyleElements = []
    end
    object StaticText3: TStaticText
      Left = 7
      Top = 53
      Width = 80
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
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
    object lVel: TStaticText
      Left = 89
      Top = 53
      Width = 106
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 6
      StyleElements = []
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 555
    Width = 560
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      560
      30)
    object bAtualizar: TButton
      Left = 396
      Top = 1
      Width = 82
      Height = 29
      Anchors = [akTop, akRight]
      Caption = '&Atualizar'
      TabOrder = 0
      OnClick = bAtualizarClick
    end
    object bSair: TButton
      Left = 478
      Top = 1
      Width = 82
      Height = 29
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      TabOrder = 1
      OnClick = bSairClick
    end
  end
  object cLog: TMemo
    Left = 13
    Top = 165
    Width = 533
    Height = 151
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 12615680
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    WordWrap = False
    StyleElements = [seBorder]
  end
  object Memo2: TMemo
    Left = 11
    Top = 339
    Width = 535
    Height = 199
    Color = clBackground
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    WordWrap = False
    StyleElements = [seBorder]
  end
  object IdFTP1: TIdFTP
    OnWork = IdFTP1Work
    OnWorkBegin = IdFTP1WorkBegin
    OnWorkEnd = IdFTP1WorkEnd
    IPVersion = Id_IPv4
    Host = '177.99.238.114'
    Passive = True
    ConnectTimeout = 0
    Password = 'cybersoft@123'
    TransferType = ftBinary
    ListenTimeout = 0
    Username = 'cybersoft_importa'
    UseExtensionDataPort = True
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 184
    Top = 8
  end
  object tScript: TMSQuery
    Connection = Dados.Banco
    ParamCheck = False
    SQL.Strings = (
      '')
    FetchRows = 1
    UniDirectional = True
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    AutoCalcFields = False
    Options.CursorUpdate = False
    Options.QueryIdentity = False
    Options.StrictUpdate = False
    Options.TrimFixedChar = False
    Options.RemoveOnRefresh = False
    FetchAll = False
    CursorType = ctStatic
    Left = 247
    Top = 8
  end
  object tEmpresas: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 310
    Top = 8
  end
  object TabCyber: TMSQuery
    Connection = ServerCyber
    ParamCheck = False
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    AutoCalcFields = False
    Options.CursorUpdate = False
    Options.QueryIdentity = False
    Options.StrictUpdate = False
    Options.TrimFixedChar = False
    Options.RemoveOnRefresh = False
    CursorType = ctStatic
    Left = 208
    Top = 185
  end
  object ServerCyber: TMSConnection
    Database = 'Cybersoft_Cadastros'
    Options.ApplicationName = 'Cybersoft ERP Importa'
    Options.KeepDesignConnected = False
    Username = 'sa'
    Server = '187.64.130.9'
    LoginPrompt = False
    Left = 123
    Top = 184
    EncryptedPassword = '9CFF86FF9DFF9AFF8DFF8CFF90FF99FF8BFFBFFFCEFFCDFFCCFF'
  end
  object TabLocal: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.UniqueRecords = False
    Options.UpdateAllFields = True
    Left = 250
    Top = 251
  end
  object Temp: TMSQuery
    Connection = ServerCyber
    ParamCheck = False
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    AutoCalcFields = False
    Options.CursorUpdate = False
    Options.QueryIdentity = False
    Options.StrictUpdate = False
    Options.TrimFixedChar = False
    Options.RemoveOnRefresh = False
    CursorType = ctStatic
    Left = 277
    Top = 185
  end
end
