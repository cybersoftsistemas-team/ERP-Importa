object Utilitarios_OutrosDesativar: TUtilitarios_OutrosDesativar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Utilitarios_OutrosDesativar'
  ClientHeight = 543
  ClientWidth = 760
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
  object lQtde: TLabel
    Left = 583
    Top = 387
    Width = 168
    Height = 19
    Alignment = taCenter
    AutoSize = False
    Caption = '000000 de 000000'
    EllipsisPosition = epWordEllipsis
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    GlowSize = 2
    ParentFont = False
    Transparent = True
    Layout = tlCenter
  end
  object Panel2: TPanel
    Left = 0
    Top = 513
    Width = 760
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      760
      30)
    object bSair: TButton
      Left = 699
      Top = 1
      Width = 61
      Height = 29
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bExecutar: TButton
      Left = 1
      Top = 1
      Width = 75
      Height = 29
      Caption = '&Executar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = bExecutarClick
    end
    object bCancel: TButton
      Left = 77
      Top = 1
      Width = 75
      Height = 29
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = bCancelClick
    end
    object bAtivar: TButton
      Left = 153
      Top = 1
      Width = 86
      Height = 29
      Caption = '&Ativar todos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = bAtivarClick
    end
  end
  object StaticText3: TStaticText
    Left = 8
    Top = 478
    Width = 153
    Height = 21
    AutoSize = False
    BevelInner = bvNone
    BevelOuter = bvRaised
    BorderStyle = sbsSunken
    Caption = 'Senha do ADMINISTRADOR'
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
  object cSenha: TEdit
    Left = 163
    Top = 478
    Width = 253
    Height = 21
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Courier New'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    ParentFont = False
    PasswordChar = #8226
    TabOrder = 2
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 386
    Width = 569
    Height = 21
    TabOrder = 3
  end
  object Grade: TDBGrid
    Left = 8
    Top = 9
    Width = 743
    Height = 373
    DataSource = Dados.dsProdutos
    Options = [dgTitles, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 59
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Codigo_Fabricante'
        Title.Caption = 'C'#243'digo Fabrica'
        Width = 154
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao_Reduzida'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Width = 469
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Desativado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Webdings'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Des'
        Width = 37
        Visible = True
      end>
  end
  object cSaldoEst: TCheckBox
    Left = 8
    Top = 417
    Width = 236
    Height = 17
    Caption = 'Desativar produtos sem saldo de estoque.'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object cSaldoInv: TCheckBox
    Left = 8
    Top = 440
    Width = 233
    Height = 17
    Caption = 'Desativar produtos sem saldo de inventario.'
    Checked = True
    State = cbChecked
    TabOrder = 6
  end
end
