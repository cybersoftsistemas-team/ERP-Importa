object Impressao_ContabeisSelecao_Razao: TImpressao_ContabeisSelecao_Razao
  Left = 593
  Top = 118
  BorderStyle = bsToolWindow
  Caption = 'Sele'#231#227'o de Contas para o Raz'#227'o'
  ClientHeight = 554
  ClientWidth = 577
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
  DesignSize = (
    577
    554)
  PixelsPerInch = 96
  TextHeight = 13
  object cPesquisa: TEdit
    Left = 77
    Top = 500
    Width = 492
    Height = 21
    Anchors = [akLeft, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnChange = cPesquisaChange
  end
  object StaticText2: TStaticText
    Left = 5
    Top = 500
    Width = 70
    Height = 21
    Anchors = [akLeft, akBottom]
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Pesquisar'
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
  object Grade: TDBGrid
    Left = 2
    Top = 2
    Width = 573
    Height = 471
    DataSource = dmContab.dsPlanoContas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = GradeCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Conta'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Codigo'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Width = 340
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Imprimir_Razao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Webdings'
        Font.Style = []
        Title.Caption = 'SEL'
        Title.Color = clBlue
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 526
    Width = 577
    Height = 28
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 3
    DesignSize = (
      577
      28)
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 152
      Height = 27
      DataSource = dmContab.dsPlanoContas
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 0
    end
    object bSair: TButton
      Left = 505
      Top = 1
      Width = 67
      Height = 27
      Anchors = [akLeft, akBottom]
      Caption = '&Sair'
      TabOrder = 1
      OnClick = bSairClick
    end
  end
  object StaticText1: TStaticText
    Left = 5
    Top = 476
    Width = 70
    Height = 21
    Anchors = [akLeft, akBottom]
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Grupo'
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
  object bGrupo: TButton
    Left = 158
    Top = 474
    Width = 94
    Height = 24
    Anchors = [akLeft, akBottom]
    Caption = '&Selecionar &Grupo'
    TabOrder = 5
    OnClick = bGrupoClick
  end
  object cGrupo: TComboBox
    Left = 77
    Top = 476
    Width = 78
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object bDesmarcar: TButton
    Left = 255
    Top = 474
    Width = 94
    Height = 24
    Anchors = [akLeft, akBottom]
    Caption = '&Desmarcar Tudo'
    TabOrder = 7
    OnClick = bDesmarcarClick
  end
end
