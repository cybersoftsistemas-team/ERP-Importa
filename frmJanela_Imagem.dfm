object Janela_Imagem: TJanela_Imagem
  Left = 504
  Top = 135
  BorderStyle = bsToolWindow
  Caption = 'Janela_Imagem'
  ClientHeight = 655
  ClientWidth = 638
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
  object Shape1: TShape
    Left = 0
    Top = 0
    Width = 638
    Height = 655
    Align = alClient
    Pen.Color = clWhite
  end
  object cImagem: TImage
    Left = 0
    Top = 0
    Width = 638
    Height = 655
    Cursor = crHandPoint
    Align = alClient
    AutoSize = True
   
    Proportional = True
    Transparent = True
    OnClick = cImagemClick
  end
end
