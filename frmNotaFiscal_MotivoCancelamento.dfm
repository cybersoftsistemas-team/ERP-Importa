object NotaFiscal_MotivoCancelamento: TNotaFiscal_MotivoCancelamento
  Left = 267
  Top = 297
  BorderStyle = bsDialog
  Caption = 'NotaFiscal_MotivoCancelamento'
  ClientHeight = 130
  ClientWidth = 571
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
    Left = 8
    Top = 20
    Width = 234
    Height = 13
    Caption = 'Informe o motivo do cancelamento da Nota Fiscal'
  end
  object lProgresso: TLabel
    Left = 8
    Top = 69
    Width = 232
    Height = 13
    Caption = 'Disponibilizando os itens no estoque. . . Aguarde.'
    Visible = False
  end
  object bOK: TButton
    Left = 216
    Top = 96
    Width = 75
    Height = 25
    Caption = '&OK'
    TabOrder = 0
    OnClick = bOKClick
  end
  object bCancelar: TButton
    Left = 291
    Top = 96
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 1
    OnClick = bCancelarClick
  end
  object cMotivo: TDBEdit
    Left = 8
    Top = 36
    Width = 553
    Height = 21
    DataField = 'Motivo_Cancelamento'
    DataSource = dmFiscal.dsNotas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object Progresso: TProgressBar
    Left = 248
    Top = 68
    Width = 313
    Height = 16
    Min = 0
    Max = 100
    TabOrder = 3
    Visible = False
  end
end
