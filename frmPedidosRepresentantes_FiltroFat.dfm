object PedidosRepresentantes_FiltroFat: TPedidosRepresentantes_FiltroFat
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'PedidosRepresentantes_FiltroFat'
  ClientHeight = 460
  ClientWidth = 247
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWhite
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object gDest: TRadioGroup
    Left = 18
    Top = 14
    Width = 210
    Height = 74
    Caption = 'Destino'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Para dentro do Estado'
      'Para fora do Estado')
    ParentFont = False
    TabOrder = 0
  end
  object gCli: TRadioGroup
    Left = 18
    Top = 94
    Width = 210
    Height = 74
    Caption = 'Tipo de Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Consumidor final'
      'Revenda')
    ParentFont = False
    TabOrder = 1
  end
  object gICMSOp: TRadioGroup
    Left = 18
    Top = 176
    Width = 210
    Height = 74
    Caption = 'ICMS Operacional'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Com ICMS'
      'Sem ICMS')
    ParentFont = False
    TabOrder = 2
  end
  object gICMSSt: TRadioGroup
    Left = 18
    Top = 256
    Width = 210
    Height = 74
    Caption = 'ICMS ST'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Com ICMS'
      'Sem ICMS')
    ParentFont = False
    TabOrder = 3
  end
  object gTrans: TRadioGroup
    Left = 18
    Top = 336
    Width = 210
    Height = 74
    Caption = 'Transportador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      'Todos'
      'Com Transportador informado'
      'Sem Transportador informado')
    ParentFont = False
    TabOrder = 4
  end
  object Panel1: TPanel
    Left = 0
    Top = 430
    Width = 247
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 5
    ExplicitTop = 446
    ExplicitWidth = 233
    object bSair: TButton
      Left = 181
      Top = 1
      Width = 65
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
      ExplicitLeft = 167
    end
    object bFiltrar: TButton
      Left = 121
      Top = 1
      Width = 60
      Height = 28
      Cursor = crHandPoint
      Hint = 'Filtra os pedidos'
      Align = alRight
      Caption = '&Filtrar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bFiltrarClick
      ExplicitLeft = 107
    end
    object bLimpar: TButton
      Left = 61
      Top = 1
      Width = 60
      Height = 28
      Cursor = crHandPoint
      Hint = 'Limpas os filtros selecionados'
      Align = alRight
      Caption = '&Limpar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bLimparClick
      ExplicitLeft = 47
    end
  end
end
