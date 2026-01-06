object Cadastro_FornecedoresFiliais: TCadastro_FornecedoresFiliais
  Left = 497
  Top = 291
  BorderStyle = bsToolWindow
  Caption = 'Cadastro_FornecedoresFiliais'
  ClientHeight = 275
  ClientWidth = 717
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Grade: TRxDBGrid
    Left = 5
    Top = 4
    Width = 707
    Height = 237
    DataSource = dstEmpresas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    MultiSelect = True
    RowColor2 = 16776176
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Razao_Social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Raz'#227'o Social'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 431
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CNPJ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 129
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Numero_Filial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'Filial'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 38
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Caption = 'UF'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 33
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 245
    Width = 717
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
      717
      30)
    object bContab: TButton
      Left = 465
      Top = 1
      Width = 181
      Height = 28
      Hint = 
        'Exporta apenas as contas contabeis par'#226'metrizadas de todos os cl' +
        'ientes.'
      Anchors = [akTop, akRight]
      Caption = '&Exportar Par'#226'metriza'#231#227'o Contabil'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bContabClick
    end
    object bSair: TButton
      Left = 646
      Top = 1
      Width = 70
      Height = 28
      Hint = '   Fecha a janela atual e cancela os processos pendentes.   '
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bSairClick
    end
    object bExportar: TButton
      Left = 388
      Top = 1
      Width = 78
      Height = 28
      Hint = '   Abrir validador do SPED PIS/COFINS'
      Anchors = [akTop, akRight]
      Caption = '&Exportar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = bExportarClick
    end
  end
  object tCodigo: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT MAX(Codigo) AS Codigo FROM Clientes')
    Left = 120
    Top = 112
    object tCodigoCodigo: TIntegerField
      FieldName = 'Codigo'
      ReadOnly = True
    end
  end
  object tFiliais: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO Fornecedores'
      
        '  (Codigo, Nome, Nome_Fantasia, Tipo_Servico, Rua, Rua_Numero, B' +
        'airro, Municipio, Municipio_Codigo, Estado, Pais, CEP, Telefone1' +
        ', Telefone2, FAX, CNPJ, CPF, RG, Inscricao_Estadual, Isento, Ins' +
        'cricao_Municipal, Email, Site, Tipo_Produto, Conta, Registro_Alf' +
        'andega, Matriz, Banco_Nome, Banco_Conta, Banco_Agencia, Alterado' +
        ', SUFRAMA, Conta_Devolucao, Conta_Adiantamento, Ramo_Atividade, ' +
        'Modalidade_Importacao, Complemento, Comissao, Regiao, Observacao' +
        ', Ativo, Enviar_Email)'
      'VALUES'
      
        '  (:Codigo, :Nome, :Nome_Fantasia, :Tipo_Servico, :Rua, :Rua_Num' +
        'ero, :Bairro, :Municipio, :Municipio_Codigo, :Estado, :Pais, :CE' +
        'P, :Telefone1, :Telefone2, :FAX, :CNPJ, :CPF, :RG, :Inscricao_Es' +
        'tadual, :Isento, :Inscricao_Municipal, :Email, :Site, :Tipo_Prod' +
        'uto, :Conta, :Registro_Alfandega, :Matriz, :Banco_Nome, :Banco_C' +
        'onta, :Banco_Agencia, :Alterado, :SUFRAMA, :Conta_Devolucao, :Co' +
        'nta_Adiantamento, :Ramo_Atividade, :Modalidade_Importacao, :Comp' +
        'lemento, :Comissao, :Regiao, :Observacao, :Ativo, :Enviar_Email)')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM Fornecedores')
    FetchRows = 1
    Left = 120
    Top = 144
  end
  object tEmpresas: TMSQuery
    Connection = Dados.Banco
    FetchRows = 1
    Left = 120
    Top = 176
  end
  object dstEmpresas: TDataSource
    DataSet = tEmpresas
    Left = 152
    Top = 176
  end
  object dstFiliais: TDataSource
    DataSet = tFiliais
    Left = 152
    Top = 144
  end
  object tContas: TMSQuery
    Connection = Dados.Banco_Empresas
    FetchRows = 1
    Left = 192
    Top = 144
  end
end
