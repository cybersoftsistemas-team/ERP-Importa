object Utilitario_ExportaTextoCamposItem: TUtilitario_ExportaTextoCamposItem
  Left = 500
  Top = 255
  BorderStyle = bsToolWindow
  Caption = 'Utilitario_ExportaTextoCamposItem'
  ClientHeight = 151
  ClientWidth = 319
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 319
    Height = 151
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object RxSpinButton1: TRxSpinButton
      Left = 116
      Top = 29
      Width = 20
      Height = 20
      DownGlyph.Data = {
        56000000424D56000000000000003E0000002800000006000000060000000100
        010000000000180000000000000000000000020000000200000000000000FFFF
        FF00CC0000008400000000000000CC000000CC000000CC000000}
      UpGlyph.Data = {
        56000000424D56000000000000003E0000002800000006000000060000000100
        010000000000180000000000000000000000020000000200000000000000FFFF
        FF00CC000000CC000000CC0000000000000084000000CC000000}
      FocusControl = cColuna
      OnBottomClick = RxSpinButton1BottomClick
    end
    object RxSpinButton2: TRxSpinButton
      Left = 116
      Top = 52
      Width = 20
      Height = 20
      DownGlyph.Data = {
        56000000424D56000000000000003E0000002800000006000000060000000100
        010000000000180000000000000000000000020000000200000000000000FFFF
        FF00CC0000008400000000000000CC000000CC000000CC000000}
      UpGlyph.Data = {
        56000000424D56000000000000003E0000002800000006000000060000000100
        010000000000180000000000000000000000020000000200000000000000FFFF
        FF00CC000000CC000000CC0000000000000084000000CC000000}
      FocusControl = cTamanho
    end
    object cCampo: TDBEdit
      Left = 69
      Top = 6
      Width = 244
      Height = 21
      DataField = 'Nome'
      DataSource = Dados.dsLayoutExportacao
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object StaticText1: TStaticText
      Left = 6
      Top = 6
      Width = 61
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Campo'
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
    object StaticText2: TStaticText
      Left = 6
      Top = 29
      Width = 61
      Height = 21
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
      TabOrder = 2
    StyleElements = []
    Transparent = False
    end
    object StaticText3: TStaticText
      Left = 6
      Top = 52
      Width = 61
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Tamanho'
    Color = 7293440
      Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
    StyleElements = []
    Transparent = False
    end
    object StaticText4: TStaticText
      Left = 6
      Top = 75
      Width = 61
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Mascara'
    Color = 7293440
      Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    StyleElements = []
    Transparent = False
    end
    object cMascara: TDBEdit
      Left = 69
      Top = 75
      Width = 196
      Height = 21
      DataField = 'Mascara'
      DataSource = Dados.dsLayoutExportacaoItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object bOK: TButton
      Left = 81
      Top = 112
      Width = 75
      Height = 25
      Caption = '&OK'
      TabOrder = 6
    end
    object bCancelar: TButton
      Left = 161
      Top = 112
      Width = 75
      Height = 25
      Caption = '&Cencelar'
      TabOrder = 7
      OnClick = bCancelarClick
    end
    object cColuna: TDBEdit
      Left = 69
      Top = 29
      Width = 47
      Height = 21
      DataField = 'Coluna'
      DataSource = Dados.dsLayoutExportacaoItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object cTamanho: TDBEdit
      Left = 69
      Top = 52
      Width = 47
      Height = 21
      DataField = 'Tamanho'
      DataSource = Dados.dsLayoutExportacaoItens
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
    end
  end
end
