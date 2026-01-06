object Cadastro_PlanoContasParam: TCadastro_PlanoContasParam
  Left = 262
  Top = 91
  BorderStyle = bsDialog
  Caption = 'Cadastro_PlanoContasParam'
  ClientHeight = 577
  ClientWidth = 455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RxDBGrid1: TRxDBGrid
    Left = 6
    Top = 144
    Width = 443
    Height = 398
    DataSource = dmContab.dsPlanoContas
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Conta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Codigo'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Width = 241
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Origem'
        Width = 44
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 49
    Width = 443
    Height = 88
    Caption = 'Origem'
    TabOrder = 1
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 8
      Top = 24
      Width = 425
      Height = 21
      DataField = 'Origem'
      DataSource = dmContab.dsPlanoContas
      KeyField = 'Codigo'
      ListField = 'Modulo_Origem'
      ListSource = dmContab.dsOrigens
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 48
      Width = 217
      Height = 21
      DataField = 'Form1'
      DataSource = dmContab.dsOrigens
      TabOrder = 1
    end
  end
  object XPPAnel1: TXPPanel
    Left = 0
    Top = 0
    Width = 455
    Height = 46
    Align = alTop
    Direction = xdStretchImage
    Color = clHighlight
    ColorEnd = clWhite
    DesignSize = (
      455
      46)
    object Image2: TImage
      Left = 416
      Top = 5
      Width = 34
      Height = 33
      HelpContext = 601
      Anchors = [akTop, akRight]
      Picture.Data = {
        055449636F6E0000010001002020100001000400E80200001600000028000000
        2000000040000000010004000000000080020000000000000000000000000000
        0000000000000000000080000080000000808000800000008000800080800000
        80808000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
        FFFFFF00FFFF000000000000000000000000000FFFFF00000000000000000000
        0000000FF999999999999999999999999999900FF9FFFFFFFFFFFFFFFFFFFFFF
        FFFF900FF9FFF0F0000000000FFFFFFFFFFF900FF9FFFFFFFFFFFFFFFFFFFFFF
        FFFF900FF9F0F0000000000000000000FFFF900FF9FFFFFFFFFFFFFFFFFFFFFF
        FFFF900FF9FFFFF0F0000000000000000FFF900FF9FFFFFFFFFFFFFFFFFFFFFF
        FFFF900FF9FFFFFFF0F0000000000000FFFF900FF9FFFFFFFFFFFFFFFFFFFFFF
        FFFF900FF9FFFFFFF0F00000000000000FFF900FF9FFFFFFFFFFFFFFFFFFFFFF
        FFFF900FF9FFFFF0F00000FFFFFFFFFFFFFF900FF9FFFFFFFFFFFFFFFFFFFFFF
        FFFF900FF9FFFFF0F0000000000000FFFFFF900FF9FFFFFFFFFFFFFFFFFFFFFF
        FFFF900FF9FFFFF000000000000FFFFFFFFF900FF9FFFFFFFFFFFFFFFFFFFFFF
        FFFF900FF9FFF0F0000000000000000FFFFF900FF9FFFFFFFFFFFFFFFFFFFFFF
        FFFF900FF9FFFFF0F00000000000000000FF900FF9FFFFFFFFFFFFFFFFFFFFFF
        FFFF900FF9FFFFF0F0000000000000FFFFFF900FF9FFFFFFFFFFFFFFFFFFFFFF
        FFFF900FF9FFF0F00000000000FFFFFFFFFF900FF9FFFFFFFFFFFFFFFFFFFFFF
        FFFF900FF9F0F000000000FFFFFFFFFFFFFF900FF9FFFFFFFFFFFFFFFFFFFFFF
        FFFF900FF999999999999999999999999999900FFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF00000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000}
    end
    object RxLabel3: TRxLabel
      Left = 8
      Top = 3
      Width = 134
      Height = 21
      Caption = 'PLANO DE CONTAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Calibri'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      ShadowColor = 4194304
      ShadowPos = spRightBottom
      Transparent = True
    end
    object RxLabel4: TRxLabel
      Left = 8
      Top = 22
      Width = 282
      Height = 19
      Caption = 'Par'#226'metros de cria'#231#227'o autom'#225'tica de contas.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold, fsItalic]
      Layout = tlCenter
      ParentFont = False
      ShadowColor = 4194304
      ShadowPos = spRightBottom
      Transparent = True
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 547
    Width = 455
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 3
    DesignSize = (
      455
      30)
    object bSair: TButton
      Left = 389
      Top = 1
      Width = 65
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 315
      Height = 28
      Cursor = crHandPoint
      DataSource = dmContab.dsPlanoContas
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Ctl3D = True
      Hints.Strings = (
        'Vai para o primeiro registro.'
        'Volta para o registro anterior.'
        'Vai para o pr'#243'ximo registro.'
        'Vai para o '#250'ltimo registro.'
        'Inlcuir um novo registro.'
        'Deletar o registro atual.'
        'Altera o reistro atual.'
        'Salvar o registro no banco de dados.'
        'Cancelar as modifica'#231#245'es feitas no registro atual.'
        'Atualizar inform'#231#245'es do banco de dados.')
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
  end
end
