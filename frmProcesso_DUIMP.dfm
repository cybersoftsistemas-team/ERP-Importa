object Processo_DUIMP: TProcesso_DUIMP
  Left = 0
  Top = 0
  ActiveControl = cNumDUIMP
  BorderStyle = bsDialog
  Caption = 'Processo_DUIMP'
  ClientHeight = 737
  ClientWidth = 1456
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 1456
    Height = 45
    Align = alTop
    Stretch = True
    ExplicitWidth = 778
  end
  object RxLabel3: TRxLabel
    Left = 4
    Top = 1
    Width = 54
    Height = 22
    Caption = 'DUIMP'
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
  object RxLabel4: TRxLabel
    Left = 4
    Top = 21
    Width = 193
    Height = 19
    Caption = 'Envio da DUIMP ao SISCOMEX.'
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
  object Panel1: TPanel
    Left = 0
    Top = 707
    Width = 1456
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitTop = 414
    ExplicitWidth = 778
    DesignSize = (
      1456
      30)
    object bSair: TButton
      Left = 1381
      Top = 1
      Width = 74
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
      ExplicitLeft = 682
    end
    object bDUIMP: TButton
      Left = 1
      Top = 1
      Width = 105
      Height = 28
      Cursor = crHandPoint
      Hint = 'Gera e envia DUIMP para o SISCOMEX'
      Align = alLeft
      Caption = '&Enviar DUIMP'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bDUIMPClick
    end
  end
  object cMemDUIMP: TMemo
    AlignWithMargins = True
    Left = 4
    Top = 128
    Width = 1448
    Height = 559
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 20
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'JetBrains Mono'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 1
    WordWrap = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 45
    Width = 1456
    Height = 79
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 2
    ExplicitWidth = 1029
    object Label1: TLabel
      Left = 13
      Top = 14
      Width = 36
      Height = 13
      Caption = 'DUIMP:'
    end
    object cNumDUIMP: TDBLookupComboBox
      Left = 13
      Top = 31
      Width = 386
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'DUIMP'
      ListField = 'DUIMP; Processo'
      ListSource = dstProcessos
      ParentFont = False
      TabOrder = 0
    end
  end
  object tEmpresas: TMSQuery
    Connection = Dados.Banco
    Left = 158
    Top = 164
  end
  object tDUIMP: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select DUIMP = Numero_Declaracao from ProcessosDocumentos')
    Left = 230
    Top = 164
  end
  object tItens: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select DUIMP = Numero_Declaracao from ProcessosDocumentos')
    Left = 299
    Top = 165
  end
  object tProcessos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select DUIMP = Numero_Declaracao from ProcessosDocumentos')
    Left = 353
    Top = 168
  end
  object dstProcessos: TDataSource
    DataSet = tProcessos
    Left = 352
    Top = 220
  end
end
