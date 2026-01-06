object CTePasta: TCTePasta
  Left = 421
  Top = 115
  BorderStyle = bsDialog
  Caption = 'CTePasta'
  ClientHeight = 580
  ClientWidth = 894
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
  object Panel1: TPanel
    Left = 0
    Top = 550
    Width = 894
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      894
      30)
    object bSair: TButton
      Left = 820
      Top = 1
      Width = 74
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Cencelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bAbrir: TButton
      Left = 743
      Top = 1
      Width = 76
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Abrir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bAbrirClick
    end
    object bDesTudo: TButton
      Left = 503
      Top = 1
      Width = 119
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = 'Desmarcar &Tudo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bDesTudoClick
    end
    object bSelTudo: TButton
      Left = 623
      Top = 1
      Width = 119
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = 'Selecionar &Tudo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bSelTudoClick
    end
  end
  object cPasta: TDirectoryEdit
    Left = 75
    Top = 14
    Width = 810
    Height = 21
    DialogKind = dkWin32
    DialogText = 'Eder'
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    NumGlyphs = 1
    ParentFont = False
    TabOrder = 1
    OnChange = cPastaChange
  end
  object StaticText21: TStaticText
    Left = 12
    Top = 14
    Width = 61
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Pasta'
    Font.Charset = DEFAULT_CHARSET
        Font.Color = $005BB700
    Font.Height = -11
        Font.Name = 'Calibri' 
        Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
        Color = $00666600
    Color = 7293440
    Font.Color = clWhite
    StyleElements = []
    Transparent = False
  end
  object cArquivos: TListBox
    Left = 12
    Top = 43
    Width = 872
    Height = 497
    ExtendedSelect = False
    ItemHeight = 13
    MultiSelect = True
    TabOrder = 3
  end
end
