object FichaEstoque2: TFichaEstoque2
  Left = 596
  Top = 271
  BorderStyle = bsDialog
  Caption = 'FichaEstoque2'
  ClientHeight = 341
  ClientWidth = 512
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 512
    Height = 44
    Align = alTop
    Stretch = True
    ExplicitWidth = 482
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 49
    Height = 21
    Caption = 'FISCAL'
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
  object lTitulo: TRxLabel
    Left = 8
    Top = 20
    Width = 222
    Height = 18
    Caption = 'Processamento da ficha de Estoque.'
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
    Left = 13
    Top = 57
    Width = 485
    Height = 123
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object cDescricao: TRadioGroup
      Left = 23
      Top = 15
      Width = 187
      Height = 93
      Caption = 'Descri'#231#227'o do Produto na ficha'
      ItemIndex = 0
      Items.Strings = (
        'Utilizar das Notas Fiscais'
        'Utilizar do Cadastro de Produtos')
      TabOrder = 0
    end
    object cMetodo: TRadioGroup
      Left = 227
      Top = 15
      Width = 233
      Height = 93
      Caption = 'M'#233'todo de Processamento'
      ItemIndex = 0
      Items.Strings = (
        'Em mem'#243'ria (Mais Rapido)'
        'Registro a Registro (Mais Lento)'
        'Direto no banco de dados (Ultra rapido)')
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 310
    Width = 512
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    ExplicitTop = 297
    ExplicitWidth = 482
    object bSair: TButton
      Left = 443
      Top = 1
      Width = 68
      Height = 29
      Align = alRight
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = bSairClick
      ExplicitLeft = 414
      ExplicitHeight = 30
    end
    object bExecutar: TButton
      Left = 366
      Top = 1
      Width = 77
      Height = 29
      Align = alRight
      Caption = 'Executar'
      TabOrder = 1
      OnClick = bExecutarClick
      ExplicitLeft = 337
      ExplicitHeight = 30
    end
    object bDirSQL: TButton
      Left = 1
      Top = 1
      Width = 98
      Height = 29
      Align = alLeft
      Caption = 'Direto no SQL'
      TabOrder = 2
      OnClick = bDirSQLClick
    end
  end
  object Panel3: TPanel
    Left = 13
    Top = 186
    Width = 485
    Height = 109
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object lMensagem: TLabel
      Left = 118
      Top = 8
      Width = 206
      Height = 13
      Caption = 'Processando a ficha de Estoque...Aguarde.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lPercentual: TLabel
      Left = 31
      Top = 81
      Width = 32
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lTotal: TLabel
      Left = 161
      Top = 38
      Width = 6
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 38
      Width = 140
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Total de Registros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object mTempo: TLabel
      Left = 161
      Top = 54
      Width = 42
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = '00:00:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 54
      Width = 140
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Tempo de Processamento '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Progresso: TProgressBar
      Left = 66
      Top = 80
      Width = 353
      Height = 16
      Smooth = True
      TabOrder = 0
    end
  end
  object Grade: TStringGrid
    Left = 354
    Top = 185
    Width = 89
    Height = 60
    ColCount = 29
    DefaultColWidth = 65
    DefaultRowHeight = 18
    Enabled = False
    FixedCols = 0
    RowCount = 3
    FixedRows = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 3
    Visible = False
    ColWidths = (
      65
      65
      65
      65
      65
      65
      65
      65
      65
      65
      65
      65
      65
      65
      65
      65
      65
      65
      65
      65
      65
      65
      93
      65
      65
      65
      65
      65
      65)
  end
  object mSQL: TMemo
    Left = 24
    Top = 185
    Width = 83
    Height = 49
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      'mSQL')
    ParentFont = False
    TabOrder = 4
    Visible = False
    WantReturns = False
  end
  object tSaldo: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 317
    Top = 5
  end
  object tAltera: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 373
    Top = 5
  end
end
