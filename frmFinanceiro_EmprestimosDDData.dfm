object Financeiro_EmprestimosDDData: TFinanceiro_EmprestimosDDData
  Left = 0
  Top = 0
  Margins.Left = 10
  Margins.Top = 7
  Margins.Right = 7
  Margins.Bottom = 10
  BorderStyle = bsDialog
  Caption = 'Financeiro_EmprestimosDDData'
  ClientHeight = 179
  ClientWidth = 278
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 149
    Width = 278
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitTop = 322
    ExplicitWidth = 273
    object bCancela: TButton
      Left = 141
      Top = 1
      Width = 68
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bCancelaClick
      ExplicitLeft = 286
    end
    object bOK: TButton
      Left = 209
      Top = 1
      Width = 68
      Height = 28
      Hint = 'Confirma a data'
      Align = alRight
      Caption = '&OK'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bOKClick
      ExplicitLeft = 133
      ExplicitTop = 2
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 272
    Height = 143
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    ExplicitLeft = 0
    ExplicitTop = 262
    ExplicitWidth = 273
    ExplicitHeight = 57
    object Label1: TLabel
      Left = 41
      Top = 30
      Width = 190
      Height = 19
      Caption = 'Informa a data da liquida'#231#227'o.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object cData: TDateEdit
      Left = 75
      Top = 70
      Width = 121
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
    end
  end
end
