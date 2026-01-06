object Pedido_TelevendasCatalogoItem: TPedido_TelevendasCatalogoItem
  AlignWithMargins = True
  Left = 0
  Top = 0
  AlphaBlendValue = 240
  BorderStyle = bsDialog
  Caption = 'Pedido_TelevendasCatalogoItem'
  ClientHeight = 504
  ClientWidth = 659
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  GlassFrame.SheetOfGlass = True
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 472
    Width = 659
    Height = 32
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object bCancelar: TButton
      AlignWithMargins = True
      Left = 586
      Top = 2
      Width = 71
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bCancelarClick
    end
    object bAdicionar: TButton
      AlignWithMargins = True
      Left = 507
      Top = 2
      Width = 77
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alRight
      Caption = '&Adicionar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bAdicionarClick
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 404
    Top = 3
    Width = 253
    Height = 466
    Margins.Right = 2
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      253
      466)
    object cValor: TCurrencyEdit
      Left = 100
      Top = 417
      Width = 145
      Height = 27
      DisplayFormat = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 2
    end
    object cQtde: TCurrencyEdit
      Left = 100
      Top = 389
      Width = 145
      Height = 27
      DisplayFormat = ',0.000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 1
    end
    object StaticText12: TStaticText
      Left = 6
      Top = 417
      Width = 91
      Height = 25
      Anchors = [akTop, akRight]
      AutoSize = False
      BevelInner = bvNone
      BorderStyle = sbsSingle
      Caption = 'Valor'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      Transparent = False
      StyleElements = []
    end
    object StaticText1: TStaticText
      Left = 6
      Top = 389
      Width = 91
      Height = 25
      Anchors = [akTop, akRight]
      AutoSize = False
      BevelInner = bvNone
      BorderStyle = sbsSingle
      Caption = 'Quantidade'
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
    object StaticText13: TStaticText
      Left = 6
      Top = 361
      Width = 91
      Height = 25
      Anchors = [akTop, akRight]
      AutoSize = False
      BevelInner = bvNone
      BorderStyle = sbsSingle
      Caption = 'Tabela'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 5
      Transparent = False
      StyleElements = []
    end
    object cTabela: TRxDBLookupCombo
      Left = 100
      Top = 361
      Width = 145
      Height = 26
      DropDownCount = 8
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      Anchors = [akTop, akRight]
      LookupField = 'Codigo'
      LookupDisplay = 'Descricao'
      LookupDisplayIndex = 1
      LookupSource = dmComercial.dsTabelaComissoes
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnChange = cTabelaChange
    end
    object Panel5: TPanel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 245
      Height = 56
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 6
      DesignSize = (
        245
        56)
      object Image7: TImage
        Left = 0
        Top = 0
        Width = 245
        Height = 56
        Align = alClient
        Stretch = True
        ExplicitLeft = 1
        ExplicitTop = -23
        ExplicitWidth = 183
      end
      object Label3: TLabel
        Left = 12
        Top = 8
        Width = 58
        Height = 19
        Caption = 'MIN'#205'MO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        StyleElements = [seClient, seBorder]
      end
      object lMinimo: TLabel
        Left = 84
        Top = 10
        Width = 151
        Height = 20
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = '0,000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        StyleElements = [seClient, seBorder]
      end
      object lDisponivel: TLabel
        Left = 84
        Top = 31
        Width = 151
        Height = 20
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        AutoSize = False
        Caption = '0,000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        StyleElements = [seClient, seBorder]
      end
      object Label7: TLabel
        Left = 12
        Top = 29
        Width = 81
        Height = 19
        Caption = 'DISPON'#205'VEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        StyleElements = [seClient, seBorder]
      end
    end
    object DBMemo1: TDBMemo
      AlignWithMargins = True
      Left = 4
      Top = 66
      Width = 245
      Height = 268
      Align = alTop
      BiDiMode = bdLeftToRight
      DataField = 'Descricao_Reduzida'
      DataSource = Pedido_TelevendasCatalogo.dstItens
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12615680
      Font.Height = -16
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
      StyleElements = [seClient, seBorder]
    end
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 398
    Height = 466
    Margins.Right = 0
    Align = alLeft
    BevelOuter = bvLowered
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    StyleElements = [seFont, seBorder]
    object cFoto: TImage
      Left = 1
      Top = 1
      Width = 396
      Height = 464
      Margins.Bottom = 0
      Align = alClient
      Center = True
      Proportional = True
      Transparent = True
      ExplicitTop = 5
      ExplicitWidth = 329
      ExplicitHeight = 359
    end
  end
  object tItem: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 128
    Top = 270
  end
end
