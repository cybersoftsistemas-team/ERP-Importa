object Pedido_ItensDividir: TPedido_ItensDividir
  Left = 610
  Top = 304
  BorderStyle = bsToolWindow
  Caption = 'Pedido_ItensDividir'
  ClientHeight = 285
  ClientWidth = 547
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
    547
    285)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 256
    Width = 547
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      547
      29)
    object bSair: TButton
      Left = 473
      Top = 1
      Width = 74
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bExecutar: TButton
      Left = 2
      Top = 1
      Width = 85
      Height = 28
      Hint = '  Remove todos os itens do pedido.  '
      Caption = '&Executar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bExecutarClick
    end
  end
  object Panel2: TPanel
    Left = 15
    Top = 15
    Width = 517
    Height = 226
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      517
      226)
    object Label1: TLabel
      Left = 24
      Top = 49
      Width = 118
      Height = 13
      Caption = 'Quantos itens por pedido'
    end
    object Label2: TLabel
      Left = 24
      Top = 25
      Width = 93
      Height = 13
      Caption = 'Total de itens da DI'
    end
    object lProgresso: TLabel
      Left = 6
      Top = 187
      Width = 506
      Height = 13
      Alignment = taCenter
      Anchors = [akLeft, akRight, akBottom]
      AutoSize = False
      Caption = 'Criando os pedidos...Aguarde'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label3: TLabel
      Left = 24
      Top = 97
      Width = 111
      Height = 13
      Caption = 'Quantidade de Pedidos'
    end
    object Label4: TLabel
      Left = 24
      Top = 73
      Width = 97
      Height = 13
      Caption = 'Percentual dos Itens'
      Enabled = False
    end
    object Label5: TLabel
      Left = 224
      Top = 72
      Width = 14
      Height = 16
      Caption = '%'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 251
      Top = 73
      Width = 78
      Height = 13
      Caption = 'Arredondamento'
      Enabled = False
    end
    object Label7: TLabel
      Left = 403
      Top = 72
      Width = 14
      Height = 16
      Caption = '%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cQtde: TRxSpinEdit
      Left = 149
      Top = 46
      Width = 72
      Height = 21
      Alignment = taRightJustify
      Decimal = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      BiDiMode = bdRightToLeftNoAlign
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 2
      OnChange = cQtdeChange
    end
    object cTotal: TCurrencyEdit
      Left = 149
      Top = 22
      Width = 53
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Progresso: TProgressBar
      Left = 5
      Top = 204
      Width = 507
      Height = 17
      Anchors = [akLeft, akRight, akBottom]
      TabOrder = 1
    end
    object cPedidos: TCurrencyEdit
      Left = 149
      Top = 94
      Width = 53
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Anchors = [akLeft]
      ParentFont = False
      TabOrder = 4
      OnChange = cPedidosChange
    end
    object cPercentual: TRxSpinEdit
      Left = 149
      Top = 70
      Width = 72
      Height = 21
      Alignment = taRightJustify
      MaxValue = 100.000000000000000000
      ValueType = vtFloat
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      BiDiMode = bdRightToLeftNoAlign
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
    end
    object cArredondamento: TCurrencyEdit
      Left = 336
      Top = 70
      Width = 65
      Height = 21
      AutoSize = False
      DecimalPlaces = 3
      DisplayFormat = ',##0.000'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object cTipoArred: TRadioGroup
      Left = 24
      Top = 124
      Width = 472
      Height = 45
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'Arredondamento'
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        'Somar o arredondamento no '#250'ltimo pedido'
        'Criar um pedido com o arredondamento')
      TabOrder = 6
      OnClick = cTipoArredClick
    end
  end
  object tCopia: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 368
    Top = 32
  end
  object tPedido: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 400
    Top = 32
  end
end
