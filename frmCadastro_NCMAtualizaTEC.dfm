object Cadastro_NCMAtualizaTEC: TCadastro_NCMAtualizaTEC
  Left = 260
  Top = 153
  BorderStyle = bsDialog
  Caption = 'Cadastro_NCMAtualizaTEC'
  ClientHeight = 626
  ClientWidth = 1184
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    1184
    626)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 7
    Width = 1170
    Height = 585
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object lNCM: TLabel
      Left = 2
      Top = 547
      Width = 1166
      Height = 19
      Align = alBottom
      Alignment = taCenter
      Caption = '. . .'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 25
    end
    object Grade: TStringGrid
      Left = 2
      Top = 2
      Width = 1166
      Height = 528
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      ColCount = 8
      DefaultRowHeight = 20
      FixedCols = 0
      RowCount = 100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSelect]
      ParentFont = False
      TabOrder = 0
      OnDrawCell = GradeDrawCell
      ColWidths = (
        101
        121
        595
        64
        64
        64
        64
        64)
    end
    object Progresso: TProgressBar
      Left = 2
      Top = 566
      Width = 1166
      Height = 17
      Align = alBottom
      TabOrder = 1
    end
    object cBrowser: TWebBrowser
      Left = 16
      Top = 32
      Width = 1105
      Height = 509
      TabOrder = 2
      ControlData = {
        4C000000347200009B3400000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 595
    Width = 1184
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      1184
      31)
    object bSair: TButton
      Left = 1108
      Top = 2
      Width = 75
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bExec: TButton
      Left = 0
      Top = 2
      Width = 81
      Height = 28
      Caption = '&Executar'
      TabOrder = 1
      OnClick = bExecClick
    end
  end
  object IdHTTP1: TIdHTTP
    IOHandler = IdSSLIOHandlerSocketOpenSSL1
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 320
    Top = 423
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 455
    Top = 425
  end
end
