object Sistema_Entrada: TSistema_Entrada
  Left = 666
  Top = 318
  HelpContext = 1
  BorderIcons = [biSystemMenu]
  BorderStyle = bsToolWindow
  Caption = 'Cybersoft ERP IMPORTA - Sistema de Com'#233'rcio Exterior'
  ClientHeight = 399
  ClientWidth = 619
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 613
    Height = 182
    Align = alTop
    DragMode = dmAutomatic
    Stretch = True
    Transparent = True
    ExplicitLeft = -10
    ExplicitTop = -1
    ExplicitWidth = 630
  end
  object lVersao: TLabel
    Left = 345
    Top = 128
    Width = 40
    Height = 15
    Caption = 'lVersao'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    StyleElements = [seClient, seBorder]
  end
  object lAnoVersao: TLabel
    Left = 526
    Top = 125
    Width = 48
    Height = 24
    Caption = '2015'
    Color = 13273088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
    StyleElements = [seClient, seBorder]
  end
  object lb1: TLabel
    Left = 0
    Top = 384
    Width = 619
    Height = 15
    Align = alBottom
    Caption = 
      '(SISTEMA DE COM'#201'RCIO EXTERIOR / CONTABILIDADE / FINANCEIRO / FIS' +
      'CAL / ESTOQUE / LOG'#205'STICA)  (Cybersoft Sistemas)  -->Vers'#227'o 1.00' +
      '0 de 24 de Julho de 2008 as 14:43'
    Color = clBlack
    Font.Charset = EASTEUROPE_CHARSET
    Font.Color = clLime
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    StyleElements = []
    ExplicitWidth = 930
  end
  object lServidor: TLabel
    Left = 345
    Top = 152
    Width = 17
    Height = 15
    Caption = '{O}'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    Transparent = True
    StyleElements = [seClient, seBorder]
  end
  object Panel1: TPanel
    Left = 7
    Top = 193
    Width = 601
    Height = 131
    BevelOuter = bvLowered
    TabOrder = 0
    object cSenha: TEdit
      Left = 81
      Top = 55
      Width = 509
      Height = 21
      AutoSize = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
      PasswordChar = #8226
      TabOrder = 1
    end
    object cConfirma: TEdit
      Left = 81
      Top = 78
      Width = 509
      Height = 21
      AutoSize = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Courier New'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
      PasswordChar = #8226
      TabOrder = 2
    end
    object cUsuario: TComboBox
      Left = 81
      Top = 32
      Width = 509
      Height = 21
      CharCase = ecUpperCase
      DropDownCount = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = cUsuarioChange
      OnExit = cUsuarioExit
    end
    object StaticText2: TStaticText
      Left = 9
      Top = 101
      Width = 70
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = sbsSunken
      Caption = 'Empresa '
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
    object StaticText1: TStaticText
      Left = 9
      Top = 32
      Width = 70
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = sbsSunken
      Caption = 'Us'#250'ario '
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 5
    end
    object StaticText3: TStaticText
      Left = 9
      Top = 55
      Width = 70
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = sbsSunken
      Caption = 'Senha '
      Color = clNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 6
    end
    object StaticText4: TStaticText
      Left = 9
      Top = 78
      Width = 70
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = sbsSunken
      Caption = 'Confirma'#231#227'o '
      Color = clNone
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 7
    end
    object cEmpresa: TRxDBLookupCombo
      Left = 81
      Top = 101
      Width = 510
      Height = 21
      DropDownCount = 15
      DisplayAllFields = True
      Enabled = False
      FieldsDelimiter = '|'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Razao_Social;CNPJ;Estado;Numero_Filial'
      LookupSource = Dados.dsEmpresas
      ParentFont = False
      TabOrder = 3
    end
    object cServidor: TComboBox
      Left = 81
      Top = 9
      Width = 509
      Height = 21
      DropDownCount = 15
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Sorted = True
      TabOrder = 8
      Text = '177.99.238.114'
      OnChange = cServidorChange
      Items.Strings = (
        '177.99.238.114'
        '200.98.200.24, 1433'
        '54.207.86.223, 1433'
        'EDER-PC'
        'LAPTOP-EDER'
        'SERVIDOR02'
        'STUDIO')
    end
    object lServ: TStaticText
      Left = 9
      Top = 9
      Width = 70
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = sbsSunken
      Caption = 'Servidor'
      Color = clNone
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 9
    end
  end
  object bCancelar: TButton
    Left = 316
    Top = 338
    Width = 76
    Height = 30
    Caption = '&Sair'
    TabOrder = 1
    OnClick = bCancelarClick
  end
  object bOK: TButton
    Left = 231
    Top = 338
    Width = 77
    Height = 30
    Caption = '&Ok'
    TabOrder = 2
    OnClick = bOKClick
  end
  object IdFTP1: TIdFTP
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
    Left = 144
    Top = 88
  end
  object Timer1: TTimer
    Interval = 90
    OnTimer = Timer1Timer
    Left = 184
    Top = 88
  end
end
