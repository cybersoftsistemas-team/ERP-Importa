object Checagem: TChecagem
  Left = 196
  Top = 97
  BorderStyle = bsToolWindow
  Caption = 'Checagem'
  ClientHeight = 584
  ClientWidth = 984
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
    Width = 984
    Height = 46
    Align = alTop
    Stretch = True
  end
  object lProcesso: TLabel
    Left = 61
    Top = 505
    Width = 862
    Height = 21
    AutoSize = False
    Caption = 'Verificando vencimento de containers "Demurrage"...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
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
    Top = 552
    Width = 984
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bSair: TButton
      AlignWithMargins = True
      Left = 915
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
    end
    object bImprimir: TButton
      AlignWithMargins = True
      Left = 777
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
    end
    object bRefazer: TButton
      AlignWithMargins = True
      Left = 846
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
    end
  end
  object Progresso: TProgressBar
    Left = 61
    Top = 524
    Width = 862
    Height = 17
    TabOrder = 1
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 51
    Width = 984
    Height = 446
    ActivePage = TabSheet11
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    MultiLine = True
    ParentFont = False
    TabHeight = 24
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Demurrage'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cMsgDemurrage: TMemo
        Left = 0
        Top = 0
        Width = 976
        Height = 388
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
        ExplicitTop = 6
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Contratos Clientes'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cMsgClientes: TMemo
        Left = 0
        Top = 0
        Width = 976
        Height = 388
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
      end
    end
    object TabSheet7: TTabSheet
      Caption = 'Vencimento Radar'
      ImageIndex = 6
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cMsgRadar: TMemo
        Left = 0
        Top = 0
        Width = 976
        Height = 388
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
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Vencimento Vincula'#231#245'es'
      ImageIndex = 7
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cMsgVinculacao: TMemo
        Left = 0
        Top = 0
        Width = 976
        Height = 388
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
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Prazo Retorno de NF (ICMS)'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cMsgRetorno: TMemo
        Left = 0
        Top = 0
        Width = 976
        Height = 388
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
        ExplicitTop = 6
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Processos s/Containers Cadastrados'
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cMsgContainer: TMemo
        Left = 0
        Top = 0
        Width = 976
        Height = 388
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
        ExplicitTop = 6
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Prazos Entrega Arquivos'
      ImageIndex = 4
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cMsgArquivos: TMemo
        Left = 0
        Top = 0
        Width = 976
        Height = 388
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
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Estoque M'#237'nimo'
      ImageIndex = 5
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cMsgEstoque: TMemo
        Left = 0
        Top = 0
        Width = 976
        Height = 388
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
      end
    end
    object TabSheet9: TTabSheet
      Caption = 'Clientes com pagamentos em atraso'
      ImageIndex = 8
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cMsgAtraso: TMemo
        Left = 0
        Top = 0
        Width = 976
        Height = 388
        Align = alClient
        Color = 12895487
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object TabSheet10: TTabSheet
      Caption = 'Clientes sem movimenta'#231#227'o no Per'#237'odo'
      ImageIndex = 9
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cMsgMovimento: TMemo
        Left = 0
        Top = 0
        Width = 976
        Height = 388
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
      end
    end
    object TabSheet11: TTabSheet
      Caption = 'Exonera'#231#227'o do ICMS'
      ImageIndex = 10
      object cMsgExoneracao: TMemo
        Left = 0
        Top = 0
        Width = 976
        Height = 388
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
      end
    end
    object TabSheet12: TTabSheet
      Caption = 'Vencimento de DI/DA'
      ImageIndex = 11
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cMsgDIDA: TMemo
        Left = 0
        Top = 0
        Width = 976
        Height = 388
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
