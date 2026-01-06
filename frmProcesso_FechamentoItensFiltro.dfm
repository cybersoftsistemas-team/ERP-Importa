object Processo_FechamentoItensFiltro: TProcesso_FechamentoItensFiltro
  Left = 542
  Top = 288
  BorderStyle = bsToolWindow
  Caption = 'Processo_FechamentoItensFiltro'
  ClientHeight = 247
  ClientWidth = 532
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
  object cSituacao: TRadioGroup
    Left = 259
    Top = 16
    Width = 102
    Height = 80
    Caption = 'Situa'#231#227'o'
    ItemIndex = 2
    Items.Strings = (
      'Previstas'
      'Realizadas'
      'Todas')
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 217
    Width = 532
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      532
      30)
    object bCancelar: TButton
      Left = 468
      Top = 1
      Width = 64
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bCancelarClick
    end
    object bOK: TButton
      Left = 404
      Top = 1
      Width = 64
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&OK'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bOKClick
    end
  end
  object cTipo: TRadioGroup
    Left = 18
    Top = 16
    Width = 119
    Height = 80
    Caption = 'Tipo'
    Color = clBtnFace
    Ctl3D = True
    ItemIndex = 2
    Items.Strings = (
      'Pagamentos'
      'Recebimentos'
      'Todos')
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 2
  end
  object cDespesa: TRadioGroup
    Left = 153
    Top = 16
    Width = 91
    Height = 80
    Caption = 'Despesa'
    ItemIndex = 2
    Items.Strings = (
      'Custo'
      'Outras'
      'Todas')
    TabOrder = 3
  end
  object GroupBox1: TGroupBox
    Left = 18
    Top = 120
    Width = 496
    Height = 49
    Caption = 
      'Selecione a classifica'#231#227'o abaixo para adicionar somente a despes' +
      'a desejada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object lClassificacao: TStaticText
      Left = 6
      Top = 22
      Width = 71
      Height = 21
      Cursor = crHandPoint
      AutoSize = False
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvSpace
      BorderStyle = sbsSunken
      Caption = 'Classifica'#231#227'o'
      Color = 7293440
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      Transparent = False
      StyleElements = []
    end
    object cClassificacao: TRxDBLookupCombo
      Left = 79
      Top = 22
      Width = 411
      Height = 21
      DropDownCount = 15
      DropDownWidth = 500
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      LookupField = 'Codigo'
      LookupDisplay = 'Codigo;Descricao'
      LookupDisplayIndex = 1
      LookupSource = Dados.dsClassificacaoFinanceira
      ParentFont = False
      TabOrder = 1
      OnChange = cClassificacaoChange
    end
  end
  object cCopiar: TCheckBox
    Left = 18
    Top = 184
    Width = 284
    Height = 17
    Caption = 'Copiar a descri'#231#227'o da classifica'#231#227'o para a observa'#231#227'o.'
    TabOrder = 5
  end
  object cProcesso: TRadioGroup
    Left = 376
    Top = 16
    Width = 138
    Height = 80
    Caption = 'Processos'
    ItemIndex = 2
    Items.Strings = (
      'Processo Filho'
      'Processo Mestre'
      'Todos')
    TabOrder = 6
  end
  object tRegistro: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Registro) AS Registro FROM ProcessosFechamentoItens')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 373
    Top = 179
    object tRegistroRegistro: TIntegerField
      FieldName = 'Registro'
      ReadOnly = True
    end
  end
  object tPagarReceber: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM PagarReceber WHERE(Numero = 100)')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 405
    Top = 179
  end
end
