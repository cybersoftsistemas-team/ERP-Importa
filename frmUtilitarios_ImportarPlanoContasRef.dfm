object Utilitarios_ImportarPlanoContasRef: TUtilitarios_ImportarPlanoContasRef
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Utilitarios_ImportarPlanoContasRef'
  ClientHeight = 593
  ClientWidth = 964
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 964
    Height = 45
    Align = alTop
    Stretch = True
    ExplicitWidth = 965
  end
  object RxLabel3: TRxLabel
    Left = 5
    Top = 1
    Width = 199
    Height = 23
    Caption = 'IMPORTA'#199#195'O DE DADOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ShadowColor = clBlack
    ShadowPos = spRightBottom
    Transparent = True
  end
  object RxLabel4: TRxLabel
    Left = 5
    Top = 22
    Width = 273
    Height = 19
    Caption = 'Importa'#231#227'o do Plano de Contas Referencial.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Calibri'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    ShadowColor = clBlack
    ShadowPos = spRightBottom
    Transparent = True
  end
  object StaticText2: TStaticText
    Left = 4
    Top = 49
    Width = 50
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Arquivo'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    Transparent = False
    StyleElements = []
  end
  object cArquivo: TFilenameEdit
    Left = 56
    Top = 49
    Width = 900
    Height = 21
    Filter = 'All files (*.*)|*.txt'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    NumGlyphs = 1
    ParentFont = False
    TabOrder = 1
    Text = ''
    OnChange = cArquivoChange
  end
  object Panel1: TPanel
    Left = 0
    Top = 566
    Width = 964
    Height = 27
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    ExplicitTop = 606
    ExplicitWidth = 965
    DesignSize = (
      964
      27)
    object bImportar: TButton
      Left = 813
      Top = 1
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Importar'
      TabOrder = 0
      OnClick = bImportarClick
      ExplicitLeft = 814
    end
    object Button3: TButton
      Left = 888
      Top = 1
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      TabOrder = 1
      OnClick = Button3Click
      ExplicitLeft = 889
    end
  end
  object GroupBox1: TGroupBox
    Left = 3
    Top = 74
    Width = 761
    Height = 92
    Caption = 'Layout'
    TabOrder = 3
    object Label1: TLabel
      Left = 257
      Top = 29
      Width = 50
      Height = 13
      Caption = 'Separador'
    end
    object cContaCol: TRxSpinEdit
      Left = 50
      Top = 38
      Width = 60
      Height = 21
      Value = 1.000000000000000000
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object StaticText3: TStaticText
      Left = 7
      Top = 19
      Width = 41
      Height = 40
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Conta'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      Transparent = False
      StyleElements = []
    end
    object cDescrCol: TRxSpinEdit
      Left = 168
      Top = 38
      Width = 69
      Height = 21
      Value = 2.000000000000000000
      Color = clFuchsia
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object StaticText4: TStaticText
      Left = 115
      Top = 19
      Width = 51
      Height = 40
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Descri'#231#227'o'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      Transparent = False
      StyleElements = []
    end
    object StaticText7: TStaticText
      Left = 50
      Top = 19
      Width = 60
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Coluna'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      Transparent = False
      StyleElements = []
    end
    object StaticText9: TStaticText
      Left = 168
      Top = 19
      Width = 69
      Height = 18
      Alignment = taCenter
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Coluna'
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
    object cSeparador: TEdit
      Left = 313
      Top = 25
      Width = 57
      Height = 21
      TabOrder = 6
      Text = '|'
    end
    object cApagar: TCheckBox
      Left = 528
      Top = 40
      Width = 204
      Height = 17
      Caption = 'Apagar Plano ECF Antes de Importar'
      TabOrder = 7
    end
  end
  object ListBox1: TTextListBox
    Left = 4
    Top = 168
    Width = 954
    Height = 391
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ItemHeight = 15
    ParentFont = False
    TabOrder = 4
  end
  object cNome: TRadioGroup
    Left = 768
    Top = 74
    Width = 189
    Height = 92
    Caption = 'Nome da Conta'
    ItemIndex = 0
    Items.Strings = (
      'Nenhum'
      'Primeira Letra em Maiusculo'
      'Tudo maiusculo'
      'Tudo minusculo')
    TabOrder = 5
  end
  object tmp: TMSQuery
    Connection = Dados.Banco_Contabilidade
    Left = 376
    Top = 8
  end
end
