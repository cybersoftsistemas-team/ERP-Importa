object Processo_AdicoesOrdem: TProcesso_AdicoesOrdem
  Left = 417
  Top = 198
  BorderStyle = bsToolWindow
  Caption = 'Processo_AdicoesOrdem'
  ClientHeight = 325
  ClientWidth = 476
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  DesignSize = (
    476
    325)
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 17
    Width = 81
    Height = 13
    Caption = 'Planilha do Excel'
  end
  object GroupBox3: TGroupBox
    Left = 155
    Top = 73
    Width = 166
    Height = 144
    Caption = 'Colunas do Excel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object ComboA: TComboBox
      Left = 99
      Top = 20
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      DropDownCount = 9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = 'A'
      OnChange = ComboAChange
      Items.Strings = (
        'A'
        'B'
        'C'
        'D'
        'E'
        'F'
        'G'
        'H'
        'I'
        'J'
        'K'
        'L'
        'M'
        'N'
        'O'
        'P'
        'Q'
        'R'
        'S'
        'T'
        'U'
        'V'
        'X'
        'Y'
        'Z'
        'W')
    end
    object ComboB: TComboBox
      Left = 99
      Top = 43
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      DropDownCount = 9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = 'B'
      OnChange = ComboAChange
      Items.Strings = (
        'A'
        'B'
        'C'
        'D'
        'E'
        'F'
        'G'
        'H'
        'I'
        'J'
        'K'
        'L'
        'M'
        'N'
        'O'
        'P'
        'Q'
        'R'
        'S'
        'T'
        'U'
        'V'
        'X'
        'Y'
        'Z'
        'W')
    end
    object StaticText8: TStaticText
      Left = 10
      Top = 20
      Width = 87
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'C'#243'digo Fabrica'
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
    object StaticText1: TStaticText
      Left = 10
      Top = 43
      Width = 87
      Height = 21
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
    object StaticText2: TStaticText
      Left = 10
      Top = 66
      Width = 87
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Posicao'
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
    object ComboC: TComboBox
      Left = 99
      Top = 66
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      DropDownCount = 9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Text = 'C'
      OnChange = ComboAChange
      Items.Strings = (
        'A'
        'B'
        'C'
        'D'
        'E'
        'F'
        'G'
        'H'
        'I'
        'J'
        'K'
        'L'
        'M'
        'N'
        'O'
        'P'
        'Q'
        'R'
        'S'
        'T'
        'U'
        'V'
        'X'
        'Y'
        'Z'
        'W')
    end
    object StaticText3: TStaticText
      Left = 10
      Top = 89
      Width = 87
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Ordem'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 6
      Transparent = False
      StyleElements = []
    end
    object ComboD: TComboBox
      Left = 99
      Top = 89
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      DropDownCount = 9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      Text = 'D'
      OnChange = ComboAChange
      Items.Strings = (
        'A'
        'B'
        'C'
        'D'
        'E'
        'F'
        'G'
        'H'
        'I'
        'J'
        'K'
        'L'
        'M'
        'N'
        'O'
        'P'
        'Q'
        'R'
        'S'
        'T'
        'U'
        'V'
        'X'
        'Y'
        'Z'
        'W')
    end
    object StaticText4: TStaticText
      Left = 10
      Top = 112
      Width = 87
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Quantidade'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 8
      Transparent = False
      StyleElements = []
    end
    object ComboE: TComboBox
      Left = 99
      Top = 112
      Width = 57
      Height = 21
      CharCase = ecUpperCase
      DropDownCount = 9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      Text = 'E'
      OnChange = ComboAChange
      Items.Strings = (
        'A'
        'B'
        'C'
        'D'
        'E'
        'F'
        'G'
        'H'
        'I'
        'J'
        'K'
        'L'
        'M'
        'N'
        'O'
        'P'
        'Q'
        'R'
        'S'
        'T'
        'U'
        'V'
        'X'
        'Y'
        'Z'
        'W')
    end
  end
  object bSair: TButton
    Left = 277
    Top = 241
    Width = 73
    Height = 28
    Hint = 'Fecha a janela atual e cancela os processos pendentes.'
    Anchors = [akTop, akRight]
    Caption = '&Sair'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = bSairClick
  end
  object cPlanilha: TEdit
    Left = 8
    Top = 32
    Width = 457
    Height = 21
    Enabled = False
    TabOrder = 2
    Text = 'cPlanilha'
  end
  object bImportar: TButton
    Left = 125
    Top = 241
    Width = 73
    Height = 28
    Hint = 'Importa os dados da planilha'
    Anchors = [akTop, akRight]
    Caption = '&Importar'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = bImportarClick
  end
  object cAViso: TStaticText
    Left = 0
    Top = 288
    Width = 476
    Height = 21
    Align = alBottom
    Alignment = taCenter
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 4
    Transparent = False
    StyleElements = []
  end
  object bCancelar: TButton
    Left = 201
    Top = 241
    Width = 73
    Height = 28
    Hint = 'Importa os dados da planilha'
    Anchors = [akTop, akRight]
    Caption = '&Cancelar'
    Enabled = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = bCancelarClick
  end
  object Progresso: TProgressBar
    Left = 0
    Top = 309
    Width = 476
    Height = 16
    Align = alBottom
    TabOrder = 6
  end
end
