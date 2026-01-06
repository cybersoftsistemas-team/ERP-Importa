object Financeiro_SolicitacaoProcesso: TFinanceiro_SolicitacaoProcesso
  Left = 197
  Top = 86
  BorderStyle = bsToolWindow
  Caption = 'Financeiro_SolicitacaoProcesso'
  ClientHeight = 527
  ClientWidth = 935
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
    935
    527)
  PixelsPerInch = 96
  TextHeight = 13
  object lBeneficiario: TStaticText
    Left = 5
    Top = 7
    Width = 40
    Height = 21
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Cliente'
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
  object cCliente: TDBLookupComboBox
    Left = 47
    Top = 7
    Width = 413
    Height = 21
    DropDownRows = 10
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    KeyField = 'Codigo'
    ListField = 'Codigo; Nome'
    ListFieldIndex = 1
    ListSource = Dados.dsClientes
    NullValueKey = 46
    ParentFont = False
    TabOrder = 1
    OnClick = cClienteClick
  end
  object GradeProcessos: TDBGrid
    Left = 4
    Top = 56
    Width = 496
    Height = 439
    DataSource = Dados.dsProcessosDOC
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = GradeProcessosCellClick
    OnKeyUp = GradeProcessosKeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'Processo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Width = 114
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Tipo'
        Title.Alignment = taCenter
        Width = 75
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Numero_Declaracao'
        Title.Alignment = taCenter
        Title.Caption = 'Declara'#231#227'o'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Origem'
        Title.Alignment = taCenter
        Width = 198
        Visible = True
      end>
  end
  object Panel4: TPanel
    Left = 0
    Top = 498
    Width = 935
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 3
    DesignSize = (
      935
      29)
    object bCancelar: TButton
      Left = 860
      Top = 1
      Width = 75
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
    object bImportar: TButton
      Left = 784
      Top = 1
      Width = 75
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Importar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bImportarClick
    end
    object bPesquisar: TButton
      Left = 709
      Top = 1
      Width = 75
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Anchors = [akTop, akRight]
      Caption = '&Pesquisar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bPesquisarClick
    end
  end
  object bTodos: TButton
    Left = 463
    Top = 3
    Width = 52
    Height = 28
    Cursor = crHandPoint
    Hint = 'Fecha a janela atual e cancela os processos pendentes.'
    Anchors = [akTop, akRight]
    Caption = '&Todos'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = bTodosClick
  end
  object GradeTitulos: TDBGrid
    Left = 502
    Top = 56
    Width = 429
    Height = 439
    DataSource = Dados.dsPagarReceber
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DescricaoClassificacao'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Documento'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Total'
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Width = 98
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 4
    Top = 35
    Width = 496
    Height = 19
    Cursor = crHandPoint
    Alignment = taCenter
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Processos'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 6
    Transparent = False
    StyleElements = []
  end
  object StaticText2: TStaticText
    Left = 502
    Top = 35
    Width = 429
    Height = 19
    Cursor = crHandPoint
    Alignment = taCenter
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'T'#237'tulos encontrados'
    Color = 7293440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 7
    Transparent = False
    StyleElements = []
  end
  object StaticText3: TStaticText
    Left = 757
    Top = 5
    Width = 90
    Height = 21
    Cursor = crHandPoint
    AutoSize = False
    BevelInner = bvNone
    BevelKind = bkSoft
    BevelOuter = bvSpace
    BorderStyle = sbsSunken
    Caption = 'Solicita'#231#227'o N'#186
    Color = 7293440
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 8
    Transparent = False
    StyleElements = []
  end
  object cSN: TCurrencyEdit
    Left = 849
    Top = 5
    Width = 79
    Height = 21
    AutoSize = False
    DecimalPlaces = 0
    DisplayFormat = '0'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
  end
  object tNumero: TMSQuery
    SQLRefresh.Strings = (
      
        'SELECT PagarReceber.Numero, PagarReceber.Empresa, PagarReceber.P' +
        'agamento_Recebimento, PagarReceber.Classificacao, PagarReceber.C' +
        'entro_Custo, PagarReceber.Data_Provisao, PagarReceber.Data_Venci' +
        'mento, PagarReceber.Data_Pagamento, PagarReceber.Valor, PagarRec' +
        'eber.Valor_Total, PagarReceber.Fornecedor, PagarReceber.Cliente,' +
        ' PagarReceber.Orgao, PagarReceber.Banco, PagarReceber.Modalidade' +
        '_Pgto, PagarReceber.Documento, PagarReceber.Numero_Documento, Pa' +
        'garReceber.Forma_Pagamento, PagarReceber.Numero_FormaPagamento, ' +
        'PagarReceber.Observacao, PagarReceber.Processo, PagarReceber.Cod' +
        'igo_Adicional01, PagarReceber.Valor_Adicional01, PagarReceber.Co' +
        'digo_Adicional02, PagarReceber.Valor_Adicional02, PagarReceber.C' +
        'odigo_Adicional03, PagarReceber.Valor_Adicional03, PagarReceber.' +
        'Codigo_Adicional04, PagarReceber.Valor_Adicional04, PagarReceber' +
        '.Codigo_Adicional05, PagarReceber.Valor_Adicional05, PagarRecebe' +
        'r.Codigo_Adicional06, PagarReceber.Valor_Adicional06, PagarReceb' +
        'er.Codigo_Adicional07, PagarReceber.Valor_Adicional07, PagarRece' +
        'ber.Codigo_Adicional08, PagarReceber.Valor_Adicional08, PagarRec' +
        'eber.Codigo_Adicional09, PagarReceber.Valor_Adicional09, PagarRe' +
        'ceber.Codigo_Adicional10, PagarReceber.Valor_Adicional10, PagarR' +
        'eceber.CustoConta, PagarReceber.Bordero FROM PagarReceber'
      'WHERE PagarReceber.Numero = :Numero ')
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 519
    Top = 1
  end
end
