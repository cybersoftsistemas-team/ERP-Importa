object Utilitario_ExportaTextoCampos: TUtilitario_ExportaTextoCampos
  Left = 408
  Top = 176
  Width = 983
  Height = 604
  Caption = 'Utilitario_ExportaTextoCampos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  DesignSize = (
    967
    565)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 5
    Top = 5
    Width = 958
    Height = 526
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      958
      526)
    object Bevel1: TBevel
      Left = 4
      Top = 32
      Width = 949
      Height = 2
      Anchors = [akLeft, akTop, akRight]
      Style = bsRaised
    end
    object cCodigo: TDBEdit
      Left = 59
      Top = 6
      Width = 54
      Height = 21
      DataField = 'Layout'
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
    object cNome: TDBEdit
      Left = 115
      Top = 6
      Width = 532
      Height = 21
      DataField = 'Nome'
      DataSource = Dados.dsLayoutExportacao
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object StaticText1: TStaticText
      Left = 6
      Top = 6
      Width = 51
      Height = 21
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Layout'
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
    object DBGrid2: TDBGrid
      Left = 5
      Top = 262
      Width = 948
      Height = 259
      DataSource = Dados.dsLayoutExportacaoItens
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Numero'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Campo'
          Title.Alignment = taCenter
          Width = 155
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Alignment = taCenter
          Width = 380
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Variavel'
          Title.Alignment = taCenter
          Width = 149
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Tamanho'
          Title.Alignment = taCenter
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Linha'
          Title.Alignment = taCenter
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Coluna'
          Title.Alignment = taCenter
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Mascara'
          Title.Alignment = taCenter
          Width = 107
          Visible = True
        end>
    end
    object RxDBGrid1: TRxDBGrid
      Left = 5
      Top = 40
      Width = 948
      Height = 201
      DataSource = Dados.dsCampos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = RxDBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Campo'
          Title.Alignment = taCenter
          Width = 245
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Alignment = taCenter
          Width = 668
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 535
    Width = 967
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      967
      30)
    object bSair: TButton
      Left = 898
      Top = 1
      Width = 69
      Height = 28
      Hint = '   Fecha a janela atual e cancela os processos pendentes.   '
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      Left = 0
      Top = 1
      Width = 441
      Height = 28
      DataSource = Dados.dsLayoutExportacao
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 1
    end
  end
end
