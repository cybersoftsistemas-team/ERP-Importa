object frmConfig_TipoNotaContas: TfrmConfig_TipoNotaContas
  Left = 0
  Top = 0
  Caption = 'frmConfig_TipoNotaContas'
  ClientHeight = 544
  ClientWidth = 699
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid2: TDBGrid
    Left = 9
    Top = 54
    Width = 681
    Height = 452
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 514
    Width = 699
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    ExplicitTop = 533
    ExplicitWidth = 696
    DesignSize = (
      699
      30)
    object bSair: TButton
      Left = 626
      Top = 1
      Width = 73
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
      ExplicitLeft = 623
    end
  end
  object StaticText5: TStaticText
    Left = 9
    Top = 8
    Width = 89
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'C'#243'digo Atual'
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
  object cCodigo: TDBEdit
    Left = 100
    Top = 8
    Width = 61
    Height = 21
    DataField = 'Codigo'
    DataSource = Dados.dsTipoNota
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object cDescricao: TDBEdit
    Left = 164
    Top = 8
    Width = 526
    Height = 21
    DataField = 'Descricao'
    DataSource = Dados.dsTipoNota
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object StaticText1: TStaticText
    Left = 9
    Top = 30
    Width = 89
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Empresa Destino'
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
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 100
    Top = 30
    Width = 590
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
end
