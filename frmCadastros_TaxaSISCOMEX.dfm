object Cadastro_TaxaSISCOMEX: TCadastro_TaxaSISCOMEX
  Left = 578
  Top = 211
  BorderStyle = bsDialog
  Caption = 'Cadastro_TaxaSISCOMEX'
  ClientHeight = 442
  ClientWidth = 300
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 300
    Height = 43
    Align = alTop
    Stretch = True
  end
  object RxLabel3: TRxLabel
    Left = 8
    Top = 1
    Width = 149
    Height = 21
    Caption = 'TAXAS DO SISCOMEX'
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
    Top = 21
    Width = 188
    Height = 18
    Caption = 'Tabela de taxas do SISCOMEX.'
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
  object RxLabel1: TRxLabel
    Left = 7
    Top = 352
    Width = 66
    Height = 13
    Caption = 'Qtde Adi'#231#245'es'
  end
  object RxLabel2: TRxLabel
    Left = 81
    Top = 352
    Width = 55
    Height = 13
    Caption = 'Valor da DI'
  end
  object RxLabel5: TRxLabel
    Left = 188
    Top = 352
    Width = 84
    Height = 13
    Caption = 'Taxa SISCOMEX'
  end
  object Panel1: TPanel
    Left = 0
    Top = 412
    Width = 300
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      300
      30)
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 225
      Height = 28
      Cursor = crHandPoint
      DataSource = Dados.dsTaxaSiscomex
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Ctl3D = True
      Hints.Strings = (
        'Vai para o primeiro registro.'
        'Volta para o registro anterior.'
        'Vai para o pr'#243'ximo registro.'
        'Vai para o '#250'ltimo registro.'
        'Inlcuir um novo registro.'
        'Deletar o registro atual.'
        'Altera o registro atual.'
        'Salvar o registro no banco de dados.'
        'Cancelar as modifica'#231#245'es feitas no registro atual.'
        'Atualizar inform'#231#245'es do banco de dados.')
      ParentCtl3D = False
      ParentShowHint = False
      ConfirmDelete = False
      ShowHint = True
      TabOrder = 0
      OnClick = NavegaClick
    end
    object bSair: TButton
      Left = 244
      Top = 1
      Width = 56
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bSairClick
    end
  end
  object Grade: TRxDBGrid
    Left = 0
    Top = 43
    Width = 300
    Height = 290
    Align = alTop
    DataSource = Dados.dsTaxaSiscomex
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    FixedCols = 1
    RowColor2 = 16776176
    Columns = <
      item
        Expanded = False
        FieldName = 'Bloco'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'De'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ate'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 114
        Visible = True
      end>
  end
  object cValDI: TCurrencyEdit
    Left = 81
    Top = 369
    Width = 105
    Height = 22
    AutoSize = False
    DisplayFormat = ',##0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object cAd: TRxSpinEdit
    Left = 7
    Top = 369
    Width = 72
    Height = 24
    Decimal = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnChange = cAdChange
  end
  object cTaxa: TCurrencyEdit
    Left = 188
    Top = 369
    Width = 105
    Height = 22
    AutoSize = False
    DisplayFormat = ',##0.00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object tBloco: TMSQuery
    Connection = Dados.Banco
    Left = 128
    Top = 240
  end
end
