object Config_ReferenciaFiliais: TConfig_ReferenciaFiliais
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Config_ReferenciaFiliais'
  ClientHeight = 286
  ClientWidth = 713
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Grade: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 707
    Height = 238
    Margins.Bottom = 15
    Align = alClient
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
    Top = 256
    Width = 713
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
      713
      30)
    object bSair: TButton
      Left = 642
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
      Left = 564
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
      'SELECT MAX(Codigo) AS Codigo FROM ReferenciasFiscais')
    Left = 91
    Top = 53
    object tCodigoCodigo: TIntegerField
      FieldName = 'Codigo'
      ReadOnly = True
    end
  end
  object tFiliais: TMSQuery
    SQLInsert.Strings = (
      'INSERT INTO ReferenciasFiscais'
      
        '  (Codigo, Descricao, Natureza_Dentro, Natureza_Fora, Especie, S' +
        'ervico, Classificacao_TotalNota, Classificacao_ICMSOper, Classif' +
        'icacao_ICMSSub, Classificacao_IPI, Classificacao_PIS, Classifica' +
        'cao_COFINS, Classificacao_ISS, Movimenta_Estoque, Classificacao_' +
        'TotalProdutos, Incentivo_Fiscal, Apuracao_PISCOFINS, Movimenta_I' +
        'nventario, CSTICMS, CSTPIS, CSTCOFINS, CSTIPI, Inventario_Tercei' +
        'ros, Finalidade_Mercadoria, Tipo_Credito, Somar_ICMSST, Somar_Im' +
        'postosServico, Relaciona_Produtos, Relaciona_Adicoes, Sinal_IPI,' +
        ' Sinal_ICMSOper, Sinal_ICMSST, Sinal_PIS, Sinal_COFINS, Sinal_Fr' +
        'ete, Ativo, Aliquota_ISS, Preco_Venda, Codigo_CSLL, Codigo_IRPJ,' +
        ' Sinal_EntradaIPI, Sinal_EntradaICMSOper, Sinal_EntradaICMSST, S' +
        'inal_EntradaPIS, Sinal_EntradaCOFINS, Sinal_EntradaFrete, Sinal_' +
        'EntradaCSLL, Sinal_EntradaIRPJ, Sinal_EntradaDespesa, Sinal_Entr' +
        'adaLucro, Inventario_Estoque, Nota_Referencia, Movimenta_Estoque' +
        'Rep, Produto_NCM, Movimenta_EstoqueInd, Natureza_IndEntrada, Nat' +
        'ureza_IndSaida, Conta_ICMSOper_D, Conta_ICMSOper_C, Historico_IC' +
        'MSOper, Conta_ICMSSub_D, Conta_ICMSSub_C, Historico_ICMSSub, Con' +
        'ta_IPI_D, Conta_IPI_C, Historico_IPI, Conta_PIS_D, Conta_PIS_C, ' +
        'Historico_PIS, Conta_COFINS_D, Conta_COFINS_C, Historico_COFINS,' +
        ' Conta_TotalProdutos_D, Conta_TotalProdutos_C, Historico_TotalPr' +
        'odutos, Conta_Estoque_D, Conta_Estoque_C, Historico_Estoque, Con' +
        'ta_TotalNota_D, Conta_TotalNota_C, Historico_TotalNota, Zerar_IP' +
        'I, CSTPIS_Dif, CSTCOFINS_Dif, Sinal_PISDif, Sinal_COFINSDif, Sin' +
        'al_BCIPI, Sinal_BCICMSOper, Sinal_BCICMSST, Sinal_BCFrete, Trans' +
        'ferencia, Natureza_RefDentro, Natureza_RefFora)'
      'VALUES'
      
        '  (:Codigo, :Descricao, :Natureza_Dentro, :Natureza_Fora, :Espec' +
        'ie, :Servico, :Classificacao_TotalNota, :Classificacao_ICMSOper,' +
        ' :Classificacao_ICMSSub, :Classificacao_IPI, :Classificacao_PIS,' +
        ' :Classificacao_COFINS, :Classificacao_ISS, :Movimenta_Estoque, ' +
        ':Classificacao_TotalProdutos, :Incentivo_Fiscal, :Apuracao_PISCO' +
        'FINS, :Movimenta_Inventario, :CSTICMS, :CSTPIS, :CSTCOFINS, :CST' +
        'IPI, :Inventario_Terceiros, :Finalidade_Mercadoria, :Tipo_Credit' +
        'o, :Somar_ICMSST, :Somar_ImpostosServico, :Relaciona_Produtos, :' +
        'Relaciona_Adicoes, :Sinal_IPI, :Sinal_ICMSOper, :Sinal_ICMSST, :' +
        'Sinal_PIS, :Sinal_COFINS, :Sinal_Frete, :Ativo, :Aliquota_ISS, :' +
        'Preco_Venda, :Codigo_CSLL, :Codigo_IRPJ, :Sinal_EntradaIPI, :Sin' +
        'al_EntradaICMSOper, :Sinal_EntradaICMSST, :Sinal_EntradaPIS, :Si' +
        'nal_EntradaCOFINS, :Sinal_EntradaFrete, :Sinal_EntradaCSLL, :Sin' +
        'al_EntradaIRPJ, :Sinal_EntradaDespesa, :Sinal_EntradaLucro, :Inv' +
        'entario_Estoque, :Nota_Referencia, :Movimenta_EstoqueRep, :Produ' +
        'to_NCM, :Movimenta_EstoqueInd, :Natureza_IndEntrada, :Natureza_I' +
        'ndSaida, :Conta_ICMSOper_D, :Conta_ICMSOper_C, :Historico_ICMSOp' +
        'er, :Conta_ICMSSub_D, :Conta_ICMSSub_C, :Historico_ICMSSub, :Con' +
        'ta_IPI_D, :Conta_IPI_C, :Historico_IPI, :Conta_PIS_D, :Conta_PIS' +
        '_C, :Historico_PIS, :Conta_COFINS_D, :Conta_COFINS_C, :Historico' +
        '_COFINS, :Conta_TotalProdutos_D, :Conta_TotalProdutos_C, :Histor' +
        'ico_TotalProdutos, :Conta_Estoque_D, :Conta_Estoque_C, :Historic' +
        'o_Estoque, :Conta_TotalNota_D, :Conta_TotalNota_C, :Historico_To' +
        'talNota, :Zerar_IPI, :CSTPIS_Dif, :CSTCOFINS_Dif, :Sinal_PISDif,' +
        ' :Sinal_COFINSDif, :Sinal_BCIPI, :Sinal_BCICMSOper, :Sinal_BCICM' +
        'SST, :Sinal_BCFrete, :Transferencia, :Natureza_RefDentro, :Natur' +
        'eza_RefFora)')
    SQLRecCount.Strings = (
      'SET :PCOUNT = (SELECT COUNT(*) FROM ReferenciasFiscais'
      ')')
    Connection = Dados.Banco_Empresas
    SQL.Strings = (
      'SELECT * FROM ReferenciasFiscais')
    FetchRows = 1
    Left = 91
    Top = 105
  end
  object tEmpresas: TMSQuery
    Connection = Dados.Banco
    SQL.Strings = (
      'select * from EmpresaS')
    FetchRows = 1
    Left = 167
    Top = 105
  end
  object dstEmpresas: TDataSource
    DataSet = tEmpresas
    Left = 167
    Top = 152
  end
  object dstFiliais: TDataSource
    DataSet = tFiliais
    Left = 91
    Top = 152
  end
end
