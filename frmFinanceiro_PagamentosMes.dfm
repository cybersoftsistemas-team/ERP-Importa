object Financeiro_PagamentosMes: TFinanceiro_PagamentosMes
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Financeiro_PagamentosMes'
  ClientHeight = 576
  ClientWidth = 751
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 751
    Height = 46
    Align = alTop
    Stretch = True
    ExplicitWidth = 689
  end
  object RxLabel1: TRxLabel
    Left = 8
    Top = 3
    Width = 90
    Height = 21
    Caption = 'FINANCEIRO'
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
  object lTitulo: TRxLabel
    Left = 8
    Top = 22
    Width = 230
    Height = 18
    Caption = 'Gerar t'#237'tulos de Pagamentos do m'#234's.'
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
  object Bevel1: TBevel
    Left = 7
    Top = 55
    Width = 735
    Height = 482
  end
  object Panel1: TPanel
    Left = 0
    Top = 546
    Width = 751
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitTop = 245
    ExplicitWidth = 689
    DesignSize = (
      751
      30)
    object bSair: TButton
      Left = 676
      Top = 1
      Width = 75
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      ExplicitLeft = 614
    end
    object Button1: TButton
      Left = 676
      Top = 1
      Width = 75
      Height = 29
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = Button1Click
      ExplicitLeft = 614
    end
    object bGerar: TButton
      Left = 582
      Top = 1
      Width = 94
      Height = 29
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Gerar Titulos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bGerarClick
      ExplicitLeft = 520
    end
  end
  object Grade1: TDBGrid
    Left = 8
    Top = 56
    Width = 385
    Height = 480
    BorderStyle = bsNone
    Color = 16314343
    DataSource = dstLancamentos
    FixedColor = clTeal
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    StyleElements = [seFont, seBorder]
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Registro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = '#'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 343
        Visible = True
      end>
  end
  object Grade2: TDBGrid
    Left = 390
    Top = 56
    Width = 350
    Height = 480
    BorderStyle = bsNone
    DataSource = dstLancamentos
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Vencimento'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 98
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
      end
      item
        Expanded = False
        FieldName = 'Numero_Doc'
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' DOC'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 118
        Visible = True
      end>
  end
  object tNumero: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 264
    Top = 176
  end
  object tLancamentos: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 328
    Top = 176
    object tLancamentosRegistro: TIntegerField
      FieldName = 'Registro'
      DisplayFormat = '000'
    end
    object tLancamentosDescricao: TStringField
      FieldName = 'Descricao'
      Size = 60
    end
    object tLancamentosVencimento: TDateField
      FieldName = 'Vencimento'
    end
    object tLancamentosValor: TCurrencyField
      FieldName = 'Valor'
      DisplayFormat = ',##0.00'
    end
    object tLancamentosClassificacao: TStringField
      FieldName = 'Classificacao'
      Size = 15
    end
    object tLancamentosCentro_Custo: TStringField
      FieldName = 'Centro_Custo'
      Size = 10
    end
    object tLancamentosFornecedor: TIntegerField
      FieldName = 'Fornecedor'
    end
    object tLancamentosOrgao: TStringField
      FieldName = 'Orgao'
      Size = 10
    end
    object tLancamentosCliente: TIntegerField
      FieldName = 'Cliente'
    end
    object tLancamentosModalidade: TSmallintField
      FieldName = 'Modalidade'
    end
    object tLancamentosBanco: TSmallintField
      FieldName = 'Banco'
    end
    object tLancamentosObservacao: TMemoField
      FieldName = 'Observacao'
      BlobType = ftMemo
    end
    object tLancamentosDocumento: TStringField
      FieldName = 'Documento'
      Size = 10
    end
    object tLancamentosNumero_Doc: TStringField
      FieldName = 'Numero_Doc'
      Size = 50
    end
  end
  object dstLancamentos: TDataSource
    DataSet = tLancamentos
    Left = 328
    Top = 224
  end
end
