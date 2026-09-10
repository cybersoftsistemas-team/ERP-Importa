object Checagem: TChecagem
  Left = 196
  Top = 97
  BorderStyle = bsToolWindow
  Caption = 'Checagem'
  ClientHeight = 670
  ClientWidth = 1228
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
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 1228
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitWidth = 984
  end
  object lProcesso: TLabel
    Left = 364
    Top = 573
    Width = 500
    Height = 21
    Alignment = taCenter
    AutoSize = False
    Caption = 'Verificando vencimento de containers "Demurrage"...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object RxLabel1: TRxLabel
    Left = 10
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
    Left = 10
    Top = 22
    Width = 169
    Height = 18
    Caption = 'Checagem de vencimentos.'
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
    Top = 638
    Width = 1228
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitTop = 552
    ExplicitWidth = 984
    object bSair: TButton
      AlignWithMargins = True
      Left = 1159
      Top = 2
      Width = 67
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Sair'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
      ExplicitLeft = 915
    end
    object bImprimir: TButton
      AlignWithMargins = True
      Left = 1021
      Top = 2
      Width = 67
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Imprimir'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bImprimirClick
      ExplicitLeft = 777
    end
    object bRefazer: TButton
      AlignWithMargins = True
      Left = 1090
      Top = 2
      Width = 67
      Height = 28
      Hint = 'Procurar no banco de dados pelo registro informado.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Refazer'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bRefazerClick
      ExplicitLeft = 846
    end
  end
  object Progresso: TProgressBar
    Left = 364
    Top = 600
    Width = 500
    Height = 21
    TabOrder = 1
  end
  object PageControl1: TPageControl
    AlignWithMargins = True
    Left = 3
    Top = 49
    Width = 1222
    Height = 510
    ActivePage = TabSheet13
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    MultiLine = True
    ParentFont = False
    TabHeight = 24
    TabOrder = 2
    ExplicitLeft = 8
    ExplicitTop = 79
    object TabSheet1: TTabSheet
      Caption = 'Demurrage'
      ExplicitWidth = 976
      ExplicitHeight = 388
      object cMsgDemurrage: TMemo
        Left = 0
        Top = 0
        Width = 1214
        Height = 452
        Align = alClient
        Color = 13158545
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitWidth = 976
        ExplicitHeight = 388
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Contratos Clientes'
      ImageIndex = 1
      ExplicitWidth = 976
      ExplicitHeight = 388
      object cMsgClientes: TMemo
        Left = 0
        Top = 0
        Width = 1214
        Height = 452
        Align = alClient
        Color = 13805311
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitWidth = 976
        ExplicitHeight = 388
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Vencimento Radar'
      ImageIndex = 6
      ExplicitWidth = 976
      ExplicitHeight = 388
      object cMsgRadar: TMemo
        Left = 0
        Top = 0
        Width = 1214
        Height = 452
        Align = alClient
        Color = 10485663
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitWidth = 976
        ExplicitHeight = 388
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Vencimento Vincula'#231#245'es'
      ImageIndex = 7
      ExplicitWidth = 976
      ExplicitHeight = 388
      object cMsgVinculacao: TMemo
        Left = 0
        Top = 0
        Width = 1214
        Height = 452
        Align = alClient
        Color = 13224393
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitWidth = 976
        ExplicitHeight = 388
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Prazo Retorno de NF (ICMS)'
      ImageIndex = 2
      ExplicitWidth = 976
      ExplicitHeight = 388
      object cMsgRetorno: TMemo
        Left = 0
        Top = 0
        Width = 1214
        Height = 452
        Align = alClient
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitWidth = 976
        ExplicitHeight = 388
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Processos s/Containers Cadastrados'
      ImageIndex = 3
      ExplicitWidth = 976
      ExplicitHeight = 388
      object cMsgContainer: TMemo
        Left = 0
        Top = 0
        Width = 1214
        Height = 452
        Align = alClient
        Color = 8700415
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitWidth = 976
        ExplicitHeight = 388
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Prazos Entrega Arquivos'
      ImageIndex = 4
      ExplicitWidth = 976
      ExplicitHeight = 388
      object cMsgArquivos: TMemo
        Left = 0
        Top = 0
        Width = 1214
        Height = 452
        Align = alClient
        Color = 16768477
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitWidth = 976
        ExplicitHeight = 388
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Estoque M'#237'nimo'
      ImageIndex = 5
      ExplicitWidth = 976
      ExplicitHeight = 388
      object cMsgEstoque: TMemo
        Left = 0
        Top = 0
        Width = 1214
        Height = 452
        Align = alClient
        Color = 14155775
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitWidth = 976
        ExplicitHeight = 388
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'Clientes com pagamentos em atraso'
      ImageIndex = 8
      ExplicitWidth = 976
      ExplicitHeight = 388
      object cMsgAtraso: TMemo
        Left = 0
        Top = 0
        Width = 1214
        Height = 452
        Align = alClient
        Color = 12895487
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitWidth = 976
        ExplicitHeight = 388
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'Clientes sem movimenta'#231#227'o no Per'#237'odo'
      ImageIndex = 9
      ExplicitWidth = 976
      ExplicitHeight = 388
      object cMsgMovimento: TMemo
        Left = 0
        Top = 0
        Width = 1214
        Height = 452
        Align = alClient
        Color = 16754511
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitWidth = 976
        ExplicitHeight = 388
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'Exonera'#231#227'o do ICMS'
      ImageIndex = 10
      ExplicitWidth = 976
      ExplicitHeight = 388
      object cMsgExoneracao: TMemo
        Left = 0
        Top = 0
        Width = 1214
        Height = 452
        Align = alClient
        Color = 14548923
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitWidth = 976
        ExplicitHeight = 388
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'Vencimento de DI/DA'
      ImageIndex = 11
      ExplicitWidth = 976
      ExplicitHeight = 388
      object cMsgDIDA: TMemo
        Left = 0
        Top = 0
        Width = 1214
        Height = 452
        Align = alClient
        Color = 8947967
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitWidth = 976
        ExplicitHeight = 388
      end
    end
    object TabSheet13: TTabSheet
      Caption = 'Pagamentos em Atraso'
      ImageIndex = 12
      ExplicitWidth = 976
      ExplicitHeight = 388
      object cMsgPgto: TMemo
        Left = 0
        Top = 0
        Width = 1214
        Height = 452
        Align = alClient
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        ExplicitWidth = 976
        ExplicitHeight = 388
      end
    end
  end
  object tCheca: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 626
    Top = 12
  end
  object tDisponivel: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      '')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 658
    Top = 12
  end
end
