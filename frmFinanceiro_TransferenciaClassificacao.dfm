object Financeiro_TransferenciaClassificacao: TFinanceiro_TransferenciaClassificacao
  Left = 316
  Top = 295
  BorderStyle = bsDialog
  Caption = 'Financeiro_TransferenciaClassificacao'
  ClientHeight = 140
  ClientWidth = 715
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 0
    Top = 0
    Width = 715
    Height = 46
    Align = alTop
    Stretch = True
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
  object RxLabel2: TRxLabel
    Left = 8
    Top = 22
    Width = 281
    Height = 18
    Caption = 'Transfer'#234'ncia entre classifica'#231#245'es financeiras.'
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
  object Panel1: TPanel
    Left = 0
    Top = 110
    Width = 715
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      715
      30)
    object bSair: TButton
      Left = 639
      Top = 1
      Width = 75
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bTransferir: TButton
      Left = 563
      Top = 1
      Width = 75
      Height = 28
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Transferir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bTransferirClick
    end
  end
  object StaticText6: TStaticText
    Left = 10
    Top = 56
    Width = 110
    Height = 21
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Classifica'#231#227'o Origem'
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
  object cClass1: TRxDBLookupCombo
    Left = 122
    Top = 56
    Width = 586
    Height = 21
    DropDownCount = 8
    DisplayAllFields = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo;Descricao; Tipo;Nivel'
    LookupSource = Dados.dsClassificacaoFinanceira
    ParentFont = False
    TabOrder = 2
  end
  object StaticText1: TStaticText
    Left = 10
    Top = 79
    Width = 110
    Height = 21
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Classifica'#231#227'o Destino'
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
  object cClass2: TRxDBLookupCombo
    Left = 122
    Top = 79
    Width = 586
    Height = 21
    DropDownCount = 8
    DisplayAllFields = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Pitch = fpFixed
    Font.Style = [fsBold]
    LookupField = 'Codigo'
    LookupDisplay = 'Codigo;Descricao; Tipo; Nivel'
    LookupSource = dsClassificacaoDestino
    ParentFont = False
    TabOrder = 4
  end
  object ClassificacaoDestino: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM ClassificacaoFinanceira ORDER BY Descricao')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 302
    Top = 12
    object ClassificacaoDestinoCodigo: TStringField
      DisplayWidth = 8
      FieldName = 'Codigo'
      Origin = 'ClassificacaoFinanceira.Codigo'
      Size = 15
    end
    object ClassificacaoDestinoDescricao: TStringField
      DisplayWidth = 44
      FieldName = 'Descricao'
      Origin = 'ClassificacaoFinanceira.Descricao'
      Size = 60
    end
    object ClassificacaoDestinoDescricaoTipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'DescricaoTipo'
      Size = 11
      Calculated = True
    end
    object ClassificacaoDestinoCusto: TBooleanField
      FieldName = 'Custo'
      Origin = 'ClassificacaoFinanceira.Custo'
    end
    object ClassificacaoDestinoNivel: TSmallintField
      FieldName = 'Nivel'
      Origin = 'ClassificacaoFinanceira.Nivel'
    end
    object ClassificacaoDestinoTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object ClassificacaoDestinoCusto_Seletivo: TBooleanField
      FieldName = 'Custo_Seletivo'
    end
    object ClassificacaoDestinoCusto_Entrada: TBooleanField
      FieldName = 'Custo_Entrada'
    end
  end
  object dsClassificacaoDestino: TDataSource
    DataSet = ClassificacaoDestino
    Left = 334
    Top = 11
  end
end
