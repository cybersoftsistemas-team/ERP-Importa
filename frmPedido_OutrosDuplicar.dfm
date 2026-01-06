object Pedido_OutrosDuplicar: TPedido_OutrosDuplicar
  Left = 616
  Top = 132
  BorderStyle = bsToolWindow
  Caption = 'Pedido_OutrosDuplicar'
  ClientHeight = 555
  ClientWidth = 424
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
  PixelsPerInch = 96
  TextHeight = 13
  object lProgresso: TLabel
    Left = 9
    Top = 493
    Width = 103
    Height = 13
    Caption = 'Calculando estoque...'
    Visible = False
  end
  object Panel1: TPanel
    Left = 5
    Top = 4
    Width = 415
    Height = 51
    BevelInner = bvSpace
    BevelOuter = bvLowered
    TabOrder = 0
    object StaticText11: TStaticText
      Left = 13
      Top = 12
      Width = 70
      Height = 27
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Pedido N'#186
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      Transparent = False
      StyleElements = []
    end
    object cPedido: TDBEdit
      Left = 85
      Top = 12
      Width = 107
      Height = 27
      CharCase = ecUpperCase
      Color = 16764108
      DataField = 'Numero'
      DataSource = Dados.dsPedidos
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Pitch = fpFixed
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object StaticText1: TStaticText
      Left = 197
      Top = 12
      Width = 44
      Height = 26
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'C'#243'pias'
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
    object cCopias: TRxSpinEdit
      Left = 243
      Top = 12
      Width = 68
      Height = 27
      Decimal = 0
      MaxValue = 100.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 3
      ParentFont = False
      TabOrder = 3
      OnChange = cCopiasChange
    end
  end
  object bDuplicar: TButton
    Left = 175
    Top = 514
    Width = 75
    Height = 25
    Caption = '&Duplicar'
    Enabled = False
    TabOrder = 1
    OnClick = bDuplicarClick
  end
  object bCancelar: TButton
    Left = 255
    Top = 514
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 2
    OnClick = bCancelarClick
  end
  object gEstoque: TStringGrid
    Left = 5
    Top = 60
    Width = 415
    Height = 428
    DefaultRowHeight = 20
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 3
    OnDrawCell = gEstoqueDrawCell
    ColWidths = (
      40
      100
      82
      82
      103)
  end
  object bVerificar: TButton
    Left = 95
    Top = 514
    Width = 75
    Height = 25
    Caption = '&Verificar'
    TabOrder = 4
    OnClick = bVerificarClick
  end
  object ProgressBar1: TProgressBar
    Left = 121
    Top = 492
    Width = 295
    Height = 16
    TabOrder = 5
    Visible = False
  end
  object tEstoque: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 156
    Top = 166
  end
  object tCopia: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 156
    Top = 217
  end
  object titens: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 156
    Top = 316
  end
  object tNumero: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 156
    Top = 365
  end
  object tCopiaItens: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 156
    Top = 268
  end
end
