object DetectaCaracterXML: TDetectaCaracterXML
  Left = 632
  Top = 297
  BorderStyle = bsToolWindow
  Caption = 'DetectaCaracterXML'
  ClientHeight = 537
  ClientWidth = 825
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object StaticText91: TStaticText
    Left = 6
    Top = 7
    Width = 147
    Height = 20
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Arquivo XML da DI'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    StyleElements = []
    Transparent = False
  end
  object cXML: TEdit
    Left = 155
    Top = 7
    Width = 590
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object bAbrir: TBitBtn
    Left = 748
    Top = 5
    Width = 71
    Height = 26
    Hint = '  Abre um arquivo XML de DI em pasta selecionada.  '
    Caption = '&Abrir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = bAbrirClick
    Glyph.Data = {
      4E010000424D4E01000000000000760000002800000012000000120000000100
      040000000000D800000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333330000003333333333333333330000003333333333333333330000003800
      000000000003330000003007B7B7B7B7B7B03300000030F07B7B7B7B7B703300
      000030B0B7B7B7B7B7B70300000030FB0B7B7B7B7B7B0300000030BF07B7B7B7
      B7B7B000000030FBF000007B7B7B7000000030BFBFBFBF0000000300000030FB
      FBFBFBFBFB033300000030BFBFBFBFBFBF033300000030FBFBF0000000333300
      0000330000033333333333000000333333333333333333000000333333333333
      333333000000333333333333333333000000}
    Margin = 10
  end
  object cInvalidos: TMemo
    Left = 5
    Top = 37
    Width = 814
    Height = 465
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 3
  end
  object Panel2: TPanel
    Left = 0
    Top = 507
    Width = 825
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 4
    DesignSize = (
      825
      30)
    object bSair: TButton
      Left = 746
      Top = 1
      Width = 79
      Height = 29
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bLimpar: TButton
      Left = 1
      Top = 1
      Width = 72
      Height = 29
      Caption = '&Limpar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = bLimparClick
    end
    object bSalvar: TButton
      Left = 73
      Top = 1
      Width = 72
      Height = 29
      Caption = 'Sal&var'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = bSalvarClick
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 365
    Top = 392
  end
end
