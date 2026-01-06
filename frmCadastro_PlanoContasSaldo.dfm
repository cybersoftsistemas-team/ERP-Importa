object Cadastro_PlanoContasSaldo: TCadastro_PlanoContasSaldo
  Left = 428
  Top = 342
  BorderStyle = bsToolWindow
  Caption = 'Cadastro_PlanoContasSaldo'
  ClientHeight = 115
  ClientWidth = 269
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 172
    Height = 13
    Caption = 'Informe qual o saldo inicial da conta.'
  end
  object DBEdit1: TDBEdit
    Left = 113
    Top = 45
    Width = 134
    Height = 21
    DataField = 'Saldo_Anterior'
    DataSource = dmContab.dsPlanoContas
    TabOrder = 0
  end
  object StaticText6: TStaticText
    Left = 21
    Top = 44
    Width = 90
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Saldo Inicial'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    StyleElements = []
    Transparent = False
  end
  object Button1: TButton
    Left = 96
    Top = 80
    Width = 75
    Height = 25
    Caption = '&OK'
    TabOrder = 2
    OnClick = Button1Click
  end
end
