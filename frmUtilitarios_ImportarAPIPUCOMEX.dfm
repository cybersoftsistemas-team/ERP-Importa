object Utilitarios_ImportarAPIPUCOMEX: TUtilitarios_ImportarAPIPUCOMEX
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Utilitarios_ImportarAPIPUCOMEX'
  ClientHeight = 514
  ClientWidth = 768
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 19
    Top = 27
    Width = 25
    Height = 13
    Caption = 'CNPJ'
  end
  object Label2: TLabel
    Left = 19
    Top = 132
    Width = 11
    Height = 13
    Caption = 'DI'
  end
  object Edit1: TEdit
    Left = 19
    Top = 46
    Width = 172
    Height = 21
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 197
    Top = 22
    Width = 563
    Height = 452
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'JetBrains Mono'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 484
    Width = 768
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    object Button1: TButton
      Left = 692
      Top = 1
      Width = 75
      Height = 28
      Align = alRight
      Caption = '&Sair'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Button2: TButton
    Left = 59
    Top = 73
    Width = 75
    Height = 32
    Caption = 'Buscar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Edit2: TEdit
    Left = 19
    Top = 151
    Width = 172
    Height = 21
    TabOrder = 4
    Text = '2410401987'
  end
  object Button3: TButton
    Left = 59
    Top = 178
    Width = 75
    Height = 32
    Caption = 'Buscar'
    TabOrder = 5
    OnClick = Button3Click
  end
  object RESTClient1: TRESTClient
    Params = <>
    Left = 81
    Top = 243
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 81
    Top = 301
  end
  object RESTResponse1: TRESTResponse
    Left = 81
    Top = 359
  end
end
