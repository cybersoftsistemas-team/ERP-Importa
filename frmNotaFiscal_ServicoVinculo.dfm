object NotaFiscal_ServicoVinculo: TNotaFiscal_ServicoVinculo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'NotaFiscal_ServicoVinculo'
  ClientHeight = 516
  ClientWidth = 1071
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
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 1051
    Height = 466
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alClient
    DataSource = dstTitulos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Calibri'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Sel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Webdings'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'SEL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 25
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Baixa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Webdings'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'BX'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 25
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'Titulo'
        Title.Alignment = taCenter
        Title.Caption = 'T'#237'tulo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fornecedor_Nome'
        Title.Alignment = taCenter
        Title.Caption = 'Fornecedor'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 323
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Classificacao'
        Title.Alignment = taCenter
        Title.Caption = 'Classifica'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Classificacao_Nome'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 260
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'Produto'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Total'
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor_Parcela'
        Title.Alignment = taCenter
        Title.Caption = 'Parcela'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 90
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 486
    Width = 1071
    Height = 30
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 1
    object bCancelar: TButton
      Left = 1000
      Top = 1
      Width = 70
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&Cancelar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bCancelarClick
    end
    object Navega: TDBNavigator
      Left = 1
      Top = 1
      Width = 178
      Height = 28
      Cursor = crHandPoint
      DataSource = dstTitulos
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alLeft
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
    object bOK: TButton
      Left = 930
      Top = 1
      Width = 70
      Height = 28
      Cursor = crHandPoint
      Hint = 'Fecha a janela atual e cancela os processos pendentes.'
      Align = alRight
      Caption = '&OK'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bOKClick
    end
    object bSelTodos: TButton
      Left = 179
      Top = 1
      Width = 80
      Height = 28
      Cursor = crHandPoint
      Hint = '   Seleciona todos os itens   '
      Align = alLeft
      Caption = 'Sel &Todos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bSelTodosClick
    end
    object bSelNenhum: TButton
      Left = 259
      Top = 1
      Width = 80
      Height = 28
      Cursor = crHandPoint
      Hint = '   Deseleciona todos os itens   '
      Align = alLeft
      Caption = 'Sel &Nenhum '
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bSelNenhumClick
    end
  end
  object tTitulos: TMSQuery
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'select Titulo = Numero'
      '      ,Fornecedor'
      
        '      ,Fornecedor_Nome = ltrim((select Nome from Fornecedores wh' +
        'ere Codigo = Fornecedor))'
      '      ,Classificacao'
      
        '      ,Classificacao_Nome = (select Descricao from Cybersoft_Cad' +
        'astros.dbo.ClassificacaoFinanceira where Codigo = Classificacao)'
      '      ,Valor_Documento'
      '      ,Valor_Total'
      '      ,Valor_Parcela'
      '      ,Processo'
      '      ,Sel = cast(0 as bit)'
      '      ,Baixa = cast(iif(Baixa_Numero <> '#39#39', 1, 0) as bit)'
      
        '      ,Produto = (select max(Codigo) from Produtos prd where prd' +
        '.Classificacao = pr.Classificacao)'
      'from PagarReceber pr'
      'where Fornecedor <> 0'
      'and Tipo = '#39'P'#39
      'and isnull(Baixa_Numero, 0) = 0'
      'order by Fornecedor_Nome'
      '')
    Left = 341
    Top = 191
    object tTitulosTitulo: TLargeintField
      FieldName = 'Titulo'
    end
    object tTitulosFornecedor: TSmallintField
      FieldName = 'Fornecedor'
    end
    object tTitulosFornecedor_Nome: TStringField
      FieldName = 'Fornecedor_Nome'
      ReadOnly = True
      Size = 60
    end
    object tTitulosClassificacao: TStringField
      FieldName = 'Classificacao'
      Size = 15
    end
    object tTitulosClassificacao_Nome: TStringField
      FieldName = 'Classificacao_Nome'
      ReadOnly = True
      Size = 60
    end
    object tTitulosValor_Documento: TCurrencyField
      FieldName = 'Valor_Documento'
      DisplayFormat = ',##0.00'
    end
    object tTitulosValor_Total: TCurrencyField
      FieldName = 'Valor_Total'
      DisplayFormat = ',##0.00'
    end
    object tTitulosValor_Parcela: TCurrencyField
      FieldName = 'Valor_Parcela'
      DisplayFormat = ',##0.00'
    end
    object tTitulosProcesso: TStringField
      FieldName = 'Processo'
      Size = 15
    end
    object tTitulosSel: TBooleanField
      FieldName = 'Sel'
      DisplayValues = 'a'
    end
    object tTitulosBaixa: TBooleanField
      FieldName = 'Baixa'
      ReadOnly = True
      DisplayValues = 'a'
    end
    object tTitulosProduto: TIntegerField
      FieldName = 'Produto'
      ReadOnly = True
    end
  end
  object dstTitulos: TDataSource
    DataSet = tTitulos
    Left = 341
    Top = 244
  end
  object tItem: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 398
    Top = 191
  end
  object tTemp: TMSQuery
    Connection = Dados.Banco_Empresas
    Left = 456
    Top = 192
  end
end
