object Financeiro_RelacaoContratos: TFinanceiro_RelacaoContratos
  Left = 370
  Top = 214
  BorderStyle = bsDialog
  Caption = 'Financeiro_RelacaoContratos'
  ClientHeight = 387
  ClientWidth = 1000
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
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 3
    Top = 50
    Width = 995
    Height = 304
    Caption = 'Contratos de C'#226'mbio com saldo para fechamento'
    TabOrder = 0
    object Grade: TDBGrid
      Left = 2
      Top = 15
      Width = 991
      Height = 287
      Align = alClient
      DataSource = dstContrataCambio
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = GradeDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Nome_Exportador'
          Title.Alignment = taCenter
          Title.Caption = 'Exportador'
          Width = 213
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Processo'
          Title.Alignment = taCenter
          Width = 88
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DI'
          Title.Alignment = taCenter
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero'
          Title.Alignment = taCenter
          Title.Caption = 'N'#186' Contrato'
          Width = 98
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Data'
          Title.Alignment = taCenter
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total_ME'
          Title.Alignment = taCenter
          Title.Caption = 'Valor (ME)'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Taxa_Cambial'
          Title.Alignment = taCenter
          Title.Caption = 'Taxa'
          Width = 53
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_Moeda'
          Title.Caption = 'Moeda'
          Width = 119
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome_Banco'
          Title.Caption = 'Banco'
          Width = 156
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 357
    Width = 1000
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      1000
      30)
    object bCancelar: TButton
      Left = 923
      Top = 1
      Width = 75
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bCancelarClick
    end
    object bOK: TButton
      Left = 847
      Top = 1
      Width = 75
      Height = 28
      Cursor = crHandPoint
      Hint = '  Salva as informa'#231#245'es no banco de dados.'
      Anchors = [akTop, akRight]
      Caption = '&OK'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bOKClick
    end
  end
  object lBeneficiario: TStaticText
    Left = 5
    Top = 15
    Width = 68
    Height = 21
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Fornecedor'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    Transparent = False
    StyleElements = []
  end
  object cFornecedor: TDBLookupComboBox
    Left = 75
    Top = 15
    Width = 422
    Height = 21
    DropDownRows = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyField = 'Codigo'
    ListField = 'Nome'
    ListFieldIndex = 1
    ListSource = Dados.dsFornecedores
    NullValueKey = 46
    ParentFont = False
    TabOrder = 3
    OnClick = cFornecedorClick
    OnExit = cFornecedorExit
  end
  object tContratoCambio: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO ContratoCambio'
      
        '  (Numero, Data, Tipo, Banco, Conta_Fornecedor, DI, Exportador, ' +
        'Fechado, Moeda, Taxa_Cambial, Data_Vencimento, Centro_Custo, Fin' +
        'anceiro_Lancamento, Registro, Recursos, Gerar_Baixa, Classificac' +
        'ao, Condicao_Cambio, Beneficiario, Total_ME)'
      'VALUES'
      
        '  (:Numero, :Data, :Tipo, :Banco, :Conta_Fornecedor, :DI, :Expor' +
        'tador, :Fechado, :Moeda, :Taxa_Cambial, :Data_Vencimento, :Centr' +
        'o_Custo, :Financeiro_Lancamento, :Registro, :Recursos, :Gerar_Ba' +
        'ixa, :Classificacao, :Condicao_Cambio, :Beneficiario, :Total_ME)')
    SQLDelete.Strings = (
      'DELETE FROM ContratoCambio'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLUpdate.Strings = (
      'UPDATE ContratoCambio'
      'SET'
      
        '  Numero = :Numero, Data = :Data, Tipo = :Tipo, Banco = :Banco, ' +
        'Conta_Fornecedor = :Conta_Fornecedor, DI = :DI, Exportador = :Ex' +
        'portador, Fechado = :Fechado, Moeda = :Moeda, Taxa_Cambial = :Ta' +
        'xa_Cambial, Data_Vencimento = :Data_Vencimento, Centro_Custo = :' +
        'Centro_Custo, Financeiro_Lancamento = :Financeiro_Lancamento, Re' +
        'gistro = :Registro, Recursos = :Recursos, Gerar_Baixa = :Gerar_B' +
        'aixa, Classificacao = :Classificacao, Condicao_Cambio = :Condica' +
        'o_Cambio, Beneficiario = :Beneficiario, Total_ME = :Total_ME'
      'WHERE'
      '  Numero = :Old_Numero')
    SQLRefresh.Strings = (
      
        'SELECT ContratoCambio.Numero, ContratoCambio.Data, ContratoCambi' +
        'o.Tipo, ContratoCambio.Banco, ContratoCambio.Conta_Fornecedor, C' +
        'ontratoCambio.DI, ContratoCambio.Exportador, ContratoCambio.Fech' +
        'ado, ContratoCambio.Moeda, ContratoCambio.Taxa_Cambial, Contrato' +
        'Cambio.Data_Vencimento, ContratoCambio.Centro_Custo, ContratoCam' +
        'bio.Financeiro_Lancamento, ContratoCambio.Registro, ContratoCamb' +
        'io.Recursos, ContratoCambio.Gerar_Baixa, ContratoCambio.Classifi' +
        'cacao, ContratoCambio.Condicao_Cambio, ContratoCambio.Beneficiar' +
        'io, ContratoCambio.Total_ME FROM ContratoCambio'
      'WHERE ContratoCambio.Numero = :Numero ')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT ContratoCambio.*, '
      
        '       (SELECT Fornecedores.Nome FROM Fornecedores WHERE(Fornece' +
        'dores.Codigo = ContratoCambio.Exportador)) AS Nome_Exportador,'
      
        '       (SELECT Bancos.Nome FROM Bancos WHERE(Bancos.Codigo = Con' +
        'tratoCambio.Banco)) AS Nome_Banco,'
      
        '       (SELECT Cybersoft_Cadastros.dbo.Moedas.Nome FROM Cybersof' +
        't_Cadastros.dbo.Moedas WHERE(Cybersoft_Cadastros.dbo.Moedas.Codi' +
        'go = ContratoCambio.Moeda)) AS Nome_Moeda'
      'FROM ContratoCambio'
      'ORDER  BY Exportador, Numero')
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 522
    Top = 16
    object tContratoCambioNome_Exportador: TStringField
      FieldName = 'Nome_Exportador'
      Origin = '.'
      ReadOnly = True
      Size = 60
    end
    object tContratoCambioNumero: TStringField
      FieldName = 'Numero'
      Origin = 'ContratoCambio.Numero'
      Size = 15
    end
    object tContratoCambioData: TDateTimeField
      FieldName = 'Data'
      Origin = 'ContratoCambio.Data'
    end
    object tContratoCambioTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'ContratoCambio.Tipo'
    end
    object tContratoCambioTaxa_Cambial: TFloatField
      FieldName = 'Taxa_Cambial'
      Origin = 'ContratoCambio.Taxa_Cambial'
      DisplayFormat = ',##0.0000'
      EditFormat = ',##0.0000'
    end
    object tContratoCambioDI: TStringField
      FieldName = 'DI'
      Origin = 'ContratoCambio.DI'
      EditMask = '99/9999999-9;0; '
      Size = 15
    end
    object tContratoCambioProcesso: TStringField
      FieldName = 'Processo'
      Origin = 'ContratoCambio.Processo'
      Size = 15
    end
    object tContratoCambioNome_Banco: TStringField
      FieldName = 'Nome_Banco'
      Origin = '.'
      ReadOnly = True
      Size = 30
    end
    object tContratoCambioNome_Moeda: TStringField
      FieldName = 'Nome_Moeda'
      Origin = '.'
      ReadOnly = True
      Size = 30
    end
    object tContratoCambioExportador: TIntegerField
      FieldName = 'Exportador'
      Origin = 'ContratoCambio.Exportador'
    end
    object tContratoCambioBanco: TSmallintField
      FieldName = 'Banco'
      Origin = 'ContratoCambio.Banco'
    end
    object tContratoCambioTotal_ME: TCurrencyField
      FieldName = 'Total_ME'
      Origin = 'ContratoCambio.Total_ME'
      DisplayFormat = ',##0.00'
      EditFormat = '0.00'
    end
  end
  object dstContrataCambio: TDataSource
    DataSet = tContratoCambio
    Left = 552
    Top = 16
  end
end
